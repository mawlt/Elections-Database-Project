-- create database if not exists Wonderland_Elections;

-- drop table if exists Location;
create table if not exists Location (
	xCoord tinyint,
    yCoord tinyint,
    streetName varchar(50),
    streetNumber int,
    zipCode char(5),
    city varchar(40),
    state varchar(20),
    locationType enum('residence', 'votingCenter') not null,
    votingCenterID varchar(4) null,
    primary key(xCoord, yCoord),
    unique(streetName, streetNumber, zipCode),
    unique(votingCenterID),
    constraint votingCenterIDEnforcement
		check (
			locationType = 'residence' and votingCenterID is null
            or locationType = 'votingCenter' and votingCenterID is not null
		)
);

-- drop table if exists OperatingTimes;
create table if not exists OperatingTimes (
	votingCenterID varchar(4),
    startTime datetime,
    endTime datetime,
    primary key (votingCenterID, startTime),
    foreign key(votingCenterID) references Location(votingCenterID)
);

-- drop table if exists Folk;
create table if not exists Folk (
	folkID varchar(16),
    firstName varchar(16),
    lastName varchar(16),
    nickname varchar(16) null,
    dob date,
    primaryPhone varchar(16),
    secondaryPhone varchar(16) null,
    xCoord tinyint not null,
    yCoord tinyint not null,
    primary key(folkID),
    foreign key(xCoord, yCoord) references Location(xCoord, yCoord)
);

-- drop table if exists FolkEmail;
create table if not exists FolkEmail (
	folkID varchar(16),
    email varchar(30),
    primary key(folkID, email),
    foreign key(folkID) references Folk(folkID)
);

-- drop table if exists PollStaff;
create table if not exists PollStaff (
	folkID varchar(16),
    job enum('clerk', 'monitor'),
    votingCenterID varchar(4) null,
    primary key(folkID),
    foreign key(votingCenterID) references Location(votingCenterID)
);

-- drop table if exists PollStaffShift;
create table if not exists PollStaffShift (
	folkID varchar(16),
    startTime datetime,
    endTime datetime,
    primary key(folkID, startTime),
    foreign key(folkID) references PollStaff(folkID)
);

-- drop table if exists Poll;
create table if not exists Poll (
	pollID varchar(4),
    questionText varchar(50),
    periodStart datetime,
    periodEnd datetime,
	primary key (pollID)
);

-- drop table if exists Registration;
create table if not exists Registration (
	registrationID int,
    folkID varchar(16),
    votingCenterID varchar(4),
    pollID varchar(4),
    voteDate datetime,
    unique(FolkID, pollID),
    primary key(registrationID),
    foreign key(folkID) references Folk(folkID),
    foreign key(pollID) references Poll(pollID),
    foreign key(votingCenterID) references Location(votingCenterID)
);

-- drop table if exists Ballot;
create table if not exists Ballot (
	ballotID int auto_increment,
    castDate datetime,
    vote enum('yes', 'no', 'abstain') null,
    registrationID int,
    unique (RegistrationID),
    primary key (BallotID),
    foreign key(registrationID) references Registration(registrationID)
);

delimiter //

create trigger folkResidenceEnforcement  -- ensures a folk does not live at a voting center on insert
before insert on Folk
for each row
begin
	declare folkResidence varchar(20);
    select locationType into folkResidence
    from Location
    where xCoord = new.xCoord and yCoord = new.yCoord;
    if folkResidence <> 'residence' then
		signal sqlstate '45000'
			set message_text = 'Folk cannot live at Voting Center';
	end if;
end; 
//

create function calculateDistance(xCoord double, yCoord double)
returns double
deterministic
begin
	return sqrt(pow(xCoord, 2) + pow(yCoord, 2));
end;
//

create function sumVotes(pollCode varchar(4), answer varchar(8))
returns int
deterministic
begin
	declare total int;
    select count(*)
    into total
    from ballot b
    join Registration r 
		on b.registrationID = r.registrationID
	where r.pollID = pollCode and b.vote = answer;
    return total;
end;
//

create trigger validRegistrationTime	-- ensures Registration is within Poll's open period
before insert on Registration
for each row
begin
	declare startTime datetime;
    declare endTime datetime;
    select periodStart, periodEnd
    into startTime, endTime
    from poll
    where pollID = new.pollID;
    if new.voteDate < startTime then
		signal sqlstate '45000'
			set message_text = 'Registrated too early';
	end if;
    if new.voteDate > endTime then
		signal sqlstate '45000'
			set message_text = 'Registrated too late';
	end if;
end;

create trigger validVotingCenterTime	-- ensures Registration is within a Voting Center's Operating Times
before insert on Registration
for each row
begin
	declare countValidTimes int;
    select count(*)
    into countValidTimes
    from OperatingTimes
    where OperatingTimes.votingCenterID = new.VotingCenterID
    and new.voteDate between OperatingTimes.startTime and OperatingTimes.endTime;
    if countValidTimes = 0 then
		signal sqlstate '45000'
			set message_text = 'Voting Center is not open during Registration time';
	end if;
 end;   
//

create trigger editPoll		-- cannot edit a Poll that already has Ballots cast for it
before update on Poll
for each row
begin
	if exists (
		select 1
        from Registration r
        join Ballot b
		on b.registrationID = b.registrationID
        where r.pollID = old.pollID
	) then
		signal sqlstate '45000'
			set message_text = 'Votes already cast for Poll';
	end if;
end;
//

create function countReleventRegistrations(centerCode varchar(4), registrationDay date)		
returns int						-- In order to choose their desired voting center and voting date, folks ask to first see the number of folks
deterministic					-- currently registered to vote at each voting center in their city on their desired date, and
begin							-- then they quickly complete their registration
	declare total int;
	select count(*)
    into total
    from Registration r
    where date(r.voteDate) = registrationDay and centerCode = r.votingCenterID;
    return total;
end;
//

create trigger preventEditOperatingTimesWhenRegistrationsExist
before update on OperatingTimes
for each row
begin
    if exists (
        select 1
        from Registration r
        where r.votingCenterID = old.votingCenterID
          and r.voteDate between old.startTime and old.endTime
        limit 1
    ) then
        signal sqlstate '45000'
            set message_text = 'Cannot modify Operating Times when registrations already exist during this operating period';
    end if;
end;
//

create function distanceBetweenPoints(
    x1 double, y1 double,
    x2 double, y2 double
)
returns double
deterministic
begin
    return SQRT( POW(x2 - x1, 2) + POW(y2 - y1, 2) );
end;
//


delimiter ;
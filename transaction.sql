delimiter //

create procedure castBallot(
	in proRegistrationID int,
    in proCastDate DATETIME,
    in proVote varchar(50),
    in proFolkID varchar(16)
)

begin
	declare varFolkID varchar(16);
    
    declare exit handler for sqlexception
    begin
		rollback;
        resignal;
	end;
    
    set session transaction isolation level repeatable read;
    start transaction;
    
    select r.folkID
      into varFolkID
      from Registration r
     where r.registrationID = proRegistrationID
     for update;
     
	if varFolkID is null then
		signal sqlstate '45000'
			set message_text = "No such registration exists";
	end if;
    
    if proFolkID is not null and proFolkID <> varFolkID then
		signal sqlstate '45000'
			set message_text = "Provided Folk ID does not match Registration Folk ID";
	end if;
    
    if exists (select 1 from Ballot b where b.registrationID = proRegistrationID) then
		signal sqlstate '45000'
			set message_text = 'Ballot already exists';
	end if;
    
    insert into Ballot (castDate, vote, registrationID) values (proCastDate, proVote, proRegistrationID);
    
    commit;
    
end//

delimiter ;
drop table if exists Ballot;
drop table if exists Registration;
drop table if exists Poll;
drop table if exists PollStaffShift;
drop table if exists PollStaff;
drop table if exists FolkEmail;
drop table if exists Folk;
drop table if exists OperatingTimes;
drop table if exists VotingCenter;
drop table if exists Residence;
drop table if exists Location;
drop trigger if exists folkResidenceEnforcement;
drop function if exists calculateDistance;
drop function if exists sumVotes;
drop trigger if exists validRegistrationTime;
drop trigger if exists validVotingCenterTime;
drop trigger if exists editPoll;
drop function if exists countReleventRegistrations;
drop function if exists preventEditOperatingTimesWhenRegistrationsExist;
drop function if exists distanceBetweenPointsl;
drop procedure if exists CastBallot;






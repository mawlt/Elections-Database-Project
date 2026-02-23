-- ------------------------- MEGOPOLIS -------------------------------------------------------

insert into Location(xCoord, yCoord, streetName, streetNumber, zipCode, city, state, locationType, votingCenterID)
	values (1, 1, 'Main St', 1, '20745', 'Megapolis', 'Capital District', 'Residence', null);
insert into Folk(folkID, firstName, lastName, nickname, dob, primaryPhone, secondaryPhone, xCoord, yCoord) 
	values ('4829349283920943', 'Gilly', 'Gillyweed', null, '1996-03-24', '301-555-8923', '63-704-893-8195', 1, 1);
insert into Folk(folkID, firstName, lastName, nickname, dob, primaryPhone, secondaryPhone, xCoord, yCoord) 
	values ('4829349283920976', 'Gillian', 'Gillyweed', null, '1994-03-07', '301-555-8924', null, 1, 1);
    
insert into Location(xCoord, yCoord, streetName, streetNumber, zipCode, city, state, locationType, votingCenterID)
	values (1, 2, 'Main St', 9, '20745', 'Megapolis', 'Capital District', 'Residence', null);
insert into Folk(folkID, firstName, lastName, nickname, dob, primaryPhone, secondaryPhone, xCoord, yCoord) 
	values ('1234567891098765', 'Melanie', 'Melon', 'Mel', '1992-02-29', '301-555-8196', null, 1, 2);
    
insert into Location(xCoord, yCoord, streetName, streetNumber, zipCode, city, state, locationType, votingCenterID)
	values (0, 0, 'Pennsylvania Ave', 160, '20500', 'Megapolis', 'Capital District', 'Residence', null);
insert into Folk(folkID, firstName, lastName, nickname, dob, primaryPhone, secondaryPhone, xCoord, yCoord) 
	values ('6676198173869420', 'Albert', 'Gore', 'Al', '1948-03-31', '202-456-7041', null, 0, 0);
    
insert into Location(xCoord, yCoord, streetName, streetNumber, zipCode, city, state, locationType, votingCenterID)
	values (3, 3, 'Wilkens Ave', 20, '21227', 'Megapolis', 'Capital District', 'Residence', null);
insert into Folk(folkID, firstName, lastName, nickname, dob, primaryPhone, secondaryPhone, xCoord, yCoord) 
	values ('4567854236548521', 'Przemyslaw', 'Augustynowicz', 'Mike', '1996-10-24', '301-555-8192', '48-705-893-8174', 3, 3);
insert into Folk(folkID, firstName, lastName, nickname, dob, primaryPhone, secondaryPhone, xCoord, yCoord) 
	values ('4568523658945625', 'Missus', 'Mittens', null, '2019-03-07', '301-555-8928', null, 3, 3);
    
insert into Location(xCoord, yCoord, streetName, streetNumber, zipCode, city, state, locationType, votingCenterID)
	values (2, 1, 'Georgia Ave', 8, '20745', 'Megapolis', 'Capital District', 'votingCenter', '11AA');
insert into OperatingTimes(votingCenterID, startTime, endTime) values ('11AA', '2002-07-04 02:59:59', '2002-07-04 07:59:59');
insert into OperatingTimes(votingCenterID, startTime, endTime) values ('11AA', '2007-07-04 03:59:59', '2007-07-04 09:59:59');
insert into OperatingTimes(votingCenterID, startTime, endTime) values ('11AA', '2021-07-04 11:59:59', '2021-07-05 07:59:59');
insert into OperatingTimes(votingCenterID, startTime, endTime) values ('11AA', '2024-07-04 02:59:59', '2024-07-04 11:59:59');

insert into Location(xCoord, yCoord, streetName, streetNumber, zipCode, city, state, locationType, votingCenterID)
	values (5, 3, 'Georgia Ave', 9, '20765', 'Megapolis', 'Capital District', 'votingCenter', '11BA');
insert into OperatingTimes(votingCenterID, startTime, endTime) values ('11BA', '2002-07-04 02:59:59', '2025-07-04 07:59:59');
    
insert into pollStaff(folkID, job, votingCenterID) values ('4829349283920943', 'clerk', '11AA');
insert into pollStaffShift(folkID, startTime, endTime) values ('4829349283920943', '2002-07-04 02:59:59', '2002-07-04 07:59:59');

insert into pollStaff(folkID, job, votingCenterID) values ('4829349283920976', 'monitor', '11AA');
insert into pollStaffShift(folkID, startTime, endTime) values ('4829349283920976', '2024-07-04 02:59:59', '2024-07-04 11:59:59');

insert into pollStaff(folkID, job, votingCenterID) values ('4568523658945625', 'monitor', '11AA');
insert into pollStaffShift(folkID, startTime, endTime) values ('4568523658945625', '2024-07-04 02:59:59', '2024-07-04 11:59:59');

-- ------------------------------------------ CASTELIA ----------------------------------------------

insert into Location(xCoord, yCoord, streetName, streetNumber, zipCode, city, state, locationType, votingCenterID)
	values (9, 10, 'Trade Center St', 30, '20745', 'Castelia', 'Unova', 'Residence', null);
insert into Folk(folkID, firstName, lastName, nickname, dob, primaryPhone, secondaryPhone, xCoord, yCoord) 
	values ('0987654321675843', 'Pierbattista', 'Pizzaballa', null, '1965-04-21', '39-06-698-45050', null, 9, 10);

insert into Location(xCoord, yCoord, streetName, streetNumber, zipCode, city, state, locationType, votingCenterID)
	values (10, 10, 'Broadway St', 37, '40867', 'Castelia', 'Unova', 'Residence', null);
insert into Folk(folkID, firstName, lastName, nickname, dob, primaryPhone, secondaryPhone, xCoord, yCoord) 
	values ('1357908642183746', 'Andrew', 'Cuomo', 'Andy', '1957-12-06', '518-474-8390', null, 10, 10);
insert into folkEmail(folkID, email) values ('1357908642183746', 'info@andrewcuomo.com');
insert into Folk(folkID, firstName, lastName, nickname, dob, primaryPhone, secondaryPhone, xCoord, yCoord) 
	values ('8554865215756324', 'Lindsey', 'Boylan', null, '1987-12-31', '518-785-8576', null, 10, 10);
    
insert into Location(xCoord, yCoord, streetName, streetNumber, zipCode, city, state, locationType, votingCenterID)
	values (10, 9, 'G St', 169, '20500', 'Castelia', 'Unova', 'residence', null);
insert into Folk(folkID, firstName, lastName, nickname, dob, primaryPhone, secondaryPhone, xCoord, yCoord) 
	values ('1119483920485932', 'Marcus', 'Aurelius', 'Mark', '0121-04-26', '999-555-7777', null, 10, 9);
    
insert into Location(xCoord, yCoord, streetName, streetNumber, zipCode, city, state, locationType, votingCenterID)
	values (11, 9, 'F St', 208, '20500', 'Castelia', 'Unova', 'votingCenter', '2H8O');
insert into OperatingTimes(votingCenterID, startTime, endTime) values ('2H8O', '2024-06-04 11:59:59', '2024-06-05 11:59:59');
insert into OperatingTimes(votingCenterID, startTime, endTime) values ('2H8O', '2024-07-04 11:59:59', '2024-07-05 11:59:59');
insert into OperatingTimes(votingCenterID, startTime, endTime) values ('2H8O', '2024-08-01 11:59:59', '2024-08-02 11:59:59');
insert into OperatingTimes(votingCenterID, startTime, endTime) values ('2H8O', '2024-07-23 01:59:59', '2024-07-23 11:59:59');

insert into pollStaff(folkID, job, votingCenterID) values ('1119483920485932', 'clerk', '2H8O');
insert into pollStaffShift(folkID, startTime, endTime) values ('1119483920485932', '2024-07-04 11:59:59', '2024-07-05 11:59:59');

insert into pollStaff(folkID, job, votingCenterID) values ('0987654321675843', 'monitor', '2H8O');
insert into pollStaffShift(folkID, startTime, endTime) values ('0987654321675843', '2024-07-23 01:59:59', '2024-07-23 11:59:59');

-- ---------------------------------------- WILMINGTON ------------------------------------------------

insert into Location(xCoord, yCoord, streetName, streetNumber, zipCode, city, state, locationType, votingCenterID)
	values (2, 10, 'Barley Mill Rd', 1209, '19807', 'Wilmington', 'Delaware', 'residence', null);
insert into Folk(folkID, firstName, lastName, nickname, dob, primaryPhone, secondaryPhone, xCoord, yCoord)
	values ('0000000000000001', 'Joseph', 'Biden', 'Joe', '1942-11-20', '302-404-0880', null, 2, 10);
insert into folkEmail(folkID, email) values ('0000000000000001', 'biden.library@nara.gov');
insert into folkEmail(folkID, email) values ('0000000000000001', 'comments@whitehouse.gov');
insert into Folk(folkID, firstName, lastName, nickname, dob, primaryPhone, secondaryPhone, xCoord, yCoord)
	values ('0928748392039845', 'Jill', 'Biden', null, '1951-06-03', '302-404-0889', null, 2, 10);
    
insert into Location(xCoord, yCoord, streetName, streetNumber, zipCode, city, state, locationType, votingCenterID)
	values (2, 11, 'Barley Mill Rd', 1210, '19807', 'Wilmington', 'Delaware', 'votingCenter', '9999');
insert into OperatingTimes(votingCenterID, startTime, endTime) values ('9999', '2024-07-05 02:59:59', '2024-07-05 07:59:59');
insert into OperatingTimes(votingCenterID, startTime, endTime) values ('9999', '2024-07-08 02:59:59', '2024-07-08 07:59:59');
insert into OperatingTimes(votingCenterID, startTime, endTime) values ('9999', '2024-07-21 02:59:59', '2024-07-21 07:59:59');
insert into OperatingTimes(votingCenterID, startTime, endTime) values ('9999', '2024-07-27 02:59:59', '2024-07-27 07:59:59');

insert into pollStaff(folkID, job, votingCenterID) values ('0000000000000001', 'clerk', '9999');
insert into pollStaffShift(folkID, startTime, endTime) values ('0000000000000001', '2024-07-05 02:59:59', '2024-07-05 03:15:59');

-- ---------------------------------------------- POLLS, REGISTRATIONS, BALLOTS --------------------- ------------------------------------

-- --------------------------------- SHOULD CATS RULE US? ----------------------------------------------------

insert into Poll(pollID, questionText, periodStart, periodEnd) values ('4QI3', 'Should cats rule us?', '2024-06-04 11:59:59', '2024-08-04 11:59:59');

insert into Registration(registrationID, folkID, votingCenterID, pollID, voteDate)
	values (0001, '4568523658945625', '11AA', '4QI3', '2024-07-04 06:48:47');    
insert into Ballot(castDate, vote, registrationID) values ('2024-07-04 06:50:47', 'yes', 0001);

insert into Registration(registrationID, folkID, votingCenterID, pollID, voteDate)
	values (0003, '0000000000000001', '9999', '4QI3', '2024-07-27 06:48:47'); 
    
insert into Registration(registrationID, folkID, votingCenterID, pollID, voteDate)
	values (0013, '0928748392039845', '9999', '4QI3', '2024-07-27 06:48:58');   
    
insert into Registration(registrationID, folkID, votingCenterID, pollID, voteDate)
	values (0298, '1357908642183746', '2H8O', '4QI3', '2024-07-23 06:48:47'); 
    
insert into Registration(registrationID, folkID, votingCenterID, pollID, voteDate)
	values (0198, '6676198173869420', '11AA', '4QI3', '2024-07-04 06:36:30'); 
insert into Ballot(castDate, vote, registrationID) values ('2024-07-04 06:27:47', 'no', 0198);

insert into Registration(registrationID, folkID, votingCenterID, pollID, voteDate)
	values (1138, '1119483920485932', '2H8O', '4QI3', '2024-07-23 09:48:30'); 

-- --------------------------------- SHOULD WE GIVE JOSEPH BIDEN INFINITE ICE CREAM? ----------------------------------------------------

insert into Poll(pollID, questionText, periodStart, periodEnd) values ('5YPL', 'Should we give Joseph Biden infinite ice cream?', '2024-07-04 09:59:59', '2024-08-04 11:59:59');

insert into Registration(registrationID, folkID, votingCenterID, pollID, voteDate)
	values (0007, '4568523658945625', '11AA', '5YPL', '2024-07-04 10:48:47');    
insert into Ballot(castDate, vote, registrationID) values ('2024-07-04 10:50:53', 'no', 0007);

insert into Registration(registrationID, folkID, votingCenterID, pollID, voteDate)
	values (0004, '0000000000000001', '9999', '5YPL', '2024-07-27 06:48:47');    
insert into Ballot(castDate, vote, registrationID) values ('2024-07-27 6:50:53', 'yes', 0004);

insert into Registration(registrationID, folkID, votingCenterID, pollID, voteDate)
	values (0020, '0928748392039845', '9999', '5YPL', '2024-07-27 06:48:58');    
insert into Ballot(castDate, vote, registrationID) values ('2024-07-27 6:50:56', 'no', 0020);

insert into Registration(registrationID, folkID, votingCenterID, pollID, voteDate)
	values (0302, '1357908642183746', '2H8O', '5YPL', '2024-07-23 05:48:47'); 
insert into Ballot(castDate, vote, registrationID) values ('2024-07-27 5:50:56', 'no', 0302);

insert into Registration(registrationID, folkID, votingCenterID, pollID, voteDate)
	values (0478, '6676198173869420', '11AA', '5YPL', '2024-07-04 011:36:30'); 
insert into Ballot(castDate, vote, registrationID) values ('2024-07-04 11:29:35', 'no', 0478);

insert into Registration(registrationID, folkID, votingCenterID, pollID, voteDate)
	values (0999, '1119483920485932', '2H8O', '5YPL', '2024-07-23 09:48:30'); 
insert into Ballot(castDate, vote, registrationID) values ('2024-07-23 9:29:35', 'no', 0999);

-- --------------------------------- IS IT TRULY JOEVER? ----------------------------------------------------

insert into Poll(pollID, questionText, periodStart, periodEnd) values ('2NIQ', 'Is it truly Joever?', '2002-07-04 02:59:59', '2025-08-04 11:59:59');

insert into Registration(registrationID, folkID, votingCenterID, pollID, voteDate)
	values (0015, '4568523658945625', '11AA', '2NIQ', '2024-07-04 7:48:47');    
insert into Ballot(castDate, vote, registrationID) values ('2024-07-04 10:52:56', 'abstain', 0015);

insert into Registration(registrationID, folkID, votingCenterID, pollID, voteDate)
	values (0019, '0000000000000001', '9999', '2NIQ', '2024-07-27 06:48:47');
    
insert into Registration(registrationID, folkID, votingCenterID, pollID, voteDate)
	values (0431, '6676198173869420', '11AA', '2NIQ', '2024-07-04 11:38:47');
insert into Ballot(castDate, vote, registrationID) values ('2024-07-04 11:51:56', 'no', 0431);

insert into Registration(registrationID, folkID, votingCenterID, pollID, voteDate)
	values (0456, '4567854236548521', '11AA', '2NIQ', '2024-07-04 011:36:30'); 
insert into Ballot(castDate, vote, registrationID) values ('2024-07-04 11:29:35', 'no', 0456);

insert into Registration(registrationID, folkID, votingCenterID, pollID, voteDate)
	values (0034, '1119483920485932', '11AA', '2NIQ', '2002-07-04 04:48:30'); 
insert into Ballot(castDate, vote, registrationID) values ('2024-07-04 4:29:35', 'no', 0034);

insert into Registration(registrationID, folkID, votingCenterID, pollID, voteDate)
	values (0091, '4829349283920976', '11AA', '2NIQ', '2024-07-04 04:50:30'); 

-- --------------------------------- ARE THESE ELECTIONS RIGGED? ----------------------------------------------------

insert into Poll(pollID, questionText, periodStart, periodEnd) values ('0000', 'Are these elections rigged?', '2024-07-04 11:58:59', '2024-08-04 11:59:59');

insert into Registration(registrationID, folkID, votingCenterID, pollID, voteDate)
	values (0024, '4568523658945625', '11AA', '0000', '2024-07-04 11:59:30');    
insert into Ballot(castDate, vote, registrationID) values ('2024-07-04 11:59:31', 'yes', 0024);

insert into Registration(registrationID, folkID, votingCenterID, pollID, voteDate)
	values (0077, '0000000000000001', '11AA', '0000', '2024-07-04 11:59:30');
insert into Ballot(castDate, vote, registrationID) values ('2024-07-04 11:59:31', 'no', 0077);

insert into Registration(registrationID, folkID, votingCenterID, pollID, voteDate)
	values (0178, '0928748392039845', '11AA', '0000', '2024-07-04 11:59:30');
insert into Ballot(castDate, vote, registrationID) values ('2024-07-04 11:59:34', 'yes', 0178);

insert into Registration(registrationID, folkID, votingCenterID, pollID, voteDate)
	values (0181, '1357908642183746', '11AA', '0000', '2024-07-04 11:59:30');
insert into Ballot(castDate, vote, registrationID) values ('2024-07-04 11:59:36', 'yes', 0181);

insert into Registration(registrationID, folkID, votingCenterID, pollID, voteDate)
	values (1821, '6676198173869420', '11AA', '0000', '2024-07-04 11:59:45');
insert into Ballot(castDate, vote, registrationID) values ('2024-07-04 11:59:57', 'yes', 1821);

insert into Registration(registrationID, folkID, votingCenterID, pollID, voteDate)
	values (1696, '1119483920485932', '11AA', '0000', '2024-07-04 11:59:30'); 
insert into Ballot(castDate, vote, registrationID) values ('2024-07-04 11:59:35', 'yes', 1696);

-- --------------------------------- SHOULD DOGS RULE US? --------------------------------------------------

insert into Poll(pollID, questionText, periodStart, periodEnd) values ('0001', 'Should dogs rule us?', '2024-06-04 11:59:59', '2024-08-04 11:59:59');
    
insert into Registration(registrationID, folkID, votingCenterID, pollID, voteDate)
	values (0773, '4568523658945625', '11BA', '0001', '2024-07-04 11:59:30');   
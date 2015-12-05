

CREATE TABLE Volunteer (

	Volunteerid MEDIUMINT unsigned NOT NULL AUTO_INCREMENT,
	PRIMARY KEY ('Volunteerid')
	Firstname VARCHAR(100) NOT NULL,
	Surname VARCHAR(100) NOT NULL,
	Birthday DATE NOT NULL,
	Gender VARCHAR(10) NOT NULL,
	Location VARCHAR(100) NOT NULL,
	Phone_numebr TEXT NOT NULL,
	Availability DATE NOT NULL
	
);

CREATE TABLE Firstcontact (
	
	Volunteerid MEDIUMINT NOT NULL FOREIGN KEY (Volunteerid) references Volunteer(Volunteerid),
	name VARCHAR(100) NOT NULL,
	email VARCHAR(100) NOT NULL

);

CREATE TABLE Secondcontact (

	Volunteerid MEDIUMINT NOT NULL FOREIGN KEY (Volunteerid) references Volunteer(Volunteerid),
	name VARCHAR(100) NOT NULL,
	email VARCHAR(100) NOT NULL

);


CREATE TABLE Hobbies_activities (

	Volunteerid MEDIUMINT NOT NULL FOREIGN KEY (Volunteerid) references Volunteer(Volunteerid),
	Profession TEXT NOT NULL,
	Interests TEXT NOT NULL,
	Hobbies TEXT NOT NULL

);
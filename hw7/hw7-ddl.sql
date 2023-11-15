# hw7-ddl.sql

## DO NOT RENAME OR OTHERWISE CHANGE THE SECTION TITLES OR ORDER.
## The autograder will look for specific code sections. If it can't find them, you'll get a "0"

# Section 1
SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS peopleroles;
DROP TABLE IF EXISTS roles;
DROP TABLE IF EXISTS peopleskills;
DROP TABLE IF EXISTS people;
DROP TABLE IF EXISTS skills;
SET FOREIGN_KEY_CHECKS=1;

# Section 2
CREATE TABLE skills (
    id int,
    name varchar(255) NOT NULL,
    description TEXT NOT NULL,
    tag varchar(255) NOT NULL,
    url TEXT,
    time_commitment int,
    PRIMARY KEY (id)
);

# Section 3
INSERT INTO skills (id, name, description, tag, url, time_commitment)
VALUES
(1, 'knitting', 'being able to knit clothes with little to no mistakes', 'Skill 1', NULL, 60),
(2, 'fortune telling', 'be able to successfully give someone what will happen in their future', 'Skill 2', NULL, 45),
(3, 'juggling', 'can juggle 3 of an object of choice for at least a minute', 'Skill 3', NULL, 45),
(4, 'playing guitar', 'can play at least one song on guitar', 'Skill 4', NULL, 50),
(5, 'mind reading', 'be able to successfully read someones minds after just looking at them for a few seconds', 'Skill 5', NULL, 100),
(6, 'organization', 'stays organized and has planners and stays on top of all their stuff', 'Skill 6', NULL, 22),
(7, 'jewlery creator', 'creates all kinds of jewlery from start using different materials', 'Skill 7', NULL, 40),
(8, 'baker', 'can bake anything asked without having to look up the recipe', 'Skill 8', NULL, 70);


# Section 4
CREATE TABLE people (
    id int,
    first_name varchar(255),
    last_name varchar(255) NOT NULL,
    email varchar(4096),
    linkedin_url varchar(4096),
    headshot_url varchar(4096),
    discord_handle varchar(255),
    brief_bio TEXT,
    date_joined date NOT NULL,
    PRIMARY KEY (id)
);


# Section 5
INSERT INTO people (id, first_name, last_name, email, linkedin_url, headshot_url, discord_handle, brief_bio, date_joined)
VALUES
(1, 'Evelyn', 'Person 1', 'evelynharper@gmail.com', NULL, NULL, NULL, 'A brilliant astrophysicist with a passion for unraveling the mysteries of the cosmos', '2023-11-10'),
(2, 'Milo', 'Person 2', 'milosterling@gmail.com', NULL, NULL, NULL, 'An adventurous travel blogger who roams the globe seeking hidden gems and unique experiences', '2023-11-10'),
(3, 'Zara', 'Person 3', 'zaranightshade@gmail.com', NULL, NULL, NULL, 'A skilled rogue with a mysterious past, Zara is known for her stealth and agility. She navigates the shadows with a quick wit and a dagger always at the ready', '2023-11-10'),
(4, 'Harley', 'Person 4', 'harleyquinn@gmail.com', NULL, NULL, NULL, 'Originally Dr. Harleen Quinzel, Harley is an unpredictable and acrobatic character with a playful demeanor. Once a psychiatrist, she fell in love with the Joker and embraced a life of chaos.', '2023-11-10'),
(5, 'Lena', 'Person 5', 'lenafrost@gmail.com', NULL, NULL, NULL, ' A marine biologist dedicated to studying and protecting endangered sea life', '2023-11-10'),
(6, 'Victor', 'Person 6', 'victorstromrider@gmail.com', NULL, NULL, NULL, ' A retired detective with a keen eye for detail. Victor, known for his sharp intellect, often finds himself pulled back into solving mysteries despite his attempts at a quiet retirement', '2023-11-10'),
(7, 'Sasha', 'Person 7', 'sashastormrider@gmail.com', NULL, NULL, NULL, 'A professional chef with a flair for fusion cuisine. Sasha combines culinary traditions from around the world, creating dishes that are as visually stunning as they are delicious', '2023-11-10'),
(8, 'Nina', 'Person 8', 'ninasilverwind@gmail.com', NULL, NULL, NULL, 'An expert archer and guardian of the mystical Silver Grove. Nina is skilled in both combat and herbalism, using her knowledge to protect the ancient forest', '2023-11-10'),
(9, 'Felix', 'Person 9', 'felixstarling@gmail.com', NULL, NULL, NULL, 'A charismatic stage magician who blurs the lines between illusion and reality', '2023-11-10'),
(10, 'Riley', 'Person 10', 'rileyember@mail.com', NULL, NULL, NULL, 'A high-energy sports journalist covering extreme sports and adrenaline-fueled adventures', '2023-11-10');




# Section 6
CREATE TABLE peopleskills (
    id int AUTO_INCREMENT,
    skills_id int NOT NULL,
    people_id int NOT NULL,
    date_acquired date NOT NULL,
    PRIMARY KEY (id)
);


# Section 7

INSERT INTO peopleskills (skills_id, people_id, date_acquired)
VALUES
(1, 1, '2023-11-10'),
(3, 1, '2023-11-10'),
(6, 1, '2023-11-10');

INSERT INTO peopleskills (skills_id, people_id, date_acquired)
VALUES
(3, 2, '2023-11-10'),
(4, 2, '2023-11-10'),
(5, 2, '2023-11-10');

INSERT INTO peopleskills (skills_id, people_id, date_acquired)
VALUES
(1, 3, '2023-11-10'),
(5, 3, '2023-11-10');

INSERT INTO peopleskills (skills_id, people_id, date_acquired)
VALUES
(3, 5, '2023-11-10'),
(6, 5, '2023-11-10');

INSERT INTO peopleskills (skills_id, people_id, date_acquired)
VALUES
(2, 6, '2023-11-10'),
(3, 6, '2023-11-10'),
(4, 6, '2023-11-10');

INSERT INTO peopleskills (skills_id, people_id, date_acquired)
VALUES
(3, 7, '2023-11-10'),
(5, 7, '2023-11-10'),
(6, 7, '2023-11-10');

INSERT INTO peopleskills (skills_id, people_id, date_acquired)
VALUES
(1, 8, '2023-11-10'),
(3, 8, '2023-11-10'),
(5, 8, '2023-11-10'),
(6, 8, '2023-11-10');

INSERT INTO peopleskills (skills_id, people_id, date_acquired)
VALUES
(2, 9, '2023-11-10'),
(5, 9, '2023-11-10'),
(6, 9, '2023-11-10');

INSERT INTO peopleskills (skills_id, people_id, date_acquired)
VALUES
(1, 10, '2023-11-10'),
(4, 10, '2023-11-10'),
(5, 10, '2023-11-10');
 

# Section 8
CREATE TABLE roles (
    id int,
    name varchar(255) NOT NULL,
    sort_priority int NOT NULL,
    PRIMARY KEY (id)
);


# Section 9
INSERT INTO roles (id, name, sort_priority)
VALUES
(1, 'Designer', 10),
(2, 'Developer', 20),
(3, 'Recruit', 30),
(4, 'Team Lead', 40),
(5, 'Boss', 50),
(6, 'Mentor', 60);



# Section 10
CREATE TABLE peopleroles (
    id int AUTO_INCREMENT,
    people_id int NOT NULL,
    role_id int NOT NULL,
    date_assigned date NOT NULL,
    PRIMARY KEY (id)
);


# Section 11
INSERT INTO peopleroles (people_id, role_id, date_assigned)
VALUES
(1, 2, '2023-11-10'),
(2, 5, '2023-11-10'),
(2, 6, '2023-11-10'),
(3, 2, '2023-11-10'),
(3, 4, '2023-11-10'),
(4, 3, '2023-11-10'),
(5, 3, '2023-11-10'),
(6, 2, '2023-11-10'),
(6, 1, '2023-11-10'),
(7, 1, '2023-11-10'),
(8, 1, '2023-11-10'),
(8, 4, '2023-11-10'),
(9, 2, '2023-11-10'),
(10, 2, '2023-11-10'),
(10, 1, '2023-11-10');


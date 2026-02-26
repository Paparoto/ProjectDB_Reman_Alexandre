Prompt : 

You work in the field of paranormal research and spectral analysis. Your company is involved in the domain of cataloging supernatural entities, studying their historical origins, and analyzing their behavioral patterns. It is a company such as a scientific version of the team in Phasmophobia, or the Warrens' Occult Research Center.

We collect detailed data regarding ghost profiles (including their name, age, gender, date and specific cause of death), their entity class (e.g., Poltergeist, Wraith, Banshee), and their haunting habits. We also manage data about the haunted locations (houses, asylums) down to the specific rooms they favor, and the scientific evidence recorded (EMF levels, temperature drops, audio phenomena) used to classify them.

Take inspiration from the following website: https://phasmophobia.fandom.com/wiki/Phasmophobia_Wiki

Your company wants to apply MERISE to design an information system. You are responsible for the analysis part, i.e., gathering the company's requirements. It has called on a computer engineering student to carry out this project, and you must provide him with the necessary information so that he can then apply the following steps of database design and development himself.

First, establish the data business rules for your company in the form of a bulleted list. It must correspond to the information provided by someone who knows how the company works, but not how an information system is built.

Next, based on these rules, provide a raw data dictionary with the following columns, grouped in a table: meaning of the data, type, size in number of characters or digits. There should be between 25 and 35 data items. It is used to provide additional information about each data item (size and type) but without any assumptions about how the data will be modeled later.

Provide the business rules and the data dictionary.


Prompt answer : 

Gemini a dit
Subject: Specifications for the Omni-Spectral Database Project (Project: O.S.I.R.I.S.)

Good morning. Welcome to the Omni-Spectral Investigation & Research Institute of Spirits. As you know, our work is critical. We don't just "hunt ghosts"; we catalog the unseen. We need a rigorous system to manage the massive amount of data we collect during our field operations.

We are handing this over to you for the technical architecture (MERISE method), but here is exactly how our operations function and the raw data we handle daily.


Part 1: Data Business Rules (Management Rules)
Here is how our teams operate in the field and at headquarters. Please treat these as the absolute laws of our workflow:

R1. Every time we deploy a team to a site, we open a specific Investigation Case. We never investigate a site without a case file.

R2. An investigation takes place at a single Location (e.g., "Edgefield Road House" or "Sunny Meadows Asylum"). We need to know where it is and what kind of building it is.

R3. A location is divided into specific Rooms (e.g., Master Bedroom, Basement, Cafeteria). Our researchers need to map these out.

R4. During an investigation, we may identify one (and only one) Entity (Ghost). Sometimes we fail to identify it, but a case never has two distinct ghosts; it’s one entity manifesting per case.

R5. We try to uncover the Entity's Biography: its former human name, when it died, and how it died.

R6. Every Entity belongs to a specific Spectral Class (e.g., Banshee, Demon, Yokai). Each class has documented strengths and weaknesses that we compare against our findings.

R7. To identify the class, our researchers collect Evidence (e.g., Ghost Orbs, Spirit Box response, D.O.T.S. Projector silhouette).

R8. Evidence is always recorded in a specific Room at a specific time. We don't just find "Freezing Temperatures" generally; we find them in the "Living Room."

R9. We have a roster of Researchers. We need to track who was the lead investigator on a specific case.

R10. We also track the Cursed Possessions found at the location (e.g., Tarot Cards, Ouija Board), as they drastically alter the entity's behavior.

Gemini a dit
Subject: Specifications for the Omni-Spectral Database Project (Project: O.S.I.R.I.S.)

Good morning. Welcome to the Omni-Spectral Investigation & Research Institute of Spirits. As you know, our work is critical. We don't just "hunt ghosts"; we catalog the unseen. We need a rigorous system to manage the massive amount of data we collect during our field operations.

We are handing this over to you for the technical architecture (MERISE method), but here is exactly how our operations function and the raw data we handle daily.

Part 1: Data Business Rules (Management Rules)
Here is how our teams operate in the field and at headquarters. Please treat these as the absolute laws of our workflow:

R1. Every time we deploy a team to a site, we open a specific Investigation Case. We never investigate a site without a case file.

R2. An investigation takes place at a single Location (e.g., "Edgefield Road House" or "Sunny Meadows Asylum"). We need to know where it is and what kind of building it is.

R3. A location is divided into specific Rooms (e.g., Master Bedroom, Basement, Cafeteria). Our researchers need to map these out.

R4. During an investigation, we may identify one (and only one) Entity (Ghost). Sometimes we fail to identify it, but a case never has two distinct ghosts; it’s one entity manifesting per case.

R5. We try to uncover the Entity's Biography: its former human name, when it died, and how it died.

R6. Every Entity belongs to a specific Spectral Class (e.g., Banshee, Demon, Yokai). Each class has documented strengths and weaknesses that we compare against our findings.

R7. To identify the class, our researchers collect Evidence (e.g., Ghost Orbs, Spirit Box response, D.O.T.S. Projector silhouette).

R8. Evidence is always recorded in a specific Room at a specific time. We don't just find "Freezing Temperatures" generally; we find them in the "Living Room."

R9. We have a roster of Researchers. We need to track who was the lead investigator on a specific case.

R10. We also track the Cursed Possessions found at the location (e.g., Tarot Cards, Ouija Board), as they drastically alter the entity's behavior.


Part 2: Raw Data Dictionary
Here is the inventory of the raw data we scribble on our clipboards and enter into our logs. This is the raw material you have to work with.

Legend:
A: Alphabetic
N: Numeric
AN: Alphanumeric
D: Date (or Time)
L: Logical (Boolean)

#,Data Meaning (Description),Type,Size

1,Case Reference Number (Unique ID for the file),AN,12

2,Investigation Date,D,10

3,Start Time (Time of entry into location),D,8

4,"Weather Condition (Fog, Rain, Clear, Snow)",A,15

5,"Location Name (e.g., ""Grafton Farmhouse"")",AN,50

6,Location Address,AN,100

7,"Location Size (Small, Medium, Large)",A,10

8,"Location Type (Residential, Institutional, Outdoor)",A,20

9,"Room Name (e.g., ""Foyer"", ""Utility Room"")",AN,30

10,"Room Floor Level (0 for ground, -1 for basement, etc.)",N,2

11,Room Surface Area (in square meters),N,4

12,Ghost First Name (Human origin),A,20

13,Ghost Last Name (Human origin),A,20

14,Ghost Age (Age at time of death),N,3

15,Ghost Gender,A,1

16,Date of Death,D,10

17,"Cause of Death (e.g., Murder, Accident, Natural)",AN,100

18,"Spectral Class Name (e.g., ""Poltergeist"")",A,20

19,Class Description (Lore and summary),AN,255

20,"Class Strength (e.g., ""Throws multiple objects"")",AN,100

21,"Class Weakness (e.g., ""Powerless without items"")",AN,100

22,Hunt Sanity Threshold (% sanity when it attacks),N,3

23,"Evidence Type (e.g., ""EMF Level 5"", ""Fingerprints"")",AN,30

24,"Evidence Reading Value (Specific value recorded, if any)",AN,20

25,Evidence Timestamp (When the phenomenon occurred),D,8

26,Researcher Badge Number,N,6

27,Researcher Last Name,A,30

28,Researcher First Name,A,30

29,"Researcher Rank (Rookie, Intermediate, Professional)",A,15

30,"Cursed Object Name (e.g., ""Music Box"")",AN,30

31,Sanity Level Recorded (Average team sanity at end),N,3
32,Scientific Equipment Name (Device used to get evidence),AN,40
33,Investigation Duration (in minutes),N,4

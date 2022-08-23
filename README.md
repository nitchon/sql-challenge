# sql-challenge
Module 9 Challenge

# Description
Moving onto the topic of relational databases, the challenge, mirroring a real-life work example, is divided up into three components: data modeling, data engineering and data analysis. The first step is to create a database at an abstract level and then filling out the granular details in the entity-relationship diagram (ERD). Having carefully mapped out the relationships and taking note of primary and foreign keys, the next step is to import data into the database. With the final CSV file import, we use SQL to answer any burning queries our managers might have.

In this repository, there is an EmployeesSQL folder that contains a data folder, two SQL files and a Jupyter notebook. The data folder contains six CSV data files pertaining to employee data, which will be used to create and fill a database as well as answering queries. The two SQL files are: table_schema.sql and queries.sql. The table schema is an exported file from [QuickDatabaseDiagrams](https://www.quickdatabasediagrams.com/). The online tools allows the user to model a database from an abstract level to creating table columns with datatypes and establishing relationships between tables. The repository contains a PNG file of the ERD for quick reference. After the user is confident in the database model, they can export it as a SQL file to be imported into any relational database and the database and tables will be created. The six CSV files are imported into the database and can now receive queries.

Having completed the data modeling and data engineering components, the database is ready for queries. The queries file contains eight SQL statements answering a variety of queries. The Juptyer notebook entitled SqlAlchemy_Bonus takes the data analysis further and leverages Pandas and SQLAlchemy capabilities to create a salary histogram and an average salary bar graph by job title.

Mentioned earlier, the challenges walks through a real-life work example with a primary focus on the SQL language, but also utilizes techniques and concepts from previous modules.

# Visuals
Entity-Relationship Diagram

![ERD](https://user-images.githubusercontent.com/107419765/186199413-5b02adbd-a5d8-4667-a342-992a654e9071.PNG)

Salary Distribution

![image](https://user-images.githubusercontent.com/107419765/186201670-cd20dd13-6f07-4678-91b3-51515ae261eb.png)

Average Salary by Job Title

![image](https://user-images.githubusercontent.com/107419765/186201773-726d88bd-cad2-43ca-bece-5a67f03dfe6f.png)



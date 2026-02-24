## Overview
This project is a relational database that models an election process, including voters (Folk), registrations, polls, ballots, staff and their shifts, and voting centers. The focus of this project is database design, schema integrity, and workflow modeling, rather than production deployment or UI development.
This project demontrates:
- ER modeling and normalization
- Referential integrity and constraints
- Triggers
- Interactive query workflows via Jupyter Notebook
### Technologies Used
- MySQL
- SQL
- Python (Jupyter Notebook)
- jupysql / SQLAlchemy / PyMySql (database interface)
### System Requirements
To run the notebook locally, you must have:
- Python 3.9+
- MySQL Server (running locally)
- A MySQL user with permission to create/use databases
### Quick Start
1. Open terminal and log into MySQL
> mysql -u root -p
2. Create Database in MySQL
> CREATE DATABASE wonderlandElections;

> EXIT
3. Import the Schema files
> mysql - u root -p wonderlandElections < schema.sql

> mysql - u root -p wonderlandElections < triggers.sql

> mysql - u root -p wonderlandElections < transaction.sql

> mysql - u root -p wonderlandElections < load.sql
4. Launch Jupyter Notebook from project directory and open electionsNotebook file
> jupyter notebook

This notebook will automatically:
- Install required Python dependencies (jupysql, sqlalchemy, pymysql)
- prompt for MySQL password
- Connect to the local wonderlandElections database

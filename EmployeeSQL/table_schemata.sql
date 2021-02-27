Drop Table Title cascade;
CREATE TABLE Title (
    Title_ID VARCHAR   NOT NULL,
    Tiltle VARCHAR   NOT NULL,
    PRIMARY KEY (Title_ID));
	
Drop Table Department cascade;
CREATE TABLE Department (
    Dept_ID VARCHAR   NOT NULL,
    Dept_Name VARCHAR   NOT NULL,
    PRIMARY KEY (Dept_ID)
);

Drop Table Employees cascade;
CREATE TABLE Employees (
    Emp_ID INTEGER   NOT NULL,
    Title VARCHAR   NOT NULL,
    Birth_Date DATE   NOT NULL,
    First_Name VARCHAR   NOT NULL,
    Last_Name VARCHAR   NOT NULL,
    SEX VARCHAR   NOT NULL,
    Hire_Date DATE   NOT NULL,
    PRIMARY KEY (Emp_ID),
    FOREIGN KEY (Title) REFERENCES Title (Title_ID));
	
Drop Table Emp_Dept cascade;
CREATE TABLE Emp_Dept (
    Emp_ID INTEGER   NOT NULL,
    Dept_ID VARCHAR   NOT NULL,
    PRIMARY KEY (Emp_ID, Dept_ID),
	FOREIGN KEY (Emp_ID) REFERENCES Employees (Emp_ID),
	FOREIGN KEY (Dept_ID) REFERENCES Department (Dept_ID));
	

Drop Table Mgr_Dept;
CREATE TABLE Mgr_Dept (
    Dept_ID VARCHAR   NOT NULL,
	Emp_ID INTEGER   NOT NULL,
	PRIMARY KEY (Dept_ID, Emp_ID),
	FOREIGN KEY (Dept_ID) REFERENCES Department (Dept_ID),
	FOREIGN KEY (Emp_ID) REFERENCES Employees (Emp_ID));

Drop Table Salaries;	
CREATE TABLE Salaries (
    Emp_ID INTEGER   NOT NULL,
    Salary INT   NOT NULL,
    PRIMARY KEY (Emp_ID),
	FOREIGN KEY (Emp_ID) REFERENCES Employees (Emp_ID));




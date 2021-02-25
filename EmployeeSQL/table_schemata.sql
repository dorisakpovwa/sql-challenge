Drop Table Department;
CREATE TABLE Department (
    ID VARCHAR   NOT NULL,
    Dept_Name VARCHAR   NOT NULL,
    CONSTRAINT pk_Department PRIMARY KEY (
        ID
     )
);
Drop Table Emp_Dept;
CREATE TABLE Emp_Dept (
    Emp_ID INTEGER   NOT NULL,
    Department_ID VARCHAR   NOT NULL,
    CONSTRAINT pk_Emp_Dept PRIMARY KEY (
        Emp_ID,Department_ID
     )
);
Drop Table Mgr_Dept;
CREATE TABLE Mgr_Dept (
    Department_ID VARCHAR   NOT NULL,
	Emp_ID INTEGER   NOT NULL,
    CONSTRAINT pk_Mgr_Dept PRIMARY KEY (
        Emp_ID,Department_ID
     )
);

CREATE TABLE Employees (
    Emp_ID INTEGER   NOT NULL,
    Title VARCHAR   NOT NULL,
    Birth_Date DATE   NOT NULL,
    First_Name VARCHAR   NOT NULL,
    Last_Name VARCHAR   NOT NULL,
    SEX VARCHAR   NOT NULL,
    Hire_Date DATE   NOT NULL,
    CONSTRAINT pk_Employees PRIMARY KEY (
        Emp_ID
     )
);

CREATE TABLE Salaries (
    Emp_ID INTEGER   NOT NULL,
    Salary INT   NOT NULL,
    CONSTRAINT pk_Salaries PRIMARY KEY (
        Emp_ID
     )
);

CREATE TABLE Title (
    Title_ID VARCHAR   NOT NULL,
    Tiltle VARCHAR   NOT NULL,
    CONSTRAINT pk_Title PRIMARY KEY (
        Title_ID
     )
);



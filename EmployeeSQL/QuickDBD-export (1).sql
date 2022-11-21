-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Create Tables

CREATE TABLE "departments" (
    "Dept_Number" varchar(4)  NOT NULL,
    "Dept_Name" varchar(30)   NOT NULL
);

CREATE TABLE "dept_emp" (
    "Emp_Number" int   NOT NULL,
    "Dept_Number" varchar(4)  NOT NULL,
    CONSTRAINT "pk_dept_emp" PRIMARY KEY (
        "Emp_Number","Dept_Number"
     )
);

CREATE TABLE "dept_manager" (
    "Dept_Number" varchar(4)   NOT NULL,
    "Emp_Number" int   NOT NULL,
    CONSTRAINT "pk_dept_manager" PRIMARY KEY (
        "Dept_Number","Emp_Number"
     )
);

CREATE TABLE "employees" (
    "Emp_Number" int   NOT NULL,
    "Emp_title_id" varchar(5)   NOT NULL,
    "Birth_Date" date(8)   NOT NULL,
    "First_Name" varchar(30)   NOT NULL,
    "Last_Name" varchar(30)   NOT NULL,
    "Sex" char   NOT NULL,
    "Hire_Date" date(8)   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "Emp_Number"
     )
);

CREATE TABLE "salaries" (
    "Emp_Number" int   NOT NULL,
    "Salary" money   NOT NULL
);

CREATE TABLE "titles" (
    "Title_id" varchar(5)   NOT NULL,
    "Title" varchar(30)   NOT NULL,
    CONSTRAINT "pk_titles" PRIMARY KEY (
        "Title_id"
     )
);

ALTER TABLE "departments" ADD CONSTRAINT "fk_departments_Dept_Number" FOREIGN KEY("Dept_Number")
REFERENCES "dept_emp" ("Dept_Number");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_Emp_Number" FOREIGN KEY("Emp_Number")
REFERENCES "employees" ("Emp_Number");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_Dept_Number" FOREIGN KEY("Dept_Number")
REFERENCES "departments" ("Dept_Number");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_Emp_Number" FOREIGN KEY("Emp_Number")
REFERENCES "employees" ("Emp_Number");

ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_Emp_Number" FOREIGN KEY("Emp_Number")
REFERENCES "salaries" ("Emp_Number");

ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_Emp_title_id" FOREIGN KEY("Emp_title_id")
REFERENCES "titles" ("Title_id");


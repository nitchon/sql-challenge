-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "department" (
    "department_id" VARCHAR(15)   NOT NULL,
    "department_name" VARCHAR(20)   NOT NULL,
    CONSTRAINT "pk_department" PRIMARY KEY (
        "department_id"
     )
);

CREATE TABLE "employees" (
    "employee_id" INT   NOT NULL,
    "employee_title_id" VARCHAR(15)   NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" VARCHAR(30)   NOT NULL,
    "last_name" VARCHAR(30)   NOT NULL,
    "sex" VARCHAR(1)   NOT NULL,
    "hire_date" date   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "employee_id"
     )
);

CREATE TABLE "salaries" (
    "employee_id" INT   NOT NULL,
    "salary" INT   NOT NULL
);

CREATE TABLE "titles" (
    "title_id" VARCHAR(15)   NOT NULL,
    "title" VARCHAR(20)   NOT NULL,
    CONSTRAINT "pk_titles" PRIMARY KEY (
        "title_id"
     )
);

CREATE TABLE "department_employees_junction" (
    "employee_id" INT   NOT NULL,
    "department_id" VARCHAR(15)   NOT NULL
);

CREATE TABLE "department_managers_junction" (
    "department_id" VARCHAR(15)   NOT NULL,
    "employee_id" INT   NOT NULL
);

ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_employee_title_id" FOREIGN KEY("employee_title_id")
REFERENCES "titles" ("title_id");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_employee_id" FOREIGN KEY("employee_id")
REFERENCES "employees" ("employee_id");

ALTER TABLE "department_employees_junction" ADD CONSTRAINT "fk_department_employees_junction_employee_id" FOREIGN KEY("employee_id")
REFERENCES "employees" ("employee_id");

ALTER TABLE "department_employees_junction" ADD CONSTRAINT "fk_department_employees_junction_department_id" FOREIGN KEY("department_id")
REFERENCES "department" ("department_id");

ALTER TABLE "department_managers_junction" ADD CONSTRAINT "fk_department_managers_junction_department_id" FOREIGN KEY("department_id")
REFERENCES "department" ("department_id");

ALTER TABLE "department_managers_junction" ADD CONSTRAINT "fk_department_managers_junction_employee_id" FOREIGN KEY("employee_id")
REFERENCES "employees" ("employee_id");


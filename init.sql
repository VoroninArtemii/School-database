BEGIN TRANSACTION;
DROP TABLE IF EXISTS "Subject";
CREATE TABLE IF NOT EXISTS "Subject" (
	"Subject ID"	INTEGER,
	"Title"	TEXT,
	"Technical"	INTEGER,
	PRIMARY KEY("Subject ID")
);
DROP TABLE IF EXISTS "Teacher";
CREATE TABLE IF NOT EXISTS "Teacher" (
	"Teacher ID"	INTEGER,
	"First name"	TEXT,
	"Last name"	TEXT,
	PRIMARY KEY("Teacher ID")
);
DROP TABLE IF EXISTS "Group";
CREATE TABLE IF NOT EXISTS "Group" (
	"Group ID"	INTEGER,
	"Name"	TEXT,
	PRIMARY KEY("Group ID")
);
DROP TABLE IF EXISTS "Student";
CREATE TABLE IF NOT EXISTS "Student" (
	"Student ID"	INTEGER,
	"Group ID"	INTEGER,
	"First name"	TEXT,
	"Last name"	TEXT,
	PRIMARY KEY("Student ID"),
	FOREIGN KEY("Group ID") REFERENCES "Group"("Group ID")
);
DROP TABLE IF EXISTS "Course";
CREATE TABLE IF NOT EXISTS "Course" (
	"Course ID"	INTEGER,
	"Subject ID"	INTEGER,
	"Teacher ID"	INTEGER,
	"Group ID"	INTEGER,
	FOREIGN KEY("Subject ID") REFERENCES "Subject"("Subject ID"),
	FOREIGN KEY("Teacher ID") REFERENCES "Teacher"("Teacher ID"),
	FOREIGN KEY("Group ID") REFERENCES "Group"("Group ID"),
	PRIMARY KEY("Course ID")
);
DROP TABLE IF EXISTS "Work";
CREATE TABLE IF NOT EXISTS "Work" (
	"Work ID"	INTEGER,
	"Course ID"	INTEGER,
	"Title"	TEXT,
	"Number"	INTEGER,
	FOREIGN KEY("Course ID") REFERENCES "Course"("Course ID"),
	PRIMARY KEY("Work ID")
);
DROP TABLE IF EXISTS "Mark";
CREATE TABLE IF NOT EXISTS "Mark" (
	"Mark ID"	INTEGER,
	"Student ID"	INTEGER,
	"Subject ID"	INTEGER,
	"Work ID"	INTEGER,
	"Mark"	INTEGER,
	"Date"	TEXT,
	FOREIGN KEY("Work ID") REFERENCES "Work"("Work ID"),
	FOREIGN KEY("Student ID") REFERENCES "Student"("Student ID"),
	PRIMARY KEY("Mark ID"),
	FOREIGN KEY("Subject ID") REFERENCES "Subject"("Subject ID")
);
COMMIT;

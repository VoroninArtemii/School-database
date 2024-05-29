--The query displays all information about marks that were given only in technical subjects
SELECT * FROM Mark WHERE "Subject ID" IN (SELECT "Subject ID" FROM Subject WHERE (Technical = 1));

--The query displays information about the works that were earlier 03/01/2024
SELECT * FROM Work WHERE "Work ID" IN (SELECT "Work ID" FROM Mark WHERE ("Date" < "2024-03-01"));

--The query displays information about marks that are higher than the average and given by history
SELECT * FROM Mark WHERE (Mark > (SELECT AVG(Mark) FROM Mark) AND "Subject ID" = 3);

--The query displays information about the mark, the date it was given, and the total number of marks given to the current date
SELECT Mark, "Date", COUNT(Mark) OVER (ORDER BY "Date") AS "Total" FROM Mark;

--The query displays information about the mark, the date it was given, and the first and last name of the student who gave it
SELECT Mark.Mark, Mark."Date", Student."Last name", Student."First name" FROM Student INNER JOIN "Mark" ON Mark."Student ID" = Student."Student ID";

--The query displays the name of the group and the subject that is taught in this group
SELECT DISTINCT Subject.Title, "Group".Name FROM Course INNER JOIN "Group" ON Course."Group ID" = "Group"."Group ID" INNER JOIN Subject ON Subject."Subject ID" = Course."Subject ID";

--The query displays the name and surname of the teacher and the subject he teaches:
SELECT DISTINCT Subject.Title, Teacher."Last name", Teacher."First name" FROM Course INNER JOIN Teacher ON Course."Teacher ID" = Teacher."Teacher ID" INNER JOIN Subject ON Course."Subject ID" = Subject."Subject ID";

--The query displays information about the mark, the date it was given, the name and surname of the student who gave it, the group in which the student studies and the subject on which the mark was given
SELECT Mark.Mark, Mark."Date", Student."Last name", Student."First name", "Group"."Name", Subject.Title FROM Mark
	LEFT JOIN Student ON Mark."Student ID" = Student."Student ID"
	LEFT JOIN "Group" ON Student."Group ID" = "Group"."Group ID"
	LEFT JOIN Subject ON Mark."Subject ID" = Subject."Subject ID"; 

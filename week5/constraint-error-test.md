Error Check
Error Code: 1048. Column 'dept_name' cannot be null
Error Code: 3819. Check constraint 'chk_credit_units' is violated.
Error Code: 1452. Cannot add or update a child row: a foreign key constraint fails (`sen307_11401`.`student`, CONSTRAINT `student_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`))
Error Code: 1265. Data truncated for column 'gender' at row 1


Your Turn 
Error Code: 1062. Duplicate entry 'Software Engineering' for key 'department.dept_name'


Differences 
My ERD Diagrams doesnt involve any direct relationship nor cardinality between Department and Course while the reversed engineered ERD Diagram from Workbench Corrects that and give Department - Course a 1-M relationship
The junction table brought out by reverse engineering the sql query is named "courseallocation" while the one drawn up in my ERD diagram is called "teachingassignment"
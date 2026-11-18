# Adeniji Justice Adeyemi - VUG/SEN/24/11401 - VUA-SEN 307 Week 4 Lab Submission



### Part 2: Normalization from 1NF to 3NF 

|matric\_no|student\_name|student\_dept|course\_codes|course\_titles|lecturers|lecturer\_depts|session|
|-|-|-|-|-|-|-|-|
|20231234|Ada Obi|Software Engineering|SEN307, SEN301|Database Systems, Software Architecture|Dr A. Okafor, Dr M. Bello|Software Eng., Software Eng.|2026/2027|
|20231235|John Musa |Computer Science|SEN307, CSC301|Database Systems, Operating Systems|Dr. A Okafor, Mrs F. Eze |Software Eng., Computer Sci.|2026/2027|
|20231236|Grace Okon|Software Engineering |SEN301|Software Architecture|Dr M. Bello|Software Eng.|2026/2027|



#### Step 1 - 1NF

Explanation: The original table was converted to 1NF by separating multiple courses in a single cell into individual rows, with one row for each student–course pair

|matric\_no|student\_name|student\_dept|course\_codes|course\_titles|lecturers|lecturer\_depts|session|
|-|-|-|-|-|-|-|-|
|20231234|Ada Obi|Software Engineering|SEN307 |Database Systems|Dr A. Okafor|Software Eng., |2026/2027|
|20231234|Ada Obi |Software Engineering |SEN301|Software Architecture|Dr M. Bello|Software Eng.|2026/2027|
|20231235|John Musa|Computer Science|SEN307 |Database Systems|Dr. A Okafor|Software Eng. |2026/2027|
|20231235|John Musa |Computer Science|CSC301|Operating Systems|Mrs F. Eze|Computer Sci.|2026/2027|
|20231236|Grace Okon|Software Engineering|SEN301|Software Architecture|Dr M. Bello|Software Eng.|2026/2027|





#### Step 2: Second Normal Form (2NF)

Explanation: The table was separated into Student, Course, and Enrolment tables to remove partial dependencies on parts of the composite key.

##### Student Table

|matric\_no|student\_name|student\_department|
|-|-|-|
|20231234|Ada Obi|Software Engineering|
|20231235|John Musa|Computer Science|
|20231236|Grace Okon |Softare Engineering|



##### Course Table

|course\_code|course\_title|lecturer|lecturer\_dept|
|-|-|-|-|
|SEN307|Database Systems|Dr A. Okafor |Software Eng.|
|SEN301|Software Architecture|Dr M. Bello|Software Eng.|
|CSC301|Operating Systems |Mrs F. Eze|Computer Sci.|



##### Enrolment Table

|matric\_no|course\_code|session|
|-|-|-|
|20231234|SEN307|2026/2027|
|20231234|SEN301|2026/2027|
|20231235|SEN307|2026/2027|
|20231235|CSC301|2026/2027|
|20231236|SEN301|2026/2027|





##### Step 3: THrid Noraml Form

Explanation: The tables were further separated to store department and lecturer details independently and to represent lecturer–course assignments through a TeachingAssignment table.

##### Student Table

|matric\_no|student\_name|department\_id|
|-|-|-|
|20231234|Ada Obi|D001|
|20231235|John Musa|D002|
|20231236|Grace Okon|D001|





##### Department Table

|department\_id|department|
|-|-|
|D001|Software Engineering |
|D002|Computer Science|



##### Lecturer Table

|lecturer\_id|lecturer|department\_id|
|-|-|-|
|L001|Dr A. Okafor|D001|
|L002|Dr M. Bello|D001|
|L003|Mrs F. Eze|D002|





##### Course Table

|course\_code|course\_title|
|-|-|
|SEN307|Database Systems|
|SEN301|Software Architecture|
|CSC301|Operating Systems|



##### Enrolment Table

|matric\_no|course\_code|session|
|-|-|-|
|20231234|SEN307|2026/2027|
|20231234|SEN301|2026/2027|
|20231235|SEN307|2026/2027|
|20231235|CSC301|2026/2027|
|20231236|SEN301|2026/2027|



##### TeachingAssignment Table

|lecturer\_id|course\_code|session|
|-|-|-|
|L001|SEN307|2026/2027|
|L002|SEN301|2026/2027|
|L003|CSC301|2026/2027|





##### Step 4: Write out your final Schema

Department (department\_id PK, department)

Student (matric\_no PK, student\_name, department\_id FK → Department)

Lecturer (lecturer\_id PK, lecturer, department\_id FK → Department)

Course (course\_code PK, course\_title)

Enrolment (matric\_no PK/FK → Student, course\_code PK/FK → Course, session PK)

TeachingAssignment (lecturer\_id PK/FK → Lecturer, course\_code PK/FK → Course, session PK)


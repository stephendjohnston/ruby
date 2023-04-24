**What Century Is That**
===

**_Problem:_**


Write a method that takes a year as input and returns the century. The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.

New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

-_inputs:_ integer
-_outputs:_ string

_Mental model:_

  - determing what century the input is and output the century with the correct letters that correspond with that number

**_Examples:_**


- century(2000) == '20th'
- century(2001) == '21st'
- century(1965) == '20th'
- century(256) == '3rd'
- century(5) == '1st'
- century(10103) == '102nd'
- century(1052) == '11th'
- century(1127) == '12th'
- century(11201) == '113th'

**_Data Structures:_**


- Integers
- strings

**_Algorithm:_**


DETERMINE THE CENTURY
 - divide the year by 100 and add 1 to get the century
 - UNLESS YEAR IS THE END YEAR OF CENTURY, THEN DONT ADD 1
 - check to see if the year is the last year of the century
  - if year modulo 100 is equal to 0, then dont add 1
- DISTINGUISH BETWEEN 1ST, 2ND, 3RD AND 11TH, 12TH, 13TH
 - convert integer to string with to_s
 - if the 2nd last character is equal to '1' then century + 'th'
 - else use a case statment
 - the last character is '1' then 'st' and so on
 

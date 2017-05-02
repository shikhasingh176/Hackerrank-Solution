/*Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates. */


SELECT distinct city from station 
where city Not like '%A' and city Not like '%E' and city Not like '%I' and
      city Not like '%O' and city not like '%U';
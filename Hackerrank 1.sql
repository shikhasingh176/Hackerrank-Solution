?* Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). 
If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically. */

( select CITY, 
       char_length(CITY) as len_city 
  from STATION 
  where char_length(CITY)=(select char_length(CITY) 
                          from STATION 
                          order by char_length(CITY) LIMIT 1) 
  Order by CITY LIMIT 1) 
 UNION ALL 
 (select CITY,
        char_length(CITY) as len_city 
  from STATION 
  where char_length(CITY)=(select char_length(CITY) 
                           from STATION 
                           order by char_length(CITY) DESC LIMIT 1)  
  Order by CITY DESC LIMIT 1) 
  ORDER BY char_length(CITY);
use moviemania;
## QUESTION 1 : Query To show all movie tithle and movie year
select MOV_TITHLE,MOV_YEAR
from MOVIE ;

## Question 2 : Query to show year movie American Beauty was Created
select MOV_YEAR
from MOVIE
where MOV_TITHLE = "American Beauty";


## QUESTION 3 : Query to show the movie created in year 1999
select *
FROM MOVIE
where MOV_YEAR = 1999;

## QUESTION 4 : Query to show movie created before 1998
select *
from MOVIE
WHERE MOV_YEAR < 1998;

## QUESTION5 :Query to show name of movie and reviewers name in same list
Select  REV_NAME,  MOV_TITHLE
from REVIEWER, MOVIE;

## QUESTION 6 : Query to show Reviewers Name, and Stars given by a reviewer
SELECT REV_NAME, REV_STARS
from REVIEWER
join RATING 
where REV_STARS = 7;

## Question 7 : Query that shows ratings of movie that is null
select MOV_TITHLE
FROM MOVIE 
JOIN RATING 
WHERE REV_STARS = 0.0;

## QUESTION 8 : Query that shows movie director OF movie eyes wide shut.
SELECT DIR_FNAME,  DIR_LNAME, MOV_TITH
FROM DIRECTOR
JOIN MOVIE_DIRECTOR USING (DIR_ID)
JOIN MOVIE USING(MOV_ID)
WHERE MOV_TITHLE = 'eyes wide shut';

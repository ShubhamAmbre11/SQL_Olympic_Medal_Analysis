-- SQL PROJECT

-- 1. Show how many medal counts present for entire data

select count(*) from olympics 
where medal <> 'nonmedal';

-- 2. Show count of unique sports present in Olympics

select count(distinct sport) from olympics;

-- 3. Show how many different medals won by team India

select team , medal ,count(medal) as countmedal from olympics
where team = 'india' and medal != 'nonmedal'
group by team , medal
order by countmedal desc;

-- 4. Show event wise medals won by India show from highest to lowest medals won in order

select team ,event,medal, count(medal) as countmedal from olympics
where team = 'India' and medal <> 'nomedal'
group by team , event , medal
order by countmedal desc;

-- 5. Show event wise medals won by India in order of year

select event , medal , team ,year,count(medal) as countmedal from olympics
where team = 'india' and medal <> 'nomedal'
group by event, medal, team,year
order by year;


-- 6. show country who won maximum medals.

select noc, medal, team , count(medal) as maximummedal from olympics
where medal <> 'nomedal'
group by medal , team ,noc
order by maximummedal desc;


-- 7.show top 10 countries who won gold

select team ,medal , count(medal) as Countmedal from olympics
where medal <> 'nomedal' and medal = 'Gold'
group by team , medal 
order by Countmedal desc
limit 10 ;



--  8. show in which year did United states won most gold medal

select team , year , medal , count(medal) as Countmedal from olympics
where team = 'United States' and medal = 'Gold'
group by team , year , medal
order by countmedal desc
limit 1 ;


-- 9. In which sports United States has most medals.

select sport, medal , team, count(medal) as countmedal from olympics
where team = 'United States' and medal != 'nomedal'
group by sport , medal ,team
order by countmedal desc
limit 1;


-- 10. Find top three players who won most medals along with their sports and country

select name , sport, team, medal , count(medal) as countmedal from olympics
where medal != 'nomedal'
group by name, sport,team,medal
order by countmedal desc
limit 3;



-- 11. Find player with most gold medals in cycling along with his country.

select name, team , sport ,medal, count(medal) as Countmedal from olympics
where medal = 'Gold' and sport = 'cycling'
group by name, team, sport,medal
order by Countmedal desc;


-- 12.Find player with most medals (Gold+Silver+Bronze) in Basketball also show his country.

select name, team , sport, medal, count(medal) as Countmedal from olympics
where medal != 'nomedal' and sport = 'Basketball'
group by name, team, sport, medal
order by Countmedal desc
limit 10;


-- 13. Find out the count of different medals of the top basketball player Teresa Edwards

select name , sport, medal,count(medal) as Countmedal from olympics
where name = 'Teresa Edwards' and sport = 'basketball'
group by name , sport ,medal
order by Countmedal desc;



-- 14. Find out medals won by male,female each year , Export this data and plot graph in excel

select  sex ,medal, year , count(medal) as countmedal from olympics
where medal != 'nomedal'
group by sex , medal, year
order by Countmedal desc;

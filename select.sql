select name, year from alboms where "year" > ('2018-01-01') and "year" < ('2018-12-31')
select name, duration from tracks where duration = (select max(duration) from tracks)
select name from tracks where duration > 3.5 * 60
select name from collection where "year" >= ('2018-01-01') and "year" <= ('2020-12-31')
select name from musicians where name NOT LIKE ('% %')
select name from tracks t  where name LIKE ('%мой%') or name like ('%my%')
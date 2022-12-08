select cats.name, toys.name
from cats
join toys
on toys.cat_id=cats.id
where cats.name = 'Garfield';

select toys.name
from toys
where cat_id IN (
    select id
    from cats
    where
        name = 'Garfield'
);

INSERT INTO toys (name, cat_id) 
VALUES (
    'New Toy',
    (
        SELECT id
        FROM cats
        WHERE name='Garfield'
    )
);

INSERT INTO toys (name, cat_id) 
SELECT 'Cat Bed', id FROM cats
WHERE birth_year > 2013;

DELETE FROM  toys
where name = 'Cat Bed';

select * from toys
join cats on cats.id=toys.cat_id
where cats.name = 'Garfield';

insert into cats_backup
select * from cats;

insert into toys_backup
select * from toys;

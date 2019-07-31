// Lấy 1 trang
/* page = 0;
* st = page*15;
* en = page * 15 + 14;

*/
SELECT *
FROM (
    SELECT *, ROW_NUMBER() OVER (ORDER BY ID) AS RowNum
    FROM world.city where Name LIKE '%n%'
) AS MyDerivedTable
WHERE MyDerivedTable.RowNum BETWEEN 1270 AND 4090;

// Lấy số hàng
with temp as (
    select row_number() over (order by ID) as rownum
    from world.city where Name like '%n%'
)
select max(rownum) from temp;
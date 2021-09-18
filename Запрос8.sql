SELECT А.АвторID, А.Фамилия,А.Имя,А.Отчество, count(*) AS Stati
FROM (Авторы AS А  INNER JOIN АвторыСтатья AS АС  ON А.АвторID=АС.АвторID)
GROUP BY А.АвторID, А.Фамилия,А.Имя,А.Отчество
HAVING count(*)=(SELECT MAX(kol) AS MKOL
FROM (SELECT count(*) AS kol
FROM АвторыСтатья AS ас
GROUP BY АвторID) AS D);
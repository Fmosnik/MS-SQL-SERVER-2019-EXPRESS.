SELECT   З.ЗаседаниеID, З.Дата, З.Длительность, COUNT(*) AS kolvo
FROM ЗаседанияСостав AS ЗС INNER JOIN Заседания AS З ON ЗС.ЗаседаниеID=З.ЗаседаниеID
GROUP BY З.ЗаседаниеID, З.Дата,З.Длительность
 HAVING COUNT(*)>4;
SELECT У.ЗаседаниеID, COUNT(*) AS kolvo
FROM Учет_Статей AS У
WHERE У.Статус<>'Не рассмотрена' AND
 EXISTS (SELECT *
FROM Заседания AS З
WHERE У.ЗаседаниеID=З.ЗаседаниеID)
GROUP BY У.ЗаседаниеID
ORDER BY kolvo DESC, ЗаседаниеID ASC

;

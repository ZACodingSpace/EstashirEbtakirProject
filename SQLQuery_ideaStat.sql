/* ------------- IDEAS ------------- */

/* عدد الافكار اللي تم استخدام التقنيات فيها */
SELECT 
  COUNT(tec.Idea_ID) AS idea_num,
  tec.tech_name 
FROM 
  (SELECT Idea_ID, tech_name FROM OurIdea, Technologies WHERE Technologies.type ='I' AND OurIdea.Idea_ID = Technologies.ID) AS tec
GROUP BY tec.tech_name ORDER BY idea_num;

/* عدد الافكار خلال سنوات */
SELECT
  YEAR(Date) AS year,
  COUNT(Idea_ID) AS ideas
FROM OurIdea
GROUP BY YEAR(Date);

SELECT
  MONTH(Date) AS m,
  COUNT(Idea_ID) AS ideas
FROM OurIdea
GROUP BY MONTH(Date);

/* عدد الافكار لاخر 6 اشهر */
SELECT TOP(6)
  MONTH(Date) AS m, YEAR(Date) AS y,
  COUNT(Idea_ID) AS ideas
FROM OurIdea
GROUP BY MONTH(Date), YEAR(Date)
ORDER BY y DESC, m DESC;

/* الافكار المأخوذة */
SELECT 
  COUNT(Idea_ID), taken_stat
FROM 
( SELECT Idea_ID, Is_Taken, CASE 
  WHEN Is_Taken = 0 THEN N'غير مأخوذة'
  WHEN Is_Taken = 1 THEN N'مأخوذة'
  END AS taken_stat 
  FROM OurIdea) as ideaT
GROUP BY taken_stat;

/* استعراض جميع الأفكار */
SELECT * FROM OurIdea;

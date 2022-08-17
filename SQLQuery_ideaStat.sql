/* ------------- IDEAS ------------- */

/* عدد الافكار اللي تم استخدام التقنيات فيها */
SELECT 
  COUNT(tec.Idea_ID) AS idea_num,
  tec.tech_name 
FROM 
  (SELECT Idea_ID, tech_name FROM OurIdea, Technologies WHERE Technologies.type ='I' AND OurIdea.Idea_ID = Technologies.ID) AS tec
GROUP BY tec.tech_name;

/* عدد الافكار خلال سنوات , و واحد ثاني لاخر 6 اشهر */
SELECT
  YEAR(Date) AS year,
  COUNT(Idea_ID) AS ideas
FROM OurIdea
GROUP BY YEAR(Date);

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

SELECT * FROM OurIdea;

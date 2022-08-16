--S3


COMMIT;

--The Compound Attractions Review report gives the client a view of-- 
--how many times esch attraction has been liked and disliked by the-- 
--users--
CREATE 
OR replace view "compound attr review" AS 
SELECT
   attractionid AS attr_id,
   SUM(likes) AS likes,
   SUM(dislikes) AS dislikes 
FROM
   attractionreview 
GROUP BY
   attractionid 
ORDER BY
   attractionid;

--The Compound Information Destination report gives the client all-- 
--the relevant information regarding each destination in a view ---
--incluiding attractions, main type of transport and average ticket-- 
--fares for each attraction, to be able to plan ahead-- 
CREATE 
OR replace view "compound info destination" AS 
SELECT
   d.destinationid AS dest_id,
   d.destinationname AS destination,
   a.attractionid AS attrc_id,
   a.attractionname AS attraction,
   r.likes AS likes,
   r.dislikes AS dislikes,
   t.transporttype AS main_transp,
   t.ticketfare AS "ticket fare" 
FROM
   destination d 
   INNER JOIN
      attraction a 
      ON d.destinationid = a.destinationid 
   INNER JOIN
      "compound attr review" r 
      ON a.attractionid = r.attr_id 
   INNER JOIN
      transporttype t 
      ON r.attr_id = t.attractionid;

--The Top 10 Attractions report gives the client the information-- 
--regarding 10 most liked by the users attractions so the client--
--can give discounts or new deals focusing on this top 10 attractions--
CREATE 
OR replace view "top 10 attractions" AS WITH attr_rank AS 
(
   SELECT
      attr_id,
      likes,
      RANK () OVER ( 
   ORDER BY
      likes DESC ) ranking 
   FROM
      "compound attr review" 
)
SELECT DISTINCT
   attr_id,
   likes,
   ranking 
FROM
   attr_rank 
WHERE
   ranking <= 10 
ORDER BY
   ranking;

--The dest_attraction report gives the client full information-- 
--regarding the reviews grouped by destinations so later on, we--
--can see the top 3 destinations --
CREATE 
OR replace view dest_attrc AS 
SELECT
   dest_id,
   SUM(likes) AS likes,
   SUM(dislikes) AS dislikes 
FROM
   "compound info destination" 
GROUP BY
   dest_id 
ORDER BY
   dest_id;

--The Top 3 Destinations report gives the client the information-- 
--regarding 3 most liked by the users destinations so the client--
--can decide on how to do the marketing on this top 3 --
--destinations--
CREATE 
OR replace view "top 3 destinations" AS WITH dest_rank AS 
(
   SELECT
      dest_id,
      likes,
      RANK () OVER ( 
   ORDER BY
      likes DESC ) ranking 
   FROM
      dest_attrc 
)
SELECT
   dest_id,
   likes,
   ranking 
FROM
   dest_rank 
WHERE
   ranking <= 3;
-------------
COMMIT;
-------------
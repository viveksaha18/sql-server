Select w1.id as id
from Weather w1
JOIN Weather w2
ON w1.recordDate = DATEADD(day, 1, w2.recordDate)
where w1.temperature > w2.temperature
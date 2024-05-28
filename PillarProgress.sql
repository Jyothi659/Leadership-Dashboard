DROP table [Analytic].[dbo].[Excel_FLL_Pillar_Progression];

SELECT
yt.*,
CASE
WHEN [Transcript - Transcript Status] = 'Completed' THEN 'Completed'
WHEN [Transcript - Orientation Status] = 'Approved' THEN 'Orientation Not Completed'
WHEN [Training - Training Title] = 'EXCEL at Frontline Leadership - People Leader Fundamentals' AND (
([Transcript - Curriculum Completion Percentage] < 26  AND DATEDIFF(day, [Transcript - Orientation Completed Date], GETDATE()) <= 10) OR
([Transcript - Curriculum Completion Percentage] >= 26  AND DATEDIFF(day, [Transcript - Orientation Completed Date], GETDATE()) <= 10) OR
([Transcript - Curriculum Completion Percentage] > 26 AND [Transcript - Curriculum Completion Percentage] < 51 AND DATEDIFF(day, [Transcript - Orientation Completed Date], GETDATE()) > 10 AND DATEDIFF(day, [Transcript - Orientation Completed Date], GETDATE()) < 20) OR
([Transcript - Curriculum Completion Percentage] >= 51 AND DATEDIFF(day, [Transcript - Orientation Completed Date], GETDATE()) > 20 AND DATEDIFF(day, [Transcript - Orientation Completed Date], GETDATE()) <= 35) OR
([Transcript - Curriculum Completion Percentage] > 50 AND DATEDIFF(day, [Transcript - Orientation Completed Date], GETDATE()) <= 20 )
) THEN 'On Track'
WHEN [Training - Training Title] = 'EXCEL at Frontline Leadership - People Leader Fundamentals' AND (
    ([Transcript - Curriculum Completion Percentage] <= 50 AND DATEDIFF(day, [Transcript - Orientation Completed Date], GETDATE()) >= 20 AND DATEDIFF(day, [Transcript - Orientation Completed Date], GETDATE()) <= 35) OR
    ([Transcript - Curriculum Completion Percentage] <= 25 AND DATEDIFF(day, [Transcript - Orientation Completed Date], GETDATE()) > 10 AND DATEDIFF(day, [Transcript - Orientation Completed Date], GETDATE()) <= 35)
) THEN 'Falling Behind'
WHEN [Training - Training Title] = 'EXCEL at Frontline Leadership - People Leader Fundamentals'  AND DATEDIFF(day, [Transcript - Orientation Completed Date], GETDATE()) > 35 THEN 'Past Due'
WHEN [Training - Training Title] = 'EXCEL at Frontline Leadership - Build Leadership Habits' AND (
([Transcript - Curriculum Completion Percentage] < 26  AND DATEDIFF(day, [Transcript - Orientation Completed Date], GETDATE()) <= 45) OR
([Transcript - Curriculum Completion Percentage] >= 26  AND DATEDIFF(day, [Transcript - Orientation Completed Date], GETDATE()) <= 45) OR
([Transcript - Curriculum Completion Percentage] > 26 AND [Transcript - Curriculum Completion Percentage] < 51 AND DATEDIFF(day, [Transcript - Orientation Completed Date], GETDATE()) > 45 AND DATEDIFF(day, [Transcript - Orientation Completed Date], GETDATE()) < 65) OR
([Transcript - Curriculum Completion Percentage] >= 51 AND DATEDIFF(day, [Transcript - Orientation Completed Date], GETDATE()) > 65 AND DATEDIFF(day, [Transcript - Orientation Completed Date], GETDATE()) <= 95) OR
([Transcript - Curriculum Completion Percentage] > 50 AND DATEDIFF(day, [Transcript - Orientation Completed Date], GETDATE()) <= 65)
) THEN 'On Track'
WHEN [Training - Training Title] = 'EXCEL at Frontline Leadership - Build Leadership Habits' AND (
([Transcript - Curriculum Completion Percentage] <= 50 AND DATEDIFF(day, [Transcript - Orientation Completed Date], GETDATE()) >= 65 AND DATEDIFF(day, [Transcript - Orientation Completed Date], GETDATE()) <= 95) OR
([Transcript - Curriculum Completion Percentage] <= 25 AND DATEDIFF(day, [Transcript - Orientation Completed Date], GETDATE()) > 45 AND DATEDIFF(day, [Transcript - Orientation Completed Date], GETDATE()) <= 95)
) THEN 'Falling Behind'
WHEN [Training - Training Title] = 'EXCEL at Frontline Leadership - Build Leadership Habits'  AND DATEDIFF(day, [Transcript - Orientation Completed Date], GETDATE()) > 95 THEN 'Past Due'
WHEN [Training - Training Title] = 'EXCEL at Frontline Leadership - Think and Act Like a Leader' AND (
([Transcript - Curriculum Completion Percentage] < 26  AND DATEDIFF(day, [Transcript - Orientation Completed Date], GETDATE()) <= 125) OR
([Transcript - Curriculum Completion Percentage] >= 26  AND DATEDIFF(day, [Transcript - Orientation Completed Date], GETDATE()) <= 125) OR
([Transcript - Curriculum Completion Percentage] > 26 AND [Transcript - Curriculum Completion Percentage] < 51 AND DATEDIFF(day, [Transcript - Orientation Completed Date], GETDATE()) > 125 AND DATEDIFF(day, [Transcript - Orientation Completed Date], GETDATE()) < 150) OR
([Transcript - Curriculum Completion Percentage] >= 51 AND DATEDIFF(day, [Transcript - Orientation Completed Date], GETDATE()) > 150 AND DATEDIFF(day, [Transcript - Orientation Completed Date], GETDATE()) <= 185) OR
([Transcript - Curriculum Completion Percentage] > 50 AND DATEDIFF(day, [Transcript - Orientation Completed Date], GETDATE()) <= 150)
) THEN 'On Track'
WHEN [Training - Training Title] = 'EXCEL at Frontline Leadership - Think and Act Like a Leader' AND (
([Transcript - Curriculum Completion Percentage] <= 50 AND DATEDIFF(day, [Transcript - Orientation Completed Date], GETDATE()) >= 150 AND DATEDIFF(day, [Transcript - Orientation Completed Date], GETDATE()) <= 185) OR
([Transcript - Curriculum Completion Percentage] <= 25 AND DATEDIFF(day, [Transcript - Orientation Completed Date], GETDATE()) > 125 AND DATEDIFF(day, [Transcript - Orientation Completed Date], GETDATE()) <= 185)
) THEN 'Falling Behind'
WHEN [Training - Training Title] = 'EXCEL at Frontline Leadership - Think and Act Like a Leader'  AND DATEDIFF(day, [Transcript - Orientation Completed Date], GETDATE()) > 185 THEN 'Past Due'
WHEN [Training - Training Title] = 'EXCEL at Frontline Leadership - Execute for Success' AND (
([Transcript - Curriculum Completion Percentage] < 26  AND DATEDIFF(day, [Transcript - Orientation Completed Date], GETDATE()) <= 235) OR
([Transcript - Curriculum Completion Percentage] >= 26  AND DATEDIFF(day, [Transcript - Orientation Completed Date], GETDATE()) <= 235) OR
([Transcript - Curriculum Completion Percentage] > 26 AND [Transcript - Curriculum Completion Percentage] < 51 AND DATEDIFF(day, [Transcript - Orientation Completed Date], GETDATE()) > 235 AND DATEDIFF(day, [Transcript - Orientation Completed Date], GETDATE()) < 300) OR
([Transcript - Curriculum Completion Percentage] >= 51 AND DATEDIFF(day, [Transcript - Orientation Completed Date], GETDATE()) > 300 AND DATEDIFF(day, [Transcript - Orientation Completed Date], GETDATE()) <= 365) OR
([Transcript - Curriculum Completion Percentage] > 50 AND DATEDIFF(day, [Transcript - Orientation Completed Date], GETDATE()) <= 300)
) THEN 'On Track'
WHEN [Training - Training Title] = 'EXCEL at Frontline Leadership - Execute for Success' AND (
([Transcript - Curriculum Completion Percentage] <= 50 AND DATEDIFF(day, [Transcript - Orientation Completed Date], GETDATE()) >= 300 AND DATEDIFF(day, [Transcript - Orientation Completed Date], GETDATE()) <= 365) OR
([Transcript - Curriculum Completion Percentage] <= 25 AND DATEDIFF(day, [Transcript - Orientation Completed Date], GETDATE()) > 235 AND DATEDIFF(day, [Transcript - Orientation Completed Date], GETDATE()) <= 365)
) THEN 'Falling Behind'
WHEN [Training - Training Title] = 'EXCEL at Frontline Leadership - Execute for Success'  AND DATEDIFF(day, [Transcript - Orientation Completed Date], GETDATE()) > 365  THEN 'Past Due'
ELSE 'Orientation Not Completed'
END AS Status,
CONVERT(DATE, [Transcript - Orientation Completed Date]) AS [Orientation Completed Date],
CONVERT(DATE, [Transcript - Transcript Completed Date]) AS [Transcript Completed Date]
INTO [Analytic].[dbo].[Excel_FLL_Pillar_Progression]
FROM
[Analytic].[dbo].[Excel_FLL_JOIN] yt


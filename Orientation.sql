DROP table [Analytic].[dbo].[Excel_FLL_Orientation]; -- To delete data before existing and replace with new data

SELECT * INTO [Analytic].[dbo].[Excel_FLL_Orientation]
FROM (
SELECT
*,
ROW_NUMBER() OVER (
PARTITION BY [User - PeopleSoft ID]
ORDER BY
CASE
WHEN [Transcript - Transcript Status] = 'Completed' THEN 1
WHEN [Transcript - Transcript Status] IN ('No Show', 'Registered') THEN 2
ELSE 3
END,
CASE
WHEN [Transcript - Transcript Status] = 'Completed' THEN [Transcript - Transcript Completed Date]
ELSE '2026-12-31 23:59:59.999'
END ASC
) AS rn
FROM [Analytic].[dbo].[Excel_FLL_Full_Details]
WHERE [Transcript - Transcript Status] <> 'Withdrawn' and
[Training - Training Title] = 'EXCEL at Frontline Leadership Orientation' and 
[Training - Training Type] = 'Session'
) AS sub
WHERE rn = 1;

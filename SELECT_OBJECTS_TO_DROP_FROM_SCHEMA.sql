
DECLARE @SCHEMA VARCHAR(25) = 'archive';

SELECT
	'DROP TABLE ' + S.NAME + '.' + T.NAME + ';' AS DROP_SQL
FROM SYS.TABLES T
INNER JOIN SYS.SCHEMAS S
	ON T.SCHEMA_ID = S.SCHEMA_ID
WHERE
	S.NAME = @SCHEMA

UNION ALL

SELECT
	'DROP PROC ' + S.NAME + '.' + P.NAME + ';' AS DROP_SQL
FROM SYS.PROCEDURES P
INNER JOIN SYS.SCHEMAS S
	ON P.SCHEMA_ID = S.SCHEMA_ID
WHERE
	S.NAME = @SCHEMA

UNION ALL

SELECT
	'DROP VIEW ' + S.NAME + '.' + V.NAME + ';' AS DROP_SQL
FROM SYS.VIEWS V
INNER JOIN SYS.SCHEMAS S
	ON V.SCHEMA_ID = S.SCHEMA_ID
WHERE
	S.NAME = @SCHEMA

USE DW_PERFORMANCE_ATTRIBUTION
GO

SELECT TableName = T.name
	,SchemaName = S.name
	,C.column_id
	,ColumnName = c.name
	,DataType = TP.name
	,C.max_length
	,C.precision
	,c.scale
	,c.is_nullable
	,c.is_identity
FROM SYS.tables T
INNER JOIN SYS.schemas S ON T.schema_id = S.schema_id
INNER JOIN SYS.columns C ON T.object_id = C.object_id
INNER JOIN SYS.types TP ON C.user_type_id = TP.user_type_id
WHERE T.name = 'VMS_INITIAL_APPROVALS'
	AND S.name = 'stage'
ORDER BY C.column_id

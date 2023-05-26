EXECUTE sp_execute_external_script 
  @language = N'Python', 
 @output_data_1_name = N'df',
 @script = N'
# pgeocode is missing python library on PYTHON_SERVICES folder in SQL Server Instance
import pgeocode
import pandas as pd
data = [10, 20, 30]
df_column = [''TEST_NUMBER'']
df = pd.DataFrame(data=data, columns=df_column)
'


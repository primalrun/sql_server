EXECUTE sp_execute_external_script 
  @language = N'Python', 
 @output_data_1_name = N'df',
 @script = N'

import socket
import pandas as pd
server = socket.getfqdn()
data = [server]
df_column = [''SERVER'']
df = pd.DataFrame(data=data, columns=df_column)
'


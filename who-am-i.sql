select
   substr   (user                                    , 1, 30) usr,
   substr   (sys_context('userenv', 'current_schema'), 1, 30) current_schema,
   to_number(sys_context('userenv', 'sid'           )       ) sid,
   substr   (sys_context('userenv', 'session_user'  ), 1, 30) session_user,
   substr   (sys_context('userenv', 'db_name'       ), 1, 30) db_name,
   substr   (            ora_database_name           , 1, 30) ora_database_name,
   substrb  (            global_name                 , 1, 30) global_name,
   substr   (sys_context('userenv', 'server_host'   ), 1, 30) server_host,
   substr   (sys_context('userenv', 'service_name'  ), 1, 30) service_name
from
   global_name;

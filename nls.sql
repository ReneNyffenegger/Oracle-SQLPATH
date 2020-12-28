--
--   Compare with -> param_nls.sql
--
select
   substrb(d.parameter, 1, 25) parameter,
   substrb(S.value    , 1, 35) ses,
   substrb(d.value    , 1, 35) db,
   substrb(I.value    , 1, 35) inst
from
   nls_database_parameters d                              left join
   nls_session_parameters  s on d.parameter = s.parameter left join
   nls_instance_parameters i on d.parameter = i.parameter
order by
   parameter
;

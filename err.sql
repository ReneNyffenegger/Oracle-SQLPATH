column name format a30
column text format a90

select
   substr(name, 1, 30) name,
   type,
   line,
   position,
   substr(text, 1, 90) text
from
   all_errors;

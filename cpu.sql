select 'Init parameters' key   , null val         from dual                                         union all
select '  ' || name     || ':' , to_number(value) from v$parameter where name      like 'cpu%count' union all
select 'OS stat'               , null             from dual                                         union all
select '  ' || stat_name || ':', value            from v$osstat    where stat_name like 'NUM_CPU%';

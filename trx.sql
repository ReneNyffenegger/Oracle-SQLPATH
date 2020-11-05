select
   cast(ses.osuser as varchar2(30)) osuser,
   ses.sid,
   ses.serial#,
-- trx.addr          trx_addr,
-- ses.saddr,
   trx.ses_addr,
-- This mm/dd/yy is probably the worst possible formats...
-- to_char(to_date(trx.start_time, 'mm/dd/yy hh24:mi:ss'), 'dd.mm.yyyy hh24:mi:ss') start_time,
-- However, newer versions of Oracle seem to have a date-format:
   cast(to_char(trx.start_date, 'yyyy-mm-dd hh24:mi:ss') as varchar2(19)) start_date,
   trx.used_ublk,
   trx.used_urec
from
   v$session     ses join
-- v$transaction trx on ses.taddr = trx.addr
   v$transaction trx on ses.saddr = trx.ses_addr;

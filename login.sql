set serveroutput on size 999999 format wrapped
set feedback         off
set verify           off
set lines            200
set pages           5000
set long          100000
set longchunksize 100000
set tab              off
set sqlblanklines     on
set exitcommit       off

define _editor=gvim

alter session set nls_date_format      = 'dd.mm.yyyy hh24:mi:ss';
alter session set nls_language         = 'english';
alter session set nls_length_semantics =  char;

--  SQL Prompt {
set termout off
define sqlprompt=none
column sqlprompt new_value sqlprompt

select lower(sys_context('USERENV','CURRENT_USER')) || '@' || sys_context('USERENV','DB_NAME') as sqlprompt from dual;

set sqlprompt '&sqlprompt> '
undefine sqlprompt
set termout on
-- }

set editfile c:\temp\sqlplus.sql

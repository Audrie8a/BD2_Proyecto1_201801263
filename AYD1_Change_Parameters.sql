show parameter sga_;
-- Realizar Copia spfile
create pfile = '?C:/Users/annau/Desktop/Oracle/database/SPFILEORCL.ORA' from spfile;

--C:\USERS\ANNAU\DESKTOP\ORADATA\ORCL\USERS01.DBF 
select * from dba_data_files where tablespace_name = 'SYSAUX';

drop tablespace data;

--CREAR TABLESPACE ELECCIONESTBS
create tablespace ELECCIONESTBS datafile 'C:\USERS\ANNAU\DESKTOP\ORADATA\ORCL\ELECCIONESDTF.tbs'
size                                  250M
autoextend on next                    1M
maxsize                               500M
extent management local uniform size  64K;


select file_id, file_name, tablespace_name from dba_data_files where tablespace_name='ELECCIONESTBS';
select * from dba_data_files where tablespace_name = 'ELECCIONESTBS';
select * from dba_free_space where tablespace_name = 'ELECCIONESTBS';


alter session set "_ORACLE_SCRIPT"=true;
-- USER SQL
CREATE USER "ELECCIONES" IDENTIFIED BY "Audrie8a"  
DEFAULT TABLESPACE "ELECCIONESTBS";

-- QUOTAS
ALTER USER "ELECCIONES" QUOTA UNLIMITED ON "USERS";

-- ROLES
GRANT "DBA" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "DV_MONITOR" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "CTXAPP" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "DV_AUDIT_CLEANUP" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "EM_EXPRESS_ALL" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "WM_ADMIN_ROLE" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "OLAP_USER" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "OLAP_XS_ADMIN" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "DV_SECANALYST" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "RECOVERY_CATALOG_OWNER_VPD" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "XS_CACHE_ADMIN" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "GDS_CATALOG_SELECT" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "SCHEDULER_ADMIN" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "PROVISIONER" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "AUDIT_ADMIN" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "XDB_WEBSERVICES_OVER_HTTP" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "DV_REALM_RESOURCE" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "AQ_ADMINISTRATOR_ROLE" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "SYSUMF_ROLE" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "APPLICATION_TRACE_VIEWER" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "XDB_WEBSERVICES" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "DV_PUBLIC" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "LBAC_DBA" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "OPTIMIZER_PROCESSING_RATE" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "RECOVERY_CATALOG_USER" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "DV_DATAPUMP_NETWORK_LINK" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "GSMUSER_ROLE" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "GATHER_SYSTEM_STATISTICS" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "LOGSTDBY_ADMINISTRATOR" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "DBJAVASCRIPT" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "GSM_POOLADMIN_ROLE" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "DV_ADMIN" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "DV_POLICY_OWNER" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "HS_ADMIN_ROLE" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "XS_SESSION_ADMIN" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "DV_GOLDENGATE_ADMIN" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "IMP_FULL_DATABASE" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "DV_XSTREAM_ADMIN" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "DV_PATCH_ADMIN" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "GGSYS_ROLE" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "DATAPUMP_EXP_FULL_DATABASE" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "EJBCLIENT" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "HS_ADMIN_EXECUTE_ROLE" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "JMXSERVER" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "OLAP_DBA" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "ADM_PARALLEL_EXECUTE_TASK" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "JAVAIDPRIV" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "SELECT_CATALOG_ROLE" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "JAVADEBUGPRIV" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "CONNECT" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "DATAPUMP_IMP_FULL_DATABASE" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "SODA_APP" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "BDSQL_ADMIN" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "OEM_MONITOR" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "GSMADMIN_ROLE" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "AQ_USER_ROLE" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "JAVAUSERPRIV" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "XDB_SET_INVOKER" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "RECOVERY_CATALOG_OWNER" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "JAVA_ADMIN" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "DBFS_ROLE" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "PDB_DBA" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "RDFCTX_ADMIN" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "DV_GOLDENGATE_REDO_ACCESS" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "CDB_DBA" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "JAVASYSPRIV" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "GSMROOTUSER_ROLE" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "HS_ADMIN_SELECT_ROLE" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "AUDIT_VIEWER" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "RESOURCE" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "DV_OWNER" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "XDB_WEBSERVICES_WITH_PUBLIC" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "EXECUTE_CATALOG_ROLE" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "DATAPATCH_ROLE" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "DV_ACCTMGR" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "DV_REALM_OWNER" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "EXP_FULL_DATABASE" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "DBMS_MDX_INTERNAL" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "DV_STREAMS_ADMIN" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "XS_NAMESPACE_ADMIN" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "BDSQL_USER" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "ORDADMIN" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "AUTHENTICATEDUSER" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "CAPTURE_ADMIN" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "OEM_ADVISOR" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "XS_CONNECT" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "XDBADMIN" TO "ELECCIONES" WITH ADMIN OPTION;
GRANT "EM_EXPRESS_BASIC" TO "ELECCIONES" WITH ADMIN OPTION;

-- SYSTEM PRIVILEGES
GRANT CREATE JOB TO "ELECCIONES" WITH ADMIN OPTION;
GRANT DROP ANY CONTEXT TO "ELECCIONES" WITH ADMIN OPTION;
GRANT UPDATE ANY CUBE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT ALTER ANY ANALYTIC VIEW TO "ELECCIONES" WITH ADMIN OPTION;
GRANT DROP ANY TRIGGER TO "ELECCIONES" WITH ADMIN OPTION;
GRANT DROP ANY SQL TRANSLATION PROFILE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT MANAGE ANY FILE GROUP TO "ELECCIONES" WITH ADMIN OPTION;
GRANT ALTER PUBLIC DATABASE LINK TO "ELECCIONES" WITH ADMIN OPTION;
GRANT MANAGE FILE GROUP TO "ELECCIONES" WITH ADMIN OPTION;
GRANT ALTER ANY INDEX TO "ELECCIONES" WITH ADMIN OPTION;
GRANT DROP ANY SEQUENCE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT ALTER PROFILE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT INHERIT ANY PRIVILEGES TO "ELECCIONES" WITH ADMIN OPTION;
GRANT UNDER ANY TABLE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT KEEP SYSGUID TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE ASSEMBLY TO "ELECCIONES" WITH ADMIN OPTION;
GRANT DROP ANY LIBRARY TO "ELECCIONES" WITH ADMIN OPTION;
GRANT ALTER ANY EDITION TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE ROLE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE LIBRARY TO "ELECCIONES" WITH ADMIN OPTION;
GRANT DROP ROLLBACK SEGMENT TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE TRIGGER TO "ELECCIONES" WITH ADMIN OPTION;
GRANT ALTER ANY PROCEDURE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT ADMINISTER DATABASE TRIGGER TO "ELECCIONES" WITH ADMIN OPTION;
GRANT DROP ANY MEASURE FOLDER TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE ANY PROCEDURE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT ALTER ANY OUTLINE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE ANY ANALYTIC VIEW TO "ELECCIONES" WITH ADMIN OPTION;
GRANT EXECUTE ANY INDEXTYPE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT USE ANY JOB RESOURCE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE ANY DIRECTORY TO "ELECCIONES" WITH ADMIN OPTION;
GRANT ALTER ANY RULE SET TO "ELECCIONES" WITH ADMIN OPTION;
GRANT USE ANY SQL TRANSLATION PROFILE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT ALTER ANY MINING MODEL TO "ELECCIONES" WITH ADMIN OPTION;
GRANT DEBUG CONNECT SESSION TO "ELECCIONES" WITH ADMIN OPTION;
GRANT LOGMINING TO "ELECCIONES" WITH ADMIN OPTION;
GRANT DROP ANY ATTRIBUTE DIMENSION TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE ANY MINING MODEL TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE LOCKDOWN PROFILE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT ALTER SESSION TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE MATERIALIZED VIEW TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE PLUGGABLE DATABASE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT DROP ANY ANALYTIC VIEW TO "ELECCIONES" WITH ADMIN OPTION;
GRANT WRITE ANY ANALYTIC VIEW CACHE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT MERGE ANY VIEW TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE ANY INDEX TO "ELECCIONES" WITH ADMIN OPTION;
GRANT READ ANY ANALYTIC VIEW CACHE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE DIMENSION TO "ELECCIONES" WITH ADMIN OPTION;
GRANT EXECUTE ANY RULE SET TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE SQL TRANSLATION PROFILE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT ALTER ANY MATERIALIZED VIEW TO "ELECCIONES" WITH ADMIN OPTION;
GRANT AUDIT SYSTEM TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE OPERATOR TO "ELECCIONES" WITH ADMIN OPTION;
GRANT MANAGE ANY QUEUE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT ALTER ANY SQL PROFILE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT GRANT ANY OBJECT PRIVILEGE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE INDEXTYPE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT AUDIT ANY TO "ELECCIONES" WITH ADMIN OPTION;
GRANT INHERIT ANY REMOTE PRIVILEGES TO "ELECCIONES" WITH ADMIN OPTION;
GRANT SYSKM TO "ELECCIONES" WITH ADMIN OPTION;
GRANT DEBUG ANY PROCEDURE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE ANY MEASURE FOLDER TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE ANY SEQUENCE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE MEASURE FOLDER TO "ELECCIONES" WITH ADMIN OPTION;
GRANT UPDATE ANY CUBE BUILD PROCESS TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE VIEW TO "ELECCIONES" WITH ADMIN OPTION;
GRANT ALTER DATABASE LINK TO "ELECCIONES" WITH ADMIN OPTION;
GRANT ALTER ANY ASSEMBLY TO "ELECCIONES" WITH ADMIN OPTION;
GRANT ALTER ANY SQL TRANSLATION PROFILE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE ANY EVALUATION CONTEXT TO "ELECCIONES" WITH ADMIN OPTION;
GRANT SELECT ANY MINING MODEL TO "ELECCIONES" WITH ADMIN OPTION;
GRANT SYSRAC TO "ELECCIONES" WITH ADMIN OPTION;
GRANT DELETE ANY CUBE DIMENSION TO "ELECCIONES" WITH ADMIN OPTION;
GRANT ALTER ANY TABLE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT ALTER ANY ATTRIBUTE DIMENSION TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE SESSION TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE RULE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT BECOME USER TO "ELECCIONES" WITH ADMIN OPTION;
GRANT SELECT ANY CUBE BUILD PROCESS TO "ELECCIONES" WITH ADMIN OPTION;
GRANT SELECT ANY TABLE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT INSERT ANY MEASURE FOLDER TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE ANY SQL PROFILE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT FORCE ANY TRANSACTION TO "ELECCIONES" WITH ADMIN OPTION;
GRANT DELETE ANY TABLE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT ALTER ANY SEQUENCE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT SELECT ANY CUBE DIMENSION TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE ANY EDITION TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE EXTERNAL JOB TO "ELECCIONES" WITH ADMIN OPTION;
GRANT EM EXPRESS CONNECT TO "ELECCIONES" WITH ADMIN OPTION;
GRANT DROP ANY MATERIALIZED VIEW TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE ANY CUBE BUILD PROCESS TO "ELECCIONES" WITH ADMIN OPTION;
GRANT FLASHBACK ANY TABLE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT DROP ANY RULE SET TO "ELECCIONES" WITH ADMIN OPTION;
GRANT BACKUP ANY TABLE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT ALTER ANY CUBE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE CREDENTIAL TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE TABLE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT EXECUTE ANY LIBRARY TO "ELECCIONES" WITH ADMIN OPTION;
GRANT DROP ANY OUTLINE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT EXECUTE ASSEMBLY TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE ANY HIERARCHY TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE ANALYTIC VIEW TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE ANY DIMENSION TO "ELECCIONES" WITH ADMIN OPTION;
GRANT DROP ANY TABLE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT ADMINISTER KEY MANAGEMENT TO "ELECCIONES" WITH ADMIN OPTION;
GRANT ALTER ANY CLUSTER TO "ELECCIONES" WITH ADMIN OPTION;
GRANT EXECUTE ANY CLASS TO "ELECCIONES" WITH ADMIN OPTION;
GRANT ALTER ANY CUBE BUILD PROCESS TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE ANY CREDENTIAL TO "ELECCIONES" WITH ADMIN OPTION;
GRANT DROP ANY DIMENSION TO "ELECCIONES" WITH ADMIN OPTION;
GRANT SYSBACKUP TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE ANY RULE SET TO "ELECCIONES" WITH ADMIN OPTION;
GRANT SELECT ANY SEQUENCE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT UNDER ANY TYPE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT MANAGE TABLESPACE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT DROP ANY OPERATOR TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE ANY OPERATOR TO "ELECCIONES" WITH ADMIN OPTION;
GRANT DROP ANY HIERARCHY TO "ELECCIONES" WITH ADMIN OPTION;
GRANT EXEMPT IDENTITY POLICY TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE TYPE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE TABLESPACE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT SELECT ANY TRANSACTION TO "ELECCIONES" WITH ADMIN OPTION;
GRANT DELETE ANY MEASURE FOLDER TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE ANY CUBE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT LOCK ANY TABLE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE EVALUATION CONTEXT TO "ELECCIONES" WITH ADMIN OPTION;
GRANT DROP ANY TYPE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT ADVISOR TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE PUBLIC DATABASE LINK TO "ELECCIONES" WITH ADMIN OPTION;
GRANT ANALYZE ANY TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE ATTRIBUTE DIMENSION TO "ELECCIONES" WITH ADMIN OPTION;
GRANT DROP ANY RULE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT INSERT ANY CUBE DIMENSION TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE ROLLBACK SEGMENT TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE ANY JOB TO "ELECCIONES" WITH ADMIN OPTION;
GRANT ALTER USER TO "ELECCIONES" WITH ADMIN OPTION;
GRANT QUERY REWRITE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT SELECT ANY DICTIONARY TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE PUBLIC SYNONYM TO "ELECCIONES" WITH ADMIN OPTION;
GRANT GLOBAL QUERY REWRITE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT ALTER ANY CUBE DIMENSION TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE ANY CUBE DIMENSION TO "ELECCIONES" WITH ADMIN OPTION;
GRANT DROP ANY CLUSTER TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE ANY RULE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT UPDATE ANY CUBE DIMENSION TO "ELECCIONES" WITH ADMIN OPTION;
GRANT SYSDBA TO "ELECCIONES" WITH ADMIN OPTION;
GRANT ADMINISTER RESOURCE MANAGER TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE ANY SYNONYM TO "ELECCIONES" WITH ADMIN OPTION;
GRANT DROP ANY SYNONYM TO "ELECCIONES" WITH ADMIN OPTION;
GRANT DROP ANY MINING MODEL TO "ELECCIONES" WITH ADMIN OPTION;
GRANT EXECUTE ANY PROCEDURE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE SYNONYM TO "ELECCIONES" WITH ADMIN OPTION;
GRANT SET CONTAINER TO "ELECCIONES" WITH ADMIN OPTION;
GRANT EXECUTE ANY PROGRAM TO "ELECCIONES" WITH ADMIN OPTION;
GRANT EXEMPT REDACTION POLICY TO "ELECCIONES" WITH ADMIN OPTION;
GRANT EXECUTE ANY TYPE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT ON COMMIT REFRESH TO "ELECCIONES" WITH ADMIN OPTION;
GRANT DEBUG CONNECT ANY TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE SEQUENCE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE HIERARCHY TO "ELECCIONES" WITH ADMIN OPTION;
GRANT SELECT ANY MEASURE FOLDER TO "ELECCIONES" WITH ADMIN OPTION;
GRANT COMMENT ANY MINING MODEL TO "ELECCIONES" WITH ADMIN OPTION;
GRANT ADMINISTER SQL TUNING SET TO "ELECCIONES" WITH ADMIN OPTION;
GRANT SYSOPER TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE ANY INDEXTYPE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT KEEP DATE TIME TO "ELECCIONES" WITH ADMIN OPTION;
GRANT DROP ANY INDEX TO "ELECCIONES" WITH ADMIN OPTION;
GRANT RESTRICTED SESSION TO "ELECCIONES" WITH ADMIN OPTION;
GRANT SYSDG TO "ELECCIONES" WITH ADMIN OPTION;
GRANT DEQUEUE ANY QUEUE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT ANALYZE ANY DICTIONARY TO "ELECCIONES" WITH ADMIN OPTION;
GRANT ALTER ANY INDEXTYPE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT TRANSLATE ANY SQL TO "ELECCIONES" WITH ADMIN OPTION;
GRANT ADMINISTER ANY SQL TUNING SET TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE USER TO "ELECCIONES" WITH ADMIN OPTION;
GRANT EXECUTE ANY OPERATOR TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE CUBE BUILD PROCESS TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE PROFILE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT ALTER ANY ROLE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT UPDATE ANY TABLE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT ALTER ANY LIBRARY TO "ELECCIONES" WITH ADMIN OPTION;
GRANT DROP ANY VIEW TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE ANY CLUSTER TO "ELECCIONES" WITH ADMIN OPTION;
GRANT EXECUTE ANY RULE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT ALTER TABLESPACE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT UNDER ANY VIEW TO "ELECCIONES" WITH ADMIN OPTION;
GRANT EXECUTE ANY ASSEMBLY TO "ELECCIONES" WITH ADMIN OPTION;
GRANT GRANT ANY PRIVILEGE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT ALTER ANY TRIGGER TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE ANY VIEW TO "ELECCIONES" WITH ADMIN OPTION;
GRANT ALTER LOCKDOWN PROFILE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT EXPORT FULL DATABASE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT ALTER ANY MEASURE FOLDER TO "ELECCIONES" WITH ADMIN OPTION;
GRANT ALTER ANY EVALUATION CONTEXT TO "ELECCIONES" WITH ADMIN OPTION;
GRANT TEXT DATASTORE ACCESS TO "ELECCIONES" WITH ADMIN OPTION;
GRANT FLASHBACK ARCHIVE ADMINISTER TO "ELECCIONES" WITH ADMIN OPTION;
GRANT IMPORT FULL DATABASE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE ANY OUTLINE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT COMMENT ANY TABLE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT READ ANY TABLE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE DATABASE LINK TO "ELECCIONES" WITH ADMIN OPTION;
GRANT DROP PUBLIC SYNONYM TO "ELECCIONES" WITH ADMIN OPTION;
GRANT DROP USER TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CHANGE NOTIFICATION TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE MINING MODEL TO "ELECCIONES" WITH ADMIN OPTION;
GRANT INSERT ANY TABLE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT DROP LOCKDOWN PROFILE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT DROP PROFILE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE ANY MATERIALIZED VIEW TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE RULE SET TO "ELECCIONES" WITH ADMIN OPTION;
GRANT EXEMPT ACCESS POLICY TO "ELECCIONES" WITH ADMIN OPTION;
GRANT MANAGE SCHEDULER TO "ELECCIONES" WITH ADMIN OPTION;
GRANT READ ANY FILE GROUP TO "ELECCIONES" WITH ADMIN OPTION;
GRANT FORCE TRANSACTION TO "ELECCIONES" WITH ADMIN OPTION;
GRANT DROP ANY CUBE BUILD PROCESS TO "ELECCIONES" WITH ADMIN OPTION;
GRANT ALTER ANY TYPE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT DROP ANY PROCEDURE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE ANY SQL TRANSLATION PROFILE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT DROP PUBLIC DATABASE LINK TO "ELECCIONES" WITH ADMIN OPTION;
GRANT DROP ANY INDEXTYPE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT DROP ANY SQL PROFILE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT ALTER SYSTEM TO "ELECCIONES" WITH ADMIN OPTION;
GRANT UNLIMITED TABLESPACE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT DROP ANY ROLE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT ALTER ANY DIMENSION TO "ELECCIONES" WITH ADMIN OPTION;
GRANT DROP ANY CUBE DIMENSION TO "ELECCIONES" WITH ADMIN OPTION;
GRANT DROP ANY CUBE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE ANY TRIGGER TO "ELECCIONES" WITH ADMIN OPTION;
GRANT DROP ANY ASSEMBLY TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE ANY TABLE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT ADMINISTER SQL MANAGEMENT OBJECT TO "ELECCIONES" WITH ADMIN OPTION;
GRANT DROP ANY DIRECTORY TO "ELECCIONES" WITH ADMIN OPTION;
GRANT ENQUEUE ANY QUEUE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT DROP ANY EVALUATION CONTEXT TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE ANY ASSEMBLY TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE ANY TYPE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT REDEFINE ANY TABLE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE CLUSTER TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE ANY CONTEXT TO "ELECCIONES" WITH ADMIN OPTION;
GRANT EXECUTE ANY EVALUATION CONTEXT TO "ELECCIONES" WITH ADMIN OPTION;
GRANT RESUMABLE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE ANY LIBRARY TO "ELECCIONES" WITH ADMIN OPTION;
GRANT DROP ANY EDITION TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE PROCEDURE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT ALTER DATABASE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT SELECT ANY CUBE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT GRANT ANY ROLE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT ALTER ANY RULE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE ANY ATTRIBUTE DIMENSION TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE CUBE DIMENSION TO "ELECCIONES" WITH ADMIN OPTION;
GRANT ALTER ANY OPERATOR TO "ELECCIONES" WITH ADMIN OPTION;
GRANT CREATE CUBE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT ALTER RESOURCE COST TO "ELECCIONES" WITH ADMIN OPTION;
GRANT ALTER ANY HIERARCHY TO "ELECCIONES" WITH ADMIN OPTION;
GRANT DROP TABLESPACE TO "ELECCIONES" WITH ADMIN OPTION;
GRANT ALTER ROLLBACK SEGMENT TO "ELECCIONES" WITH ADMIN OPTION;
GRANT PURGE DBA_RECYCLEBIN TO "ELECCIONES" WITH ADMIN OPTION;


commit;
BEGIN
   DECLARE jobno numeric; 
   BEGIN 
      dbms_job.submit(jobno, 'USP_MERGE_CLIENTES;', sysdate, 'sysdate/1440'); 
   END;
END;

SELECT TO_CHAR( sysdate+1/1440, 'dd/mm/yyyy HH24:MI:SS') ,
TO_CHAR( sysdate/1440, 'dd/mm/yyyy HH24:MI:SS')
FROM DUAL;
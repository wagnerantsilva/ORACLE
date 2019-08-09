BEGIN
   DECLARE jobno numeric; 
   BEGIN 
      dbms_job.submit(jobno, 'procedure;', sysdate, 'sysdate/1440'); 
   END;
END;


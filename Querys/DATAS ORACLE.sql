-- Retornar data atual
SELECT SYSDATE FROM DUAL;
 
-- retorna data e hora diminuindo um mes a partir da data atual
SELECT ADD_MONTHS (SYSDATE, -1) um_mes_atras FROM DUAL   ;  
 
-- retorna data e hora somando um mes a partir da data atual
SELECT ADD_MONTHS (SYSDATE, -1) um_mes_atras FROM DUAL    ; 
 
-- retorna o ultimo dia do mês atual
SELECT LAST_DAY (SYSDATE) ultimo_dia_mes FROM DUAL;
 
-- retorna o primeiro dia do mês
SELECT TRUNC (SYSDATE, 'MONTH') primeiro_dia_mes FROM DUAL;
 
-- retorna quantidade de meses entre as datas passadas por parâmetro (neste caso, 24 de abril e data atual) 
SELECT Months_Between (SYSDATE, '24-ABR-2013') qtd_meses FROM DUAL;
 
-- retorna quantidade de meses entre as datas passadas por parâmetro arredondando para baixo
SELECT FLOOR (MONTHS_BETWEEN (SYSDATE, '01-JAN-2001')) arredonda_para_baixo FROM dual  ;
 
-- retorna quantidade de meses entre as datas passadas por parâmetro arredondando para cima
SELECT CEIL (MONTHS_BETWEEN (SYSDATE, '01-JAN-2001')) arredonda_para_cima FROM dual;
 
-- retorna valor absoluto de meses entre as datas passadas por parâmetro
SELECT ABS (MONTHS_BETWEEN (SYSDATE, '01-JAN-2001')) FROM dual;
 
-- arredonda quantidade de meses entre as datas passadas por parâmetro 
SELECT ROUND ((MONTHS_BETWEEN (SYSDATE, '01-JAN-2001')), 2) arredonda FROM dual;
 
-- retorna primeiro dia do ano
SELECT TRUNC (SYSDATE, 'year') primeiro_dia_ano FROM DUAL ;
 
-- retorna data por extenso em portugues
SELECT TO_CHAR (SYSDATE,'dd " DE " FMMONTH " DE " YYYY','nls_date_language=portuguese') diames_extenso FROM dual;
 
-- retorna mes e ano por extenso
SELECT TO_CHAR (SYSDATE,'FMMONTH " DE " YYYY','nls_date_language=portuguese') mes_extenso FROM dual ;
 
--retorna hora e minuto atual
SELECT TO_CHAR (SYSDATE, 'HH24:MI') hora_minuto FROM dual;
 
-- retorna o mes corrente por extenso 
SELECT TO_CHAR (SYSDATE,'FMMonth','nls_date_language=portuguese') mes_corrente FROM dual ;
 
-- retorna 
SELECT TO_DATE (LPAD (TO_CHAR (1234), 4, '0'), 'hh24mi') dias_data FROM dual ;
 
--retorna idade com base na data informada
SELECT FLOOR (FLOOR (MONTHS_BETWEEN (SYSDATE, '01/06/1980')) / 12) idade FROM dual;
 
-- retorna dia da semana com base em data informada
SELECT DECODE (TO_NUMBER (TO_CHAR (SYSDATE, 'D')), 
       2, 'segunda-feira', 
       3, 'terça-feira', 
       4, 'quarta-feira', 
       5, 'quinta-feira', 
       6, 'sexta-feira', 
       7, 'sabado', 
       1, 'domingo'
) dia_da_semana FROM DUAL;
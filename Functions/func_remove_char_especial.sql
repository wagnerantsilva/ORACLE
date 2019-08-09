create or replace FUNCTION FUN_REMOVE_CHAR_ESP 
(
  TEXTO IN VARCHAR2 
) RETURN VARCHAR2 
AS 
BEGIN
   return RTRIM(LTRIM(translate(texto,'ÑÁÉÍÓÚÀÈÌÒÙÂÊÎÔÛÃÕÄËÏÖÜÇñáéíóúàèìòùâêîôûãõäëïöüç.-_!"''`#$%().:[/]{}¨+?;ºª°§*<>,','NAEIOUAEIOUAEIOUAOAEIOUCnaeiouaeiouaeiouaoaeiouc')));
END FUN_REMOVE_CHAR_ESP;
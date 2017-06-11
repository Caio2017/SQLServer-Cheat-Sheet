--------------------EXEMPLO IF ELSE-----------------------
DECLARE @idade INT = 21	 --DECLARA��O + ATRIBUI��O
DECLARE @nome VARCHAR(20), @sobrenome VARCHAR(20); --DECLARA��O MULTIPLA

SET @nome = 'Caio'
SET @sobrenome = 'Souza'

IF @nome <> 'Caio'
	BEGIN			--ultiliza-se BEGIN e END quando for um bloco de codigo mais de uma linha
		SET @valor = 20;
		SELECT CAST(@valor AS VARCHAR(5)) + ' Texto1';
	END;
ELSE
	BEGIN
		SET @valor = 30;
		SELECT CONVERT(VARCHAR(5), @valor) + ' Texto2';
	END;

----------------------EXEMPLO SWITH CASE-------------------------------------------------
DECLARE @str VARCHAR(100) = 'us'
select	case @str
			when 'br' then 'Brasil'
			when 'us' then 'Estados Unidos'
			when 'jp' then 'Jap�o'
			else 'Importa��o'
		end

----------------------ESTRUTURA DE REPETI��O---------------------------------
DECLARE @contador INT = 0;
WHILE @contador <= 10
	BEGIN
		PRINT 'N�mero:'+CAST(@contador AS VARCHAR(2))
		SET @contador = @contador + 1
	END

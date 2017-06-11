--Exerc�cios � Fun��es de data e operador union. ( aula 03)

--1 � Exiba o nome e data de nascimento dos funcion�rios, separando dia, m�s e ano.
select DAY(dataNasc) as 'Dia', MONTH(dataNasc) as 'Mes', YEAR(dataNasc) as 'Ano' from Funcionarios

--2 � Exiba o nome dos meses da data de nascimento dos funcion�rios ordenados.
select DATENAME(Month, dataNasc) as 'Mes' from Funcionarios order by DataNasc

--3 � Exiba o idFuncionario e nome de todos os funcion�rios que nasceram em 1963.
select CodFun, Nome from Funcionarios where YEAR(DataNasc) = 1963

--4 � Exiba o nome e dias de nascimento dos funcion�rios que nasceram em abril de 1936.
select Nome, DAY(dataNasc) from Funcionarios where DATENAME(Month, DataNasc) = 'Agosto' and YEAR(DataNasc) = 1963

--5 � Exiba o nome e a data de nascimento dos funcion�rios acrescida de 2 meses.
select Nome, DATEADD(Month, 2, dataNasc) from Funcionarios

--6 � Exiba o nome e a idade dos funcion�rios, calculando a idade em rela��o � data de nascimento e a data de hoje.
select Nome, DATEDIFF(YEAR, dataNasc, getdate()) as 'idade' from Funcionarios

--7 � Exiba o idFuncionario, nome e ano de nascimento dos funcion�rios que nasceram entre mar�o e maio de 1990.
select CodFun, Nome, YEAR(dataNasc) from Funcionarios where MONTH(DataNasc) > 2 and MONTH(DataNasc) < 6

--8 � Exiba o nome e ano de nascimento dos funcion�rios do estado de SP.


--9 � Exiba nome e data de nascimento dos funcion�rios que nasceram antes de 1990.
--10 � Exiba cidade e estado dos funcion�rios que nasceram ap�s 1989, sem repetir dados.
--11 � Exiba todos os dados dos funcion�rios que nasceram nos anos de 1988 e 1990
--12 � Exiba o nome dos funcion�rios que nasceram no dia 30.
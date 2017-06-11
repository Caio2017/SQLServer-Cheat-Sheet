--1 � Mostre os n�meros pares inteiros de 100 at� 0.
declare @n int = 100;
while(@n <> 0)
begin
	if(@n % 2 = 0)
		print @n;
	set @n = @n - 1;
end

--2 � Dados os n�meros inteiros a=1, b=2 e c=3, mostre-os em ordem decrescente.


--3 - Exiba a quantidade e o valor do desconto para os pedidos de acordo com a quantidade: (usar o banco empresa)
--a) Quantidade < 10, desconto = 0
--b) Quantidade < 30, desconto = 3
--c) Quantidade < 50, desconto = 5
--d) Quantidade < 70, desconto = 7
--e) Sen�o, desconto = 9.
use Empresa
select NumPed, CodProd, Preco, Qtde,
	case 
		when Qtde < 10 then Preco
		when Qtde < 30 then	Preco - 3
		when Qtde < 50 then	Preco - 5
		when Qtde < 70 then	Preco - 7
		else Preco - 9
	end as 'Desconto' from DetalhesPed
	
--4 - Mostre todos os n�meros inteiros m�ltiplos de 10, de 0 a 1000.
declare @i int = 0
while @i <= 1000
	begin
		print @i 
		set @i = @i +10
	end
	
--5 - Para cada cliente mostre nome, pa�s e informe �importa��o� para pa�ses diferentes do Brasil e �exporta��o� para clientes do Brasil. (usar o banco empresa)
use Empresa
select Nome, Pais, 
	case pais
		when 'Brasil' then 'Exporta��o'
		else 'Importa��o'
	end as 'Situa��o' from Clientes
	
--6 - Atribua seu nome a uma vari�vel e exiba seu nome e a quantidade de caracteres.	
declare @nome char(4)= 'Caio'
print @nome +' '+ cast(len(@nome) as varchar)

--7 - Exiba os nomes dos dias das semanas do dia em que os funcionarios nasceu
use Empresa
select codfun, nome, Convert(char, datanasc, 101) as 'Data Nascimento',
	case DATEPART(weekday, datanasc)
		when 1 then 'Domingo'
		when 2 then 'Segunda'
		when 3 then 'Ter�a'
		when 4 then 'Quarta'
		when 5 then 'Quinta'
		when 6 then 'Sexta'
		when 7 then 'S�bado'
	end as 'Dia da Semana' from Funcionarios
	





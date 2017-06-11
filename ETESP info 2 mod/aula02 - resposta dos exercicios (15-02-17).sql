--Exerc�cio de revis�o TLBD II
--Exerc�cios:
--1 � Fa�a uma lista de im�veis do mesmo bairro do im�vel 2. Exclua o im�vel 2 da busca.
select * from Imovel 	where CdBairro = 2 and CdImovel not in 
	(select CdImovel from Imovel where CdImovel = 2)

--2 � Fa�a uma lista que mostre todos os im�veis que custam mais que a m�dia de pre�o dos im�veis.
select * from Imovel where VlPreco > 
	(select AVG(VlPreco) from Imovel)

--3 � Fa�a uma lista com todos os compradores que tenham ofertas cadastradas com valor superior a 70 mil.
select * from Comprador where CdComprador in 
	(select CdComprador from Oferta where VlOferta > 70000)

--4 - Fa�a uma lista com todos os im�veis com oferta superior � m�dia do valor das ofertas.
select * from Imovel where CdImovel in
	(select CdImovel from Oferta where VlOferta > 
		(select AVG(VlOferta) from Oferta))

--5 - Fa�a uma lista com todos os im�veis com pre�o superior � m�dia de pre�o dos im�veis do
--mesmo bairro.
select * from Imovel I where VlPreco >
	(select AVG(VlPreco) from Imovel where CdBairro = I.CdBairro)
		
--6 - Fa�a uma lista com os im�veis que t�m o pre�o igual ao menor pre�o de cada vendedor.
select * from Imovel I where VlPreco =
	(select MIN(VlPreco) from Imovel where CdVendedor = I.CdVendedor)

--7 - Fa�a uma lista com os im�veis que t�m o pre�o igual ao menor de todos os vendedores,
--exceto os im�veis do pr�prio vendedor.
select CdImovel, NmEndereco, VlPreco from Imovel i where VlPreco = 
	(select MIN(VlPreco) from Imovel where CdVendedor != i.CdVendedor)

--8 - Fa�a uma lista com as ofertas menores que todas as ofertas do comprador 2, exceto as
--ofertas do pr�prio comprador.
select cdImovel, cdComprador, vlOferta from Oferta where VlOferta < 
	(select MIN(vlOferta) from Oferta where CdComprador = 2) and CdComprador != 2

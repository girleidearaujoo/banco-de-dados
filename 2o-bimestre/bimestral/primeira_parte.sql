-- Seleciona empreendedores da rua selecionada:
select nome from empreendedor where endereco = 'Rua do Sol';

-- Classifica as babás por preço: 
 select FK_usuario_e as baba, valor from baba order by valor asc;

-- Ordena petshops com mais vagas para menos vagas:
select FK_usuario_e as petshop, vagas from petshop order by vagas desc;

-- Seleciona os hotéis com mais de 200 vagas:
select FK_usuario_e as hotel from hotel where vagas > 200;

-- Média de vagas dos petshops:
select avg(vagas) as media from petshop; 

-- Tipos de quarto dos hoteis com mais de 200 vagas:
select tiposDeQuarto from hotel where vagas > 200;

-- Todos os endereços cadastrados:
select distinct endereco from cliente order by endereco;

-- Hotel com maior número de vagas:
select max(vagas) as max, FK_usuario_e as hotel from hotel;

-- Quantos empreendedores tem nessa rua:
 select count(*) from empreendedor where endereco = "Rua da Maçã";

-- Quantos empreendedores existem nos endereços:
select endereco, count(endereco) as contagem from empreendedor group by endereco;

-- Mínimo, máximo e médio valor do serviço babá:
select min(valor) as min, max(valor) as max, round(avg(valor), 2)as media  from baba;

-- Hotéis que tem quarto Premium:
select FK_usuario_e as hotel from hotel where tiposDeQuarto like "%Premium";

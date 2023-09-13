-- WHERE

select * from tb_funcionario where salario < 5000;

--PREDICADO

select * from tb_funcionario where funcionario = 'Ana Clara';
select * from tb_funcionario where matricula = 2;


select * from tb_funcionario where cd_cargo = 1 and cd_setor = 1;   -- faz uma interseccção

select * from tb_funcionario where cd_cargo = 1 or cd_setor = 1;        -- busca a especificação do cargo, do setor e de ambos

-- busca salarios entre 1000 e 6000:
select * from tb_funcionario where salario between 1000 and 6000;

-- busca funcionarios cujo nome começa com jose:
select * from tb_funcionario where funcionario like 'jose%';

-- busca funcionarios cujo nome termine com a:
select * from tb_funcionario where funcionario like '%a';

-- busca funcionarios cujo nome começa com a:
select * from tb_funcionario where funcionario like 'a%';

-- busca funcionarios cujo nome contenha a:
select * from tb_funcionario where funcionario like '%a%';

-- busca funcionarios que façam parte do setor 1 ou 3:
select * from tb_funcionario where cd_setor in (1,3);

-- busca ordenando pelo nome do funcionario:
select * from tb_funcionario order by funcionario;

-- busca ordenando pelo nome do funcionario, de forma decrescente:
select * from tb_funcionario order by funcionario desc;

-- busca ordenando primeiro pelo codigo do cargo e depois pelo nome do funcionario:
select * from tb_funcionario order by cd_cargo, funcionario;

-- busca na tabela funcionario limitando o resultado a 2 linhas:
select * from tb_funcionario limit 2;

-- busca na tabela funcionario as duas primeiras linhas:
select top 2 * from tb_funcionario;

-- DISTINCT

-- busca os codigos de cargo presentes na tb_funcionario:
select distinct cb_cargo from tb_funcionario;

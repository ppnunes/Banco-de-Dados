use bd_rh_terca_noite;

select * from tb_funcionario;

-- mostra o banco de dados:
show databases;

-- mostra usuários:
select user from mysql.user;

-- mostra o usuario e onde ele foi criado:
select user, host from mysql.user;

-- para criar um usuario:
create user alunotn@localhost IDENTIFIED BY 'senha';

-- Listar os usuários:
select user from mysql.user;

-- * DCL - Privilégios *:
-- INSERT		Inserir dados em uma tabela
-- UPDATE		Atualizar dados em uma tabela
-- DELETE		Excluir dados de uma tabela 
-- EXECUTE		Executar funções ou procedimentos armazenados
-- SELECT		Efetuar consultas em uma tabela
-- GRANT 		Dar acesso

-- Dar acesso ao banco bd_rh_terca_noite, somente à tabela funcionario, para leitura e alteração:
GRANT select, update
ON bd_rh_terca_noite.tb_funcionario
TO alunotn@localhost;
-- para dar acesso a todo o banco, colocar ON bd_rh_terca_noite *

-- Para revogar a permissão de alterar:

revoke update
on bd_rh_terca_noite.tb_funcionario
from alunotn@localhost;


select * from consultas where data='2006-06-19' and hora >'12:00:00';

select hora from consultas where  data between '2006-06-14' and 2006-06-20;

select cidade from funcionarios;

select max(hora) from consultas;

select codf,nome,salario - (salario*0.20) from funcionarios;

select nome,cpf from funcionarios where cpf not like '%0000%';

select codp,nome from pacientes where idade>25;

select nome,especialidade from medicos where nome like '_o%' and '%o';
--terminado
insert into Edital (Código, Atividades, Setores, Unidade, Cronograma, Tempo_Validade, Data_inicio, Vagas, Remuneracao) 
values (020651, 'Tutoria em Circuitos Digitais', 'Lab. Fisica Experimental', '3', 'Cronograma - 01/11 Prova avaliativa - 10/11 entrevista', '6 meses', '01/12/2018', 5, 'Salario: 2000');
insert into Edital (Código, Atividades, Setores, Unidade, Cronograma, Tempo_Validade, Data_inicio, Vagas, Remuneracao) 
values (020652, 'Tutoria em Circuitos Digitais', 'Lab. Fisica Experimental', '3', 'Cronograma - 01/11 Prova avaliativa - 10/11 entrevista', '6 meses', '01/12/2018', 5, 'Salario: 2000');
insert into Edital (Código, Atividades, Setores, Unidade, Cronograma, Tempo_Validade, Data_inicio, Vagas, Remuneracao) 
values (020653, 'Tutoria em Calculo 2', 'Dep. Matemática Aplicada', '3', 'Cronograma - 01/11 Prova avaliativa - 10/11 entrevista', '6 meses', '01/12/2018', 5, 'Salario: 2000');

--terminado
insert into Tutor_Virtual (Código, Atividades, Setores, Prefixo, Ano) 
values (020651, 'Tutoria em Circuitos Digitais', 'Lab. Fisica Experimental', '35', 2018);
insert into Tutor_Virtual (Código, Atividades, Setores, Prefixo, Ano) 
values (020651, 'Tutoria em Circuitos Digitais', 'Lab. Fisica Experimental', '36', 2018);
insert into Tutor_Virtual (Código, Atividades, Setores, Prefixo, Ano) 
values (020652, 'Tutoria em Circuitos Digitais', 'Lab. Fisica Experimental', '37', 2018);
insert into Tutor_Virtual (Código, Atividades, Setores, Prefixo, Ano) 
values (020652, 'Tutoria em Circuitos Digitais', 'Lab. Fisica Experimental', '38', 2018);
insert into Tutor_Virtual (Código, Atividades, Setores, Prefixo, Ano) 
values (020653, 'Tutoria em Calculo 2', 'Dep. Matemática Aplicada', '39', 2018);
insert into Tutor_Virtual (Código, Atividades, Setores, Prefixo, Ano) 
values (020653, 'Tutoria em Calculo 2', 'Dep. Matemática Aplicada', '40', 2018);

--terminado
insert into Curso (Código, Nome, Coordenador, Tipo) 
values (305, 'Engenharia de Computação', 'João Paulo', 'Presencial');
insert into Curso (Código, Nome, Coordenador, Tipo) 
values (306, 'Bacharelado em Ciência da Computação', 'Patricia Guimarães', 'Presencial');
insert into Curso (Código, Nome, Coordenador, Tipo) 
values (307, 'Bacharelado em Matemática', 'Saio Sato', 'Presencial');

--terminado
insert into Atividade (Código, Cód_Curso, Periodo)
values ('AXZ78', 305, '2018/1');
insert into Atividade (Código, Cód_Curso, Periodo)
values ('AXZ34', 306, '2019/2');
insert into Atividade (Código, Cód_Curso, Periodo)
values ('IUZ39', 307, '2018/2');

--modificado
insert into Disciplina (Código, Nome) 
values (30501, 'Banco de Dados');
insert into Disciplina (Código, Nome) 
values (30503, 'Circuitos Digitais');
insert into Disciplina (Código, Nome) 
values (30705, 'Cálculo 2');

--modificado
insert into Processo_Seletivo (Código, Código_Edital, Atividades, Setores, Comissão) 
values (30091, 020651, 'Tutoria em Circuitos Digitais', 'Lab. Fisica Experimental', 'Comissão: José Souza e Lucas Góis');

insert into Processo_Seletivo (Código, Código_Edital, Atividades, Setores, Comissão) 
values (30092, 020652, 'Tutoria em Circuitos Digitais', 'Lab. Fisica Experimental', 'Comissão: José Souza e Lucas Góis');
insert into Processo_Seletivo (Código, Código_Edital, Atividades, Setores, Comissão) 
values (30093, 020653, 'Tutoria em Calculo 2', 'Dep. Matemática Aplicada', 'Comissão: José Souza e Lucas Góis');

--modificado
insert into Etapa (Número, Código) 
values (01, 30091);
insert into Etapa (Número, Código) 
values (01, 30092);
insert into Etapa (Número, Código) 
values (02, 30093);

--modificado
insert into Candidato (Código, Prenome, Sobrenome, Cidade, CEP, Rua, Número, Bairro, Estado, Complemento, Curriculo) 
values (332451, 'Pedro', 'Pereira', 'Descalvado', '13124-504', 'Rua 15 e Novembro', 12, 'Centro', 'São Paulo', 'Casa', 'Currículo: ');
insert into Candidato (Código, Prenome, Sobrenome, Cidade, CEP, Rua, Número, Bairro, Estado, Complemento, Curriculo) 
values (332452, 'Sandra', 'Ferreira', 'São Carlos', '13888-501', 'Rua 7 de Setembro', 22, 'Centro', 'São Paulo', 'Casa', 'Currículo: ');
insert into Candidato (Código, Prenome, Sobrenome, Cidade, CEP, Rua, Número, Bairro, Estado, Complemento, Curriculo) 
values (332453, 'Paticia', 'Macedo', 'São Carlos', '13888-501', 'Rua 7 de Dezembro', 22, 'Centro', 'São Paulo', 'Casa', 'Currículo: ');
insert into Candidato (Código, Prenome, Sobrenome, Cidade, CEP, Rua, Número, Bairro, Estado, Complemento, Curriculo) 
values (332454, 'Rubens', 'Braga', 'São Carlos', '13888-501', 'Rua 21 de Outubro', 22, 'Centro', 'São Paulo', 'Casa', 'Currículo: ');

--Terminado
insert into Candidato_Realiza_Etapa (Número_Etapa, Código_PS, Código_Candidato, Classificação, Resultado) 
values (01, 30091, 332451, '1º', '80.5');
insert into Candidato_Realiza_Etapa (Número_Etapa, Código_PS, Código_Candidato, Classificação, Resultado) 
values (01, 30091, 332452, '2º', '80.0');
insert into Candidato_Realiza_Etapa (Número_Etapa, Código_PS, Código_Candidato, Classificação, Resultado) 
values (01, 30092, 332453, '1º', '60.0');
insert into Candidato_Realiza_Etapa (Número_Etapa, Código_PS, Código_Candidato, Classificação, Resultado) 
values (02, 30093, 332454, '1º', '91.0');

/*
insert into Aprovado (Número_Etapa, Código_PS, Código_Candidato, Código_Atividade) 
values (01, 30091, 332451, 'AXZ78');
insert into Aprovado (Número_Etapa, Código_PS, Código_Candidato, Código_Atividade) 
values (02, 30093, 332453, 'AXZ34');
insert into Aprovado (Número_Etapa, Código_PS, Código_Candidato, Código_Atividade) 
values (01, 30093, 332454, 'IUZ39');

insert into Convocado (Número_Convocado, Código_PS, Código_Convocado, Link, Data_Convocado, Contrato) 
values (01, 30091, 332451, 'https://bit.ly/2F6dnMK', '30/11/2018', 'Contrato: ');
insert into Convocado (Número_Convocado, Código_PS, Código_Convocado, Link, Data_Convocado, Contrato) 
values (01, 30092, 332453, 'https://bit.ly/2F6dnMK', '30/11/2018', 'Contrato: ');
insert into Convocado (Número_Convocado, Código_PS, Código_Convocado, Link, Data_Convocado, Contrato) 
values (01, 30093, 332454, 'https://bit.ly/2F6dnMK', '30/11/2018', 'Contrato: ');
*/

--Terminado
insert into Email_Candidato (Código, Email) 
values (332451, 'pedropereira@gmail.com');
insert into Email_Candidato (Código, Email) 
values (332452, 'sandraf@gmail.com');
insert into Email_Candidato (Código, Email) 
values (332451, 'macedo@gmail.com');
insert into Email_Candidato (Código, Email) 
values (332452, 'braga@gmail.com');


--Terminado
insert into Telefone_Candidato (Código, DDI, DDD, Prefixo, Numero) 
values (332451, '+55', '019', '9', '8822-1921');
insert into Telefone_Candidato (Código, DDI, DDD, Prefixo, Numero) 
values (332452, '+55', '019', '9', '9912-2691');
insert into Telefone_Candidato (Código, DDI, DDD, Prefixo, Numero) 
values (332451, '+55', '019', '9', '9218-2137');
insert into Telefone_Candidato (Código, DDI, DDD, Prefixo, Numero) 
values (332452, '+55', '019', '9', '9981-2271');

--terminado
insert into Brasileiro (Código, CPF, Data_Nascimento, Numero_RG, Orgão_Emissor, Data_Emissão) 
values (332451, '527.276.680-66', '28/10/1996', '366427386', 'SSP', '04/06/2011');
insert into Brasileiro (Código, CPF, Data_Nascimento, Numero_RG, Orgão_Emissor, Data_Emissão) 
values (332452, '123.444.219-24', '01/03/1991', '921876218', 'SSP', '04/06/2011');
insert into Brasileiro (Código, CPF, Data_Nascimento, Numero_RG, Orgão_Emissor, Data_Emissão) 
values (332453, '217.217.214-91', '28/10/1996', '314678943', 'SSP', '04/06/2011');
insert into Brasileiro (Código, CPF, Data_Nascimento, Numero_RG, Orgão_Emissor, Data_Emissão) 
values (332454, '331.381.211-12', '01/03/1991', '328666371', 'SSP', '04/06/2011');

--terminado
insert into Brasileiro_Homem (Código, CPF, Certificado_Reservista) 
values (332451, '527.276.680-66', 'BE19T889R1');
insert into Brasileiro_Homem (Código, CPF, Certificado_Reservista) 
values (332454, '331.381.211-12', 'C5387RT123');

--terminado
insert into Tutor_Curso (Código_Tutor, Prefixo, Ano, Código_Curso)
values (020651, '35', '2018', 305);
insert into Tutor_Curso (Código_Tutor, Prefixo, Ano, Código_Curso)
values (020651, '36', '2018', 306);
insert into Tutor_Curso (Código_Tutor, Prefixo, Ano, Código_Curso)
values (020652, '37', '2018', 306);
--
insert into Tutor_Curso (Código_Tutor, Prefixo, Ano, Código_Curso)
values (020653, '38', '2018', 307);

--terminado
insert into Curso_Disciplina(Código_Curso, Código_Disciplina)
values (305, 30501);
insert into Curso_Disciplina(Código_Curso, Código_Disciplina)
values (306, 30503);
insert into Curso_Disciplina(Código_Curso, Código_Disciplina)
values (307, 30705);

/*
insert into Efetivado (Código_Efetivado, Número_Convocado, Código_PS, Código_Convocado, Data_Contratação, Data_Término) 
values ('302002', 01, 30091, 332451, '30/07/2018', '29/07/2018');
insert into Convocado_Efetivado (Número_Convocado, Código_PS, Código_Convocado, Código_Efetivado) 
values (01, 30091, 332451, '302002');
*/



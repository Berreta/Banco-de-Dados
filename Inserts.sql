insert into Edital (Código, Atividades, Setores, Cronograma, Tempo_Validade, Data_inicio, Vagas, Remuneracao) values
(020647, 'Tutoria em Banco de dados', 'Banco de Dados', 'Cronograma - 01/11 Prova avaliativa - 10/11 entrevista', '6 meses', '01/12/2018', 5, 'Salario: 2000');
insert into Edital (Código, Atividades, Setores, Cronograma, Tempo_Validade, Data_inicio, Vagas, Remuneracao) values
(020648, 'Tutoria em Microcontroladores', 'Departamento de Computação', 'Cronograma - 01/11 Prova avaliativa - 10/11 entrevista', '6 meses', '01/12/2018', 3, 'Salario: 2000');
insert into Edital (Código, Atividades, Setores, Cronograma, Tempo_Validade, Data_inicio, Vagas, Remuneracao) values
(020649, 'Tutoria em Matemática Computacional', 'Departamento de Matemática', 'Cronograma - 01/11 Prova avaliativa - 10/11 entrevista', '6 meses', '01/12/2018', 3, 'Salario: 1700');
insert into Edital (Código, Atividades, Setores, Cronograma, Tempo_Validade, Data_inicio, Vagas, Remuneracao) values
(020649, 'Tutoria em Cálculo 1', 'Departamento de Matemática', 'Cronograma - 01/11 Prova avaliativa - 10/11 entrevista', '6 meses', '01/12/2018', 3, 'Salario: 1700');

insert into Tutor_Virtual (Código, Atividades, Setores, Prefixo, Ano) values
(020647, 'Tutoria em Banco de dados', 'Banco de Dados', '05', 2018);
insert into Tutor_Virtual (Código, Atividades, Setores, Prefixo, Ano) values
(020647, 'Tutoria em Banco de dados', 'Banco de Dados', '06', 2018);
insert into Tutor_Virtual (Código, Atividades, Setores, Prefixo, Ano) values
(020649, 'Tutoria em Matemática Computacional', 'Departamento de Matemática', '05', 2018);

insert into Curso (Código, Nome, Coordenador, Tipo) values
(005, 'Engenharia de Computação', 'José Silva Medeiros', 'Presencial');
insert into Curso (Código, Nome, Coordenador, Tipo) values
(006, 'Bacharelado em Ciência da Computação', 'Mariele Costa', 'Presencial');
insert into Curso (Código, Nome, Coordenador, Tipo) values
(007, 'Bacharelado em Matemática', 'Lucas Góis', 'Presencial');

insert into Disciplina (Código, Nome) values
(00501, 'Banco de Dados');
insert into Disciplina (Código, Nome) values
(00503, 'Circuitos Digitais');
insert into Disciplina (Código, Nome) values
(00705, 'Cálculo 2');

insert into Processo_Seletivo (Código, Código_Edital, Atividades, Setores, Comissão) values
(00097, 020647, 'Tutoria em Banco de dados', 'Banco de Dados', 'Comissão: José Souza e Lucas Góis');
insert into Processo_Seletivo (Código, Código_Edital, Atividades, Setores, Comissão) values
(00102, 020647, 'Tutoria em Banco de dados', 'Banco de Dados', 'Comissão: Marcos Luciano e Murilo Carvalho');
insert into Processo_Seletivo (Código, Código_Edital, Atividades, Setores, Comissão) values
(00082, 020649, 'Tutoria em Matemática Computacional', 'Departamento de Matemática', 'Comissão: Denise Santos, João Silva e Ana Maria');

insert into Etapa (Número, Código) values
(01, 00097);
insert into Etapa (Número, Código) values
(04, 00097);
insert into Etapa (Número, Código) values
(01, 00082);
insert into Etapa (Número, Código) values
(02, 00082);

insert into Candidato (Código, Prenome, Sobrenome, Cidade, CEP, Rua, Número, Bairro, Estado, Complemento, Curriculo) values
(072731, 'Carlos', 'Soares Martins', 'Leme', '13616-614', 'Rua Dois', 63, 'Parque Dezenas', 'São Paulo', 'Apartamento', 'Currículo: ');
insert into Candidato (Código, Prenome, Sobrenome, Cidade, CEP, Rua, Número, Bairro, Estado, Curriculo) values
(072752, 'Caroline', 'Carvalho', 'São Carlos', '16509-125', 'Av. São Carlos', 1704, 'Centro', 'São Paulo', 'Currículo: ');
insert into Candidato (Código, Prenome, Sobrenome, Cidade, CEP, Rua, Número, Bairro, Estado, Complemento, Curriculo) values
(064312, 'Joana', 'Lima', 'Araraquara', '13249-329', 'Rua Paulo Bonfanti', 210, 'Parque São Manoel', 'São Paulo', 'Casa', 'Currículo: ');

insert into Email_Candidato (Código, Email) values
(072731, 'carlosmartins@gmail.com');
insert into Email_Candidato (Código, Email) values
(072731, 'carlosoares@hotmail.com');
insert into Email_Candidato (Código, Email) values
(072752, 'carolinecrvlh@outlook.com');
insert into Email_Candidato (Código, Email) values
(072752, 'carolcarvalho@gmail.com');
insert into Email_Candidato (Código, Email) values
(064312, 'joanajlima@gmail.com');

insert into Telefone_Candidato (Código, DDI, DDD, Prefixo, Numero) values
(072731, '+55', '019', '9', '9583-2649');
insert into Telefone_Candidato (Código, DDI, DDD, Prefixo, Numero) values
(072731, '+55', '019', '9', '8562-4392');
insert into Telefone_Candidato (Código, DDI, DDD, Prefixo, Numero) values
(072752, '+55', '016', '9', '9834-1829');
insert into Telefone_Candidato (Código, DDI, DDD, Prefixo, Numero) values
(064312, '+55', '016', '9', '9711-0201');

insert into Brasileiro (Código, CPF, Data_Nascimento, Numero_RG, Orgão_Emissor, Data_Emissão) values
(072731, '527.276.680-66', '28/10/1996', '366427386', 'SSP', '04/06/2011');
insert into Brasileiro (Código, CPF, Data_Nascimento, Numero_RG, Orgão_Emissor, Data_Emissão) values
(072752, '751.731.620-66', '19/01/1993', '212250747', 'SSP', '10/04/2016');

insert into Estrangeiro (Código, País_Emitente, Número, Data_Validade) values
(064312, 'Venezuela', 'VE392510', '10/06/2027');

insert into Brasileiro_Homem (Código, CPF, Certificado_Reservista) values
(072731, '527.276.680-66', 'AH1842NA71');

insert into Período (Código_Período) values
('2018/1');
insert into Período (Código_Período) values
('2018/2');
insert into Período (Código_Período) values
('2019/1');
insert into Período (Código_Período) values
('2019/2');

insert into BlocoA (Código_Período) values
('2018/1');
insert into BlocoA (Código_Período) values
('2019/1');

insert into BlocoB (Código_Período) values
('2018/2');
insert into BlocoB (Código_Período) values
('2019/2');


insert into Tutor_Curso (Código_Tutor, Prefixo, Ano, Código_Curso)
values (020647, '05', '2018', 005);
insert into Tutor_Curso (Código_Tutor, Prefixo, Ano, Código_Curso)
values (020647, '06', '2018', 006);
insert into Tutor_Curso (Código_Tutor, Prefixo, Ano, Código_Curso)
values (020649, '05', '2018', 007);

insert into Curso_Disciplina(Código_Curso, Código_Disciplina)
values (005, 00501);
insert into Curso_Disciplina(Código_Curso, Código_Disciplina)
values (006, 00503);
insert into Curso_Disciplina(Código_Curso, Código_Disciplina)
values (007, 00705);

insert into Relatório_Candidatos(Código_Edital, Atividades_Edital, Setores_Edital, Candidato)
values (020647, 'Tutoria em Banco de dados', 'Banco de Dados', 072731);
insert into Relatório_Candidatos(Código_Edital, Atividades_Edital, Setores_Edital, Candidato)
values (020647, 'Tutoria em Banco de dados', 'Banco de Dados', 072752);
insert into Relatório_Candidatos(Código_Edital, Atividades_Edital, Setores_Edital, Candidato)
values (020649, 'Tutoria em Matemática Computacional', 'Departamento de Matemática', 064312);

insert into Relatório_Resultados (Código_Edital, Atividades_Edital, Setores_Edital, Resultado)
values (020647, 'Tutoria em Banco de dados', 'Banco de Dados', '87.5');
insert into Relatório_Resultados (Código_Edital, Atividades_Edital, Setores_Edital, Resultado)
values (020648, 'Tutoria em Microcontroladores', 'Departamento de Computação', '57.5');
insert into Relatório_Resultados (Código_Edital, Atividades_Edital, Setores_Edital, Resultado)
values (020649, 'Tutoria em Matemática Computacional', 'Departamento de Matemática', '32.0');

insert into Candidato_Realiza_Etapa (Número_Etapa, Código_PS, Código_Candidato) values
(01, 00097, 072731);
insert into Candidato_Realiza_Etapa (Número_Etapa, Código_PS, Código_Candidato) values
(01, 00082, 072752);
insert into Candidato_Realiza_Etapa (Número_Etapa, Código_PS, Código_Candidato) values
(04, 00097, 072731);
insert into Candidato_Realiza_Etapa (Número_Etapa, Código_PS, Código_Candidato) values
(01, 00082, 064312);
insert into Candidato_Realiza_Etapa (Número_Etapa, Código_PS, Código_Candidato) values
(02, 00082, 064312);
insert into Candidato_Realiza_Etapa (Número_Etapa, Código_PS, Código_Candidato) values
(02, 00082, 072752);

insert into Aprovado (Número_Etapa, Código_PS, Código_Candidato, Classificação) values
(01, 00097, 072731, '2º');
insert into Aprovado (Número_Etapa, Código_PS, Código_Candidato, Classificação) values
(01, 00082, 072752, '1º');
insert into Aprovado (Número_Etapa, Código_PS, Código_Candidato, Classificação) values
(02, 00082, 072752, '1º');
insert into Aprovado (Número_Etapa, Código_PS, Código_Candidato, Classificação) values
(01, 00082, 064312, '2º');
insert into Aprovado (Número_Etapa, Código_PS, Código_Candidato, Classificação) values
(02, 00082, 064312, '3º');
insert into Aprovado (Número_Etapa, Código_PS, Código_Candidato, Classificação) values
(04, 00097, 072731, '2º');

insert into Aprovado_Convocado (Número_Aprovado, Código_PS, Código_Aprovado, Código_Período) values
(04, 00097, 072731, '2018/1');
insert into Aprovado_Convocado (Número_Aprovado, Código_PS, Código_Aprovado, Código_Período) values
(02, 00082, 064312, '2018/2');
insert into Aprovado_Convocado (Número_Aprovado, Código_PS, Código_Aprovado, Código_Período) values
(02, 00082, 072752, '2018/2');

insert into Convocado (Número_Convocado, Código_PS, Código_Convocado, Código_Período, Link, Data_Convocado, Contrato) values
(04, 00097, 072731, '2018/1', 'https://bit.ly/2zkeIJQ', '25/11/2018', 'Contrato: ');
insert into Convocado (Número_Convocado, Código_PS, Código_Convocado, Código_Período, Link, Data_Convocado, Contrato) values
(02, 00082, 064312, '2018/2', 'https://bit.ly/2F6dnMK', '30/11/2018', 'Contrato: ');
insert into Convocado (Número_Convocado, Código_PS, Código_Convocado, Código_Período, Link, Data_Convocado, Contrato) values
(02, 00082, 072752, '2018/2', 'https://bit.ly/1yMlbtv', '30/11/2018', 'Contrato: ');

insert into Efetivado (Código_Efetivado, Número_Convocado, Código_PS, Código_Convocado, Código_Período) values
('002001', 04, 00097, 072731, '2018/1');
insert into Efetivado (Código_Efetivado, Número_Convocado, Código_PS, Código_Convocado, Código_Período) values
('002002', 02, 00082, 064312, '2018/2');
insert into Efetivado (Código_Efetivado, Número_Convocado, Código_PS, Código_Convocado, Código_Período) values
('002003', 02, 00082, 072752, '2018/2');

insert into Convocado_Efetivado (Número_Convocado, Código_PS, Código_Convocado, Código_Período, Código_Efetivado, Data_Contratação, Data_Término) values
(04, 00097, 072731, '2018/1', '002001', '01/01/2019', '31/07/2019');
insert into Convocado_Efetivado (Número_Convocado, Código_PS, Código_Convocado, Código_Período, Código_Efetivado, Data_Contratação, Data_Término) values
(02, 00082, 064312, '2018/2', '002002', '01/01/2019', '31/07/2019');

create table Edital(
Código          Number(10),
Atividades      Varchar2(100),
Setores         Varchar2(50),
Cronograma      Varchar2(500)    constraint edital_cronograma_nu not null,
Tempo_Validade  Varchar2(20)    constraint edital_tempo_validade_nu not null,
Data_Inicio     Varchar2(20)    constraint edital_tempo_inicio_nu not null,
Vagas           Number(3)      constraint edital_vagas_nu not null,
Remuneracao     Varchar2(20)    constraint edital_remuneracao not null,
constraint edital_pk primary key (Código, Atividades, Setores));

create table Tutor_Virtual(
Código, Atividades, Setores,
constraint tutor_virtual_fk foreign key (Código, Atividades, Setores) references Edital(Código, Atividades, Setores),
Prefixo         Varchar2(20),
Ano             Number(4),
constraint tutor_virtual_pk primary key (Código, Prefixo, Ano));

create table Curso(
Código			Number(10)		constraint curso_pk primary key,
Nome			Varchar2(50)	constraint curso_nome_nu not null,
Coordenador		Varchar2(50)	constraint curso_coordenador_nu not null,
Tipo			Varchar2(30)	constraint curso_tipo_nu not null);

create table Disciplina(
Código			Number(10)		constraint disciplina_pk primary key,
Nome			Varchar2(50)	constraint disciplina_nome_nu not null);

create table Processo_Seletivo(
Código          Number(10)      constraint processo_seletivo_pk primary key,
Código_Edital, Atividades, Setores,
constraint processo_seletivo_fk foreign key (Código_Edital, Atividades, Setores) references Edital(Código, Atividades, Setores),
Comissão		Varchar2(500)	constraint processo_seletivo_comissao_nu not null);

create table Etapa(
Número			Number(10),
Código			constraint etapa_fk references Processo_Seletivo(Código),
constraint etapa_pk primary key (Número, Código));

create table Candidato(
Código			Number(10)		constraint candidato_surrogate_pk primary key,
Prenome			Varchar2(20)	constraint candidato_prenome_nu not null,
Sobrenome		Varchar2(30)	constraint candidato_sobrenome_nu not null,
Cidade			Varchar2(30)	constraint candidato_cidade_nu not null,
CEP				Varchar2(9)		constraint candidato_cep_nu not null,
Rua				Varchar2(30)	constraint candidato_rua_nu not null,
Número			Number(4)		constraint candidato_numero_nu not null,
Bairro			Varchar2(20)	constraint candidato_bairro_nu not null,
Estado			Varchar2(20)	constraint candidato_estado_nu not null,
Complemento		Varchar2(20),
Curriculo		Varchar2(400)	constraint candidato_curriculo_nu not null);

create table Email_Candidato(
Código			constraint email_codigo_fk references Candidato(Código),
Email			Varchar2(100),
constraint email_pk primary key (Código, Email));

create table Telefone_Candidato(
Código			constraint telefone_codigo_fk references Candidato(Código),
DDI				Varchar2(3),
DDD				Varchar2(5),
Prefixo			Varchar2(1),
Numero			Varchar2(9),
constraint telefone_pk primary key(Código, DDI, DDD, Prefixo, Numero));

create table Brasileiro(
Código			constraint brasileiro_fk references Candidato(Código),
CPF				Varchar2(14),
Data_Nascimento	Varchar2(10)	constraint brasileiro_nascimento_nu not null,
Numero_RG		Varchar2(12)		constraint brasileiro_numero_rg_nu not null,
Orgão_Emissor	Varchar2(5)		constraint brasileiro_orgao_emissor_nu not null,
Data_Emissão	Varchar2(10)	constraint brasileiro_data_emissao_nu not null,
constraint brasileiro_pk primary key (Código, CPF));

create table Estrangeiro(
Código			constraint estrangeiro_fk references Candidato(Código),
País_Emitente	Varchar2(30),
Número			Varchar2(15),
Data_Validade	Varchar2(10),
constraint estrangeiro_pk primary key (Código, País_Emitente, Número, Data_Validade));

create table Brasileiro_Homem(
Código, CPF,
constraint brasileiro_homem_fk foreign key (Código, CPF) references Brasileiro (Código, CPF),
Certificado_Reservista Varchar2(50)	constraint homem_certificado_nu not null,
constraint brasileiro_homem_pk primary key (Código, CPF));

create table Período(
Código_Período	Varchar2(10)	constraint periodo_pk primary key);

create table BlocoA(
Código_Período	constraint blocoA_fk references Período(Código_Período),
constraint blocoA_pk primary key (Código_Período));

create table BlocoB(
Código_Período	constraint blocoB_fk references Período(Código_Período),
constraint blocoB_pk primary key (Código_Período));

create table Tutor_Curso(
Código_Tutor, Prefixo, Ano,
constraint TCtutor_fk foreign key (Código_Tutor, Prefixo, Ano) references Tutor_Virtual(Código, Prefixo, Ano),
Código_Curso	constraint TCcurso_fk references Curso(Código),
constraint tutor_curso_pk primary key (Código_Tutor, Prefixo, Ano, Código_Curso));

create table Curso_Disciplina(
Código_Curso	constraint CDcurso_fk references Curso(Código),
Código_Disciplina constraint CDdisciplina_fk references Disciplina(Código),
constraint curso_disciplina_pk primary key (Código_Curso, Código_Disciplina));

create table Relatório_Candidatos(
Código_Edital, Atividades_Edital, Setores_Edital,
constraint relatorio_candidatos_fk foreign key (Código_Edital, Atividades_Edital, Setores_Edital) references Edital(Código, Atividades, Setores),
Candidato		constraint relatorio_candidato_fk references Candidato(Código),
constraint relatorio_candidatos_pk primary key (Código_Edital, Atividades_Edital, Setores_Edital, Candidato));

create table Relatório_Resultados(
Código_Edital, Atividades_Edital, Setores_Edital,
constraint relatorio_resultados_fk foreign key (Código_Edital, Atividades_Edital, Setores_Edital) references Edital(Código, Atividades, Setores),
Resultado		Varchar2(100),
constraint relatorio_resultados_pk primary key (Código_Edital, Atividades_Edital, Setores_Edital, Resultado));

create table Candidato_Realiza_Etapa(
Número_Etapa, Código_PS,
constraint CEetapa_fk foreign key (Número_Etapa, Código_PS) references Etapa(Número, Código),
Código_Candidato constraint CEcandidato_fk references Candidato(Código),
constraint candidato_etapa_pk primary key (Número_Etapa, Código_PS, Código_Candidato));

create table Aprovado(
Número_Etapa, Código_PS, Código_Candidato,
constraint aprovado_candidato_etapa_fk foreign key (Número_Etapa, Código_PS, Código_Candidato) references Candidato_Realiza_Etapa(Número_Etapa, Código_PS, Código_Candidato),
Classificação	Varchar2(10)	constraint aprovado_classificacao_nu not null,
constraint aprovado_pk primary key (Número_Etapa, Código_PS, Código_Candidato));

create table Aprovado_Convocado(
Número_Aprovado, Código_PS, Código_Aprovado,
constraint aprovado_convocado_fk foreign key (Número_Aprovado, Código_PS, Código_Aprovado) references Aprovado (Número_Etapa, Código_PS, Código_Candidato),
Código_Período	constraint aprovado_comprovado_periodo_fk references Período(Código_Período),
constraint aprovado_convocado_pk primary key (Número_Aprovado, Código_PS, Código_Aprovado, Código_Período));

create table Convocado(
Número_Convocado, Código_PS, Código_Convocado, Código_Período,
constraint convocado_aprovado_fk foreign key (Número_Convocado, Código_PS, Código_Convocado, Código_Período) references Aprovado_Convocado(Número_Aprovado, Código_PS, Código_Aprovado, Código_Período),
Link		Varchar2(150)	constraint convocado_link_nu not null,
Data_Convocado Varchar2(10)	constraint convocado_data_nu not null,
Contrato	Varchar2(500)	constraint convocado_contrato_nu not null,
constraint convocado_pk primary key (Número_Convocado, Código_PS, Código_Convocado, Código_Período));

create table Efetivado(
Código_Efetivado	Varchar2(10)	constraint efetivado_pk primary key,
Número_Convocado, Código_PS, Código_Convocado, Código_Período,
constraint efetivado_fk foreign key (Número_Convocado, Código_PS, Código_Convocado, Código_Período) references Convocado(Número_Convocado, Código_PS, Código_Convocado, Código_Período));

create table Convocado_Efetivado(
Número_Convocado, Código_PS, Código_Convocado, Código_Período,
constraint convocado_efetivado_convocado_fk foreign key (Número_Convocado, Código_PS, Código_Convocado, Código_Período) references Convocado(Número_Convocado, Código_PS, Código_Convocado, Código_Período),
Código_Efetivado	constraint convocado_efetivado_codico_fk references Efetivado(Código_Efetivado),
Data_Contratação Varchar2(10) constraint convocado_efetivado_data_contratacao_nu not null,
Data_Término Varchar2(10) constraint convocado_efetivado_data_termino_nu not null,
constraint convocado_efetivado_pk primary key (Número_Convocado, Código_PS, Código_Convocado, Código_Período, Código_Efetivado));

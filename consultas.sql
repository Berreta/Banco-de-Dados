--5) Listar os nomes e as classificações dos convocados para ser alocado com tutor no curso de Engenharia de Computação de banco de dados, referente ao
-- edital 020647. 
SELECT Prenome, Sobrenome, Classificação
FROM Aprovado A, Edital Ed, Candidato C, Etapa E, Brasileiro Br, Estrangeiro Es, Curso Cur, Tutor_Virtual TV, Tutor_Curso TC, Curso_Disciplina CD, Disciplina Ds
WHERE C.Código = Br.Código 
	and C.Código = Es.Código 
	and C.Código = A.Código_Candidato 
	and E.Código = A.Código_PS 
	and E.Código = Ed.Código 
	and Ed.Código = '020647' 
	and TC.Código_tutor = Ed.Código 
	and TC.Código_Curso = Ds.Código 
	and Ds.Nome = 'Banco de Dados' 
	and Ed.Código = TV.Código 
	and TC.Código_Curso = CD.Código_Curso 
	and Cur.Nome = 'Engenharia de Computação'

--6) Listar o nome, CPF/Nro Passaporte, telefone, email, data de início e data de termino do contrato dos tutores que trabalham no Departamento 
--de Computação como tutores de Microcontroladores.
SELECT Prenome, Sobrenome, CPF, Es.Código, País_Emitente, DDD, DDI, numero, email, Data_Contratação, Data_Término
FROM   Candidato C, Brasileiro Br, Estrangeiro Es, Telefone_Candidato TC, Convocado_Efetivado CE, Efetivado E,Email_Candidato EC, Relatório_Resultados RR, Processo_Seletivo PS, Edital Ed
WHERE   C.Código = EC.Código 
    and C.Código = TC.Código 
    and C.Código = Br.Código 
    and C.Código = Es.Código 
    and CE.Código_PS = PS.Código 
    and PS.Código_Edital = Ed.Código 
    and Ed.Código = RR.Código_Edital    
    and RR.Código_Edital = TC.Código
    and RR.Setores_Edital = 'Departamento de Computação' 
    and RR.Atividades_Edital = 'Tutoria em Microcontroladores'

--7) Listar os cód. deinscrição nomes dos candidatos brasileiros do sexo masculino com idade menor que 18 anos. (Esse poderam apresentar problemas futuros por causa do serviço militar obrigatório)
SELECT Código, Prenome, Sobrenome, Data_Nascimento, Trunc ((SYSDATE - to_date(Br.Data_Nascimento,'dd/mm/yyyy')) /365, 0) as "idade" from Dual
FROM Candidato C, Brasileiro Br
WHERE C.Código = Br.Código and Trunc ((SYSDATE - to_date(Br.Data_Nascimento,'dd/mm/yyyy')) /365, 0) as "idade" from Dual, idade < 18

--8) Apresentar sobre o edital 020647 os candidatos efetivados alocados no Bloco B no período de 2019/2.
SELECT C.Código, Prenome, Sobrenome
FROM Relatório_Candidatos Rel, Edital Ed, Candidato C, Brasileiro Br, Estrangeiro Es, Período P, BlocoB B, Convocado Co, Aprovado Ap, Convocado_Efetivado Ce
WHERE   Ed.Código = '020649' 
	and Ed.Código = Rel.Candidato 
	and C.Código = Br.Código 
	and C.Código = Es.Código 
	and C.Código = Ap.Código_Candidato 
	and Ap.Código_Candidato = Co.Código_Convocado 
	and Co.Número_Convocado = Ce.Número_Convocado
	and Co.Código_Período = P.Código_Período
	and P.Código_Período = B.Código_Período 
	and P.Código_Período = '2018/2'

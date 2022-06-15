
/*DROP TABLE matricula;
DROP TABLE aluno;
DROP TABLE disciplina;
DROP TABLE mensalidade;
DROP TABLE turma;*/

/* Criando as tabelas*/

CREATE TABLE aluno (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    dt_nascimento DATE
   );

CREATE TABLE disciplina (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    qtd_creditos Smallint 
   );


CREATE TABLE turma (
	id INT PRIMARY KEY AUTO_INCREMENT,
    id_disciplina INT NOT NULL,
    turno enum ('Matutino', 'Vespertino', 'Noturno', 'Integral'),
    FOREIGN KEY (id_disciplina)
	REFERENCES disciplina (id)
);

CREATE TABLE matricula (
	id INT PRIMARY KEY AUTO_INCREMENT,
    id_aluno INT NOT NULL,
    id_turma INT not null,
    dt_matricula date,
    periodo_letivo enum ('Semestre1','Semestre2'),
    FOREIGN KEY (id_aluno)
	REFERENCES aluno (id),
	FOREIGN KEY (id_turma)
	REFERENCES turma (id)
);

CREATE TABLE mensalidade (
	id INT PRIMARY KEY AUTO_INCREMENT,
    id_matricula INT NOT NULL,
    dt_vencimento date,
    valor float,
    status_pagto enum('Pago', 'Em atraso'),
    FOREIGN KEY (id_matricula)
	REFERENCES matricula (id)
);

/* inserindo dados nas tabelas*/

/*tabela aluno*/

INSERT INTO aluno (id, nome, dt_nascimento) Values (1, 'Tiago Gomes', '1996-05-05'),
														(2, 'Helena Faria', '1998-04-17'),
                                                        (3, 'Caio Martins', '2000-05-19'),
                                                        (4, 'Ana Dias', '1998-05-15'),
                                                        (5, 'Marcia Costa', '1999-06-15'),
                                                        (6, 'Natalia Duarte', '1998-08-10'),
                                                        (7, 'Danilo Ferreira', '1997-06-25'),
                                                        (8, 'Lucas Braz', '1998-09-12'),
                                                        (9, 'Talita Moreti', '1999-10-15'),
                                                        (10, 'Maria Cunha', '1999-12-01')
                                                        ;
                                                        
/*tabela disciplina*/

INSERT INTO disciplina (id, nome, qtd_creditos) Values (1, 'Matematica', 50),
														(2, 'Logica de programaçao', 60),
                                                        (3, 'Estatistica', 50),
                                                        (4, 'Portugues', 30),
                                                        (5, 'Fisica I', 60)
                                                        ;

/*tabela turma*/

INSERT INTO turma (id, id_disciplina, turno) Values (1, 2, 'Matutino'),
														(2, 5, 'Vespertino'),
                                                        (3, 3, 'Noturno'),
                                                        (4, 2, 'Noturno'),
                                                        (5, 1, 'Integral')
                                                        ;

/*tabela matricula*/

INSERT INTO matricula (id, id_aluno, id_turma, dt_matricula, periodo_letivo) Values (1, 5, 3, '2022-02-15', 'Semestre1'),
														(2, 4, 2, '2022-04-17', 'Semestre2'),
                                                        (3, 2, 1,'2022-03-19', 'Semestre1'),
                                                        (4, 1, 1,'2022-02-05', 'Semestre1'),
                                                        (5, 10, 2,'2022-03-11', 'Semestre2'),
                                                        (6, 3, 4, '2022-02-15', 'Semestre2'),
                                                        (7, 5, 4,'2022-01-13', 'Semestre1'),
                                                        (8, 7,1, '2022-01-16', 'Semestre1'),
                                                        (9, 9, 2,'2022-01-18', 'Semestre2'),
                                                        (10, 3,1, '2022-03-20', 'Semestre2'),
                                                        (11, 6, 5,'2022-03-15', 'Semestre1'),
                                                        (12, 8, 5, '2022-02-05', 'Semestre2')
                                                        ;

/*tabela mensalidade*/

INSERT INTO mensalidade (id, id_matricula, dt_vencimento, valor, status_pagto) Values (1, 5, '2022-05-10', 315.00, 'Em atraso'),
														(2, 4,'2022-05-10', 315.00, 'Pago'),
                                                        (3, 2,'2022-05-10', 300.00, 'Pago'),
                                                        (4, 1,'2022-05-10', 300.00, 'Pago'),
                                                        (5, 10,'2022-05-10', 315.00, 'Em atraso'),
                                                        (6, 3,'2022-05-10', 350.00, 'Em atraso'),
                                                        (7, 6,'2022-05-10', 350.00, 'Pago'),
                                                        (8, 7,'2022-05-10', 315.00, 'Pago'),
                                                        (9, 12,'2022-05-10', 315.00, 'Pago'),
                                                        (10, 10,'2022-05-10', 300.00,'Pago'),
                                                        (11, 9,'2022-05-10', 300.00, 'Pago'),
                                                        (12, 8,'2022-05-10', 350.00, 'Pago')
                                                        ;


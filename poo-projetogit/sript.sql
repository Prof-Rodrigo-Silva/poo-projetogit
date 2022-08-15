CREATE TABLE aluno(
    id BIGINT NOT NULL,
    nome CHARACTER VARYING(255),
    email CHARACTER VARYING(255),
    CONSTRAINT primary_pk PRIMARY KEY(id)

)

CREATE SEQUENCE usersequence
INCREMENT 1
MINVALUE 1
MAXVALUE 9223372036854775807
START 3;


ALTER TABLE aluno ALTER COLUMN id SET DEFAULT NEXTVAL('usersequence'::regclass);

ALTER TABLE aluno ADD UNIQUE (id);

CREATE TABLE telefonealuno(
    id BIGINT NOT NULL,
    numero CHARACTER VARYING(255) NOT NULL,
    tipo CHARACTER VARYING(255) NOT NULL,
    usuario BIGINT NOT NULL,
    CONSTRAINT telefone_id PRIMARY KEY(id)

);

ALTER TABLE telefonealuno ADD FOREIGN KEY (usuario) REFERENCES aluno(id);

CREATE SEQUENCE user_telefone_sequence
INCREMENT 1
MINVALUE 1
MAXVALUE 9223372036854775807
START 1;

ALTER TABLE telefonealuno ALTER COLUMN id SET DEFAULT NEXTVAL('user_telefone_sequence'::regclass);

INSERT INTO public.aluno(nome, email) VALUES ('Rodrigo', 'rodrigo@gmail.com');
INSERT INTO public.aluno(nome, email) VALUES ('Jô', 'jo@gmail.com');
INSERT INTO public.aluno(nome, email) VALUES ('Rafael', 'rafael@gmail.com');
INSERT INTO public.aluno(nome, email) VALUES ('Nati', 'nati@gmail.com');

SELECT * FROM aluno;

INSERT INTO public.telefonealuno(numero, tipo, usuario) VALUES ('999112233', 'celular', 3);
INSERT INTO public.telefonealuno(numero, tipo, usuario) VALUES ('32422020', 'residencial', 3);
INSERT INTO public.telefonealuno(numero, tipo, usuario) VALUES ('999778899', 'celular', 4);
INSERT INTO public.telefonealuno(numero, tipo, usuario) VALUES ('999554411', 'celular', 5);
INSERT INTO public.telefonealuno(numero, tipo, usuario) VALUES ('32415859', 'residencial', 5);
INSERT INTO public.telefonealuno(numero, tipo, usuario) VALUES ('999885522', 'celular', 5);
INSERT INTO public.telefonealuno(numero, tipo, usuario) VALUES ('999888877', 'celular', 6);


SELECT * FROM telefonealuno;
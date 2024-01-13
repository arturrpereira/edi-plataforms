
CREATE TABLE public.Clientes (
                id_cliente INTEGER NOT NULL,
                nome VARCHAR NOT NULL,
                cnpj VARCHAR NOT NULL,
                endereco VARCHAR NOT NULL,
                telefone VARCHAR NOT NULL,
                email VARCHAR NOT NULL,
                CONSTRAINT clientes_pk PRIMARY KEY (id_cliente)
);


CREATE TABLE public.EDI (
                id_edi INTEGER NOT NULL,
                edi_name VARCHAR NOT NULL,
                edi64 TEXT NOT NULL,
                data_envio DATE NOT NULL,
                fk_id_cliente INTEGER NOT NULL,
                CONSTRAINT edi_pk PRIMARY KEY (id_edi)
);


CREATE TABLE public.Usuarios (
                id_usuario INTEGER NOT NULL,
                senha VARCHAR NOT NULL,
                nome VARCHAR NOT NULL,
                cpf VARCHAR NOT NULL,
                login VARCHAR NOT NULL,
                admin BOOLEAN NOT NULL,
                fk_id_cliente INTEGER NOT NULL,
                CONSTRAINT usuarios_pk PRIMARY KEY (id_usuario)
);


ALTER TABLE public.Usuarios ADD CONSTRAINT clientes_usuarios_fk
FOREIGN KEY (fk_id_cliente)
REFERENCES public.Clientes (id_cliente)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.EDI ADD CONSTRAINT clientes_edi_fk
FOREIGN KEY (fk_id_cliente)
REFERENCES public.Clientes (id_cliente)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;
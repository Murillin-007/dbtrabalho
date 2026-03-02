/* Trabalho_Paulo_Lógico_final: */

CREATE TABLE CLIENTES (
    Cod_Cliente INT PRIMARY KEY,
    Nome VARCHAR,
    Sobrenome VARCHAR,
    Inicial VARCHAR,
    DDD INT,
    Telefone INT,
    Saldo FLOAT
);

CREATE TABLE FATURAS (
    Num_Fatura INT PRIMARY KEY,
    Data_Fatura DATE,
    Cod_Cliente INT
);

CREATE TABLE LINHAS (
    Num_Linhas INT PRIMARY KEY,
    Unidades INT,
    Valor FLOAT,
    Num_Fatura INT
);

CREATE TABLE PRODUTOS (
    Cod_Produtos INT PRIMARY KEY,
    Descrição VARCHAR,
    Data_Compras DATE,
    Quantidade INT,
    Valor FLOAT,
    Num_Linhas INT
);

CREATE TABLE FORNECEDORES (
    Cod_Fornecedor INT PRIMARY KEY,
    Nome VARCHAR,
    DDD INT,
    Contato INT,
    Telefone INT,
    Estado VARCHAR,
    Cod_Produtos INT
);
 
ALTER TABLE CLIENTES ADD CONSTRAINT FK_CLIENTES_2
    FOREIGN KEY (Cod_Cliente???)
    REFERENCES ??? (???);
 
ALTER TABLE FATURAS ADD CONSTRAINT FK_FATURAS_2
    FOREIGN KEY (Cod_Cliente???, Num_Fatura???)
    REFERENCES ??? (???);
 
ALTER TABLE LINHAS ADD CONSTRAINT FK_LINHAS_2
    FOREIGN KEY (Num_Fatura???, Num_Linhas???)
    REFERENCES FATURAS (???, ???);
 
ALTER TABLE PRODUTOS ADD CONSTRAINT FK_PRODUTOS_2
    FOREIGN KEY (Num_Linhas???, Cod_Produtos???)
    REFERENCES ??? (???);
 
ALTER TABLE FORNECEDORES ADD CONSTRAINT FK_FORNECEDORES_2
    FOREIGN KEY (Cod_Produtos???)
    REFERENCES ??? (???);
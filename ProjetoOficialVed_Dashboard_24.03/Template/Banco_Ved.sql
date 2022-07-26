drop database veed;  
create database veed; 
use veed;

-- Tabela BANDEIRA
CREATE TABLE bandeira (
    id_bandeira INT(8) NOT NULL AUTO_INCREMENT,
    nome_bandeira VARCHAR(25) NOT NULL,
    PRIMARY KEY (id_bandeira)
  );

-- Tabela CARTAO
CREATE TABLE cartao (
    id_cartao INT(8) NOT NULL AUTO_INCREMENT,
    numeracao_Cartao VARCHAR(20) NOT NULL,
    nome_Titular VARCHAR(50) NOT NULL,
    CPF_Titular VARCHAR(16) NOT NULL,
    dia_vencimento SMALLINT(2) NOT NULL,
    ano_vencimento SMALLINT(2) NOT NULL,
    id_bandeira INT(8) NOT NULL,
    PRIMARY KEY (id_cartao),
    FOREIGN KEY (id_bandeira) REFERENCES bandeira (id_bandeira)
  ); 
  

-- Tabela CUPOM_DESCONTO
CREATE TABLE cupom_desconto (
    id_cupom_desconto INT(8) NOT NULL AUTO_INCREMENT,
    descricao_desconto VARCHAR(45) NOT NULL,
    porcentagem_desconto INT(6) NOT NULL,
    PRIMARY KEY (id_cupom_desconto)
  ); 
  
  
--   Tabela SERIE
CREATE TABLE  serie (
    id_serie INT(8) NOT NULL AUTO_INCREMENT,
    descricao_serie VARCHAR(30) NOT NULL,
    PRIMARY KEY (id_serie)
  );
  
  

--   Tabela CLIENTE
CREATE TABLE cliente (
    id_cliente INT(8) NOT NULL AUTO_INCREMENT,
    nome_cliente VARCHAR(30) NOT NULL,
    sobrenome_cliente VARCHAR(50) NOT NULL,
    nome_social VARCHAR(30) NULL,
    CPF VARCHAR(16) NOT NULL,
    data_nascimento DATE NOT NULL,
    email VARCHAR(30) NOT NULL,
    telefone VARCHAR(16) NOT NULL,
    senha VARCHAR(20) NOT NULL,
    PRIMARY KEY (id_cliente)
  );  
  
  
 -- Tabela CATEGORIA
CREATE TABLE categoria (
    id_categoria INT(8) NOT NULL AUTO_INCREMENT,
    descricao_categoria VARCHAR(45) NOT NULL,
    PRIMARY KEY (id_categoria)
); 


-- Tabela MARCA
CREATE TABLE marca (
    id_marca INT(8) NOT NULL AUTO_INCREMENT,
    descricao_marca VARCHAR(45) NOT NULL,
    PRIMARY KEY (id_marca)
);
 

-- Tabela STATUS_PRODUTO
CREATE TABLE status_produto (
    id_status_produto INT(8) NOT NULL AUTO_INCREMENT,
    descricao_produto_status VARCHAR(45) NOT NULL,
    PRIMARY KEY (id_status_produto)
);

 
 -- Tabela PRODUTO
CREATE TABLE produto (
    id_produto INT(8) NOT NULL AUTO_INCREMENT,
    nome_produto VARCHAR(50) NOT NULL,
    preco DOUBLE(10,0) NOT NULL,
    imagem_url VARCHAR(100) NOT NULL,
    id_categoria INT(8) NOT NULL,
    id_marca INT(8) NOT NULL,
    descricao_produto VARCHAR(1000) NOT NULL,
    id_status_produto INT(8) NOT NULL,
    peso_kilo DOUBLE(10,0) NOT NULL,
    PRIMARY KEY (id_produto),
    FOREIGN KEY (id_marca) REFERENCES marca (id_marca),
    FOREIGN KEY (id_categoria) REFERENCES categoria (id_categoria),
    FOREIGN KEY (id_status_produto) REFERENCES status_produto (id_status_produto)
);
    
--   Tabela PEDIDO_STATUS
CREATE TABLE pedido_status (
    id_pedido_status INT(8) NOT NULL AUTO_INCREMENT,
    descricao_status VARCHAR(45) NULL,
    PRIMARY KEY (id_pedido_status)
  );
  

-- Tabela UF
CREATE TABLE uf (
    id_uf INT(8) NOT NULL AUTO_INCREMENT,
    descricao_uf VARCHAR(2) NOT NULL,
    PRIMARY KEY (id_uf)
  ); 
  
  
--   Tabela TIPO_FRETE
CREATE TABLE tipo_frete (
    id_tipo_frete INT(8) NOT NULL AUTO_INCREMENT,
    descricao_frete VARCHAR(45) NOT NULL,
    PRIMARY KEY (id_tipo_frete)
  );
  

--   Tabela FRETE
CREATE TABLE frete (
    id_frete INT(8) NOT NULL AUTO_INCREMENT,
    id_uf INT(8) NOT NULL,
    id_tipo_frete INT(8) NOT NULL,
    valor DOUBLE(10,0) NOT NULL,
    PRIMARY KEY (id_frete),
    FOREIGN KEY (id_uf) REFERENCES uf (id_uf),
    FOREIGN KEY (id_tipo_frete) REFERENCES tipo_frete (id_tipo_frete)
  ); 
  
 -- Tabela ENDERECO 
CREATE TABLE endereco (
    id_endereco INT(8) NOT NULL AUTO_INCREMENT,
    cep VARCHAR(10) NOT NULL,
    rua VARCHAR(150) NOT NULL,
    numero INT(4) NOT NULL,
    complemento VARCHAR(30) NOT NULL,
    municipio VARCHAR(45) NOT NULL,
    id_uf INT(8) NOT NULL,
    cidade VARCHAR(45) NOT NULL,
    PRIMARY KEY (id_endereco),
    FOREIGN KEY (id_uf)REFERENCES uf (id_uf)
); 
  

-- Tabela CLIENTE_ENDERECO 
CREATE TABLE cliente_endereco (
    id_cliente INT(8) NOT NULL AUTO_INCREMENT,
    id_endereco INT(8) NOT NULL,
    PRIMARY KEY (id_cliente, id_endereco),
    FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente),
    FOREIGN KEY (id_endereco) REFERENCES endereco (id_endereco)
); 


 
 
--   Tabela PEDIDO
CREATE TABLE pedido (
    id_pedido INT(8) NOT NULL AUTO_INCREMENT,
    id_cliente INT(8) NOT NULL,
    id_cupom_desconto INT(8) NULL,
    id_pedido_status INT(8) NOT NULL,
    id_frete INT(8) NOT NULL,
    data_pedido DATE not null,
    id_endereco int(8) not null,
    PRIMARY KEY (id_pedido, id_cliente),
    FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente),
    FOREIGN KEY (id_cupom_desconto) REFERENCES cupom_desconto (id_cupom_desconto),
    FOREIGN KEY (id_pedido_status) REFERENCES pedido_status (id_pedido_status),
    FOREIGN KEY (id_endereco) REFERENCES endereco (id_endereco),
    FOREIGN KEY (id_frete) REFERENCES frete (id_frete)
);  

 
--   Tabela ITEM_PEDIDO
CREATE TABLE item_pedido (
    id_item_pedido INT(8) NOT NULL AUTO_INCREMENT,
    id_produto int(8) NOT NULL,
    quantidade_total INT(10) NOT NULL,
    porcentagem_icms DOUBLE(10,0) NOT NULL,
    valor_icms DOUBLE(10,0) NOT NULL,
    id_pedido int(8) not null,
    PRIMARY KEY (id_item_pedido, id_pedido), 
    foreign key (id_produto) references produto (id_produto),
	foreign key (id_pedido) references pedido (id_pedido)
  );  
  

-- Tabela NOTA_FISCAL
CREATE TABLE nota_fiscal (
    id_nota_fiscal INT(8) NOT NULL AUTO_INCREMENT,
    id_serie INT(8) NOT NULL,
    chave_acesso VARCHAR(45) NOT NULL,
    id_pedido INT(8) NOT NULL,
    PRIMARY KEY (id_nota_fiscal),
    FOREIGN KEY (id_serie) REFERENCES serie (id_serie),
    FOREIGN KEY (id_pedido) REFERENCES pedido (id_pedido)
); 
  

-- Tabela  CLIENTE_CARTAO 
CREATE TABLE cliente_cartao (
    id_cliente INT(8) NOT NULL AUTO_INCREMENT,
    id_cartao INT(8) NOT NULL,
    PRIMARY KEY (id_cliente),
    FOREIGN KEY (id_cliente)REFERENCES cliente (id_cliente),
    FOREIGN KEY (id_cartao)REFERENCES cartao (id_cartao)
); 
    



-- Tabela FORNECEDOR
CREATE TABLE fornecedor (
    id_fornecedor INT(8) NOT NULL AUTO_INCREMENT,
    razao_social VARCHAR(50) NOT NULL,
    CNPJ VARCHAR(16) NOT NULL,
    email VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_fornecedor)
); 
  

-- Tabela FORNECEDOR_ENDERECO
CREATE TABLE fornecedor_endereco (
    id_fornecedor INT(8) NOT NULL AUTO_INCREMENT,
    id_endereco INT(8) NOT NULL,
    PRIMARY KEY (id_fornecedor, id_endereco),
    FOREIGN KEY (id_fornecedor) REFERENCES fornecedor (id_fornecedor),
    FOREIGN KEY (id_endereco) REFERENCES endereco (id_endereco)
); 
  

-- Tabela ESTOQUE_PRODUTO
CREATE TABLE estoque_produto(
    id_estoque INT(8) NOT NULL AUTO_INCREMENT,
    id_produto INT(8) NOT NULL,
    quantidade INT(8) NOT NULL,
    PRIMARY KEY (id_estoque, id_produto),
    FOREIGN KEY (id_produto) REFERENCES produto (id_produto)
);


-- Tabele RECEITA
CREATE TABLE receita(
    id_receita INT(8) NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) not null,
    ingredientes VARCHAR(500) NOT NULL,
    preparo VARCHAR(800) NOT NULL,
    PRIMARY KEY (id_receita)
);


-- Tabele ARMAZENAMENTO
CREATE TABLE armazenamento(
    id_armazenamento INT(8) NOT NULL AUTO_INCREMENT,
    descricao_armazenamento VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_armazenamento)
);


-- Tabele INFORMAÇÃO
CREATE TABLE informacao(
    id_informacao INT(8) NOT NULL AUTO_INCREMENT,
    id_armazenamento INT(8) NOT NULL,
    id_receita INT(8) NOT NULL,
    PRIMARY KEY (id_informacao),
    FOREIGN KEY (id_armazenamento) REFERENCES armazenamento (id_armazenamento),
    FOREIGN KEY (id_receita) REFERENCES receita (id_receita)
);


-- Tabele INFORMAÇÃO_PRODUTO
CREATE TABLE informacao_produto(
    id_informacao INT(8) NOT NULL AUTO_INCREMENT,
    id_produto INT(8) NOT NULL,
    PRIMARY KEY (id_informacao,id_produto),
    FOREIGN KEY (id_informacao) REFERENCES informacao (id_informacao),
    FOREIGN KEY (id_produto) REFERENCES produto (id_produto)
);




-- Tabele HISTORICO_PEDIDO
CREATE TABLE historico_pedido(
    id_historico_pedido INT(8) NOT NULL AUTO_INCREMENT,
    id_pedido INT(8) NOT NULL,
    id_pedido_status INT(8) NOT NULL,
    data_pedido DATE NOT NULL,
    PRIMARY KEY (id_historico_pedido, id_pedido),
    FOREIGN KEY (id_pedido) REFERENCES pedido (id_pedido),
    FOREIGN KEY (id_pedido_status) references pedido_status (id_pedido_status)
);


-- Tabele BOLETO
CREATE TABLE boleto(
    id_boleto INT(8) NOT NULL AUTO_INCREMENT,
    id_marca INT(8) NOT NULL,
    codigo_barra VARCHAR(25) NOT NULL,
    PRIMARY KEY (id_boleto),
    FOREIGN KEY (id_marca) REFERENCES marca (id_marca)
);


-- Tabele TIPO_PAGAMENTO
CREATE TABLE tipo_pagamento(
    id_tipo_pagamento INT(8) NOT NULL AUTO_INCREMENT,
    descricao_pagamento VARCHAR(25) CHARACTER SET 'utf8' COLLATE 'utf8_bin' NOT NULL,
    PRIMARY KEY (id_tipo_pagamento)
);


-- Tabele PAGAMENTO
CREATE TABLE pagamento(
    id_pagamento INT(8) NOT NULL AUTO_INCREMENT,
    id_tipo_pagamento INT(8) NOT NULL,
    id_pedido INT(8) NOT NULL,
    PRIMARY KEY (id_pagamento, id_pedido),
    FOREIGN KEY (id_tipo_pagamento) REFERENCES tipo_pagamento (id_tipo_pagamento),
    FOREIGN KEY (id_pedido) REFERENCES pedido (id_pedido)
);


-- Tabele PIX
CREATE TABLE pix(
    id_pix INT(8) NOT NULL AUTO_INCREMENT,
    codigo_pix VARCHAR(100) NOT NULL,
    PRIMARY KEY (id_pix)
);


-- Tabele TIPO_PAGAMENTO_PIX
CREATE TABLE tipo_pagamento_pix(
    id_tipo_pagamento INT(8) NOT NULL AUTO_INCREMENT,
    id_pix INT(8) NOT NULL,
    PRIMARY KEY (id_tipo_pagamento, id_pix),
    FOREIGN KEY (id_tipo_pagamento) REFERENCES tipo_pagamento (id_tipo_pagamento),
    FOREIGN KEY (id_pix) REFERENCES pix (id_pix)
);


-- Tabele TIPO_PAGAMENTO_BOLETO
CREATE TABLE tipo_pagamento_boleto(
    id_tipo_pagamento INT(8) NOT NULL AUTO_INCREMENT,
    id_boleto INT(8) NOT NULL,
    PRIMARY KEY (id_tipo_pagamento, id_boleto),
    FOREIGN KEY (id_tipo_pagamento) REFERENCES tipo_pagamento (id_tipo_pagamento),
    FOREIGN KEY (id_boleto) REFERENCES boleto (id_boleto)
);

-- Tabele TIPO_PAGAMENTO_CARTÃO
CREATE TABLE tipo_pagamento_cartao(
    id_tipo_pagamento INT(8) NOT NULL AUTO_INCREMENT,
    id_cartao INT(8) NOT NULL,
    PRIMARY KEY (id_tipo_pagamento, id_cartao),
    FOREIGN KEY (id_tipo_pagamento) REFERENCES tipo_pagamento (id_tipo_pagamento),
    FOREIGN KEY (id_cartao) REFERENCES cartao (id_cartao)
);


-- Tabela FRETE_PEDIDO
CREATE TABLE frete_pedido(
    id_frete INT(8) NOT NULL AUTO_INCREMENT,
    id_pedido INT(8) NOT NULL,
    PRIMARY KEY (id_frete, id_pedido),
    FOREIGN KEY (id_frete) REFERENCES frete (id_frete),
    FOREIGN KEY (id_pedido) REFERENCES pedido (id_pedido)
);


-- Tabela PRODUTO_FORNECEDOR
CREATE TABLE produto_fornecedor(
    id_produto INT(8) NOT NULL AUTO_INCREMENT,
    id_fornecedor INT(8) NOT NULL,
    PRIMARY KEY (id_produto, id_fornecedor),
    FOREIGN KEY (id_produto) REFERENCES produto (id_produto),
    FOREIGN KEY (id_fornecedor) REFERENCES fornecedor (id_fornecedor)
);


CREATE TABLE usuario (
  id int NOT NULL AUTO_INCREMENT,
  email varchar(100)NOT NULL,
  senha varchar(80) NOT NULL,
  nome varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`) 
  );
 
INSERT INTO fornecedor VALUES
('12345678000101','Hotel Bahia Premium','João Silva'),
('98765432000102','Companhia Aérea Brasil','Maria Souza'),
('11122233000103','Turismo Nordeste','Pedro Santos');

INSERT INTO servico(cnpj_fornecedor,descricao,categoria) VALUES
('12345678000101','Hospedagem Luxo','Hotel'),
('98765432000102','Passagem Nacional','Aéreo'),
('98765432000102','Passagem Internacional','Aéreo'),
('11122233000103','Passeio Turístico','Turismo'),
('12345678000101','Hospedagem Econômica','Hotel');

INSERT INTO pacote(descricao) VALUES
('Pacote Salvador'),
('Pacote Rio de Janeiro'),
('Pacote Nordeste');

INSERT INTO pacote_servico VALUES
(1,1),
(1,2),
(2,2),
(2,4),
(3,1),
(3,4),
(3,5);

INSERT INTO cliente(nome) VALUES
('Arthur Oliveira'),
('Bruno Costa'),
('Carla Souza');

INSERT INTO vendedor(nome) VALUES
('Carlos Lima'),
('Ana Santos'),
('Marcos Oliveira');

INSERT INTO venda(id_cliente,matricula_vendedor,data_venda) VALUES
(1,1,'2026-06-01'),
(2,2,'2026-06-02'),
(3,3,'2026-06-03');

INSERT INTO venda_servico VALUES
(1,1),
(1,2),
(2,4),
(3,5);

INSERT INTO venda_pacote VALUES
(1,1,2500.00),
(2,2,3200.00),
(3,3,4100.00);

INSERT INTO recebimento_cliente
(id_cliente,forma_pagamento,valor,status)
VALUES
(1,'PIX',2500.00,'PAGO'),
(2,'Cartão',3200.00,'PAGO'),
(3,'Boleto',4100.00,'PAGO');

INSERT INTO pagamento_fornecedor
(id_venda,valor_custo,data_limite)
VALUES
(1,1800.00,'2026-06-15'),
(2,2400.00,'2026-06-16'),
(3,3000.00,'2026-06-17');

INSERT INTO comissao
(matricula_vendedor,valor_liquido)
VALUES
(1,250.00),
(2,320.00),
(3,410.00);

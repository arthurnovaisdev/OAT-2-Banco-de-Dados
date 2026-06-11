# Sistema de Vendas e Serviços - Agência de Viagens

## Objetivo

Este projeto implementa um banco de dados relacional para gerenciamento de vendas e serviços de uma agência de viagens.

O sistema permite controlar:

- Clientes
- Vendedores
- Fornecedores
- Serviços
- Pacotes
- Vendas
- Recebimentos
- Pagamentos
- Comissões

---

## Estrutura do Banco

### Entidades Principais

- Cliente
- Vendedor
- Fornecedor
- Serviço
- Pacote
- Venda

### Entidades Associativas

- Pacote_Servico
- Venda_Servico
- Venda_Pacote

### Entidades Financeiras

- Recebimento_Cliente
- Pagamento_Fornecedor
- Comissao

---

## Relacionamentos

Fornecedor 1:N Serviço

Pacote N:M Serviço

Cliente 1:N Venda

Vendedor 1:N Venda

Venda N:M Serviço

Venda N:M Pacote

Cliente 1:N Recebimento

Venda 1:N PagamentoFornecedor

Vendedor 1:N Comissão

---

## Execução

1. Executar create_tables.sql
2. Executar insert_data.sql
3. Executar rastreabilidade.sql

---

## Consulta de Rastreabilidade

A consulta reúne informações financeiras de cada venda:

- Data da Venda
- Nome do Vendedor
- Nome do Cliente
- Valor Pago pelo Cliente
- Valor de Custo do Fornecedor
- Valor da Comissão do Consultor

Utilizando INNER JOIN para integrar dados de múltiplas tabelas.

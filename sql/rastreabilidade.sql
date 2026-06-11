/*
Relatório de rastreabilidade financeira
*/

SELECT
    v.data_venda AS "Data da Venda",
    vd.nome AS "Nome do Vendedor",
    c.nome AS "Nome do Cliente",
    rc.valor AS "Valor Total Pago pelo Cliente",
    pf.valor_custo AS "Valor de Custo do Fornecedor",
    co.valor_liquido AS "Valor da Comissão do Consultor"

FROM venda v

INNER JOIN cliente c
    ON v.id_cliente = c.id_cliente

INNER JOIN vendedor vd
    ON v.matricula_vendedor = vd.matricula

INNER JOIN recebimento_cliente rc
    ON rc.id_cliente = c.id_cliente

INNER JOIN pagamento_fornecedor pf
    ON pf.id_venda = v.id_venda

INNER JOIN comissao co
    ON co.matricula_vendedor = vd.matricula

ORDER BY v.data_venda;

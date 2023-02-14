    #include 'protheus.ch'

    
    Local nx
	Local nQtdItens := 0

	// Acessar aProd e buscar a quantidade itens -> concatenar a quantidade de itens
	For nx := 1 to len(aProd)
		nQtdItens += aProd[nx][9] //Quantidade de produto
	Next

	// Alterar a mensagem da nota para ter a informacao: "Total de Itens" + nQtdItens - independente de regras fiscais.
	cMensCli += "Total de Itens: " + ALLTRIM(TRANSFORM(nQtdItens, "@E 999,999,999.99"))

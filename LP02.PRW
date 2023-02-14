22/05/1989
22/05/1989 - VAlendo
09876543321


nova_funcao
	Local cBody		:= ::GetContent()
	Local lRetorno	:= .T.
	Local cMenErro	:= ""
nova_funcao
	Local cBody		:= ::GetContent()
	Local lRetorno	:= .T.
	Local cMenErro	:= ""
nova_funcao
	Local cBody		:= ::GetContent()
	Local lRetorno	:= .T.
	Local cMenErro	:= ""
nova_funcao
	Local cBody		:= ::GetContent()
	Local lRetorno	:= .T.
	Local cMenErro	:= ""
	Local cRetorno	:= ""
	
	Local cEmpLog	:= ""
	Local cFilLog	:= ""
	Local oObjRet	:= Nil
	
	//Requisicao de entrada
	ConOut( "Requisicao de Entrada - BRTARCHITECT" + CRLF + cBody )

	//Valida mensagem
	If Empty( cBody )
		cRetorno := U_BRTSELAL( "ERRO", "200", "Mensagem invalida" )
	Else
		If U_BRVLDTOK( cBody, @cMenErro, @oObjRet, @cEmpLog, @cFilLog, "JSONOBJECT" )

			//Inicia ambiente
			RpcClearEnv()
			RpcSetEnv( cEmpLog, cFilLog )

			//Chama funcao de retorno
			cRetorno := FUNCRETD( oObjRet )

		Else
			cRetorno := U_BRTSELAL( "ERRO", "200", cMenErro )
		EndIf
	EndIf
	
	//Seta retorno
	::SetResponse( EncodeUTF8( cRetorno ) )

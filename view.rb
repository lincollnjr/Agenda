class Visao
	
	def imprimirMenu()
		puts "          Menu"
		puts " 1 - Cadastrar contato"
		puts " 2 - Listar os contatos"
		puts " 3 - Remover contatos"
		puts " 4 - Pesquisar contatos"
		puts " 5 - Sair"
	end
	
	def imprimirContato(user)
		puts(user)
	end
	
	def imprimirListaContato(listContatos)
		for contador in 0 .. 50
			puts listContatos[contador]
		end
	end
	
	def imprimirCadastroNome()
		puts "O nome do contato: "
	end
	
	def imprimirCadastroIdade()
		puts "A idade do contato: "
	end
	
	def imprimirCadastroTelefone()
		puts "O telefone do contato: "
	end
	
	def imprimirCadastroLogradouro()
		puts "O logradouro do endereco do contato: "
	end
	
	def imprimirCadastroNumero()
		puts "O número do endereco do contato: "
	end
	
	def imprimirCadastroBairro()
		puts "O bairro do endereco do contato: "
	end
	
	def imprimirCadastroCidade()
		puts "A cidade do endereco do contato: "
	end
	
	def imprimirCadastroEstado()
		puts "O Estado do endereco do contato: "
	end
	
	def imprimirDeletecontato()
		puts "O nome do contato a ser removido: "
	end
	
	def imprimirPesquisarContato()
		puts "O nome do contato a ser pesquisado: "
	end
	
	def imprimirContatoRemovido()
		puts "Contato removido."
	end
	
	def imprimirContatoNaoEncontrado()
		puts "Contato nao encontrado."
	end
	
	def imprimirSalveSucess()
		puts "Arquivo salvo com sucesso."
	end

end

class ControleVisao

	impressora = Visao.new()

	def capturarCadastroNome()
		impressora.imprimirCadastroNome
		entrada = gets()
		return entrada
	end
	
	def capturarCadastroIdade()
		impressora.imprimirCadastroIdade
		entrada = gets()
		return entrada
	end
	
	def capturarCadastroTelefone()
		impressora.imprimirCadastroTelefone
		entrada = gets()
		return entrada
	end
	
	def capturarCadastroLogradouro()
		impressora.imprimirCadastroLogradouro
		entrada = gets()
		return entrada
	end
	
	def capturarCadastroNumero()
		impressora.imprimirCadastroNumero
		entrada = gets()
		return entrada
	end
	
	def capturarCadastroBairro()
		impressora.imprimirCadastroBairro
		entrada = gets()
		return entrada
	end
	
	def capturarCadastroCidade()
		impressora.imprimirCadastroCidade
		entrada = gets()
		return entrada
	end
	
	def capturarCadastroEstado()
		impressora.imprimirCadastroEstado
		entrada = gets()
		return entrada
	end
	
end
	

	

	

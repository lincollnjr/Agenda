require_relative 'model.rb'
require_relative 'view.rb'

class Controle
	
	
	@posição = 0
	
	def adicionarContato(user,listContatos)
		if @posição < 51
			listContatos[@posição](user)
			@posição = @posição + 1
		end
	end
	
	def procuraContato(listContatos, nome)
		
		for contador in 0 .. 50
			
			if listContatos[contador].@nome == nome
			
				return listContatos[contador]
				
			end
			
		end
	
	end
	
	def removeContato(listContatos, nome)
		
		@usuario = procuraContato(listContatos,nome)
		if @usuario != Nil
			listContatos.delete(@usuario)
		
	
	end 
	
end

class ControleGeral

	controle = Controle.new()
	capturas = ControleGeral.new()
	visao = Visao.new()
	agenda = Agenda.instance.connect
	
	
	def run()
	
		visao.imprimirMenu()
		@opcao = gets()
		while(true)
		
			case @opcao
			
			when 1				
				controle.adicionarContato(cadastraContato(),agenda.getListContatos)
				break
				
			when 2
				visao.imprimirListaContatos(agenda.getListContatos)
				break
				
			when 3
				controle.removeContato(agenda.getListContatos,capturas.capturaCadastroNome())
				break
				
			when 4
				controle.procuraContato(agenda.getListContatos,capturas.capturaCadastroNome())
				break
				
			when 5
				return
			
			end
		end
	end	
	
	def cadastraContato()
	
		return Usuario.new(capturas.capturaCadastroNome(), capturas.capturaCadastroIdade(), capturas.capturaCadastroTelefone(), cadastraEndereco())
	
	end
	
	def cadastraEndereco()
	
		return Endereco.new(capturas.capturaCadastroLogradouro(), capturas.capturaCadastroNumero(), capturas.capturaCadastroBairro(), capturas.cadastroCidade(), capturas.cadastroEstado())
		
	end
	

 end
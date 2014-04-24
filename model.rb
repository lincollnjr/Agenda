require "singleton"

class Endereço
	def initiliaze(logradouro, numero, bairro, cidade, estado)
		@logradouro = logradouro
		@numero = numero
		@bairro = bairro
		@cidade = cidade
		@estado = estado
	end
	
	def to_s
		"Logradouro: #{@logradouro} Numero: #{@numero} Bairro: #{@bairro} Cidade: #{@cidade} Estado: #{@estado} \n"
    end
	
	
end

class Usuario
	
	
	def initiliaze(nome, idade, telefone, endereco)
		@nome = nome
		@idade = idade
		@telefone = telefone
		@endereco = endereco
	end
	
	def to_s
		"Nome: #{@nome} Idade: #{@idade} Telefone: #{@telefone} #{@endereco.to_s} "
	end
	
	

end

class Agenda
	include Singleton
	
	@listContatos = Array.new(50)
	
	def connect
		@connection = Adapter.connect
	end
	
	def getListContatos()
	
		return @listContatos
	
	end
end
	
	
	
	
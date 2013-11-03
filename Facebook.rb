
require "koala"

class ClienteFacebook 
	
	#constructor
	def initialize
		@graph=Koala::Facebook::API.new("CAACEdEose0cBAPwuCHZB0avQswFRdTt9eZAZBJkANC8QHGsg6mmsEquAJ6FzvZA0ZC15dacLrEHAxMDKpW3mgkvuRcuoOcBM9c4BQ5e3ZCz7d3Glp6TzfgM2AshAJonhmxpoMUsJb3qIFcpIbKjltHlFfTNr4ZBBlZCZBOnely0IeyvvYqWAsXkCZCc7nGS8b6IoAFRCk7JrydvwZDZD")
	end

	def usuario(nombre="me")
		@graph.get_object(nombre)
	end


	#retorna el feed del usuario en facebook
	def feed(usuario = "me")
		@graph.get_connections(usuario, 'feed')
	end
end

cliente = ClienteFacebook.new
puts cliente.usuario('lshimokawa').first()



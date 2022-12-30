class ProcessAttenadnce
	def initialize(response)
		@response=response
		client_data= JSON.parse(response)
		
	end
end
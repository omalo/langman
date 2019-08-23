require './lib/generarPalabra.rb'
describe Generar do
	it 'Si recibo dog debo ver ---' do
		#Arrange (preparacion de escenario de pruebas)
        generar = Generar.new
		#Act
		result = generar.guiones("dog")  
		#Assert
		expect(result).to eq "---"
    end
	it 'Si recibo paz debo ver ---' do
		#Arrange (preparacion de escenario de pruebas)
        generar = Generar.new
		#Act
		result = generar.guiones("paz")  
		#Assert
		expect(result).to eq "---"
    end    
    
    it 'Si recibo costumbre debo ver ---' do
		#Arrange (preparacion de escenario de pruebas)
        generar = Generar.new
		#Act
		result = generar.guiones("costumbre")  
		#Assert
		expect(result).to eq "---------"
	end  
end



#Si recibo paz debo ver '---'
#Si recibo costumbre debo ver '---------'

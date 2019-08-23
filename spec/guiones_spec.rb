require './lib/generarPalabra.rb'
describe Generar do
	it 'Si recibo dog debo ver ---' do
		#Arrange (preparacion de escenario de pruebas)
        generar = Generar.new
		#Act
		result = generar.guiones("DOG")  
		#Assert
		expect(result).to eq "---"
    end
	it 'Si recibo agile debo ver -----' do
		#Arrange (preparacion de escenario de pruebas)
        generar = Generar.new
		#Act
		result = generar.guiones("AGILE")  
		#Assert
		expect(result).to eq "-----"
    end    
    
    it 'Si recibo cucumber debo ver --------' do
		#Arrange (preparacion de escenario de pruebas)
        generar = Generar.new
		#Act
		result = generar.guiones("CUCUMBER")  
		#Assert
		expect(result).to eq "--------"
	end  
end



#Si recibo paz debo ver '---'
#Si recibo costumbre debo ver '---------'

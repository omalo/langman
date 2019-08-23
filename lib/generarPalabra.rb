class Generar
    
    WORDS = {"dog"=>"---", "cucumber"=>"--------", "agile" => "-----"}

    def guiones palabra
        WORDS[palabra]
    end
end

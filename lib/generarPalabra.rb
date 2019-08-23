class Generar
    
    VOCABULARIO = [
        "DOG",
        "CAT",
        "CUCUMBER",
        "AGILE",
        "SCRUM"
    ]
    
    def guiones palabra = nil
        if palabra == nil
            @random = rand(4)
            @guion = "-" * VOCABULARIO[@random].length
            @guion

        else
            "-" * palabra.length
        end
    end
end

class Engine

    @@preguntas = [
        "hola, quieres aprender scrum?",
        "en scrum debo ser ágil?",
        "metodología tradicional es lo mismo que metodología ágil?",
    ]

    @@respuestas = [ "si", "si", "no" ]

    def initialize
        @actual = 0
    end

    def parse(txt)
        txt = txt.chomp.downcase
        resp = select_dialog(txt)
        resp
    end

    def select_dialog(txt)

        if @actual == 0
            @actual += 1
            @@preguntas[@actual-1]
        elsif @actual == 1
            @actual += 1
            if txt.include? "si"
                "bien! " + @@preguntas[@actual-1]
            else
                "bueno, adios"
            end
        elsif @actual == 2
            @actual += 1
            if txt.include? "si"
                "bien! " + @@preguntas[@actual-1]
            else
                "lo siento, perdiste"
            end
        elsif @actual == 3
            if txt.include? "no"
                "bien! haz ganado!"
            else
                "lo siento, perdiste"
            end
        end

    end

end

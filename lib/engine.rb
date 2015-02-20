class Engine

    @@preguntas = [
        "hola aprendiz, quieres aprender scrum?",
        "en scrum debo ser ágil?",
        "metodología tradicional es lo mismo que metodología ágil?",
    ]

    @@respuestas = [ "si", "si", "no" ]

    def initialize
        @actual = -1
    end

    def parse(txt)
        txt = txt.chomp.downcase
        select_dialog(txt)
    end

    def select_dialog(txt)

        if @actual == -1
            @actual += 1
            @@preguntas[@actual]
        elsif @actual == 0
            @actual += 1
            if txt.include? @@respuestas[@actual]
                "bien! " + @@preguntas[@actual]
            else
                "bueno, adios"
            end
        elsif @actual == 1
            @actual += 1
            if txt.include? "si"
                "bien! " + @@preguntas[@actual]
            else
                "lo siento, perdiste"
            end
        elsif @actual == 2
            if txt.include? @@respuestas[@actual]
                "bien! haz ganado!"
            else
                "lo siento, perdiste"
            end
        end

    end

end

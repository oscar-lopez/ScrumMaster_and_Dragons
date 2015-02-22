class Engine

    @@preguntas  = [
        "Hola jugador, ¿quieres aprender scrum? contesta 'si' o 'no': ",
        "¿En scrum debo ser ágil?",
        "¿Metodología tradicional es lo mismo que metodología ágil?",
        "¡Haz ganado!"
    ]

    @@respuestas = [ "si", "si", "no", "" ]

    @@terminado  = "El juego ya terminó"
    @@despedida  = "Bueno, adiós"
    @@perdido    = "Lo siento, perdiste"

    def initialize
        @actual  = 0
        @perdio  = false
        @inicio  = false
    end

    def parse(txt)
        select_dialog(txt.chomp.downcase)
    end

    def select_dialog(txt)

        if @perdio or @actual >= @@preguntas.length - 1
            @@terminado
        elsif @actual == 0
            if not @inicio
                @inicio = true
                @@preguntas[@actual]
            else
                next_dialog(txt, "Bien! ", @@despedida)
            end
        elsif @actual == 1
            next_dialog(txt, "Muy bien! ", @@perdido)
        elsif @actual == 2
            next_dialog(txt, "Felicitaciones, ", @@perdido)
        end

    end

    def next_dialog(txt, prefix, bye)
        if txt.include? @@respuestas[@actual]
            @actual += 1
            prefix  + @@preguntas[@actual]
        else
            @perdio = true
            bye
        end
    end

end

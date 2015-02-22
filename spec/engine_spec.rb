require './lib/engine'

describe Engine do

    it "should say hello" do
        eng = Engine.new
        resp = eng.parse("hola")
        expect(resp).to include "Hola jugador, ¿quieres aprender scrum?"
    end

    it "should want to play" do
        eng = Engine.new
        resp = eng.parse("hola")
        resp = eng.parse("si")
        expect(resp).to include "¿En scrum debo ser ágil?"
    end

    it "should not want to play" do
        eng = Engine.new
        resp = eng.parse("hola")
        resp = eng.parse("no")
        expect(resp).to eq "Bueno, adiós"
    end

    it "should not keep playing after saying no" do
        eng = Engine.new
        resp = eng.parse("hola")
        resp = eng.parse("no")
        resp = eng.parse("si")
        expect(resp).to eq "El juego ya terminó"
    end

    it "should answer correctly first question" do
        eng = Engine.new
        resp = eng.parse("hola")
        resp = eng.parse("si")
        resp = eng.parse("si")
        expect(resp).to include "¿Metodología tradicional es lo mismo que metodología ágil?"
    end

    it "should answer incorrectly first question" do
        eng = Engine.new
        resp = eng.parse("hola")
        resp = eng.parse("si")
        resp = eng.parse("no")
        expect(resp).to include "perdiste"
    end

    it "should not keep playing after answering incorrectly first question" do
        eng = Engine.new
        resp = eng.parse("hola")
        resp = eng.parse("si")
        resp = eng.parse("no")
        resp = eng.parse("si")
        expect(resp).to include "El juego ya terminó"
    end

    it "should answer correctly second question" do
        eng = Engine.new
        resp = eng.parse("hola")
        resp = eng.parse("si")
        resp = eng.parse("si")
        resp = eng.parse("no")
        expect(resp).to include "ganado"
    end

    it "should answer incorrectly second question" do
        eng = Engine.new
        resp = eng.parse("hola")
        resp = eng.parse("si")
        resp = eng.parse("si")
        resp = eng.parse("si")
        expect(resp).to include "perdiste"
    end

    it "should not keep playing after answering second question" do
        eng = Engine.new
        resp = eng.parse("hola")
        resp = eng.parse("si")
        resp = eng.parse("si")
        resp = eng.parse("no")
        resp = eng.parse("si")
        expect(resp).to include "El juego ya terminó"
    end

end

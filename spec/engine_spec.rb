require './lib/engine'

describe Engine do

    it "should say hello" do
        eng = Engine.new
        resp = eng.parse("hola")
        resp.should include "hola"
    end

    it "should not play" do
        eng = Engine.new
        resp = eng.parse("saludo")
        resp = eng.parse("no")
        resp.should include "bueno, adios"
    end

    it "should start playing" do
        eng = Engine.new
        resp = eng.parse("saludo")
        resp = eng.parse("si")
        resp.should include "bien!"
    end

    it "should answer correctly first question" do
        eng = Engine.new
        resp = eng.parse("saludo")
        resp = eng.parse("si")
        resp = eng.parse("si")
        resp.should include "bien!"
    end

    it "should answer incorrectly first question" do
        eng = Engine.new
        resp = eng.parse("saludo")
        resp = eng.parse("si")
        resp = eng.parse("no")
        resp.should include "perdiste"
    end

    it "should answer correctly second question" do
        eng = Engine.new
        resp = eng.parse("saludo")
        resp = eng.parse("si")
        resp = eng.parse("si")
        resp = eng.parse("no")
        resp.should include "ganado"
    end

    it "should answer incorrectly second question" do
        eng = Engine.new
        resp = eng.parse("saludo")
        resp = eng.parse("si")
        resp = eng.parse("no")
        resp = eng.parse("si")
        resp.should include "perdiste"
    end

end

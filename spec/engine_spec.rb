require './lib/engine'

describe Engine do

    it "should want to play" do
        eng = Engine.new
        resp = eng.parse("si")
        resp.should include "hola"
    end

    it "should not want to play" do
        eng = Engine.new
        resp = eng.parse("no")
        resp.should include "adios"
    end

    it "should answer correctly first question" do
        eng = Engine.new
        resp = eng.parse("hola")
        resp = eng.parse("si")
        resp.should include "bien!"
    end

    it "should answer incorrectly first question" do
        eng = Engine.new
        resp = eng.parse("hola")
        resp = eng.parse("no")
        resp.should include "perdiste"
    end

    it "should answer correctly second question" do
        eng = Engine.new
        resp = eng.parse("hola")
        resp = eng.parse("si")
        resp = eng.parse("no")
        puts " *** " + resp
        resp.should include "bien!"
    end

    it "should answer incorrectly second question" do
        eng = Engine.new
        resp = eng.parse("hola")
        resp = eng.parse("si")
        resp = eng.parse("si")
        resp.should include "perdiste"
    end

end

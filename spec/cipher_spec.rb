require 'cipher'

describe "#cipher" do
    it "returns same letters for 0 shift" do
        expect(caesar_cipher("a", 0)).to eq("a")
        expect(caesar_cipher("c", 0)).to eq("c")
    end

    it "cipher a letter" do
        expect(caesar_cipher("d", 4)).to eq("h")  
    end

    it "cipher a word" do
        expect(caesar_cipher("ade", 2)).to eq("cfg")
    end

    it "returns the same setence if shift is 0" do
        expect(caesar_cipher("I love ruby", 0)).to eq("I love ruby") 
    end

    it "cipher a sentence" do
        expect(caesar_cipher("Ruby is fun", 3)).to eq("Uxeb lv ixq")  
    end

    it "can decipher" do
        expect(ceasar_decipher("Uxeb lv ixq", 3)).to eq("Ruby is fun") 
    end
end

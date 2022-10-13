require_relative '../lib/email_valdoise.rb'

describe "source nom de la mairie" do
    it "donne le nom de la ville" do
        expect(source("http://annuaire-des-mairies.com/95/aincourt.html"))
        expect(source("http://annuaire-des-mairies.com/95/pontoise.html"))
    end
end
describe "source email de la mairie" do
    it "donne l'email de la ville" do 
        expect(get_townhall_email("http://annuaire-des-mairies.com/95/aincourt.html"))
        expect(get_townhall_email("http://annuaire-des-mairies.com/95/pontoise.html"))

    end
end
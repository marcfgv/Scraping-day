require_relative '../lib/crypto.rb'

describe "a" do
    it "return name of crypto" do
        expect(scraper).to include{"DOT"}
        expect(scraper).to include{"USDC"}
        expect(scraper).to include{"BTC"}
    end

    it "return at least 20 crypto" doexpect(scraper.length).to eq(20) do
    end
end
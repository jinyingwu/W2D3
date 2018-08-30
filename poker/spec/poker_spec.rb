require 'rspec'
require 'card.rb'
require 'deck.rb'

RSpec.describe

describe Card do
  subject(:card){Card.new()}
  describe "#initialize" do
    it "returns the number of the card" do
      expect(Card.new(5).value).to eq(5)
    end

    it "raise error if value is not (1 to 13)" do
      expect{Card.new(15)}.to raise_error(ArgumentError)
    end

    it "raise error if value is not a integer" do
      expect{Card.new("string")}.to raise_error(ArgumentError)
    end
  end
end

describe Deck do
  subject (:deck){Deck.new}
  let(:card){double(Card)}
    describe "#initialize" do
      it "checks if the deck initializes with 52 Card instances" do
        expect(deck.deck.all? {|el| el.class == Card}).to eq(true)
      end
    end




end

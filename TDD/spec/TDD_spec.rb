require 'rspec'
require 'TDD.rb'
require 'byebug'

RSpec.describe
  describe "#my_uniq" do
    it "return an Array" do
      expect([1, 2, 1, 3, 3].my_uniq).to be_a(Array)
    end


    it "return uniq value of the array" do
      expect([1, 2, 1, 3, 3].my_uniq).to eq([1, 2, 3])
    end
  end

  describe "#two_sum"  do
    it "return an Array" do
      expect([-1, 0, 2, -2, 1].two_sum).to be_a(Array)
    end

    it "return 2D array of sum index" do
      expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
    end
  end

  describe "#my_transpose" do
    subject(:array) {[[0, 1, 2],[3, 4, 5],[6, 7, 8]]}
    it "return an Array" do
        expect(array.my_transpose).to be_a(Array)
    end

    it "return the transpose array" do
      expect(array.my_transpose).to eq([[0, 3, 6],[1, 4, 7],[2, 5, 8]])
    end
  end

  describe "stock_picker" do
    subject(:array) {[1, 3, 4, 3, 2, 3, 5]}
    it "return an Array" do
    expect(stock_picker(array)).to be_a(Array)
    end

    it "return most profitable pair" do
      expect(stock_picker(array)).to eq([0,6])
    end

  end

  describe "TowersOfHanoi" do
    subject(:tower) {TowersOfHanoi.new}

    # let()
    describe "#initialize" do
    it "initialize the board" do
    expect(tower = TowersOfHanoi.new).to be_a(TowersOfHanoi)
    end
  end
    # tower.move([0,1])

    # describe "#move" do
    it "#move make a valid move" do
      tower.move([0,1])
      expect(tower.board).to eq([[3,2],[1],[]])
    end
    # end
  end

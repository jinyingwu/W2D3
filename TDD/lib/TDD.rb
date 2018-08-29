class Array
  def my_uniq
    arr = []
    self.each { |el| arr << el unless arr.include?(el)}
    arr
  end

  def two_sum
    result = []

    each_with_index do |ele, idx|
      each_with_index do |ele2, jdx|
        if jdx > idx
          result << [idx, jdx] if ele + ele2 == 0
        end
      end
    end
    result
  end

  def my_transpose
    result = Array.new(self[0].length){[]}

    each do |ele|
      ele.each_index do |idx|
        result[idx] << ele[idx]
      end
    end

    result
  end

end

def stock_picker(arr)
  result = []
  highest = 0

  arr.each_with_index do |el, i|
      arr.each_with_index do |el2, j|
        if j > i
          if highest < (el2 - el)
            result = [i, j]
            highest = el2 - el
          end
        end
      end
  end

  result
end


class TowersOfHanoi
  attr_reader :board
  def initialize
    @board = Array.new(3){[]}
    @board[0] = [3,2,1]
  end

  def move(input)
    @board[input[1]] << @board[input[0]].pop if valid_move?(input)
  end

  def valid_move?(input)
    raise ArgumentError if @board[input[0]].empty?
    unless @board[input[1]].empty?
      @board[input[1]].last > @board[input[0]].last
    end
    true
  end

  def won?
    @board[1].length == 3 || @board[2].length == 3
  end

end

# Write a Towers of Hanoi game.
#
# Keep three arrays, which represents the piles of discs. Pick a representation of the discs to store in the arrays; maybe just a number representing their size. Don't worry too much about making the user interface pretty.
#
# In a loop, prompt the user (using gets) and ask what pile to select a disc from, and where to put it.
#
# After each move, check to see if they have succeeded in moving all the discs, to the final pile. If so, they win!
#
# Note: don't worry about testing the UI. Testing console I/O is tricky (don't bother checking gets or puts). Focus on:
#
# #move
# #won?

class Card
  attr_reader :value
  def initialize(value)
    raise ArgumentError if value < 1 || value > 13 || !value.is_a?(Integer)
    @value = value
  end
end

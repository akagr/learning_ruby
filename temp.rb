class Gear
  attr_reader :chainring, :cog
  def initialize(chainring, cog)
    @chainring = chainring
    @cog       = cog
  end

  def ratio
    @chainring / @cog.to_f
  end
end

a= Gear.new(52, 11)
puts a.ratio        # -> 4.72727272727273
puts Gear.new(30, 27).ratio

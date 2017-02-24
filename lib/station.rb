class Station

  attr_reader :zone, :name

  def initialize(name, zone)
    @name = name
    @zone = zone
  end

  def make_barriers
    Barrier.new(@name, @zone)
  end

end

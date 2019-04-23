class CreatesBeer
  attr_accessor :name, :beer_type

  def initialize(options = {})
    @name = options[:name] || nil
    @beer_type = options[:beer_type] || default_beer_type
  end

  def build
    self.beer = Beer.new(name: name, beer_type: generic)
  end

  def default_beer_type
    'Generic'
  end
end

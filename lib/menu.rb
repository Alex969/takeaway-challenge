class Menu 
  attr_reader :dishes

  def initialize(dishes)
    @dishes = dishes
  end

  def return_menu
    dishes.map do |dish, price| 
      "%s £%.2f" % [dish.to_s.gsub("_", " ").capitalize, price]
    end.join(", ")
  end
end
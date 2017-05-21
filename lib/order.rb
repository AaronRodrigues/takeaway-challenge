class Order
  attr_reader :dishes

  def initialize(menu)
    @dishes = {}
    @menu = menu
  end

	 def add(dish, quantity)
    fail  NoItemError, "#{dish.capitalize} is not on the menu!" unless @menu.include?(dish)
    dishes[dish] = quantity
 	 end

   private

   
end

class NoItemError < StandardError; end
class Takeaway
  def initialize(menu:)
    @menu = menu 
  end
   
  def show_menu
    menu.return_menu
  end

  private

  attr_reader :menu
end
class Cursor
  attr_reader :img, :visible

  def initialize(window, visible)
    @window = window
    @visible = visible
    @cursor_img = Gosu::Image.new('img/fist.jpg', options = {})
  end

  def visible?
    visible
  end

  def draw
   if @visible
     @cursor_img.draw(@window.mouse_x, @window.mouse_y, 100)
   end
  end
end

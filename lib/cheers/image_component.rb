module Cheers
  class ImageComponent < Component
    
    attr_reader :canvas, :image_randomizer
    
    def initialize(canvas, color_randomizer, bg_colors, colors, image_randomizer = nil)
      super canvas, color_randomizer, bg_colors, colors
      @image_randomizer = image_randomizer || color_randomizer
    end

  end
end

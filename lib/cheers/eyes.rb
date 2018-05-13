module Cheers
  class Eyes < ImageComponent
    
    IMAGES = %w( eyes/1.png
                 eyes/2.png
                 eyes/3.png
                 eyes/4.png
                 eyes/5.png )
    
    attr_reader :color, :image
    
    def initialize(canvas, color_randomizer, bg_colors, colors, image_randomizer = nil)
      super
      
      @color = ContrastingColorPicker.new(colors, extract_background_color(canvas)).pick(color_randomizer)
      @image = IMAGES.sample random: self.image_randomizer
    end

  end
end

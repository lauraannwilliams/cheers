module Cheers
  class UpperGlow < ImageComponent
    
    IMAGES = %w( mouths/1-smile-glow.png
                 mouths/2-smile-glow.png
                 mouths/3-smile-glow.png )
    
    attr_reader :color, :image
    
    def initialize(canvas, color_randomizer, bg_colors, colors, element_randomizer = nil)
      super
      
      @color = ContrastingColorPicker.new(colors, extract_background_color(canvas)).pick(color_randomizer)
      @image = IMAGES.sample random: element_randomizer
    end

  end
end

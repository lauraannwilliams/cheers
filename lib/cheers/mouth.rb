module Cheers
  class Mouth < ImageComponent
    
    IMAGES = %w( mouths/1-smile.png
                 mouths/2-smile.png
                 mouths/3-smile.png )
    
    attr_reader :color, :image
    
    def initialize(canvas, color_randomizer, element_randomizer = nil)
      super
      
      @color = ContrastingColorPicker.new(Avatar::COMPONENT_COLORS, canvas.background_color).pick(color_randomizer)
      @image = IMAGES.sample random: element_randomizer
    end
    
    def apply
      color = self.color
      smile = Magick::Image.new(512, 512) do
                self.background_color = color
              end
      
      mask = Magick::Image.read(image_path(image))[0]
      
      canvas.add_compose_mask(mask)
      canvas.composite!(smile, 0, 0, Magick::OverCompositeOp)
      canvas.delete_compose_mask
    end
  end
end

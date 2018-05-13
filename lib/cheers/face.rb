module Cheers
  class Face < ImageComponent
    
    def apply
       wip = canvas
      [UpperGlow, LowerGlow, Texture, Mouth].each do |klass|
        wip = klass.new(wip, color_randomizer, bg_colors, colors, image_randomizer.dup).apply
      end

      wip
    end
    
  end
end

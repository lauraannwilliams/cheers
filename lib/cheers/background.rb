module Cheers
  class Background < Component

    attr_reader :color

    def initialize(canvas, color_randomizer, bg_colors, colors)
      super

      @color = bg_colors.sample(random: color_randomizer)
    end

    def apply
      # Work around instance_eval wonkiness by declaring local variables:
      color = self.color

      colored_image(color)
    end
  end
end

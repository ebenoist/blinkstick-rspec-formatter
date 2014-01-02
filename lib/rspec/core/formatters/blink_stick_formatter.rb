require "rspec/core/formatters/progress_formatter"
require "blinkstick"

module RSpec
  module Core
    module Formatters

      class BlinkStickFormatter < ProgressFormatter

        def example_passed(example)
          blinkstick.color = Color::RGB::Green
          super(example)
          blinkstick.off
        end

        def eaxmple_failed(example)
          blinkstick.color = Color::RGB::Red
          super(example)
          blinkstick.off
        end

        def blinkstick
          @blinkstick ||= BlinkStick.find_all.first
        end

      end
    end
  end
end

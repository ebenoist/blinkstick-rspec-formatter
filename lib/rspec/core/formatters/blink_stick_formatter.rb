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

        def example_failed(example)
          blinkstick.color = Color::RGB::Red
          super(example)
          blinkstick.off
        end

        def blinkstick
          @blinkstick ||= BlinkStick.find_all.first
        end

        def dump_summary(duration, example_count, failure_count, pending_count)
          if (failure_count > 0)
            blinkstick.color = Color::RGB::Red
          else
            blinkstick.color = Color::RGB::Green
          end

          super(duration, example_count, failure_count, pending_count)

          Thread.new do
            sleep 5
            blinkstick.off

            20.times do
              blinkstick.color = Color::RGB::Green
              sleep 0.01
              blinkstick.off
            end
          end
        end

      end
    end
  end
end

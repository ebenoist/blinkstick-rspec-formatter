# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name        = "blinkstick-rspec-formatter"
  s.version     =  "0.0.2"
  s.date        = "2014-01-02"
  s.summary     = "BlinkStick Rspec Formatter"
  s.description = <<-DESC
    BlinkStick Rspec Formatter causes a connected blinkstick to blink green or red as each spec passes or fails.
    ```
  DESC
  s.files       = Dir.glob("{lib}/**/*")
  s.require_path = "lib"
  s.email = "ebenoist@gmal.com"
  s.homepage = "http://github.com/ebenoist/blinkstick-rspec-formatter"
  s.authors = ["Erik Benoist <ebenoist@gmail.com>"]

  s.add_runtime_dependency "blinkstick", [">= 1.0.0"]
  s.add_runtime_dependency "color", [">= 1.4.2"]
end


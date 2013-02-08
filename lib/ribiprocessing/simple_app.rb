module Ribiprocessing
  import "processing.core"

  class SimpleApp < Ribiprocessing::PApplet

    def initialize(opts={})
      super()
      title = opts[:title] || "MySketch"
      Ribiprocessing::PApplet.run_sketch([title], self)
    end

    def setup
      size 640, 480
    end

    def draw
    end

  end

end

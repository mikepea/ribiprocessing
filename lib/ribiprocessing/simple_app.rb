module Ribiprocessing
  import "processing.core"

  class SimpleApp < Ribiprocessing::PApplet

    attr_reader :title

    def initialize(opts={})
      super()
      @title = opts[:title] || "MySketch"
      run_sketch unless opts[:headless]
    end

    def setup
      size 640, 480
    end

    def draw
    end

    def run_sketch
      Ribiprocessing::PApplet.run_sketch([title], self)
    end

  end

end

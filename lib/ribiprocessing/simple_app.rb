module Ribiprocessing
  import "processing.core"

  class SimpleApp < Ribiprocessing::PApplet

    attr_reader :title, :args, :opts

    def initialize(opts={})
      super(); @args = []; @opts = opts
      set_sketch_args
      run_sketch unless opts[:headless]
    end

    def setup
      size 640, 480
    end

    def draw
    end

    def run_sketch
      Ribiprocessing::PApplet.run_sketch(args, self)
    end

    private

    def set_sketch_args
      set_full_screen_arg
      set_title_arg
    end

    def set_full_screen_arg
      args << "--present" if opts[:fullscreen]
    end

    def set_title_arg
      args << opts[:title] || "Ribiprocessing Sketch"
    end
  end

end

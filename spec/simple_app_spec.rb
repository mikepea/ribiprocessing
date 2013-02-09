require 'spec_helper'

describe Ribiprocessing::SimpleApp do

  APPLET = Ribiprocessing::SimpleApp.new({:headless=>true})

  context "standard" do
    [:setup, :draw].each do |method|
      it { APPLET.should respond_to(method) }
    end
  end

  context "colour" do
    [:background, :color_mode, :fill, :no_fill, :no_stroke, :stroke].each do |method|
      it { APPLET.should respond_to(method) }
    end

    [:alpha, :blue, :brightness, :color, :green, :hue, :lerp_color, :red, :saturation].each do |method|
      it { APPLET.should respond_to(method) }
    end
  end

end

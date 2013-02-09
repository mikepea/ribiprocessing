require 'spec_helper'

describe Ribiprocessing::SimpleApp do

  before(:each) do
    @applet = Ribiprocessing::SimpleApp.new({:headless=>true, :fullscreen=>true, :title=>"Gormless"})
  end

  context "standard" do
    [:setup, :draw].each do |method|
      it { @applet.should respond_to(method) }
    end
  end

  context "colour" do
    [:background, :color_mode, :fill, :no_fill, :no_stroke, :stroke].each do |method|
      it { @applet.should respond_to(method) }
    end

    [:alpha, :blue, :brightness, :color, :green, :hue, :lerp_color, :red, :saturation].each do |method|
      it { @applet.should respond_to(method) }
    end
  end

  context "args" do
    it "should set args" do
      @applet.args.should == ["--present", "Gormless"]
    end
  end


end

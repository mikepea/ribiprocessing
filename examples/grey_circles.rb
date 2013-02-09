# grey circles : borrowed from https://github.com/quil/quil

require 'ribiprocessing'

class GreyCircles < Ribiprocessing::SimpleApp

  def setup
    smooth
    frame_rate 1
    background 200
    size       323, 200
  end

  def draw
    stroke_setup
    diameter = rand(100)
    ellipse rand(width), rand(height), diameter, diameter
  end

  def stroke_setup
    [:stroke, :stroke_weight, :fill].each do |method|
      send(method, rand(255))
    end
  end

end

GreyCircles.new :title=>"Oh so many circles"

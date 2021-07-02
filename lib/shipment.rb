class Shipment
  attr_reader :height, :length, :weight, :width, :express
  def initialize(height, length, weight, width, express: false)
    @height = height
    @length = length
    @weight = weight
    @width = width
    @express = express
  end

  def volume
    @volume ||= height * length * width
  end
end

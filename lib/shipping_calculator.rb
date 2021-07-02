class ShippingCalculator
  EXPRESS_CONVERSION_FACTOR = 3.33
  EXPRESS_RATE = 4.25
  EXPRESS = EXPRESS_RATE / EXPRESS_CONVERSION_FACTOR

  NORMAL_CONVERSION_FACTOR = 6.67
  NORMAL_RATE = 2.75
  NORMAL = NORMAL_RATE / NORMAL_CONVERSION_FACTOR

  def calculate_cost(shipment)
    shipping_cost(shipment.volume, shipment.weight, shipment.express ? EXPRESS : NORMAL)
  end

  private

  def shipping_cost(volume, weight, type_cost)
    (volume * weight * type_cost).round(2)
  end
end

# class Prices
#   attr_accessor :prices
# end

  def total(prices)
    amount = 0
    prices.each do |price|
      amount += price
    end
    amount
  end

  def refund(prices)
    amount = 0
    prices.each do |price|
      amount -= price
    end
    amount
  end

  def show_discount(prices)
    prices.each do |price|
      amount_off = price / 3
      puts format("Your Discount: $%.2f", amount_off)
    end
  end

  prices = [3.99, 25.00, 8.99]

  puts format("Total: $%.2f", total(prices))
  puts format("Refund: $%.2f", refund(prices))
  show_discount(prices)

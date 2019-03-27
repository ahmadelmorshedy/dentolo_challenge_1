class OrdersReport

  def initialize(orders, start_date, end_date)
    @orders = orders
    @start_date = start_date
    @end_date = end_date
  end

  def total_sales_within_date_range
    # prepare orders within range
    orders_within_range = []
    @orders.each do |order|
      if order.placed_at >= @start_date && order.placed_at <= @end_date
        orders_within_range << order
      end
    end

    # sum orders amount
    sum = 0
    orders_within_range.each do |order|
      sum += order.amount
    end
    sum
  end
end

class Order < Struct.new(:amount, :placed_at)
end

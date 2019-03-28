class OrdersReport
  def initialize(orders, start_date, end_date)
    @orders = orders
    @start_date = start_date
    @end_date = end_date
  end

  def total_sales_within_date_range
    orders_within_range = DateRangePicker.within_range(@orders, @start_date, @end_date)

    # sum orders amount
    sum = ObjectFieldCalculator.sum(orders_within_range, :amount)
  end
end
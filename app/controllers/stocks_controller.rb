class StocksController < ApplicationController
  def index
    # stocks = Stock.all
    @q = Stock.ransack({ name_i_cont: "apple" })
    @stock = @q.result(distinct: true)
    binding.pry
    render @stock
  end
end

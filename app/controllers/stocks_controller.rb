class StocksController < ApplicationController
  def index
    stocks = Stock.where("name LIKE ?", "%" + params[:q] + "%")
    render json: stocks.as_json
  end
end

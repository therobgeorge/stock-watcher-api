Rails.application.routes.draw do
  get "/stocks" => "stocks#index"
end

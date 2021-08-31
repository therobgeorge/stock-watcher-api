require "csv"

namespace :slurp do
  desc "TODO"
  task stocks: :environment do
    csv_text = File.read(Rails.root.join("lib", "stocks.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "utf-8")
    csv.each do |row|
      t = Stock.new
      t.symbol = row["Symbol"]
      t.name = row["Name"]
      t.save
    end

  end

end

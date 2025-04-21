require 'net/http'
require 'json'
require 'pry'


class Bitcoin 

  def initialize(url)
  @url = url
  end

  def format_currency(value, symbol = '$', separator = ',', decimal = '.')
    whole, frac = format('%.2f', value).split('.')
    whole_with_separator = whole.reverse.gsub(/(\d{3})(?=\d)/, "\\1#{separator}").reverse
    "#{symbol}#{whole_with_separator}#{decimal}#{frac}"
  end

  def actual_price
    
    usd, brl = fetch_bitcoin_price

    puts "💸 Preço atual do Bitcoin:"
    puts "USD: #{usd}"
    puts "BRL: #{brl}"
    puts "-----"

  end

  private

  def fetch_bitcoin_price
    url = URI(@url)
    response = Net::HTTP.get(url)
    data = JSON.parse(response)
    
    price_usd = data['bitcoin']['usd']
    price_brl = data['bitcoin']['brl']


    formatted_usd = format_currency(price_usd, '$', ',', '.')
    formatted_brl = format_currency(price_brl, 'R$ ', '.', ',')
    

    return formatted_usd, formatted_brl
  end
  
end

btc = Bitcoin.new("https://api.coingecko.com/api/v3/simple/price?ids=bitcoin&vs_currencies=usd,brl")






4.times do
  btc.actual_price

  sleep 1
  
end


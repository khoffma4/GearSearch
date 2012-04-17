desc "import products"
task :cron => :environment do
    
  require 'nokogiri'
  require 'open-uri'
    
  @rei = "http://www.rei.com/search?query=powder+skis"
  doc = Nokogiri::HTML(open(@rei))
  doc.css('.productBox').each do |item|
    p = Product.new
      p.name = item.css('a[itemprop=url]').css('span[itemprop=name]').text
      p.image_path = "http://rei.com/#{item.at_css('a[itemprop=url]').at_css('img')['src']}"
      p.price = item.css('[itemprop=offers]').css('li[itemprop=price]').text
    p.save
    end
  puts "There are #{Product.count} products"
  
end
class SearchController < ApplicationController
  require 'open-uri'
  
  def home
  end
  
  def results
  
    @sites = []
    allsites = [:backcountry, :rei, :evo, :moosejaw]
      allsites.each do |site|
          if params[site]
            @sites.push(site)
            @backcountry_search = "http://www.backcountry.com/store/search.html?q=#{(params[:keyword]).gsub(/ /, '+')}"
            @rei_search = "http://www.rei.com/search?query=#{(params[:keyword]).gsub(/ /, '+')}"
            @evo_search = "http://www.evogear.com/shop.aspx?text=#{(params[:keyword]).gsub(/ /, '+')}"
            @moosejaw_search = "http://www.moosejaw.com/moosejaw/shop/SearchResultsDisplay?&searchTerm=#{(params[:keyword]).gsub(/ /, '+')}"
          end
      end
   end
end

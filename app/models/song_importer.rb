class SongImporter
  require 'nokogiri'
  require 'open-uri'

  def run
    BillboardDate.all.each do |bbd|

      date_string = bbd.day

      url = "https://www.billboard.com/charts/r-b-hip-hop-songs/"

      search_url = url + date_string + '/'

      begin
      
      doc = Nokogiri::HTML(open(search_url))  
      number_1_song = doc.at_css('#row-1 > div.row-primary > div.row-title > h2').text.lstrip.rstrip
      number_1_artist = doc.at_css('#row-1 > div.row-primary > div.row-title > h3').text.lstrip.rstrip

      Song.create(name: number_1_song, artist: number_1_artist, date: date_string, billboard_date_id: bbd.id)
      
      rescue

        puts "==================================================="
        puts "#{date_string} BillboardDate.#{bbd.id}"
        puts "==================================================="
      
      end
    
    end
  end
end
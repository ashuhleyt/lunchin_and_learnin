class Image 
attr_reader :alttag, 
            :url

  def initialize(data)
    @alttag = data[:results][0][:alt_description]
    @url = data[:results][0][:urls][:regular]
  end
end
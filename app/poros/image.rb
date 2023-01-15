class Image 
attr_reader :alttag, 
            :url

  def initialize(data)
    @alttag = data[:alt_description]
    @url = data[:urls][:regular]
  end
end
class Country
  include HTTParty

  base_uri 'restcountries.eu/rest/v2'
  default_params fields: 'name;capital;flag;'

  def self.all
    get('/all')
  end

  def self.search(name)
    get("/name/#{name}")
  end

 end
require "httparty"
require "json"

class NearEarthObjectService
  attr_accessor :data, :daysInSearch

  include HTTParty
  base_uri "https://api.nasa.gov/neo/rest/v1/feed"

  # sDate = start point for NEO list
  # eDate = end point for NEO list (if blank, database returns data up to one week after sDate)
  def initialize sDate, eDate
    apiKey = "q3HSQGbNfVKrxDojtxa418dRmWCLMKRHlQrivEIz"
    @data = JSON.parse(self.class.get("?start_date=#{sDate}&end_date=#{eDate}&detailed=true&api_key=#{apiKey}").body)

    self.setDaysInSearch sDate, eDate
  end

  # Calculates the number of days in the search parameters
  def setDaysInSearch sDate, eDate
    sDate = Date.parse(sDate)
    eDate = Date.parse(eDate)
    @daysInSearch = (eDate - sDate + 1).to_i
  end

end

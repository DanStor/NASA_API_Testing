require_relative "services/nEarthObjectServiceIndex.rb"

class NearEarthObject
  def nEarthObjectService sDate, eDate
    NearEarthObjectService.new sDate, eDate
  end
end

require_relative "services/nEarthObjectServiceIndex.rb"

class NearEarthObject
  def nEarthObjectService sDate, eDate
    NearEarthObjectService.new sDate, eDate
  end
end

space = NearEarthObject.new.nEarthObjectService "2015-09-07", "2015-09-08"
puts space.data

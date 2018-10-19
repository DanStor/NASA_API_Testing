require_relative "../lib/nEarthObject.rb"

describe "NASA N.E.O API" do
  before(:all) do
    @response = NearEarthObject.new.nEarthObjectService "2015-09-07", "2015-09-10"
    @data = @response.data
  end

  context "Day Weather Properties" do
    it "should contain an hash" do
      expect(@data).to be_a Hash
    end

    it "the hash should be of length 3" do
      expect(@data.length).to eq 3
    end

    it "element_count should return an int" do
      expect(@data["element_count"]).to be_an Integer
    end

    context "near_earth_objects property" do
      it "should contain one element for each day searched" do

      end
    end


  #   it "should contain an array" do
  #     expect(@response).to all(be_an Array)
  #   end
  #
  #   it "should contain 'coord' property" do
  #     expect(@response).to have_key "coord"
  #   end
  #
  #   it "should contain 'weather' property" do
  #     expect(@response).to have_key "weather"
  #   end
  #
  #   it "should contain 'base' property" do
  #     expect(@response).to have_key "base"
  #   end
  #
  #   it "should contain 'main' property" do
  #     expect(@response).to have_key "main"
  #   end
  #
  #   it "should contain 'visibility' property" do
  #     expect(@response).to have_key "visibility"
  #   end
  #
  #   it "should contain 'wind' property" do
  #     expect(@response).to have_key "wind"
  #   end
  #
  #   it "should contain 'clouds' property" do
  #     expect(@response).to have_key "clouds"
  #   end
  #
  #   it "should contain 'dt' property" do
  #     expect(@response).to have_key "dt"
  #   end
  #
  #   it "should contain 'sys' property" do
  #     expect(@response).to have_key "sys"
  #   end
  #
  #   it "should contain 'id' property" do
  #     expect(@response).to have_key "id"
  #   end
  #
  #   it "should contain 'name' property" do
  #     expect(@response).to have_key "name"
  #   end
  #
  #   it "should contain 'cod' property" do
  #     expect(@response).to have_key "cod"
  #   end
  #
  # end
  #
  # context "id" do
  #   it "should be an integer" do
  #     expect(@response["id"]).to be_an Integer
  #   end
  # end
  #
  # context "coord" do
  #   it "should contain 2 properties" do
  #     expect(@response["coord"].length).to eq 2
  #   end
  #
  #   it "should contain propterty 'lon'" do
  #     expect(@response["coord"]).to have_key "lon"
  #   end
  #
  #   it "should contain a float within 'lon'" do
  #     expect(@response["coord"]["lon"]).to be_a Float
  #   end
  #
  #   it "should contain propterty 'lat'" do
  #     expect(@response["coord"]).to have_key "lat"
  #   end
  #
  #   it "should contain a float within 'lat'" do
  #     expect(@response["coord"]["lat"]).to be_a Float
  #   end
  end

end

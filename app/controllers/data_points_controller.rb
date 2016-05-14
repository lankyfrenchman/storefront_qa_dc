class DataPointsController < ApplicationController
  def new
    @data_point = DataPoint.new
  end

  def create
    @data_point = DataPoint.new(data_point_params)

  end

  private

  def data_point_params
    params.require(:data_point).permit(:latitude, :longitude, :vacant, :commercial,
                                       :interior_location, :exterior_location, :photo_url)
  end
end

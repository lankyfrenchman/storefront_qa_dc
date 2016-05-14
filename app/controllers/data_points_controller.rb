class DataPointsController < ApplicationController
  def new
    @data_point = DataPoint.new
  end

  def create
    @data_point = DataPoint.new(data_point_params)

    if @data_point.save
      flash[:success] = 'Survey completed!'
      redirect_to root_path
    else
      flash[:error] = 'Something went wrong'
      render :new
    end
  end

  private

  def data_point_params
    params.require(:data_point).permit(:latitude, :longitude, :vacant, :commercial,
                                       :interior_location, :exterior_location, :photo_url)
  end
end

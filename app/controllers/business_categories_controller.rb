class BusinessCategoriesController < ApplicationController
  def new
    @business_category = BusinessCategory.new
  end

  def create
    @business_category = BusinessCategory.new(business_category_params)
  end

  private

  def business_category_params
    params.require(:business_category).permit(:name)
  end

end

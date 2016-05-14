class BusinessSubcategoriesController < ApplicationController
  def new
    @business_category = BusinessCategory.find(params[:business_category_id])
    @business_subcategory = @business_category.business_subcategories.build
  end

  def create
    @business_category = BusinessCategory.find(params[:business_category_id])
    @business_subcategory = @business_category.business_subcategories.build(business_subcategory_params)

    if @business_subcategory.save
      flash[:success] = 'Subcategory created'
      redirect_to business_category_path(@business_category)
    else
      flash[:error] = 'Something went wrong'
      render :new
    end
  end

  private

  def business_subcategory_params
    params.require(:business_subcategory).permit(:name)
  end
end

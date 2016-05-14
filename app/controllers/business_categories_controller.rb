class BusinessCategoriesController < ApplicationController
  def index
    @business_categories = BusinessCategory.all
  end

  def show
    @business_category = BusinessCategory.find(params[:id])
  end

  def new
    @business_category = BusinessCategory.new
  end

  def create
    @business_category = BusinessCategory.new(business_category_params)

    if @business_category.save
      flash[:success] = 'Category added!'
      redirect_to business_categories_path
    else
      flash[:error] = 'Something went wrong'
      render :new
    end
  end

  private

  def business_category_params
    params.require(:business_category).permit(:name)
  end

end

class BrandsController < ApplicationController

  def new
    @brand = Brand.new
    params[:kombuchas].to_i.times do
      @brand.kombuchas.build #@brand.kombuchas.build - we're making an instance of something that would belong to the brand
    end
    render :new
  end

  def create
    @brand = Brand.create(brand_params)
    byebug
  end

  private

  def brand_params
    params.require(:brand).permit(:name, kombuchas_attributes: [:flavor, :brew_time, :notes])
  end

end

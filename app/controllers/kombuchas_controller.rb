class KombuchasController < ApplicationController
  before_action :get_kombucha, only: [:show, :edit, :update, :destroy] #this method came from this controller
  before_action :redirect_if_not_logged_in, only: [:new, :createm, :edit, :update] #this method came from the ApplicationController
  helper_method :verify_that_user_is_owner_of_kombucha #makes this method available to the view

  def index
    @kombuchas = Kombucha.all
    # render :index
  end

  def show # '/kombuchas/:id'
    # render :show
  end

  def new
    @kombucha = Kombucha.new
    #helpers.kombucha_notes(kombucha)
    #This helper method is available to us from the KombuchasHelper module, if we want to use it.
    #I don't see a need for it though, this is just an example
    @brands = Brand.all
    @kombucha.build_brand #we're making an instance of something that the kombucha will belong to
    # render :new
  end

  def create
    @kombucha = Kombucha.new(kombucha_params(params_array))
    if @kombucha.save
      redirect_to kombucha_path(@kombucha)
    else
      @brands = Brand.all
      render :new
    end
    # redirect_to "/kombuchas/#{kombucha.id}"
  end

  def edit
    @brands = Brand.all
    # render :edit
  end

  def update
    @kombucha.assign_attributes(kombucha_params(params_array))
    if @kombucha.save
      redirect_to kombucha_path(@kombucha)
    else
      @brands = Brand.all
      render :edit
    end
  end

  def destroy
    @kombucha.destroy
    redirect_to
  end

  private #these are methods that are only useful FOR THIS controller

  def verify_that_user_is_owner_of_kombucha
    "Testing to see if this kombucha helper method works in a view for another controller" #HINT: It doesn't
  end

  def get_kombucha #this method is never going to be called in another controller OR in another view
    @kombucha = Kombucha.find_by(id: params[:id])
  end

  def kombucha_params(array_args)
    params.require(:kombucha).permit(array_args)
  end

  def params_array
    [:flavor, :notes, :brew_time, :brand_id, brand_attributes: [:name]]
  end

end

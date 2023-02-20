class CatsController < ApplicationController


  def index
    @cats = Cat.all 

    render :index
  end

  def show
    # debugger
    @cat = Cat.find(params[:id])

    render :show
  end

  def new
    @cat = Cat.new

    render :new
  end

  def create
    @cat = Cat.new(cat_params)

    debugger
    if @cat.save
      redirect_to cat_url(@cat.id)
    else
      render :new
    end
  end

  def edit

    

  end

  def cat_params
    params
      .require(:cat_info)
      .permit(:birth_date, :color, :name, :sex, :description)
  end






end

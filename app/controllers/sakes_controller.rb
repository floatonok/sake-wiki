class SakesController < ApplicationController
  before_action :find_sake, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user, only: [:new, :edit, :update, :destroy]

  def new
    @sake = Sake.new
  end

  def create
    @sake = Sake.new(sake_params)
    if @sake.save
      redirect_to @sake, notice: 'Sake was successfully created!'
    else
      render 'new'
    end
  end

  def index
  end

  def show
    # find_sake
  end

  def edit
    # find_sake
  end

  def update
    # find_sake
    if @sake.update(sake_params)
      redirect_to @sake, notice: 'Sake was successfully updated.'
    else
      render 'edit'
    end
  end

  def destroy
    # find_sake
    @sake.destroy
    redirect_to sakes_path, notice: 'Sake was successfully deleted.'
  end

  private

  def sake_params
    params.require(:sake).permit(:title, :header_1, :header_2, :overview, :text_1, :text_2, :characters, :main_image, :image_1, :image_2)
  end

  def find_sake
    @sake = Sake.find(params[:id])
  end

end

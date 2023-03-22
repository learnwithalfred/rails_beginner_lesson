class LanguagesController < ApplicationController
  before_action :set_language, only: %i[show edit update destroy]
  
  def index
    @languages = Language.all
  end

  def show
  end


  def new
    @language = Language.new
  end

  def edit
  end

 
  def create
    @language = Language.new(language_params)
    if @language.save
      redirect_to languages_path
    else
      render :new, status: :unprocessable_entity
    end
  end


  def update
    if @language.update(language_params)
      redirect_to @language
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @language.destroy
    redirect_to languages_path, status: :see_other
  end

  private
  def language_params
    params.require(:language).permit(:name)
  end

  def set_language
     @language = Language.find(params[:id])
  end

end

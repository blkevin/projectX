class ExperiencesController < ApplicationController
  before_action :set_experience

  def new
    @experience = Experience.new
  end

  def create
    @experience = Experience.new() #TBD
    @experience.user_id = @current_user.id
    if @experience.save
      render # mentor creation form
    else
      flash.alert = "Tous les champs doivent être complétés 🛠️"
    end
  end

  def update
    @experience = Experience.find(params[:id])
    @experience.update(xxx)
    redirect_to #XXX
  end

  def destroy
    @experience = Experience.find(params[:id])
    @experience.destroy
  end

private

  def experience_params
    params.require(:experience).permit(:start_date, :end_date, :position, :sector, :industry)
  end

  def set_experience
    #xxx
  end
end

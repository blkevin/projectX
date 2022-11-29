class EducationsController < ApplicationController
  def new
    @education = Education.new
  end

  def create
    @education = Education.new(education_params)
    if @education.save
      redirect_to edit_user_registration_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def education_params
    params.require(:education).permit(:start_date, :end_date, :degree_level, :field)
  end
end

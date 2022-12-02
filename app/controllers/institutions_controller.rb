class InstitutionsController < ApplicationController
  def show
    @institution = Institution.find(params[:id])
    @education = Education.find_by(institution_id: @institution.id)
    @mentor = User.mentor.find(@education.user_id)
  end
end

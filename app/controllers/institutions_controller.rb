class InstitutionsController < ApplicationController
  def show
    @institution = Institution.find(params[:id])
  end
end
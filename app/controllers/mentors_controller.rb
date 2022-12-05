class MentorsController < ApplicationController
  before_action :set_mentor, only: :show

  def index
    @mentors = User.mentor
    @mentors = @mentors.search_mentor(params[:query]) if params[:query].present?
    @mentors = @mentors.search_mentor(params[:position]) if params[:position].present?
    @mentors = @mentors.search_mentor(params[:sector]) if params[:sector].present?
    @mentors = @mentors.search_mentor(params[:industry]) if params[:industry].present?
    @mentors = @mentors.search_mentor(params[:field]) if params[:field].present?
  end

  def show
    @contents = @mentor.contents
    @experiences = @mentor.experiences
    @educations = @mentor.educations
    @meeting = Meeting.new
    @conversation = Conversation.where(mentor: @mentor).find_or_create_by(student: current_user)
    @message = Message.new
  end

  private

  def set_mentor
    @mentor = User.find(params[:id])
  end
end

class MentorsController < ApplicationController
  before_action :set_mentor, only: :show

  def index
    @mentors = User.mentors
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

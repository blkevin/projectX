class MentorsController < ApplicationController
  before_action :set_mentor, only: :show

  def index
    @mentors = User.mentors
  end

  def show
    @contents = @mentor.contents
    @experiences = @mentor.experiences
    @educations = @mentor.educations
    @meeting = Meeting.new(mentor_id: @mentor.id)
    @conversation = Conversation.find_by(mentor_id: @mentor.id)
  end

  private

  def set_mentor
    @mentor = User.find(params[:id])
  end
end

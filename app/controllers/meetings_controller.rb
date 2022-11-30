class MeetingsController < ApplicationController
  before_action :set_student, only: [:create]
  before_action :set_mentor, only: [:create]

  def new
    @meeting = Meeting.new
  end

  def create
    @meeting = Meeting.new(meeting_params)
    @meeting.student_id = current_user.id
    @meeting.save
    flash.alert = "Ton rendez-vous est bien réservé 🎉"
    # render_to XXX
  end

  def edit
  end

  private

  def set_student
    @student = User.find(params[:student_id])
  end

  def set_mentor
    @mentor = User.find(params[:mentor_id])
  end

  def meeting_params
    params.require(:meeting).permit(:starting, :ending, :mentor_id)
  end

  def set_mentors
    @mentors = User.mentors
  end
end

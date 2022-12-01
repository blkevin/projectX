class MeetingsController < ApplicationController

  def new
    @meeting = Meeting.new
  end

  def create
    @meeting = Meeting.new(meeting_params)
    @mentor = User.find(@meeting.mentor_id)
    @meeting.student_id = current_user.id
    @meeting.mentor_id = @mentor.id
    @meeting.save
    redirect_to mentor_path(@mentor)
    flash.alert = "Demande envoyée 🎉"
  end

  def edit
  end

  private

  def set_student
    raise
  end

  def meeting_params
    params.require(:meeting).permit(:starting, :ending, :mentor_id)
  end

  def set_mentors
    @mentors = User.mentors
  end
end

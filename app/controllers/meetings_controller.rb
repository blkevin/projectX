class MeetingsController < ApplicationController

  def new
    @meeting = Meeting.new
  end

  def create
    @meeting = Meeting.new(meeting_params)
    @meeting.student_id = current_user.id
    @meeting.save
    flash.alert = "C'est réservé 🎉"
    # render_to XXX
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

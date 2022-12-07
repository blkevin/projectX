class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @mentors = User.mentor
    @contents = Content.all
  end

  def dashboard
    @user = current_user
    user_conversations
    upcoming_user_meetings
    past_user_meetings
    current_conversation
    @message = Message.new
  end

  def student_infos
  end

  private

  def user_conversations
    if current_user.status == "student"
      conversations = current_user.conversations_as_student
    else
      conversations = current_user.conversations_as_mentor
    end
    @conversations = conversations.reject { |conversation| conversation.messages.empty? }
  end

  def upcoming_user_meetings
    if current_user.status == "student"
      upcoming_meetings = current_user.meetings_as_student
    else
      upcoming_meetings = current_user.meetings_as_mentor
    end
    @upcoming_meetings = upcoming_meetings.select { |meeting| meeting.starting > Date.today }
  end

  def past_user_meetings
    if current_user.status == "student"
      past_meetings = current_user.meetings_as_student
    else
      past_meetings = current_user.meetings_as_mentor
    end
    @past_meetings = past_meetings.select { |meeting| meeting.starting < Date.today }
  end

  def current_conversation
    @conversation = user_conversations.first
  end
end

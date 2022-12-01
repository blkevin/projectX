class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @mentors = User.mentor
  end

  def dashboard
    @user = current_user
    user_conversations
    upcoming_user_meetings
    past_user_meetings
    # conversation_mentors
    # conversation_students
  end

  private

  def user_conversations
    if current_user.status == "student"
      conversations = current_user.conversations_as_student
    else
      conversations = current_user.conversations_as_mentor
    end
    @conversations = conversations.reject { |conversation| conversation.messages.empty? }
    # @conversations = Conversation.joins(:messages).having("COUNT(messages.id) > 1")
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
  # def conversation_mentors
  #   @conversation_mentors = []
  #   current_user.conversations.each do |conversation|
  #     mentor = Mentor.find(conversation.mentor_id)
  #     @conversation_mentors << mentor
  #   end
  #   return @conversation_mentors
  # end

  # def conversation_students
  #   @conversation_students = []
  #   current_user.conversations.each do |conversation|
  #     student = student.find(conversation.student_id)
  #     @conversation_students << student
  #   end
  #   return @conversation_students
  # end

end

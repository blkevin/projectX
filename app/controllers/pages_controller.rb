class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @mentors = User.mentors
  end

  def dashboard
    @user = current_user
    user_conversations
    user_meetings
    # conversation_mentors
    # conversation_students
  end

  private

  def user_conversations
    if current_user.status == "student"
      @conversations = current_user.conversations_as_student
    else
      @conversations = current_user.conversations_as_mentor
    end
    return @conversations
  end

  def user_meetings
    if current_user.status == "student"
      @meetings = current_user.meetings_as_student
    else
      @meetings = current_user.meetings_as_mentor
    end
    return @meetings
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

class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    @user = current_user
    user_conversations
    user_meetings
  end

  private

  def user_conversations
    current_user.conversations
  end

  def user_meetings
    current_user.meetings
  end
end

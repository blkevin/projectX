class MentorsController < ApplicationController

  def index
    @users = User.mentors.where....
  end
end

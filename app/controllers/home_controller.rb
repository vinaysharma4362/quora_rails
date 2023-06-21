class HomeController < ApplicationController
  def index
    @questions = Question.all
  end

  def followers
    @followers = current_user.followers 
  end

  def followee 
    @followee = current_user.followee
  end

  def topic_follow 
    @topic_follow = current_user.topics
  end
end

class EpicenterController < ApplicationController
  def feed
  	# array of current user's following list
  	@following_assists = []

  	# all assists
  	@assists = Assist.all

# assists are pushed into the arrary for our following list
  	@assists.each do |assist|
  		current_user.following.each do |f|
  			if assist.user_id == f
  				@following_assists.push(assist)
  			end
  		end
  	end

  end

  def show_user
  	@user = User.find(params[:id])
  end

  def now_following
  	# just for display
  	@user = User.find(params[:follow_id])

  	#for back-end work
  	current_user.following.push(params[:follow_id].to_i)
  	#adding user id of users you want to follow to an array

  	current_user.save
  	#and save in the database

  end

  def unfollow
    @user = User.find(params[:unfollow_id])
    current_user.following.delete(params[:unfollow_id].to_i)
    current_user.save
  end
end

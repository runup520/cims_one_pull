class CriticsController < ApplicationController
	def create
		@user = User.find(current_user)		
		@article  = Article.find(params[:article_id])
		Critic.create(:user_id => current_user.id,:content => params[:critic][:content],:article_id => @article.id)
		# @critic  = @article.critics.build(params[:critic])
		# puts "nihao"
		# @critic.user = @user
		# @critic.save
		redirect_to article_path(@article)
	end
end



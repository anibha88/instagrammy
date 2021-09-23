class LikesController < ApplicationController
	def create
		@picture = Picture.find(params[:picture_id])
		Like.create(user_id: current_user.id, picture_id: params[:picture_id])
		redirect_to picture_path(@picture)
	end
end

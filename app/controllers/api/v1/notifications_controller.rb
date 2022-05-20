class Api::V1::NotificationsController < ApplicationController
  def index
    user = User.find(params[:user_id])
    notifications = user.notifications
    render json: NotificationsSerializer.new(notifications)
  end
end

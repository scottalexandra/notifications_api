class Api::V1::User::NotificationsController < ApplicationController
  def index
    notifications = current_user.notifications
    render json: NotificationsSerializer.new(notifications)
  end
end

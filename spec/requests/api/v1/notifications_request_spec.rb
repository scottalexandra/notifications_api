require "rails_helper"

describe "Notifications API" do
  it "it returns a list of notifications for a given user" do
    user = User.create(full_name: "Angela Bassett")
    notification_1 = user.notifications.create(content: "Congrats your IRS application is complete")
    notification_2 = user.notifications.create(content: "Congrats your EIN is now ready to view")
    notification_3 = user.notifications.create(content: "Your application is still pending. We'll let you know when it's approved")

    get "/api/v1/user/notifications"
    notifications = JSON.parse(response.body, symbolize_names: true)[:data]

    expect(response).to be_successful
    expect(notifications).to be_an(Array)
    expect(notifications[0][:attributes][:content]).to eq("Congrats your IRS application is complete")
    expect(notifications[1][:attributes][:formatted_time]).to eq(notification_2.created_at.strftime("%a %b %e"))
  end
end

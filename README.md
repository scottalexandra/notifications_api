# Small Notifications API

* This API exposes user notification data for this [Small Notifications App](https://github.com/scottalexandra/notifications_ui)
* It's built using Rails 5.2.8 with a Postgres database
* Ruby version 2.7.2

## Getting Started
* Clone this repo
* run `bundle install` with the project directory

### Database setup
* If you don't have Postgres setup, follow these instructions [here](https://www.postgresql.org/download/)
* rails db:setup
* rails db:seed

### Run the tests
`bundle exec rspec`

### Start the server
`rails s -p 5000`

### Database Schema
![Screen Shot 2022-05-25 at 4 49 01 PM](https://user-images.githubusercontent.com/8812335/170382112-ba20f4a3-cefa-4125-a553-4de04b493223.png)

### Endpoints
Notifications

#### Request
GET /api/v1/user/notifications

#### Response

```
{
    "data": [
        {
            "id": "1",
            "type": "notifications",
            "attributes": {
                "content": "Your articles of incorporation are complete!",
                "formatted_time": "Sat May 21"
            }
        },
        {
            "id": "2",
            "type": "notifications",
            "attributes": {
                "content": "Your application for EIN has been successfully completed",
                "formatted_time": "Sat May 21"
            }
        },
        {
            "id": "3",
            "type": "notifications",
            "attributes": {
                "content": "Your application for EIN has been successfully completed",
                "formatted_time": "Sat May 21"
            }
        }
    ]
}
```


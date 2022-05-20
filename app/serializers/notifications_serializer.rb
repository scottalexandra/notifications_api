class NotificationsSerializer
  include JSONAPI::Serializer

  attributes :content

  attribute :formatted_time do |object|
    object.created_at.strftime("%c")
  end
end

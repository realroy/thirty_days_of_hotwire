class RealtimeOnlineUsersChannel < Turbo::StreamsChannel
  def subscribed
    super
    # stream_from "some_channel"
  end

  def unsubscribed
    super
    # Any cleanup needed when channel is unsubscribed
  end
end

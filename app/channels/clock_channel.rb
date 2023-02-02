class ClockChannel < ApplicationCable::Channel
  def subscribed
    stream_from "clock_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def perform
    ActionCable.server.broadcast("clock_channel", time: Time.now.strftime("%I:%M %p"))
  end
end

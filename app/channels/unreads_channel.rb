class UnreadsChannel < ApplicationCable::Channel
  def subscribed
    stop_all_streams
    # @channel_user = current_user.channel_users.find_by(channel_id: params["id"])
    # @channel = @channel_user.channel
    # stream_for @channel
    stream_for Channel.find(params['id'])
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
    stop_all_streams
  end
end

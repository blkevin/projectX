class MessagesController < ApplicationController
  before_action :set_conversation

  def create
    @message = Message.new(message_params)
    @message.conversation_id = @conversation.id
    @message.user_id = current_user.id
    @mentor = User.find(@message.conversation.mentor_id)
    if @message.save
      ConversationChannel.broadcast_to(
        @conversation,
        render_to_string(partial: "message", locals: {message: @message})
      )
      head :ok
    else
      redirect_to mentor_path(@mentor), status: :unprocessable_entity
    end
  end

  private

  def message_params
    params.require(:message).permit(:content, :user_id, :conversation_id)
  end

  def set_conversation
    @conversation = Conversation.find(params[:conversation_id])
  end
end

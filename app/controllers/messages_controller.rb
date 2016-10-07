class MessagesController < ApplicationController

	before_action :authenticate_user!
	before_action :get_mailbox, :get_box

	def index
		redirect_to conversations_path(:box => @box)
	end

	def new
	end

	def edit
	end

	def create
	    recipient = User.find_by(id: params['recipient'])
	    conversation = current_user.send_message(recipient, params[:message][:body], params[:message][:subject]).conversation
	    flash[:success] = "Message has been sent!"
	    redirect_to conversations_path(conversation)
  	end

  	def show
    	if @message = Message.find_by_id(params[:id]) and @conversation = @message.conversation
    		if @conversation.is_participant?(current_user)
    			redirect_to conversation_path(@conversation, :box => @box, :anchor => "message_" + @message.id.to_s)
      			return
      		end
    	end
    	redirect_to conversations_path(:box => @box)
  	end


	def get_mailbox
    	@mailbox = current_user.mailbox
  	end

  	def get_box
    	if params[:box].blank? or !["inbox","sentbox","trash"].include?params[:box]
      		@box = "inbox"
    		return
    	end
    	@box = params[:box]
  	end
end
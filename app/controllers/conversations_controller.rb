class ConversationsController < ApplicationController
	before_action :authenticate_user!
	before_action :get_mailbox
	before_action :get_conversation, except: [:index, :empty_trash]
	before_action :get_box, only: [:index]
	###################################################################
	def index	
		if @box.eql? 'inbox'
			@conversations = @mailbox.inbox #.paginate(page: params[:page], per_page: 10)
		elsif @box.eql? 'sentbox'
			@conversations = @mailbox.sentbox #.paginate(page: params[:page], per_page: 10)
		else
			@conversations = @mailbox.trash #.paginate(page: params[:page], per_page: 10)
		end

		# respond_to do |format|
  #     	format.html { render @conversations if request.xhr? }
  #   	end
	end

	def show
		if @box.eql? 'trash'
			@receipts = @mailbox.receipts_for(@conversation).trash
		else
			@receipts = @mailbox.receipts_for(@conversation).not_trash
		end

		render :action => :show
		@receipts.mark_as_read
	end

	def update
		if params[:untrash].present?
			@conversation.untrash(current_user)
		end

		if params[:reply_all].present?
			last_receipt = @mailbox.receipts_for(@conversation).last
			@receipt = current_user.reply_to_all(last_receipt, params[:body])
		end

		if @box.eql? 'trash'
      		@receipts = @mailbox.receipts_for(@conversation).trash
    	else
      		@receipts = @mailbox.receipts_for(@conversation).not_trash
    	end
    	
    	redirect_to :action => :show
    	@receipts.mark_as_read
	end

	def reply
		current_user.reply_to_conversation(@conversation, params[:body])
		flash[:success] = 'Reply sent'
		redirect_to conversation_path(@conversation)
	end

	def destroy
		@conversation.move_to_trash(current_user)
  		flash[:success] = 'The conversation was moved to trash.'
  		redirect_to conversations_path
	end

	def restore
  		@conversation.untrash(current_user)
  		flash[:success] = 'The conversation was restored.'
  		redirect_to conversations_path
	end

	def empty_trash
  		@mailbox.trash.each do |conversation|
    	conversation.receipts_for(current_user).update_all(deleted: true)
  		end
  		flash[:success] = 'Your trash was cleaned!'
  		redirect_to conversations_path
	end

	def mark_as_read
		@conversation.mark_as_read(current_user)
		flash[:success] = 'The conversation was marked as read.'
		redirect_to conversations_path
	end

	###################################################################
	private

	def get_box
		if params[:box].blank? or !['inbox', 'sent', 'trash'].include?(params[:box])
		params[:box] = 'inbox'
		end
		
		@box = params[:box]
	end

	def get_mailbox 
		@mailbox ||= current_user.mailbox
	end

	def get_conversation
		@conversation ||= @mailbox.conversations.find(params[:id])
	end
end
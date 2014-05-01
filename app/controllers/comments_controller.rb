class CommentsController < ApplicationController
  before_filter :load_commentable

  def index
  	@comments = @commentable.comments
  end

  def xxx

  end

  def new
  	@comment = @commentable.comments.new
  end

  def create
  	@comment = @commentable.comments.new(commentable_params)
    @comment.user_id = current_user.id

  	if @comment.save
  		redirect_to @commentable, notice: "Comment Created."
  	else
  		render :new
  	end
  end

private

	def load_commentable
		resource, id = request.path.split('/')[1,2]
		@commentable = resource.singularize.classify.constantize.find(id)
	end 

	def commentable_params
		params.require(:comment).permit(:content, :user_id)
	end 
end

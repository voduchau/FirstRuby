class CommentController < ApplicationController
    def show
        @comment=Comment.find(params[:id])
    end
    def create
        @article=Article.find(params[:article_id])
        # @comment=Comment.new(comment_params)
        # @article.comments.create(comment_params)
        if @article.comment.create(comment_params).save
            flash[:notice]=nil;
            redirect_to @article
        else
            flash[:notice]='Please enter your data'
            # redirect_to @article
            render "article/show"
        end
       
        # redirect_to @comment
    end
    
    private
    def comment_params
      params.require(:comment).permit( :commenter, :body)
    end
end

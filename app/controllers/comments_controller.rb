class commentsController < ApplicatinController
    def new
      @comments = comment.find 
    def new
      @comments = comment.new 
    end 
    def create 
      @comment = comment.nre(comment_params)
      if @comment.save
        redirect_to @comment
      else
        render :new
      end 
      def destroy
        @post = comment(params[:id])
        
        if @post.destroy
            redirect_to :root
        else
            render :new
        end 
      end
  end 
  
  private 
  def comment_params
    params.expect(comments: [ :conten])
  end 
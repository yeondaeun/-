class BasichtmlController < ApplicationController
  def index
    @posts = Basichtml.all
  end

  def view
    @post = Basichtml.find(params[:post_id])
    #@comments = Basichtml.find(params[:post_id]).comments.all
  end

  def new
  end
  
  def destroy
    post = Basichtml.find(params[:post_id])
    post.destroy
    
    redirect_to '/basichtml/index'
    
  end

  def edit
    @post = Basichtml.find(params[:post_id])
    
  end
  
  def update
    post = Basichtml.find(params[:post_id])
    post.title=params[:title]
    post.content=params[:content]
    #post.col_category= params[:bo_category]
    post.save
    
    redirect_to '/basichtml/index'
    
  end

  def create
    post =Basichtml.new
    post.title = params[:title]
    post.content= params[:content]
     #post.col_category= params[:bo_category]
    post.save
    
    redirect_to '/basichtml/index'
  end
  
  def commentcreate
        
        @comment = Comment.new
        @comment.basichtml_id= params[:post_id_for_you]
        @comment.content = params[:content]
        @comment.save
        
        redirect_to :back
    end
    
    def commentdestroy
        @x = Basichtml.find(params[:post_id]).comments.find(params[:comment_id])
        @x.destroy
        
        redirect_to :back
    end
    
    def commentedit
        
        @edit_comment=Basichtml.find(params[:post_id]).comments.find(params[:comment_id])
        @g=Basichtml.find(params[:post_id])
        
        
    end
    
    def commentupdate
        
         @update_comment=Basichtml.find(params[:post_id]).comments.find(params[:comment_id])
        @update_comment.content=params[:content]
        @update_comment.save
        
        redirect_to '/basichtml/index'
    end
    
end



class FormforController < ApplicationController
def index
    @posts = Formfor.all
  end

  

  def new
    @posts = Formfor.new
  end
  
  def destroy
    post = Formfor.find(params[:post_id])
    post.destroy
    
    redirect_to '/formfor/index'
    
  end

  def edit
    @post = Formfor.find(params[:post_id])
    
  end
  
  def update
    post = Formfor.find(params[:post_id])
    post.title=params[:formfor][:title]
    post.content=params[:formfor][:content]
  
    post.save
    
    redirect_to '/formfor/index'
    
  end

  def create
    post =Formfor.new
    post.title = params[:formfor][:title]                #97 p왜 해시를 표현해주는지 설명
    post.content= params[:formfor][:content]
    post.save
    
    redirect_to '/formfor/index'
  end
  
  
  
  
  
  
  def commentcreate
        
        @comment = Comment2.new
        @comment.formfor_id= params[:post_id_for_you]
        @comment.content = params[:content]
        @comment.save
        
        redirect_to :back
    end
    
    def commentdestroy
        @x = Formfor.find(params[:post_id]).comment2s.find(params[:comment_id])
        @x.destroy
        
        redirect_to :back
    end
    
    def commentedit2
        
        @edit_comment=Formfor.find(params[:post_id]).comment2s.find(params[:comment_id])
        @g=Formfor.find(params[:post_id])
        
        
    end
    
    def commentupdate
        
         @update_comment=Formfor.find(params[:post_id]).comment2s.find(params[:comment_id])
        @update_comment.content=params[:comment2][:content]
        @update_comment.save
        
        
        
        redirect_to '/formfor/index'
    end
    
end

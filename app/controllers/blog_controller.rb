class BlogController < ApplicationController
     def index
        @blogs = Blog.all
    end

    def show       
        @blog = Blog.find(params[:id])  
    end

    def new
        @blog = Blog.new
    end
    def to_param
        "#{id}-#{post_titles.parameterize}"
      end

    def create
        @blog = Blog.create(blog_params)
        if @blog.valid?
            redirect_to blogs_path
        else
            redirect_to new_path
        end
    end

    def destroy
        @blog = Blog.find(params[:id])
        @blog.destroy
        redirect_to blogs_path
    end
    
    private
    def blog_params
        params.require(:blog).permit(:post_titles, :content)
    end

   

end

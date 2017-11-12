class BlogsController < ApplicationController
	def index
		@blogs = Blog.all
	end
	def new
		@blog = Blog.new
	end
	def create
		@blog = Blog.new(blog_params)
		if @blog.save
			redirect_to blogs_path, :notice => "Blog Created"
		else
			render :new
		end
	end
	def show
		@blog = Blog.find(params[:id])
	end

	def edit
		@blog = Blog.find(params[:id])
	end

	def update
		@blog = Blog.find(params[:id])
		if @blog.update(blog_params)
			redirect_to @blog, :notice => "Blog updated"
		else
			render :edit
		end
	end

	private
	def blog_params
		params.require(:blog).permit(:title,:body)
	end

end

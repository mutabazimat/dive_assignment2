class BlogsController < ApplicationController
  def index
      @blogs = Blog.all
      
      
  # format.pdf do
  #         @example_text = "some text"
  #         render :pdf => "file_name",
  #               :template => 'mat.pdf.erb',
  #               :layout => 'pdf',
  #               :footer => {
  #                   :center => "Center",
  #                   :left => "Left",
  #                   :right => "Right"
  #               }
  #             end
               
               
    #               respond_to do |format|
    #   format.html
    #   format.pdf do
    #     render :pdf => "file_name",
    #           :template => "blogs/show.pdf.erb",
    #           :layout => "pdf.html.erb"
    #   end
    # end
    respond_to do |format|
   format.html
   format.pdf do
     render pdf: "ow",
     template: "blogs/ow"
    # layout: 'pdf.html.erb'
   end
  end
    
  end
  def new
    @blog = Blog.new
  end
   
  def create
    Blog.create(title: params[:blog][:title], content: params[:blog][:content])
    redirect_to "/blogs/new"
  end
end

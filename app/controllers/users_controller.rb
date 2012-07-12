class UsersController < ApplicationController
  def index
    @root = User.all
    @user = User.new
    #@children = @root.children
    # @all_children = @root.all_children
  end
  def create
    @user = User.create(params[:user])
    redirect_to :controller => :users, :action => :index, :flash => "User Created Successfully"
    #render :text=>"<pre>"+@user.to_yaml and return
  end
end

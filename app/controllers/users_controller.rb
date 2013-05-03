class UsersController < ApplicationController

  def index
  end

  def new
  end

  def create
  end

  def show

    @user = User.find(params[:id], :select => 'id')

    my_coordinates = Map.where(:user_id => @user.id)

    respond_to do |format|
    format.html 
    format.json { render json: my_coordinates }
    end
   

    # coordinate = Map.lat_lng("465 Fairchild Drive MOuntain View CA 94043")
    # @my_local = "(#{coordinate[0]}, #{coordinate[1]})"
    # puts @my_local

    # @my_local = "(37.403037, -122.052408)"
  end

  def edit
  end

  def update
  end

  def destroy
  end
end

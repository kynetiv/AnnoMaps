class MapsController < ApplicationController
  def index

    @user = User.find(params[:user_id], :select => 'id')

    my_coordinates = Map.where(:user_id => @user.id)

    respond_to do |format|
      format.html
      format.json { render json: my_coordinates }

    end

  end

  def new

    @user = User.find(params[:user_id], :select => 'id')

  end

  def create
      user = User.find(params[:user_id], :select => 'id')

      coordinate = Map.lat_lng(params[:address]) if(params.has_key?(:address))
      
      map = Map.new(:user_id => user.id, :lat => coordinate[0], :lng => coordinate[1], :name => params[:name])

      if map.save
      map = Map.last(:select => 'id, lat, lng')
      respond_to do |format|
      format.json { render json: map }

    end
    end
  end

  def show

    @user = User.find(params[:user_id])
    @my_map = Map.find(params[:id])
    my_markers = Marker.where(:map_id => params[:id])
    
    respond_to do |format|
      format.html
      format.json { render json: my_markers}
    end

  end

  def edit
  end

  def update
  end

  def destroy
  end
end
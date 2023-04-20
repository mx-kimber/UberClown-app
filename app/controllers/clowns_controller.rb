class ClownsController < ApplicationController

  def index
    @clowns = Clown.all
    render :index
  end

  def show
    @clown = Clown.find_by(id: params[:id])
    render :show
  end

  def create
    @clown = Clown.new(
      name: params[:name],
    )
    @clown.save
    render :show
  end

  def update
    @clown = Clown.find_by(id: params[:id])
    @clown.name = params[:name] || @clown.name

    @clown.save
    render :show
  end

  def destroy
    @clown = Clown.find_by(id: params[:id])
    @clown.destroy
    render json: {message: "clown as been destroyed successfully"}
  end
end

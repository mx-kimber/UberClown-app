class CustomersController < ApplicationController

  def index
    @customers = Customer.all
    render :index
  end

  def show
    @customer = Customer.find_by(id: params[:id])
    render :show
  end

  def create
    @customer = Customer.new(
      name: params[:name],
    )
    @customer.save
    render :show
  end

  def update
    @customer = Customer.find_by(id: params[:id])
    @customer.name = params[:name] || @customer.name

    @customer.save
    render :show
  end

  def destroy
    @customer = Customer.find_by(id: params[:id])
    @customer.destroy
    render json: {message: "customer as been destroyed successfully"}
  end

end


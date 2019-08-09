class ProductsController < ApplicationController

  def index
    @products = Product.all
    render :index
  end

  def new
    @product = Product.new
    render :new
  end

  def create
    name = params[:name]
    product = Product.create!(:name => name)
    redirect_to '/products' 
  end

  def show
    @product = Product.find(params[:id])
    render :show
  end
end

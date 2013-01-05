class ProductsController < ApplicationController
  before_filter :authenticate_user! , :only => [:create, :destroy]
  # GET /products
  # GET /products.json

  def own_dolls
    @own_dolls = current_user.products
  end

  def index

    @products = Product.all
    @product = Product.new
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @products }
    end
  end

  # POST /products
  # POST /products.json
  def create
    @product = current_user.products.new(params[:product])

    respond_to do |format|
      if @product.save
        #UserMailer.creation(@product).deliver
        format.html { redirect_to products_url, notice: 'Product was successfully created.' }
        format.json { render json: @product, status: :created, location: @product }
        format.js
      else
        format.html { render action: "index" }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end


  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product = current_user.products.find(params[:id])
    @product.destroy
    respond_to do |format|
      #UserMailer.deletion(@product).deliver
      format.html { redirect_to products_url }
      format.json { head :no_content }
      format.js
    end
  end
end

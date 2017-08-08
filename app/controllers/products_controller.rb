class ProductsController < ApplicationController
  def index
    @products= Product.all.sort_by {|product| product.name.capitalize}
    @total_price=0
  end

  def new
    @product=Product.new
    @brands = Brand.all.sort_by {|brand| brand.name.capitalize}
  end

  def create
    @product = Product.new(product_params)
    
    if @product.save
      redirect_to products_path
    else
      @brands = Brand.all.sort_by {|brand| brand.name.capitalize}
      render 'new'
    end
  end

  def edit
      @product =Product.find(params[:id])
      @brands = Brand.all.sort_by {|brand| brand.name.capitalize}

  end

  def update    
    @product =Product.find(params[:id])
    if @product.update(product_params)
      redirect_to products_path
    else
      render 'edit'  
    end
  end

  def destroy
    @product= Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

  private

  def product_params
      params.require(:product).permit(:name,:brand_id,:description,:price)
  end
end

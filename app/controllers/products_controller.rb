class ProductsController < ApplicationController
  before_action :find_product

  def update
    if @product.update(product_params)
      redirect_to root_url, notice: 'product was successfully updated'
    else
      render :edit
    end
  end

  def destroy
    if current_user
      if current_user.role == 'admin'
        if @product.destroy
            flash[:notice] = 'product was successfully deleted'
          else
            flash[:error] = 'an error occurred'
        end
      end
    end
    redirect_to root_url
  end

  private

  def find_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:title, :articul, :price, :sale)
  end
end

class HomeController < ApplicationController
  skip_before_action :require_login

  def index
    @products = Product.with_deleted.all.order(:title)
    # render text: 'Welcome home, %username%!', layout: true
  end
end

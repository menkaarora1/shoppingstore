class WelcomeController < ApplicationController
  def index
#@products = Product.order(:title)
@products = Product.paginate page: params[:page], order: 'title',
      per_page: 4
 

  end
end

class StoreController < ApplicationController
  include IndexCounter
  before_action :set_counter, only: %i[ index ]
  def index
    @products = Product.order(:title)
  end
end

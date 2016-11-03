class StoreController < ApplicationController
  def index
  	@item = Item.order(:name)
  end
end

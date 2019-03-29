class Site::HomeController < ApplicationController
  before_action :authenticate_member!
  
  layout "site"
  
  def index
    @categories = Category.all
    @ads = Ad.all
  end
  
end

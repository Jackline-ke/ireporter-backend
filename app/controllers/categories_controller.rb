class CategoriesController < ApplicationController
    def index
      @corruption_types = ["Political", "Conventional", "Grand", "Petty"]
    end
    
    def show
      @corruption_type = params[:id]
      # You can add logic here to fetch more information on each corruption type
    end
  end
  
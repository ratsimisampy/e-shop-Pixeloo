class CataloguesController < ApplicationController
    skip_before_action :authenticate_user!, :only => [:show]

    def show
      
      @location = params[:location]
      @search = params[:search]

  if params[:location].present?
      search = params[:search]
      @nonordereditems =  Item.where("lower(title) LIKE '%#{search.downcase}%' OR lower(description) LIKE '%#{search.downcase}%'")
      @items = @nonordereditems.near(@location, 1000, order: 'distance') 
      
    elsif params[:search] 
        search = params[:search]
      @items =  Item.where("lower(title) LIKE '%#{search.downcase}%' OR lower(description) LIKE '%#{search.downcase}%'")
    

      else
      @items = Item.all
    end
    end

   
end

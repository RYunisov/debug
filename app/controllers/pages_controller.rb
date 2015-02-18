class PagesController < ApplicationController
  
  def index
    @page = Rhinoart::Page.find_by_path('index')
  end
  
  def internal
    @page = Rhinoart::Page.find_by_path(params[:url])
    
    if ( params[:format] == 'png') 
       render nothing: true
    end
  end
  
end

class StaticPagesController < ApplicationController
  def home
    @app = App.new
  end
  
  def download
  end
  
  def demo
  end
end

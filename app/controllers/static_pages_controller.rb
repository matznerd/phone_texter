class StaticPagesController < ApplicationController
  def home
    @app = App.new
  end
  
  def demo
  end
end

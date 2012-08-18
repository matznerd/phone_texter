class AppsController < ApplicationController

  def index
    @apps = App.all
  end
  
  def download
    @app = App.find(params[:id])
    if request.user_agent =~ /iPhone|iPad/
      redirect_to @app.ios_url
    elsif request.user_agent =~ /android/
      redirect_to @app.android_url
    elsif request.user_agent =~ /blackberry/
      redirect_to @app.blackberry_url
    else
      redirect_to @app.other_url
    end
  end

  def show
    @app = App.find(params[:id])

  end

  def new
    @app = App.new

  end

  def edit
    @app = App.find(params[:id])
  end

  def create
    @app = App.new(params[:app])
    if @app.save
      redirect_to @app, notice: 'Success!'
    else
      render action: "new"
    end
  end

  def update
    @app = App.find(params[:id])

      if @app.update_attributes(params[:app])
        redirect_to @app, notice: 'App was successfully updated.'
      else
        render action: "edit"
      end
  end

  def destroy
    @app = App.find(params[:id])
    @app.destroy

    redirect_to apps_url
    end
  end
end

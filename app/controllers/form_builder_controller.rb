class FormBuilderController < ApplicationController
  def build
    @url = params[:url]
    render 'phone_texter.js'
  end
end

class FormBuilderController < ApplicationController
  def build
    @id = params[:id]
    render 'phone_texter.js'
  end
end

class PdfController < ApplicationController
  def show
    @file = params[:file]
    render :show
  end
end

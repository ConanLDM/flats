class PagesController < ApplicationController
  def show
    if valid_page?
      render template: "pages/#{params[:page]}"
    else
      render file: "public/404.html", status: :not_found
    end
  end

  def form
    render :form
  end

  def index
    render :index
  end

  def new
    render :new
  end

  def about
    render :about
  end

  private
  
  def valid_page?
    File.exist?(Pathname.new(Rails.root + "app/views/pages/#{params[:page]}.html.erb"))
  end
end

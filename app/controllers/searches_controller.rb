class SearchesController < ApplicationController
  respond_to :html, :json

  def new

  end

  def show
    @search = Search.find(params[:id])

    respond_with @search
  end

  def update
    @search = Search.find(params[:id])

    @search.update_attributes(params[:search])

    respond_with @search
  end

  def create
    @search = Search.create(params[:search])
    session[:search_id] = @search.id

    respond_with @search
  end

end

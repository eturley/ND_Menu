class SearchController < ApplicationController
  def index
    @keyword = params[:keyword]
  end
end

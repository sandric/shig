class HomepageController < ApplicationController
  def index
    @folks = Folk.all
  end
end

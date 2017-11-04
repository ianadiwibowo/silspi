# This file and its route are for development only, should be deleted on production
class DevelopmentController < ApplicationController
  # GET /reset
  def reset
    load(Rails.root.join('db/seeds.rb'))
    render plain: 'Silspi development databases are reset'
  end
end

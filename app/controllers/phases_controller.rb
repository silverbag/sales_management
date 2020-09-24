class PhasesController < ApplicationController
skip_before_action :authenticate_user!, only: [:index]
  def index
    @lead = Lead.all
  end

  def new
    @lead = Lead.new
  end

  def update
  end

  def search
    @lead = SearchItemsService.search(params[:investigate])
  end

  def show
    @lead = Lead.find(params[:id])
  end
end

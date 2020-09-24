class LeadsController < ApplicationController

  def index
  end

  def new
    @lead = Lead.new
  end

  def create
    @lead = Lead.new(leads_params)
    if @lead.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    
  end

  private

  def leads_params
    params.permit(:customer_name, :company, :position, :category_id)
  end
end

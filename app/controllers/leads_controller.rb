class LeadsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  def index
    @leads = Lead.all
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

  def update
    lead = Lead.find(params[:id])
    lead.update(leads_params)
    if lead.save
      redirect_to root_path
    else
      render :show
    end
  end

  def edit
    @lead = Lead.find(params[:id])
  end

  def search
    @lead = SearchItemsService.search(params[:investigate])
  end

  def show
    @lead = Lead.find(params[:id])
    @comment = Comment.new
    @comments = @lead.comments.includes(:user)
  end


  private

  def leads_params
    params.permit(:customer_name, :company, :position, :category_id).merge(user_id: current_user.id)
  end
end
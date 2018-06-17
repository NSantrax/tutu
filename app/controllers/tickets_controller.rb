class TicketsController < ApplicationController
  before_action :authenticate_user!, only:  [:new, :create, :destroy, :index]
  before_action :set_ticket, only: [:show, :destroy]

  def index
    @tickets = current_user.tickets
  end
  
  def show
  end
    
  def new
    @ticket = current_user.tickets.new
  end

  def create
    @ticket = current_user.tickets.new(ticket_params)
    if @ticket.save
   	  redirect_to @ticket
    else
    	render :new
    end
  end

  

  def destroy
    @ticket.destroy
    redirect_to tickets_path
  end

  private

  def set_ticket
  	@ticket = Ticket.find(params[:id])
  end

  def ticket_params
  	params.require(:ticket).permit(:id, :end_station_id, :base_station_id, :train_id, :first_name, :second_name, :middle_name, :passport_number, :user_id)
  end

end

class Admin::TicketsController < Admin::BaseController
  before_action :authenticate_user!
  before_action :set_ticket, only: [:show, :edit, :update, :destroy]
  
  def index
    @tickets = Ticket.all
  end

  def show
  end

  def new
    @ticket = Ticket.new
  end

  def edit
  end

  def create
    @ticket = Ticket.new(ticket_params)
      if @ticket.save
        redirect_to [:admin, @ticket], notice: 'Ticket was successfully created.'
      else
        render :new
      end
  end

  def update
      if @ticket.update(ticket_params)
        redirect_to [:admin, @ticket], notice: 'Ticket was successfully updated.'
      else
        render :edit
      end
  end

  def destroy
    @ticket.destroy
      redirect_to ticket_url, notice: 'Ticket was successfully destroyed.'
  end
  
 private

  def set_ticket
  	@ticket = Ticket.find(params[:id])
  end

  def ticket_params
  	params.require(:ticket).permit(:id, :end_station_id, :base_station_id, :train_id, :first_name, :second_name, :middle_name, :passport_number, :user_id)
  end

end

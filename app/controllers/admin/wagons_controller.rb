class Admin::WagonsController < Admin::BaseController
  
  before_action :set_wagon, only: [:show, :edit, :update, :destroy]
  before_action :set_train, only: [:new, :create]

  def index
    @wagons = Wagon.all
  end
  
  def show
  end
    
  def new
    @wagon = Wagon.new
  end

  def create
    @wagon = @train.wagons.new(wagon_params)

    if @wagon.save
   	  redirect_to [:admin, @train]
    else
    	render :new
    end
  end

  def edit
  end

  def update
    if @wagon.update(wagon_params)
   	  redirect_to [:admin, @wagon]
    else
    	render :edit
    end
  end

  def destroy
    @wagon.destroy
    redirect_to [:admin, @wagon.train]
  end

  private

  def set_train
    @train = Train.find(params[:train_id])
  end

  def set_wagon
  	@wagon = Wagon.find(params[:id])
  end

  def wagon_params
  	params.require(:wagon).permit(:number, :type, :low_place, :top_place, :side_low_place, :side_top_place, :sit_place, :train_id, :number_on_train  )
  end
end

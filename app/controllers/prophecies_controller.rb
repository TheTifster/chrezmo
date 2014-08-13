class PropheciesController < ApplicationController
  before_filter :authenticate_user!
  rescue_from ActiveRecord::RecordNotFound do
    flash[:notice] = 'durf'
    redirect_to "prophecies/index"
  end
  def index
    @prophecies = Prophecy.all
    render "prophecies/index"
  end
  def prophecy
  end
  def prophecies
    redirect_to "prophecies/new"
  end
  def new_user
  end
  def forums
  end
  def image
  end
  def new
    render "prophecies/new"
  end
  def create
    @prophecy = Prophecy.new(prophecy_params)
    @prophecy.user_id = current_user.id
    @prophecy.save
    render "welcome/index"
  end
  def show
    @prophecy = Prophecy.find(params[:p_id])
  end
  def list
    @prophecies = Prophecy.all
  end
  def destroy
    @prophecy = Prophecy.find(params[:p_id])
    @prophecy.destroy

    redirect_to "/", :notice => "Your prophecy has been deleted"
  end
  private
  def prophecy_params
    params.require(:prophecy).permit(:p_id, :keyone, :keytwo, :keythree, :keyfour, :keyfive, :dateone, :datetwo)
  end
end

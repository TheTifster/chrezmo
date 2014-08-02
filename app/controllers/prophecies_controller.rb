class PropheciesController < ApplicationController
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
  def keyone
  end
  def keytwo
  end
  def keythree
  end
  def keyfour
  end
  def keyfive
  end
  def new
    render "prophecies/new"
  end
  def create
    @prophecy = Prophecy.new(prophecy_params)
    @prophecy.save
    render "welcome/index"
  end
  def show
    @prophecy = Prophecy.find(params[:id])
  end
  def list
    @prophecies = Prophecy.all
  end
  private
  def prophecy_params
    params.require(:prophecy).permit(:id, :keyone, :keytwo, :keythree, :keyfour, :keyfive, :dateone, :datetwo)
  end
end

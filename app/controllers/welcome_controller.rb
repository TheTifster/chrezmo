class WelcomeController < ApplicationController
  def index
  end
  def prophecy
  end
  def new_user
  end
  def forums
  end
  def keyone
    @prophecy = Prophecy.new(params[:prophecy])
    if @prophecy.save
      redirect_to :action => 'index'
    else
      redirect_to "welcome/index"
    end
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
    @prophecy = Prophecy.new
  end
  def create
    render plain: params[:welcome].inspect
  end
  def proph_params
    params.require(:prophecy).permit(:keyone)
  end
  def list
    @prophecies = Prophecy.find(all)
  end
end

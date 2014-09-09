class WelcomeController < ApplicationController
  def index
    @prophecies = Prophecy.all
  end
  def prophecy
  end
  def new_user
  end
  def forums_politics
    redirect_to "/forums/categories/general"
  end
  def forums_nature
    redirect_to "/forums/categories/nature"
  end
  def forums_business
    redirect_to "/forums/categories/business"
  end
  def forums_tv
    redirect_to "/forums/categories/tv"
  end
  def forums_sports
    redirect_to "/forums/categories/sports"
  end
  def forums_science
    redirect_to "/forums/categories/science"
  end
  def forums_games
    redirect_to "/forums/categories/games"
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

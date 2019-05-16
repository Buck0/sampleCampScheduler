class CampersController < ApplicationController
  
  def schedule
    if !logged_in?
      redirect_to login_path
      flash[:danger] = 'Please Login to use Admin Functions'
    end
    @campers = Camper.reorder("name ASC").paginate(per_page: 10, page: params[:page])
    # The following should sort by each activity
    @archery = Camper.reorder("archery ASC").paginate(per_page: 7, page: params[:page])
    @riflery = Camper.reorder("riflery ASC").paginate(per_page: 7, page: params[:page])
    @canoeing = Camper.reorder("canoeing ASC").paginate(per_page: 7, page: params[:page])
    @dance = Camper.reorder("dance ASC").paginate(per_page: 7, page: params[:page])
    @drama = Camper.reorder("drama ASC").paginate(per_page: 7, page: params[:page])
    @puppets = Camper.reorder("puppets ASC").paginate(per_page: 7, page: params[:page])
    @choir = Camper.reorder("choir ASC").paginate(per_page: 7, page: params[:page])
    @whackers = Camper.reorder("whackers ASC").paginate(per_page: 7, page: params[:page])
    @ropes = Camper.reorder("ropes ASC").paginate(per_page: 7, page: params[:page])
    @camping = Camper.reorder("camping ASC").paginate(per_page: 7, page: params[:page])
    @baking = Camper.reorder("baking ASC").paginate(per_page: 7, page: params[:page])
    @crafts = Camper.reorder("crafts ASC").paginate(per_page: 7, page: params[:page])
    @games = Camper.reorder("games ASC").paginate(per_page: 7, page: params[:page])
    @guitars = Camper.reorder("guitars ASC").paginate(per_page: 7, page: params[:page])
    @hiking = Camper.reorder("hiking ASC").paginate(per_page: 7, page: params[:page])
    @nature = Camper.reorder("nature ASC").paginate(per_page: 7, page: params[:page])
    @pottery = Camper.reorder("pottery ASC").paginate(per_page: 7, page: params[:page])
    @sewing = Camper.reorder("sewing ASC").paginate(per_page: 7, page: params[:page])
    @sign = Camper.reorder("sign ASC").paginate(per_page: 7, page: params[:page])
    @spanish = Camper.reorder("spanish ASC").paginate(per_page: 7, page: params[:page])
    @writing = Camper.reorder("writing ASC").paginate(per_page: 7, page: params[:page])
    @percussion = Camper.reorder("percussion ASC").paginate(per_page: 7, page: params[:page])
  end
  
  def index
    if !logged_in?
      redirect_to login_path
      flash[:danger] = 'Please Login to use Admin Functions'
    end
    @campers = Camper.reorder("name ASC").paginate(per_page: 10, page: params[:page])
  end
  
  def show
    if !logged_in?
      redirect_to login_path
      flash[:danger] = 'Please Login to use Admin Functions'
    end
    @camper = Camper.find(params[:id])
  end
  
  def new
    if !logged_in?
      redirect_to login_path
      flash[:danger] = 'Please Login to use Admin Functions'
    end
    @camper = Camper.new
  end
  
  def create
    @camper = Camper.new(camper_params)
    if @camper.save
      flash[:success] = "Camper Added"
      redirect_to @camper
    else
      render 'new'
    end
  end
  
  def edit
    if !logged_in?
      redirect_to login_path
      flash[:danger] = 'Please Login to use Admin Functions'
    end
    @camper = Camper.find(params[:id])
  end
  
  def update
    @camper = Camper.find(params[:id])
    if @camper.update_attributes(camper_params)
      flash[:success] = "Camper updated"
      redirect_to @camper
    else
      render 'edit'
    end
  end
  
  private

    def camper_params
      params.require(:camper).permit!
    end
end

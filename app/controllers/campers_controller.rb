class CampersController < ApplicationController
  
  def schedule
    if !logged_in?
      redirect_to login_path
      flash[:danger] = 'Please Login to use Admin Functions'
    end
    @campers = Camper.reorder("name ASC").paginate(per_page: 10, page: params[:page])
    # The following should sort by each activity
    @archery = Camper.reorder("archery ASC").paginate(per_page: 16, page: params[:page])
    @riflery = Camper.reorder("riflery ASC").paginate(per_page: 16, page: params[:page])
    @canoeing = Camper.reorder("canoeing ASC").paginate(per_page: 16, page: params[:page])
    @baking = Camper.reorder("baking ASC").paginate(per_page: 10, page: params[:page])
    @camping = Camper.reorder("camping ASC").paginate(per_page: 24, page: params[:page])
    @rocks = Camper.reorder("rocks ASC").paginate(per_page: 12, page: params[:page])
    @fishing = Camper.reorder("fishing ASC").paginate(per_page: 10, page: params[:page])
    @hiking = Camper.reorder("hiking ASC").paginate(per_page: 7, page: params[:page])
    @pottery = Camper.reorder("pottery ASC").paginate(per_page: 24, page: params[:page])
    @arts = Camper.reorder("arts ASC").paginate(per_page: 12, page: params[:page])
    @percussion = Camper.reorder("percussion ASC").paginate(per_page: 10, page: params[:page])
    @crafts = Camper.reorder("crafts ASC").paginate(per_page: 16, page: params[:page])
    @games = Camper.reorder("games ASC").paginate(per_page: 7, page: params[:page])
    @guitars = Camper.reorder("guitars ASC").paginate(per_page: 6, page: params[:page])
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

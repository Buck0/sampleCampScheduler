class CampersController < ApplicationController
 # MAJOR ERROR IF THE SERVER RESTARTS, THE VARIABLES ARE NO LONGER DEFINED**********
 # PLEASE FIX IF POSSIBLE***********************************************************
  def schedule
    if !logged_in?
      redirect_to login_path
      flash[:danger] = 'Please Login to use Admin Functions'
    end
    
    @campers = Camper.reorder("name ASC").paginate(per_page: 10, page: params[:page])
    @all = Camper.all
    
    one = @all[0]
    two = @all[1]

    if (one.isArch || one.isRif || one.isCan || one.isBake || one.isCamp || one.isRock || one.isFish || one.isHike || 
        one.isPot || one.isArt || one.isPer || one.isCraft || one.isGame || one.isGuit)
      # if the first camper has been scheduled then the rest should have been so skip the scheduling bit and just bring the variables
      @archery = $archery.paginate(per_page: 16, page: params[:page])
      @riflery = $riflery.paginate(per_page: 16, page: params[:page])
      @canoeing = $canoeing.paginate(per_page: 16, page: params[:page])
      @baking = $baking.paginate(per_page: 10, page: params[:page])
      @camping = $camping.paginate(per_page: 24, page: params[:page])
      @rocks = $rocks.paginate(per_page: 12, page: params[:page])
      @fishing = $fishing.paginate(per_page: 10, page: params[:page])
      @hiking = $hiking.paginate(per_page: 90, page: params[:page])
      @pottery = $pottery.paginate(per_page: 24, page: params[:page])
      @arts = $arts.paginate(per_page: 90, page: params[:page])
      @percussion = $percussion.paginate(per_page: 10, page: params[:page])
      @crafts = $crafts.paginate(per_page: 16, page: params[:page])
      @games = $games.paginate(per_page: 90, page: params[:page])
      @guitars = $guitars.paginate(per_page: 6, page: params[:page])
    
      @un = $un.paginate(per_page: 90, page: params[:page])
    elsif (two.isArch || two.isRif || two.isCan || two.isBake || two.isCamp || two.isRock || two.isFish || two.isHike || 
            two.isPot || two.isArt || two.isPer || two.isCraft || two.isGame || two.isGuit)
      #properly paginate the thing
      @archery = $archery.paginate(per_page: 16, page: params[:page])
      @riflery = $riflery.paginate(per_page: 16, page: params[:page])
      @canoeing = $canoeing.paginate(per_page: 16, page: params[:page])
      @baking = $baking.paginate(per_page: 10, page: params[:page])
      @camping = $camping.paginate(per_page: 24, page: params[:page])
      @rocks = $rocks.paginate(per_page: 12, page: params[:page])
      @fishing = $fishing.paginate(per_page: 10, page: params[:page])
      @hiking = $hiking.paginate(per_page: 90, page: params[:page])
      @pottery = $pottery.paginate(per_page: 24, page: params[:page])
      @arts = $arts.paginate(per_page: 90, page: params[:page])
      @percussion = $percussion.paginate(per_page: 10, page: params[:page])
      @crafts = $crafts.paginate(per_page: 16, page: params[:page])
      @games = $games.paginate(per_page: 90, page: params[:page])
      @guitars = $guitars.paginate(per_page: 6, page: params[:page])
    
      @un = $un.paginate(per_page: 90, page: params[:page])
    else
        


# Comment out old insances of the schedule functionality
=begin
    # The following should sort by each activity
    #@archery = Camper.reorder("archery ASC").paginate(per_page: 16, page: params[:page])
    @arch = Camper.reorder("archery ASC")
    @archery = @arch.paginate(per_page: 16, page: params[:page])
    
    #@riflery = Camper.reorder("riflery ASC").paginate(per_page: 16, page: params[:page])
    @rif = Camper.reorder("riflery ASC")
    @riflery = @rif.paginate(per_page: 16, page: params[:page])
    
    #@canoeing = Camper.reorder("canoeing ASC").paginate(per_page: 16, page: params[:page])
    @can = Camper.reorder("canoeing ASC")
    @canoeing = @can.paginate(per_page: 16, page: params[:page])
    
    #@baking = Camper.reorder("baking ASC").paginate(per_page: 10, page: params[:page])
    @bake = Camper.reorder("baking ASC")
    @baking = @bake.paginate(per_page: 10, page: params[:page])
    
    @camp = Camper.reorder("camping ASC")
    @camping = @camp.paginate(per_page: 24, page: params[:page])
    
    @rock = Camper.reorder("rocks ASC")
    @rocks = @rock.paginate(per_page: 12, page: params[:page])
    
    @fish = Camper.reorder("fishing ASC")
    @fishing = @fish.paginate(per_page: 10, page: params[:page])
    
    @hike = Camper.reorder("hiking ASC")
    @hiking = @hike.paginate(per_page: 7, page: params[:page])
    
    @pot = Camper.reorder("pottery ASC")
    @pottery = @pot.paginate(per_page: 24, page: params[:page])
    
    @art = Camper.reorder("arts ASC")
    @arts = @art.paginate(per_page: 12, page: params[:page])
    
    @per = Camper.reorder("percussion ASC")
    @percussion = @per.paginate(per_page: 10, page: params[:page])
    
    @craft = Camper.reorder("crafts ASC")
    @crafts = @craft.paginate(per_page: 16, page: params[:page])
    
    @game = Camper.reorder("games ASC")
    @games = @game.paginate(per_page: 7, page: params[:page])
    
    @guit = Camper.reorder("guitars ASC")
    @guitars = @guit.paginate(per_page: 6, page: params[:page])
=end

    
    # duplicates should not happen with the new code
    # @dup = Array.new
    
    #@count = 0
    #@isPres = false
    
    #Commented out cumbersome code to hopefully make this easier and more straight-forward
=begin
    
    for i in 1..7
      @all.each do |all|
        #check each to make sure that none are skipped
        for a in (i * 1)..(i * 16)
          if @arch[a - 1] == all
            if @isPres
              @dup << @arch[a - 1]
            else
              count = count + 1
              @isPres = true
            end
          end
        end
        #code for the other activities here
        #if skipped then add to the array, possibly do seven arrays and call a different one for each page if possible
        @isPres = false
      end
      

    end
    
=end


    $archery = Array.new
    $riflery = Array.new
    $canoeing = Array.new
    $baking = Array.new
    $camping = Array.new
    $rocks = Array.new
    $fishing = Array.new
    $hiking = Array.new
    $pottery = Array.new
    $arts = Array.new
    $percussion = Array.new
    $crafts = Array.new
    $games = Array.new
    $guitars = Array.new
    $un = Array.new
    
    #@all.each do |all|
    #  all.update_attributes(isArch: false, isRif: false, isCan: false, isBake: false, isCamp: false, isRock: false, isFish: false, 
    #                        isHike: false, isPot: false, isArt: false, isPer: false, isCraft: false, isGame: false, isGuit: false)
    #end
    
    
    for i in 1..7
      @all.each do |all|
        # if a kid gets skipped for one then they'll continually get skipped if they dont get precidence *****
        # this actually shouldn't happen since the kids that are technically "in front" of them have had their turn by the next slot
        if all.archery != 9 && all.archery <= i && !all.isArch && $archery.size < i * 16
          all.update_attribute(:isArch, true)
          $archery << all
          #all.isArch = true
          #next
          # instead of next, do else if so that the end of the thing can be used
        elsif all.riflery != 9 && all.riflery <= i && !all.isRif && $riflery.size < i * 16
          all.update_attribute(:isRif, true)
          $riflery << all
          #all.isRif = true
          #next
        elsif all.canoeing != 9 && all.canoeing <= i && !all.isCan && $canoeing.size < i * 16
          all.update_attribute(:isCan, true)
          $canoeing << all
          #all.isCan = true
          #next
        elsif all.baking != 9 && all.baking <= i && !all.isBake && $baking.size < i * 10
          all.update_attribute(:isBake, true)
          $baking << all
          #all.isBake = true
          #next
        elsif all.camping != 9 && all.camping <= i && !all.isCamp && $camping.size < i * 24
          all.update_attribute(:isCamp, true)
          $camping << all
          #all.isCamp = true
          #next
        elsif all.rocks != 9 && all.rocks <= i && !all.isRock && $rocks.size < i * 12
          all.update_attribute(:isRock, true)
          $rocks << all
          #all.isRock = true
          #next
        elsif all.fishing != 9 && all.fishing <= i && !all.isFish && $fishing.size < i * 10
          all.update_attribute(:isFish, true)
          $fishing << all
          #all.isFish = true
          #next
        elsif all.hiking != 9 && all.hiking <= i && !all.isHike && $hiking.size < i * 90
          all.update_attribute(:isHike, true)
          $hiking << all
          #all.isHike = true
          #next
        elsif all.pottery != 9 && all.pottery <= i && !all.isPot && $pottery.size < i * 24
          all.update_attribute(:isPot, true)
          $pottery << all
          #all.isPot = true
          #next
        elsif all.arts != 9 && all.arts <= i && !all.isArt && $arts.size < i * 90
          all.update_attribute(:isArt, true)
          $arts << all
          #all.isArt = true
          #next
        elsif all.percussion != 9 && all.percussion <= i && !all.isPer && $percussion.size < i * 10
          all.update_attribute(:isPer, true)
          $percussion << all
          #all.isPer = true
          #next
        elsif all.crafts != 9 && all.crafts <= i && !all.isCraft && $crafts.size < i * 16
          all.update_attribute(:isCraft, true)
          $crafts << all
          #all.isCraft = true
          #next
        elsif all.games != 9 && all.games <= i && !all.isGame && $games.size < i * 90
          all.update_attribute(:isGame, true)
          $games << all
          #all.isGame = true
          #next
        elsif all.guitars != 9 && all.guitars <= i && !all.isGuit && $guitars.size < i * 10
          all.update_attribute(:isGuit, true)
          $guitars << all
          #next
        else
          # do something here to indicate an unassigned camper
          $un << all
        end
        
      end  
      
      if $archery.size < i * 16
        until $archery.size == i * 16 do
          $archery << Camper.new(name: "Open Slot")
        end
      end
      if $riflery.size < i * 16
        until $riflery.size == i * 16 do
          $riflery << Camper.new(name: "Open Slot")
        end
      end
      if $canoeing.size < i * 16
        until $canoeing.size == i * 16 do
          $canoeing << Camper.new(name: "Open Slot")
        end
      end
      if $baking.size < i * 10
        until $baking.size == i * 10 do
          $baking << Camper.new(name: "Open Slot")
        end
      end
      if $camping.size < i * 24
        until $camping.size == i * 24 do
          $camping << Camper.new(name: "Open Slot")
        end
      end
      if $rocks.size < i * 12
        until $rocks.size == i * 12 do
          $rocks << Camper.new(name: "Open Slot")
        end
      end
      if $fishing.size < i * 10
        until $fishing.size == i * 10 do
          $fishing << Camper.new(name: "Open Slot")
        end
      end
      if $hiking.size < i * 90
        until $hiking.size == i * 90 do
          $hiking << Camper.new(name: "Open Slot")
        end
      end
      if $pottery.size < i * 24
        until $pottery.size == i * 24 do
          $pottery << Camper.new(name: "Open Slot")
        end
      end
      if $arts.size < i * 90
        until $arts.size == i * 90 do
          $arts << Camper.new(name: "Open Slot")
        end
      end
      if $percussion.size < i * 10
        until $percussion.size == i * 10 do
          $percussion << Camper.new(name: "Open Slot")
        end
      end
      if $crafts.size < i * 16
        until $crafts.size == i * 16 do
          $crafts << Camper.new(name: "Open Slot")
        end
      end
      if $games.size < i * 90
        until $games.size == i * 90 do
          $games << Camper.new(name: "Open Slot")
        end
      end
      if $guitars.size < i * 6
        until $guitars.size == i * 6 do
          $guitars << Camper.new(name: "Open Slot")
        end
      end
      if $un.size < i * 90
        until $un.size == i * 90 do
          $un << Camper.new(name: "Open Slot")
        end
      end
        
    end
    
    @archery = $archery.paginate(per_page: 16, page: params[:page])
    @riflery = $riflery.paginate(per_page: 16, page: params[:page])
    @canoeing = $canoeing.paginate(per_page: 16, page: params[:page])
    @baking = $baking.paginate(per_page: 10, page: params[:page])
    @camping = $camping.paginate(per_page: 24, page: params[:page])
    @rocks = $rocks.paginate(per_page: 12, page: params[:page])
    @fishing = $fishing.paginate(per_page: 10, page: params[:page])
    @hiking = $hiking.paginate(per_page: 90, page: params[:page])
    @pottery = $pottery.paginate(per_page: 24, page: params[:page])
    @arts = $arts.paginate(per_page: 90, page: params[:page])
    @percussion = $percussion.paginate(per_page: 10, page: params[:page])
    @crafts = $crafts.paginate(per_page: 16, page: params[:page])
    @games = $games.paginate(per_page: 90, page: params[:page])
    @guitars = $guitars.paginate(per_page: 6, page: params[:page])
    
    @un = $un.paginate(per_page: 90, page: params[:page])
    
    
    end
    
  end
  
  #def config
    #do the stuff then save it I guess
   # if true
    #  flash[:success] = "Schedule has been successfully created"
     # redirect_to 'schedule'
    #else
     # flash[:danger] = "Something went wrong, please try again and if problem persists contact Matthew Buchanan at mdbuchanan0@gmail.com"
  #end
  
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

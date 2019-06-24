class CampersController < ApplicationController
 # MAJOR ERROR IF THE SERVER RESTARTS, THE VARIABLES ARE NO LONGER DEFINED**********
 # PLEASE FIX IF POSSIBLE BUT PROBABLY NON ISSUE ON HEROKU**************************

# old instances of variables
=begin
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
 
 $choir = Array.new
 $writing = Array.new
 $weaving = Array.new
 $notdance = Array.new
 $painting = Array.new
 $sign = Array.new
 $spanish = Array.new
 $talking = Array.new
 $un = Array.new
 
 $isArch = String.new
 $isRif = String.new
 $isCan = String.new
 $isBake = String.new
 $isCamp = String.new
 $isRock = String.new
 $isFish = String.new
 $isHike = String.new
 $isPot = String.new
 $isArt = String.new
 $isPer = String.new
 $isCraft = String.new
 $isGame = String.new
 $isGuit = String.new
     
 $isChoir = String.new
 $isWrite = String.new
 $isWeave = String.new
 $isNotdance = String.new
 $isPaint = String.new
 $isSign = String.new
 $isSpan = String.new
 $isTalk = String.new

=end 


 def assign
   @camper = Camper.find(params[:id])
   
   
   @archery = Archery.first.list
   @riflery = Riflery.first.list
   @canoeing = Canoeing.first.list
   @baking = Baking.first.list
   @camping = Camping.first.list
   @rocks = Rock.first.list
   @fishing = Fishing.first.list
   @hiking = Hiking.first.list
   @pottery = Pottery.first.list
   @arts = Art.first.list
   @percussion = Percussion.first.list
   @crafts = Craft.first.list
   @games = Game.first.list
   @guitars = Guitar.first.list
   @un = Un.first.list
    
   @choir = Choir.first.list
   @writing = Writing.first.list
   @weaving = Weaving.first.list
   @notdance = Notdance.first.list
   @painting = Painting.first.list
   @sign = Sign.first.list
   @spanish = Spanish.first.list
   @talking = Talking.first.list
   
   @isArch = Schedule.first.isArch
   @isRif = Schedule.first.isRif
   @isCan = Schedule.first.isCan
   @isBake = Schedule.first.isBake
   @isCamp = Schedule.first.isCamp
   @isRock = Schedule.first.isRock
   @isFish = Schedule.first.isFish
   @isHike = Schedule.first.isHike
   @isPot = Schedule.first.isPot
   @isArt = Schedule.first.isArt
   @isPer = Schedule.first.isPer
   @isCraft = Schedule.first.isCraft
   @isGame = Schedule.first.isGame
   @isGuit = Schedule.first.isGuit
   
   @isChoir = Schedule.first.isChoir
   @isWrite = Schedule.first.isWrite
   @isWeave = Schedule.first.isWeave
   @isNotdance = Schedule.first.isNotdance
   @isPaint = Schedule.first.isPaint
   @isSign = Schedule.first.isSign
   @isSpan = Schedule.first.isSpan
   @isTalk = Schedule.first.isTalk
   
 end
 
 def set
   @camper = Camper.find(params[:id])
   
   @archery = Archery.first.list
   @riflery = Riflery.first.list
   @canoeing = Canoeing.first.list
   @baking = Baking.first.list
   @camping = Camping.first.list
   @rocks = Rock.first.list
   @fishing = Fishing.first.list
   @hiking = Hiking.first.list
   @pottery = Pottery.first.list
   @arts = Art.first.list
   @percussion = Percussion.first.list
   @crafts = Craft.first.list
   @games = Game.first.list
   @guitars = Guitar.first.list
   @un = Un.first.list
    
   @choir = Choir.first.list
   @writing = Writing.first.list
   @weaving = Weaving.first.list
   @notdance = Notdance.first.list
   @painting = Painting.first.list
   @sign = Sign.first.list
   @spanish = Spanish.first.list
   @talking = Talking.first.list

   if params[:assign][:archery] == "1"
      @camper.update_attribute(:isArch, true)
      @archery << @camper.name
      @un.delete_at(@un.index(@camper.name))
      Archery.first.update_attribute(:list, @archery)
      Un.first.update_attribute(:list, @un)
      flash[:success] = "Camper assigned"
      redirect_to better_path
      
    elsif params[:assign][:riflery] == "1"
      @camper.update_attribute(:isRif, true)
      @riflery << @camper.name
      @un.delete_at(@un.index(@camper.name))
      Riflery.first.update_attribute(:list, @riflery)
      Un.first.update_attribute(:list, @un)
      flash[:success] = "Camper assigned"
      redirect_to better_path
      
    elsif params[:assign][:canoeing] == "1"
      @camper.update_attribute(:isCan, true)
      @canoeing << @camper.name
      @un.delete_at(@un.index(@camper.name))
      Canoeing.first.update_attribute(:list, @canoeing)
      Un.first.update_attribute(:list, @un)
      flash[:success] = "Camper assigned"
      redirect_to better_path
      
    elsif params[:assign][:baking] == "1"
      @camper.update_attribute(:isBake, true)
      @baking << @camper.name
      @un.delete_at(@un.index(@camper.name))
      Baking.first.update_attribute(:list, @baking)
      Un.first.update_attribute(:list, @un)
      flash[:success] = "Camper assigned"
      redirect_to better_path
      
    elsif params[:assign][:camping] == "1"
      @camper.update_attribute(:isCamp, true)
      @camping << @camper.name
      @un.delete_at(@un.index(@camper.name))
      Camping.first.update_attribute(:list, @camping)
      Un.first.update_attribute(:list, @un)
      flash[:success] = "Camper assigned"
      redirect_to better_path
      
    elsif params[:assign][:rocks] == "1"
      @camper.update_attribute(:isRock, true)
      @rocks << @camper.name
      @un.delete_at(@un.index(@camper.name))
      Rock.first.update_attribute(:list, @rocks)
      Un.first.update_attribute(:list, @un)
      flash[:success] = "Camper assigned"
      redirect_to better_path
      
    elsif params[:assign][:fishing] == "1"
      @camper.update_attribute(:isFish, true)
      @fishing << @camper.name
      @un.delete_at(@un.index(@camper.name))
      Fishing.first.update_attribute(:list, @fishing)
      Un.first.update_attribute(:list, @un)
      flash[:success] = "Camper assigned"
      redirect_to better_path
      
    elsif params[:assign][:hiking] == "1"
      @camper.update_attribute(:isHike, true)
      @hiking << @camper.name
      @un.delete_at(@un.index(@camper.name))
      Hiking.first.update_attribute(:list, @hiking)
      Un.first.update_attribute(:list, @un)
      flash[:success] = "Camper assigned"
      redirect_to better_path
      
    elsif params[:assign][:pottery] == "1"
      @camper.update_attribute(:isPot, true)
      @pottery << @camper.name
      @un.delete_at(@un.index(@camper.name))
      Pottery.first.update_attribute(:list, @pottery)
      Un.first.update_attribute(:list, @un)
      flash[:success] = "Camper assigned"
      redirect_to better_path
      
    elsif params[:assign][:arts] == "1"
      @camper.update_attribute(:isArt, true)
      @arts << @camper.name
      @un.delete_at(@un.index(@camper.name))
      Art.first.update_attribute(:list, @arts)
      Un.first.update_attribute(:list, @un)
      flash[:success] = "Camper assigned"
      redirect_to better_path
      
    elsif params[:assign][:percussion] == "1"
      @camper.update_attribute(:isPer, true)
      @percussion << @camper.name
      @un.delete_at(@un.index(@camper.name))
      Percussion.first.update_attribute(:list, @percussion)
      Un.first.update_attribute(:list, @un)
      flash[:success] = "Camper assigned"
      redirect_to better_path
      
    elsif params[:assign][:crafts] == "1"
      @camper.update_attribute(:isCraft, true)
      @crafts << @camper.name
      @un.delete_at(@un.index(@camper.name))
      Craft.first.update_attribute(:list, @crafts)
      Un.first.update_attribute(:list, @un)
      flash[:success] = "Camper assigned"
      redirect_to better_path
      
    elsif params[:assign][:games] == "1"
      @camper.update_attribute(:isGame, true)
      @games << @camper.name
      @un.delete_at(@un.index(@camper.name))
      Game.first.update_attribute(:list, @games)
      Un.first.update_attribute(:list, @un)
      flash[:success] = "Camper assigned"
      redirect_to better_path
      
    elsif params[:assign][:guitars] == "1"
      @camper.update_attribute(:isGuit, true)
      @guitars << @camper.name
      @un.delete_at(@un.index(@camper.name))
      Guitar.first.update_attribute(:list, @guitars)
      Un.first.update_attribute(:list, @un)
      flash[:success] = "Camper assigned"
      redirect_to better_path
      
    elsif params[:assign][:choir] == "1"
      @camper.update_attribute(:isChoir, true)
      @choir << @camper.name
      @un.delete_at(@un.index(@camper.name))
      Choir.first.update_attribute(:list, @choir)
      Un.first.update_attribute(:list, @un)
      flash[:success] = "Camper assigned"
      redirect_to better_path
      
    elsif params[:assign][:writing] == "1"
      @camper.update_attribute(:isWrite, true)
      @writing << @camper.name
      @un.delete_at(@un.index(@camper.name))
      Writing.first.update_attribute(:list, @writing)
      Un.first.update_attribute(:list, @un)
      flash[:success] = "Camper assigned"
      redirect_to better_path
      
    elsif params[:assign][:weaving] == "1"
      @camper.update_attribute(:isWeave, true)
      @weaving << @camper.name
      @un.delete_at(@un.index(@camper.name))
      Weaving.first.update_attribute(:list, @weaving)
      Un.first.update_attribute(:list, @un)
      flash[:success] = "Camper assigned"
      redirect_to better_path
      
    elsif params[:assign][:notdance] == "1"
      @camper.update_attribute(:isNotdance, true)
      @notdance << @camper.name
      @un.delete_at(@un.index(@camper.name))
      Notdance.first.update_attribute(:list, @notdance)
      Un.first.update_attribute(:list, @un)
      flash[:success] = "Camper assigned"
      redirect_to better_path
      
    elsif params[:assign][:painting] == "1"
      @camper.update_attribute(:isPaint, true)
      @painting << @camper.name
      @un.delete_at(@un.index(@camper.name))
      Painting.first.update_attribute(:list, @painting)
      Un.first.update_attribute(:list, @un)
      flash[:success] = "Camper assigned"
      redirect_to better_path
      
    elsif params[:assign][:sign] == "1"
      @camper.update_attribute(:isSign, true)
      @sign << @camper.name
      @un.delete_at(@un.index(@camper.name))
      Sign.first.update_attribute(:list, @sign)
      Un.first.update_attribute(:list, @un)
      flash[:success] = "Camper assigned"
      redirect_to better_path
      
    elsif params[:assign][:spanish] == "1"
      @camper.update_attribute(:isSpan, true)
      @spanish << @camper.name
      @un.delete_at(@un.index(@camper.name))
      Spanish.first.update_attribute(:list, @spanish)
      Un.first.update_attribute(:list, @un)
      flash[:success] = "Camper assigned"
      redirect_to better_path
      
    elsif params[:assign][:talking] == "1"
      @camper.update_attribute(:isTalk, true)
      @talking << @camper.name
      @un.delete_at(@un.index(@camper.name))
      Talking.first.update_attribute(:list, @talking)
      Un.first.update_attribute(:list, @un)
      flash[:success] = "Camper assigned"
      redirect_to better_path
    else
      flash[:warning] = "No activity was selected, please select an activity"
      render '/assign'
   end
 end
 
 def reset
   @all = Camper.all
   
   @all.each do |all|
     all.update_attributes(isArch: false, isRif: false, isCan: false, isBake: false, isCamp: false, isRock: false, isFish: false,
                            isHike: false, isPot: false, isArt: false, isPer: false, isCraft: false, isGame: false, isGuit: false,
                            isChoir: false, isWrite: false, isWeave: false, isNotdance: false, isPaint: false, isSign: false,
                            isSpan: false, isTalk: false)
                            
   end
   
   flash[:success] = "The entire schedule has been successfully reset"
   redirect_to admin_path
 end
 
 def disintigrate
   Camper.delete_all
   if Camper.any?
     flash[:danger] = "Something went wrong, some campers did not get deleted, please try again"
   else
    flash[:success] = "The list of campers has been deleted"
   end
  redirect_to admin_path
 end
 
 def destroy
  Camper.find(params[:id]).destroy
    flash[:success] = "Camper deleted"
    redirect_to campers_all_path
 end
 
 def trial
   if !logged_in?
      redirect_to login_path
      flash[:danger] = 'Please Login to use Admin Functions'
   end
   
   if !Camper.any?
      flash[:warning] = "There are no campers to schedule"
      redirect_to admin_path
   end
   #@activities = { :archery => 0, :riflery => 0, :canoeing => 0, :baking => 0, :camping => 0, :rocks => 0, :fishing => 0,
     #               :hiking => 0, :pottery => 0, :arts => 0, :percussion => 0, :crafts => 0, :games => 0, :guitars => 0 }
 end

# the slightly new scheduler code
=begin
 def make
   # make the trial schedule here based on the :activities thing from the post
   # each section may need a unique page so that things don't get overwritten
   # this would also require unique varibles for each time slot
   # for now that isn't needed so copypasta the code from 1 down to 5
   
   
   if !Camper.any?
      flash[:warning] = "There are no campers to schedule"
      redirect_to admin_path
    end

   @all = Camper.all

   @archery = Array.new
   @riflery = Array.new
   @canoeing = Array.new
   @baking = Array.new
   @camping = Array.new
   @rocks = Array.new
   @fishing = Array.new
   @hiking = Array.new
   @pottery = Array.new
   @arts = Array.new
   @percussion = Array.new
   @crafts = Array.new
   @games = Array.new
   @guitars = Array.new
   @un = Array.new
   
   @choir = Array.new
   @writing = Array.new
   @weaving = Array.new
   @notdance = Array.new
   @painting = Array.new
   @sign = Array.new
   @spanish = Array.new
   @talking = Array.new
   
   if !params[:activities] || params[:activities] == nil || params[:activities] == ""
     
     @all = Camper.all
   
     @archery = $archery
     @riflery = $riflery
     @canoeing = $canoeing
     @baking = $baking
     @camping = $camping
     @rocks = $rocks
     @fishing = $fishing
     @hiking = $hiking
     @pottery = $pottery
     @arts = $arts
     @percussion = $percussion
     @crafts = $crafts
     @games = $games
     @guitars = $guitars
     @un = $un
   
     @choir = $choir
     @writing = $writing
     @weaving = $weaving
     @notdance = $notdance
     @painting = $painting
     @sign = $sign
     @spanish = $spanish
     @talking = $talking
    
     params[:activities] = { }
     params[:activities][:slot] = $slot
     params[:activities][:archery] = $isArch
     params[:activities][:riflery] = $isRif
     params[:activities][:canoeing] = $isCan
     params[:activities][:baking] = $isBake
     params[:activities][:camping] = $isCamp
     params[:activities][:rocks] = $isRock
     params[:activities][:fishing] = $isFish
     params[:activities][:hiking] = $isHike
     params[:activities][:pottery] = $isPot
     params[:activities][:arts] = $isArt
     params[:activities][:percussion] = $isPer
     params[:activities][:crafts] = $isCraft
     params[:activities][:games] = $isGame
     params[:activities][:guitars] = $isGuit
     
     params[:activities][:choir] = $isChoir
     params[:activities][:writing] = $isWrite
     params[:activities][:weaving] = $isWeave
     params[:activities][:notdance] = $isNotdance
     params[:activities][:painting] = $isPaint
     params[:activities][:sign] = $isSign
     params[:activities][:spanish] = $isSpan
     params[:activities][:talking] = $isTalk
     

   elsif params[:activities][:slot] == "1"
     i = 1
      @all.each do |all|
        
        # Beginning of conditionals that determine where a camper gets put in the schedule
        if all.archery != 9 && all.archery <= i && !all.isArch && @archery.size < 16 && params[:activities][:archery] == "1"
          all.update_attribute(:isArch, true)
          @archery << all
          #all.isArch = true
          #next
          # instead of next, do else if so that the end of the thing can be used
        elsif all.riflery != 9 && all.riflery <= i && !all.isRif && @riflery.size < 16 && params[:activities][:riflery] == "1"
          all.update_attribute(:isRif, true)
          @riflery << all
          #all.isRif = true
          #next
        elsif all.canoeing != 9 && all.canoeing <= i && !all.isCan && @canoeing.size < 16 && params[:activities][:canoeing] == "1"
          all.update_attribute(:isCan, true)
          @canoeing << all
          #all.isCan = true
          #next
        elsif all.baking != 9 && all.baking <= i && !all.isBake && @baking.size < 10 && params[:activities][:baking] == "1"
          all.update_attribute(:isBake, true)
          @baking << all
          #all.isBake = true
          #next
        elsif all.camping != 9 && all.camping <= i && !all.isCamp && @camping.size < 24 && params[:activities][:camping] == "1"
          all.update_attribute(:isCamp, true)
          @camping << all
          #all.isCamp = true
          #next
        elsif all.rocks != 9 && all.rocks <= i && !all.isRock && @rocks.size < 12 && params[:activities][:rocks] == "1"
          all.update_attribute(:isRock, true)
          @rocks << all
          #all.isRock = true
          #next
        elsif all.fishing != 9 && all.fishing <= i && !all.isFish && @fishing.size < 10 && params[:activities][:fishing] == "1"
          all.update_attribute(:isFish, true)
          @fishing << all
          #all.isFish = true
          #next
        elsif all.hiking != 9 && all.hiking <= i && !all.isHike && @hiking.size < 90 && params[:activities][:hiking] == "1"
          all.update_attribute(:isHike, true)
          @hiking << all
          #all.isHike = true
          #next
        elsif all.pottery != 9 && all.pottery <= i && !all.isPot && @pottery.size < 24 && params[:activities][:pottery] == "1"
          all.update_attribute(:isPot, true)
          @pottery << all
          #all.isPot = true
          #next
        elsif all.arts != 9 && all.arts <= i && !all.isArt && @arts.size < 20 && params[:activities][:arts] == "1"
          all.update_attribute(:isArt, true)
          @arts << all
          #all.isArt = true
          #next
        elsif all.percussion != 9 && all.percussion <= i && !all.isPer && @percussion.size < 10 && params[:activities][:percussion] == "1"
          all.update_attribute(:isPer, true)
          @percussion << all
          #all.isPer = true
          #next
        elsif all.crafts != 9 && all.crafts <= i && !all.isCraft && @crafts.size < 16 && params[:activities][:crafts] == "1"
          all.update_attribute(:isCraft, true)
          @crafts << all
          #all.isCraft = true
          #next
        elsif all.games != 9 && all.games <= i && !all.isGame && @games.size < 90 && params[:activities][:games] == "1"
          all.update_attribute(:isGame, true)
          @games << all
          #all.isGame = true
          #next
        elsif all.guitars != 9 && all.guitars <= i && !all.isGuit && @guitars.size < 10 && params[:activities][:guitars] == "1"
          all.update_attribute(:isGuit, true)
          @guitars << all
          #next
          
        elsif all.choir != 9 && all.choir <= i && !all.isChoir && @choir.size < 90 && params[:activities][:choir] == "1"
          all.update_attribute(:isChoir, true)
          @choir << all
          
        elsif all.writing != 9 && all.writing <= i && !all.isWrite && @writing.size < 90 && params[:activities][:writing] == "1"
          all.update_attribute(:isWrite, true)
          @writing << all
          
        elsif all.weaving != 9 && all.weaving <= i && !all.isWeave && @weaving.size < 90 && params[:activities][:weaving] == "1"
          all.update_attribute(:isWeave, true)
          @weaving << all
          
        elsif all.notdance != 9 && all.notdance <= i && !all.isNotdance && @notdance.size < 90 && params[:activities][:notdance] == "1"
          all.update_attribute(:isNotdance, true)
          @notdance << all
          
        elsif all.painting != 9 && all.painting <= i && !all.isPaint && @painting.size < 15 && params[:activities][:painting] == "1"
          all.update_attribute(:isPaint, true)
          @painting << all
          
        elsif all.sign != 9 && all.sign <= i && !all.isSign && @sign.size < 90 && params[:activities][:sign] == "1"
          all.update_attribute(:isSign, true)
          @sign << all
          
        elsif all.spanish != 9 && all.spanish <= i && !all.isSpan && @spanish.size < 90 && params[:activities][:spanish] == "1"
          all.update_attribute(:isSpan, true)
          @spanish << all
          
        elsif all.talking != 9 && all.talking <= i && !all.isTalk && @talking.size < 90 && params[:activities][:talking] == "1"
          all.update_attribute(:isTalk, true)
          @talking << all
          
          # This next section will use the camper's optional activities if they could not get assigned on one of their main activities
          
        elsif all.archery != 9 && all.archery > 5 && !all.isArch && @archery.size < 16 && params[:activities][:archery] == "1"
          all.update_attribute(:isArch, true)
          @archery << all
          #all.isArch = true
          #next
          # instead of next, do else if so that the end of the thing can be used
        elsif all.riflery != 9 && all.riflery > 5 && !all.isRif && @riflery.size < 16 && params[:activities][:riflery] == "1"
          all.update_attribute(:isRif, true)
          @riflery << all
          #all.isRif = true
          #next
        elsif all.canoeing != 9 && all.canoeing > 5 && !all.isCan && @canoeing.size < 16 && params[:activities][:canoeing] == "1"
          all.update_attribute(:isCan, true)
          @canoeing << all
          #all.isCan = true
          #next
        elsif all.baking != 9 && all.baking > 5 && !all.isBake && @baking.size < 10 && params[:activities][:baking] == "1"
          all.update_attribute(:isBake, true)
          @baking << all
          #all.isBake = true
          #next
        elsif all.camping != 9 && all.camping > 5 && !all.isCamp && @camping.size < 24 && params[:activities][:camping] == "1"
          all.update_attribute(:isCamp, true)
          @camping << all
          #all.isCamp = true
          #next
        elsif all.rocks != 9 && all.rocks > 5 && !all.isRock && @rocks.size < 12 && params[:activities][:rocks] == "1"
          all.update_attribute(:isRock, true)
          @rocks << all
          #all.isRock = true
          #next
        elsif all.fishing != 9 && all.fishing > 5 && !all.isFish && @fishing.size < 10 && params[:activities][:fishing] == "1"
          all.update_attribute(:isFish, true)
          @fishing << all
          #all.isFish = true
          #next
        elsif all.hiking != 9 && all.hiking > 5 && !all.isHike && @hiking.size < 90 && params[:activities][:hiking] == "1"
          all.update_attribute(:isHike, true)
          @hiking << all
          #all.isHike = true
          #next
        elsif all.pottery != 9 && all.pottery > 5 && !all.isPot && @pottery.size < 24 && params[:activities][:pottery] == "1"
          all.update_attribute(:isPot, true)
          @pottery << all
          #all.isPot = true
          #next
        elsif all.arts != 9 && all.arts > 5 && !all.isArt && @arts.size < 20 && params[:activities][:arts] == "1"
          all.update_attribute(:isArt, true)
          @arts << all
          #all.isArt = true
          #next
        elsif all.percussion != 9 && all.percussion > 5 && !all.isPer && @percussion.size < 10 && params[:activities][:percussion] == "1"
          all.update_attribute(:isPer, true)
          @percussion << all
          #all.isPer = true
          #next
        elsif all.crafts != 9 && all.crafts > 5 && !all.isCraft && @crafts.size < 16 && params[:activities][:crafts] == "1"
          all.update_attribute(:isCraft, true)
          @crafts << all
          #all.isCraft = true
          #next
        elsif all.games != 9 && all.games > 5 && !all.isGame && @games.size < 90 && params[:activities][:games] == "1"
          all.update_attribute(:isGame, true)
          @games << all
          #all.isGame = true
          #next
        elsif all.guitars != 9 && all.guitars > 5 && !all.isGuit && @guitars.size < 10 && params[:activities][:guitars] == "1"
          all.update_attribute(:isGuit, true)
          @guitars << all
          #next
          
        elsif all.choir != 9 && all.choir > 5 && !all.isChoir && @choir.size < 90 && params[:activities][:choir] == "1"
          all.update_attribute(:isChoir, true)
          @choir << all
          
        elsif all.writing != 9 && all.writing > 5 && !all.isWrite && @writing.size < 90 && params[:activities][:writing] == "1"
          all.update_attribute(:isWrite, true)
          @writing << all
          
        elsif all.weaving != 9 && all.weaving > 5 && !all.isWeave && @weaving.size < 90 && params[:activities][:weaving] == "1"
          all.update_attribute(:isWeave, true)
          @weaving << all
          
        elsif all.notdance != 9 && all.notdance > 5 && !all.isNotdance && @notdance.size < 90 && params[:activities][:notdance] == "1"
          all.update_attribute(:isNotdance, true)
          @notdance << all
          
        elsif all.painting != 9 && all.painting > 5 && !all.isPaint && @painting.size < 15 && params[:activities][:painting] == "1"
          all.update_attribute(:isPaint, true)
          @painting << all
          
        elsif all.sign != 9 && all.sign > 5 && !all.isSign && @sign.size < 90 && params[:activities][:sign] == "1"
          all.update_attribute(:isSign, true)
          @sign << all
          
        elsif all.spanish != 9 && all.spanish > 5 && !all.isSpan && @spanish.size < 90 && params[:activities][:spanish] == "1"
          all.update_attribute(:isSpan, true)
          @spanish << all
          
        elsif all.talking != 9 && all.talking > 5 && !all.isTalk && @talking.size < 90 && params[:activities][:talking] == "1"
          all.update_attribute(:isTalk, true)
          @talking << all
          
        else
          # The camper is added to the $un array, indicating an unassigned camper
          @un << all
        end
        
      end  
      
     
   elsif params[:activities][:slot] == "2"
    i = 2
      @all.each do |all|
        
        # Beginning of conditionals that determine where a camper gets put in the schedule
        if all.archery != 9 && all.archery <= i && !all.isArch && @archery.size < 16 && params[:activities][:archery] == "1"
          all.update_attribute(:isArch, true)
          @archery << all
          #all.isArch = true
          #next
          # instead of next, do else if so that the end of the thing can be used
        elsif all.riflery != 9 && all.riflery <= i && !all.isRif && @riflery.size < 16 && params[:activities][:riflery] == "1"
          all.update_attribute(:isRif, true)
          @riflery << all
          #all.isRif = true
          #next
        elsif all.canoeing != 9 && all.canoeing <= i && !all.isCan && @canoeing.size < 16 && params[:activities][:canoeing] == "1"
          all.update_attribute(:isCan, true)
          @canoeing << all
          #all.isCan = true
          #next
        elsif all.baking != 9 && all.baking <= i && !all.isBake && @baking.size < 10 && params[:activities][:baking] == "1"
          all.update_attribute(:isBake, true)
          @baking << all
          #all.isBake = true
          #next
        elsif all.camping != 9 && all.camping <= i && !all.isCamp && @camping.size < 24 && params[:activities][:camping] == "1"
          all.update_attribute(:isCamp, true)
          @camping << all
          #all.isCamp = true
          #next
        elsif all.rocks != 9 && all.rocks <= i && !all.isRock && @rocks.size < 12 && params[:activities][:rocks] == "1"
          all.update_attribute(:isRock, true)
          @rocks << all
          #all.isRock = true
          #next
        elsif all.fishing != 9 && all.fishing <= i && !all.isFish && @fishing.size < 10 && params[:activities][:fishing] == "1"
          all.update_attribute(:isFish, true)
          @fishing << all
          #all.isFish = true
          #next
        elsif all.hiking != 9 && all.hiking <= i && !all.isHike && @hiking.size < 90 && params[:activities][:hiking] == "1"
          all.update_attribute(:isHike, true)
          @hiking << all
          #all.isHike = true
          #next
        elsif all.pottery != 9 && all.pottery <= i && !all.isPot && @pottery.size < 24 && params[:activities][:pottery] == "1"
          all.update_attribute(:isPot, true)
          @pottery << all
          #all.isPot = true
          #next
        elsif all.arts != 9 && all.arts <= i && !all.isArt && @arts.size < 20 && params[:activities][:arts] == "1"
          all.update_attribute(:isArt, true)
          @arts << all
          #all.isArt = true
          #next
        elsif all.percussion != 9 && all.percussion <= i && !all.isPer && @percussion.size < 10 && params[:activities][:percussion] == "1"
          all.update_attribute(:isPer, true)
          @percussion << all
          #all.isPer = true
          #next
        elsif all.crafts != 9 && all.crafts <= i && !all.isCraft && @crafts.size < 16 && params[:activities][:crafts] == "1"
          all.update_attribute(:isCraft, true)
          @crafts << all
          #all.isCraft = true
          #next
        elsif all.games != 9 && all.games <= i && !all.isGame && @games.size < 90 && params[:activities][:games] == "1"
          all.update_attribute(:isGame, true)
          @games << all
          #all.isGame = true
          #next
        elsif all.guitars != 9 && all.guitars <= i && !all.isGuit && @guitars.size < 10 && params[:activities][:guitars] == "1"
          all.update_attribute(:isGuit, true)
          @guitars << all
          #next
          
        elsif all.choir != 9 && all.choir <= i && !all.isChoir && @choir.size < 90 && params[:activities][:choir] == "1"
          all.update_attribute(:isChoir, true)
          @choir << all
          
        elsif all.writing != 9 && all.writing <= i && !all.isWrite && @writing.size < 90 && params[:activities][:writing] == "1"
          all.update_attribute(:isWrite, true)
          @writing << all
          
        elsif all.weaving != 9 && all.weaving <= i && !all.isWeave && @weaving.size < 90 && params[:activities][:weaving] == "1"
          all.update_attribute(:isWeave, true)
          @weaving << all
          
        elsif all.notdance != 9 && all.notdance <= i && !all.isNotdance && @notdance.size < 90 && params[:activities][:notdance] == "1"
          all.update_attribute(:isNotdance, true)
          @notdance << all
          
        elsif all.painting != 9 && all.painting <= i && !all.isPaint && @painting.size < 15 && params[:activities][:painting] == "1"
          all.update_attribute(:isPaint, true)
          @painting << all
          
        elsif all.sign != 9 && all.sign <= i && !all.isSign && @sign.size < 90 && params[:activities][:sign] == "1"
          all.update_attribute(:isSign, true)
          @sign << all
          
        elsif all.spanish != 9 && all.spanish <= i && !all.isSpan && @spanish.size < 90 && params[:activities][:spanish] == "1"
          all.update_attribute(:isSpan, true)
          @spanish << all
          
        elsif all.talking != 9 && all.talking <= i && !all.isTalk && @talking.size < 90 && params[:activities][:talking] == "1"
          all.update_attribute(:isTalk, true)
          @talking << all
          
          # This next section will use the camper's optional activities if they could not get assigned on one of their main activities
          
        elsif all.archery != 9 && all.archery > 5 && !all.isArch && @archery.size < 16 && params[:activities][:archery] == "1"
          all.update_attribute(:isArch, true)
          @archery << all
          #all.isArch = true
          #next
          # instead of next, do else if so that the end of the thing can be used
        elsif all.riflery != 9 && all.riflery > 5 && !all.isRif && @riflery.size < 16 && params[:activities][:riflery] == "1"
          all.update_attribute(:isRif, true)
          @riflery << all
          #all.isRif = true
          #next
        elsif all.canoeing != 9 && all.canoeing > 5 && !all.isCan && @canoeing.size < 16 && params[:activities][:canoeing] == "1"
          all.update_attribute(:isCan, true)
          @canoeing << all
          #all.isCan = true
          #next
        elsif all.baking != 9 && all.baking > 5 && !all.isBake && @baking.size < 10 && params[:activities][:baking] == "1"
          all.update_attribute(:isBake, true)
          @baking << all
          #all.isBake = true
          #next
        elsif all.camping != 9 && all.camping > 5 && !all.isCamp && @camping.size < 24 && params[:activities][:camping] == "1"
          all.update_attribute(:isCamp, true)
          @camping << all
          #all.isCamp = true
          #next
        elsif all.rocks != 9 && all.rocks > 5 && !all.isRock && @rocks.size < 12 && params[:activities][:rocks] == "1"
          all.update_attribute(:isRock, true)
          @rocks << all
          #all.isRock = true
          #next
        elsif all.fishing != 9 && all.fishing > 5 && !all.isFish && @fishing.size < 10 && params[:activities][:fishing] == "1"
          all.update_attribute(:isFish, true)
          @fishing << all
          #all.isFish = true
          #next
        elsif all.hiking != 9 && all.hiking > 5 && !all.isHike && @hiking.size < 90 && params[:activities][:hiking] == "1"
          all.update_attribute(:isHike, true)
          @hiking << all
          #all.isHike = true
          #next
        elsif all.pottery != 9 && all.pottery > 5 && !all.isPot && @pottery.size < 24 && params[:activities][:pottery] == "1"
          all.update_attribute(:isPot, true)
          @pottery << all
          #all.isPot = true
          #next
        elsif all.arts != 9 && all.arts > 5 && !all.isArt && @arts.size < 20 && params[:activities][:arts] == "1"
          all.update_attribute(:isArt, true)
          @arts << all
          #all.isArt = true
          #next
        elsif all.percussion != 9 && all.percussion > 5 && !all.isPer && @percussion.size < 10 && params[:activities][:percussion] == "1"
          all.update_attribute(:isPer, true)
          @percussion << all
          #all.isPer = true
          #next
        elsif all.crafts != 9 && all.crafts > 5 && !all.isCraft && @crafts.size < 16 && params[:activities][:crafts] == "1"
          all.update_attribute(:isCraft, true)
          @crafts << all
          #all.isCraft = true
          #next
        elsif all.games != 9 && all.games > 5 && !all.isGame && @games.size < 90 && params[:activities][:games] == "1"
          all.update_attribute(:isGame, true)
          @games << all
          #all.isGame = true
          #next
        elsif all.guitars != 9 && all.guitars > 5 && !all.isGuit && @guitars.size < 10 && params[:activities][:guitars] == "1"
          all.update_attribute(:isGuit, true)
          @guitars << all
          #next
          
        elsif all.choir != 9 && all.choir > 5 && !all.isChoir && @choir.size < 90 && params[:activities][:choir] == "1"
          all.update_attribute(:isChoir, true)
          @choir << all
          
        elsif all.writing != 9 && all.writing > 5 && !all.isWrite && @writing.size < 90 && params[:activities][:writing] == "1"
          all.update_attribute(:isWrite, true)
          @writing << all
          
        elsif all.weaving != 9 && all.weaving > 5 && !all.isWeave && @weaving.size < 90 && params[:activities][:weaving] == "1"
          all.update_attribute(:isWeave, true)
          @weaving << all
          
        elsif all.notdance != 9 && all.notdance > 5 && !all.isNotdance && @notdance.size < 90 && params[:activities][:notdance] == "1"
          all.update_attribute(:isNotdance, true)
          @notdance << all
          
        elsif all.painting != 9 && all.painting > 5 && !all.isPaint && @painting.size < 15 && params[:activities][:painting] == "1"
          all.update_attribute(:isPaint, true)
          @painting << all
          
        elsif all.sign != 9 && all.sign > 5 && !all.isSign && @sign.size < 90 && params[:activities][:sign] == "1"
          all.update_attribute(:isSign, true)
          @sign << all
          
        elsif all.spanish != 9 && all.spanish > 5 && !all.isSpan && @spanish.size < 90 && params[:activities][:spanish] == "1"
          all.update_attribute(:isSpan, true)
          @spanish << all
          
        elsif all.talking != 9 && all.talking > 5 && !all.isTalk && @talking.size < 90 && params[:activities][:talking] == "1"
          all.update_attribute(:isTalk, true)
          @talking << all
          
        else
          # The camper is added to the $un array, indicating an unassigned camper
          @un << all
        end
        
      end  
   
   elsif params[:activities][:slot] == "3"
   
    i = 3
      @all.each do |all|
        
        # Beginning of conditionals that determine where a camper gets put in the schedule
        if all.archery != 9 && all.archery <= i && !all.isArch && @archery.size < 16 && params[:activities][:archery] == "1"
          all.update_attribute(:isArch, true)
          @archery << all
          #all.isArch = true
          #next
          # instead of next, do else if so that the end of the thing can be used
        elsif all.riflery != 9 && all.riflery <= i && !all.isRif && @riflery.size < 16 && params[:activities][:riflery] == "1"
          all.update_attribute(:isRif, true)
          @riflery << all
          #all.isRif = true
          #next
        elsif all.canoeing != 9 && all.canoeing <= i && !all.isCan && @canoeing.size < 16 && params[:activities][:canoeing] == "1"
          all.update_attribute(:isCan, true)
          @canoeing << all
          #all.isCan = true
          #next
        elsif all.baking != 9 && all.baking <= i && !all.isBake && @baking.size < 10 && params[:activities][:baking] == "1"
          all.update_attribute(:isBake, true)
          @baking << all
          #all.isBake = true
          #next
        elsif all.camping != 9 && all.camping <= i && !all.isCamp && @camping.size < 24 && params[:activities][:camping] == "1"
          all.update_attribute(:isCamp, true)
          @camping << all
          #all.isCamp = true
          #next
        elsif all.rocks != 9 && all.rocks <= i && !all.isRock && @rocks.size < 12 && params[:activities][:rocks] == "1"
          all.update_attribute(:isRock, true)
          @rocks << all
          #all.isRock = true
          #next
        elsif all.fishing != 9 && all.fishing <= i && !all.isFish && @fishing.size < 10 && params[:activities][:fishing] == "1"
          all.update_attribute(:isFish, true)
          @fishing << all
          #all.isFish = true
          #next
        elsif all.hiking != 9 && all.hiking <= i && !all.isHike && @hiking.size < 90 && params[:activities][:hiking] == "1"
          all.update_attribute(:isHike, true)
          @hiking << all
          #all.isHike = true
          #next
        elsif all.pottery != 9 && all.pottery <= i && !all.isPot && @pottery.size < 24 && params[:activities][:pottery] == "1"
          all.update_attribute(:isPot, true)
          @pottery << all
          #all.isPot = true
          #next
        elsif all.arts != 9 && all.arts <= i && !all.isArt && @arts.size < 20 && params[:activities][:arts] == "1"
          all.update_attribute(:isArt, true)
          @arts << all
          #all.isArt = true
          #next
        elsif all.percussion != 9 && all.percussion <= i && !all.isPer && @percussion.size < 10 && params[:activities][:percussion] == "1"
          all.update_attribute(:isPer, true)
          @percussion << all
          #all.isPer = true
          #next
        elsif all.crafts != 9 && all.crafts <= i && !all.isCraft && @crafts.size < 16 && params[:activities][:crafts] == "1"
          all.update_attribute(:isCraft, true)
          @crafts << all
          #all.isCraft = true
          #next
        elsif all.games != 9 && all.games <= i && !all.isGame && @games.size < 90 && params[:activities][:games] == "1"
          all.update_attribute(:isGame, true)
          @games << all
          #all.isGame = true
          #next
        elsif all.guitars != 9 && all.guitars <= i && !all.isGuit && @guitars.size < 10 && params[:activities][:guitars] == "1"
          all.update_attribute(:isGuit, true)
          @guitars << all
          #next
          
        elsif all.choir != 9 && all.choir <= i && !all.isChoir && @choir.size < 90 && params[:activities][:choir] == "1"
          all.update_attribute(:isChoir, true)
          @choir << all
          
        elsif all.writing != 9 && all.writing <= i && !all.isWrite && @writing.size < 90 && params[:activities][:writing] == "1"
          all.update_attribute(:isWrite, true)
          @writing << all
          
        elsif all.weaving != 9 && all.weaving <= i && !all.isWeave && @weaving.size < 90 && params[:activities][:weaving] == "1"
          all.update_attribute(:isWeave, true)
          @weaving << all
          
        elsif all.notdance != 9 && all.notdance <= i && !all.isNotdance && @notdance.size < 90 && params[:activities][:notdance] == "1"
          all.update_attribute(:isNotdance, true)
          @notdance << all
          
        elsif all.painting != 9 && all.painting <= i && !all.isPaint && @painting.size < 15 && params[:activities][:painting] == "1"
          all.update_attribute(:isPaint, true)
          @painting << all
          
        elsif all.sign != 9 && all.sign <= i && !all.isSign && @sign.size < 90 && params[:activities][:sign] == "1"
          all.update_attribute(:isSign, true)
          @sign << all
          
        elsif all.spanish != 9 && all.spanish <= i && !all.isSpan && @spanish.size < 90 && params[:activities][:spanish] == "1"
          all.update_attribute(:isSpan, true)
          @spanish << all
          
        elsif all.talking != 9 && all.talking <= i && !all.isTalk && @talking.size < 90 && params[:activities][:talking] == "1"
          all.update_attribute(:isTalk, true)
          @talking << all
        
          # This next section will use the camper's optional activities if they could not get assigned on one of their main activities
          
        elsif all.archery != 9 && all.archery > 5 && !all.isArch && @archery.size < 16 && params[:activities][:archery] == "1"
          all.update_attribute(:isArch, true)
          @archery << all
          #all.isArch = true
          #next
          # instead of next, do else if so that the end of the thing can be used
        elsif all.riflery != 9 && all.riflery > 5 && !all.isRif && @riflery.size < 16 && params[:activities][:riflery] == "1"
          all.update_attribute(:isRif, true)
          @riflery << all
          #all.isRif = true
          #next
        elsif all.canoeing != 9 && all.canoeing > 5 && !all.isCan && @canoeing.size < 16 && params[:activities][:canoeing] == "1"
          all.update_attribute(:isCan, true)
          @canoeing << all
          #all.isCan = true
          #next
        elsif all.baking != 9 && all.baking > 5 && !all.isBake && @baking.size < 10 && params[:activities][:baking] == "1"
          all.update_attribute(:isBake, true)
          @baking << all
          #all.isBake = true
          #next
        elsif all.camping != 9 && all.camping > 5 && !all.isCamp && @camping.size < 24 && params[:activities][:camping] == "1"
          all.update_attribute(:isCamp, true)
          @camping << all
          #all.isCamp = true
          #next
        elsif all.rocks != 9 && all.rocks > 5 && !all.isRock && @rocks.size < 12 && params[:activities][:rocks] == "1"
          all.update_attribute(:isRock, true)
          @rocks << all
          #all.isRock = true
          #next
        elsif all.fishing != 9 && all.fishing > 5 && !all.isFish && @fishing.size < 10 && params[:activities][:fishing] == "1"
          all.update_attribute(:isFish, true)
          @fishing << all
          #all.isFish = true
          #next
        elsif all.hiking != 9 && all.hiking > 5 && !all.isHike && @hiking.size < 90 && params[:activities][:hiking] == "1"
          all.update_attribute(:isHike, true)
          @hiking << all
          #all.isHike = true
          #next
        elsif all.pottery != 9 && all.pottery > 5 && !all.isPot && @pottery.size < 24 && params[:activities][:pottery] == "1"
          all.update_attribute(:isPot, true)
          @pottery << all
          #all.isPot = true
          #next
        elsif all.arts != 9 && all.arts > 5 && !all.isArt && @arts.size < 20 && params[:activities][:arts] == "1"
          all.update_attribute(:isArt, true)
          @arts << all
          #all.isArt = true
          #next
        elsif all.percussion != 9 && all.percussion > 5 && !all.isPer && @percussion.size < 10 && params[:activities][:percussion] == "1"
          all.update_attribute(:isPer, true)
          @percussion << all
          #all.isPer = true
          #next
        elsif all.crafts != 9 && all.crafts > 5 && !all.isCraft && @crafts.size < 16 && params[:activities][:crafts] == "1"
          all.update_attribute(:isCraft, true)
          @crafts << all
          #all.isCraft = true
          #next
        elsif all.games != 9 && all.games > 5 && !all.isGame && @games.size < 90 && params[:activities][:games] == "1"
          all.update_attribute(:isGame, true)
          @games << all
          #all.isGame = true
          #next
        elsif all.guitars != 9 && all.guitars > 5 && !all.isGuit && @guitars.size < 10 && params[:activities][:guitars] == "1"
          all.update_attribute(:isGuit, true)
          @guitars << all
          #next
          
        elsif all.choir != 9 && all.choir > 5 && !all.isChoir && @choir.size < 90 && params[:activities][:choir] == "1"
          all.update_attribute(:isChoir, true)
          @choir << all
          
        elsif all.writing != 9 && all.writing > 5 && !all.isWrite && @writing.size < 90 && params[:activities][:writing] == "1"
          all.update_attribute(:isWrite, true)
          @writing << all
          
        elsif all.weaving != 9 && all.weaving > 5 && !all.isWeave && @weaving.size < 90 && params[:activities][:weaving] == "1"
          all.update_attribute(:isWeave, true)
          @weaving << all
          
        elsif all.notdance != 9 && all.notdance > 5 && !all.isNotdance && @notdance.size < 90 && params[:activities][:notdance] == "1"
          all.update_attribute(:isNotdance, true)
          @notdance << all
          
        elsif all.painting != 9 && all.painting > 5 && !all.isPaint && @painting.size < 15 && params[:activities][:painting] == "1"
          all.update_attribute(:isPaint, true)
          @painting << all
          
        elsif all.sign != 9 && all.sign > 5 && !all.isSign && @sign.size < 90 && params[:activities][:sign] == "1"
          all.update_attribute(:isSign, true)
          @sign << all
          
        elsif all.spanish != 9 && all.spanish > 5 && !all.isSpan && @spanish.size < 90 && params[:activities][:spanish] == "1"
          all.update_attribute(:isSpan, true)
          @spanish << all
          
        elsif all.talking != 9 && all.talking > 5 && !all.isTalk && @talking.size < 90 && params[:activities][:talking] == "1"
          all.update_attribute(:isTalk, true)
          @talking << all
          
        else
          # The camper is added to the $un array, indicating an unassigned camper
          @un << all
        end
        
      end  
   
   elsif params[:activities][:slot] == "4"
   
    i = 4
      @all.each do |all|
        
        # Beginning of conditionals that determine where a camper gets put in the schedule
        if all.archery != 9 && all.archery <= i && !all.isArch && @archery.size < 16 && params[:activities][:archery] == "1"
          all.update_attribute(:isArch, true)
          @archery << all
          #all.isArch = true
          #next
          # instead of next, do else if so that the end of the thing can be used
        elsif all.riflery != 9 && all.riflery <= i && !all.isRif && @riflery.size < 16 && params[:activities][:riflery] == "1"
          all.update_attribute(:isRif, true)
          @riflery << all
          #all.isRif = true
          #next
        elsif all.canoeing != 9 && all.canoeing <= i && !all.isCan && @canoeing.size < 16 && params[:activities][:canoeing] == "1"
          all.update_attribute(:isCan, true)
          @canoeing << all
          #all.isCan = true
          #next
        elsif all.baking != 9 && all.baking <= i && !all.isBake && @baking.size < 10 && params[:activities][:baking] == "1"
          all.update_attribute(:isBake, true)
          @baking << all
          #all.isBake = true
          #next
        elsif all.camping != 9 && all.camping <= i && !all.isCamp && @camping.size < 24 && params[:activities][:camping] == "1"
          all.update_attribute(:isCamp, true)
          @camping << all
          #all.isCamp = true
          #next
        elsif all.rocks != 9 && all.rocks <= i && !all.isRock && @rocks.size < 12 && params[:activities][:rocks] == "1"
          all.update_attribute(:isRock, true)
          @rocks << all
          #all.isRock = true
          #next
        elsif all.fishing != 9 && all.fishing <= i && !all.isFish && @fishing.size < 10 && params[:activities][:fishing] == "1"
          all.update_attribute(:isFish, true)
          @fishing << all
          #all.isFish = true
          #next
        elsif all.hiking != 9 && all.hiking <= i && !all.isHike && @hiking.size < 90 && params[:activities][:hiking] == "1"
          all.update_attribute(:isHike, true)
          @hiking << all
          #all.isHike = true
          #next
        elsif all.pottery != 9 && all.pottery <= i && !all.isPot && @pottery.size < 24 && params[:activities][:pottery] == "1"
          all.update_attribute(:isPot, true)
          @pottery << all
          #all.isPot = true
          #next
        elsif all.arts != 9 && all.arts <= i && !all.isArt && @arts.size < 20 && params[:activities][:arts] == "1"
          all.update_attribute(:isArt, true)
          @arts << all
          #all.isArt = true
          #next
        elsif all.percussion != 9 && all.percussion <= i && !all.isPer && @percussion.size < 10 && params[:activities][:percussion] == "1"
          all.update_attribute(:isPer, true)
          @percussion << all
          #all.isPer = true
          #next
        elsif all.crafts != 9 && all.crafts <= i && !all.isCraft && @crafts.size < 16 && params[:activities][:crafts] == "1"
          all.update_attribute(:isCraft, true)
          @crafts << all
          #all.isCraft = true
          #next
        elsif all.games != 9 && all.games <= i && !all.isGame && @games.size < 90 && params[:activities][:games] == "1"
          all.update_attribute(:isGame, true)
          @games << all
          #all.isGame = true
          #next
        elsif all.guitars != 9 && all.guitars <= i && !all.isGuit && @guitars.size < 10 && params[:activities][:guitars] == "1"
          all.update_attribute(:isGuit, true)
          @guitars << all
          #next
          
        elsif all.choir != 9 && all.choir <= i && !all.isChoir && @choir.size < 90 && params[:activities][:choir] == "1"
          all.update_attribute(:isChoir, true)
          @choir << all
          
        elsif all.writing != 9 && all.writing <= i && !all.isWrite && @writing.size < 90 && params[:activities][:writing] == "1"
          all.update_attribute(:isWrite, true)
          @writing << all
          
        elsif all.weaving != 9 && all.weaving <= i && !all.isWeave && @weaving.size < 90 && params[:activities][:weaving] == "1"
          all.update_attribute(:isWeave, true)
          @weaving << all
          
        elsif all.notdance != 9 && all.notdance <= i && !all.isNotdance && @notdance.size < 90 && params[:activities][:notdance] == "1"
          all.update_attribute(:isNotdance, true)
          @notdance << all
          
        elsif all.painting != 9 && all.painting <= i && !all.isPaint && @painting.size < 15 && params[:activities][:painting] == "1"
          all.update_attribute(:isPaint, true)
          @painting << all
          
        elsif all.sign != 9 && all.sign <= i && !all.isSign && @sign.size < 90 && params[:activities][:sign] == "1"
          all.update_attribute(:isSign, true)
          @sign << all
          
        elsif all.spanish != 9 && all.spanish <= i && !all.isSpan && @spanish.size < 90 && params[:activities][:spanish] == "1"
          all.update_attribute(:isSpan, true)
          @spanish << all
          
        elsif all.talking != 9 && all.talking <= i && !all.isTalk && @talking.size < 90 && params[:activities][:talking] == "1"
          all.update_attribute(:isTalk, true)
          @talking << all
        
          # This next section will use the camper's optional activities if they could not get assigned on one of their main activities
          
        elsif all.archery != 9 && all.archery > 5 && !all.isArch && @archery.size < 16 && params[:activities][:archery] == "1"
          all.update_attribute(:isArch, true)
          @archery << all
          #all.isArch = true
          #next
          # instead of next, do else if so that the end of the thing can be used
        elsif all.riflery != 9 && all.riflery > 5 && !all.isRif && @riflery.size < 16 && params[:activities][:riflery] == "1"
          all.update_attribute(:isRif, true)
          @riflery << all
          #all.isRif = true
          #next
        elsif all.canoeing != 9 && all.canoeing > 5 && !all.isCan && @canoeing.size < 16 && params[:activities][:canoeing] == "1"
          all.update_attribute(:isCan, true)
          @canoeing << all
          #all.isCan = true
          #next
        elsif all.baking != 9 && all.baking > 5 && !all.isBake && @baking.size < 10 && params[:activities][:baking] == "1"
          all.update_attribute(:isBake, true)
          @baking << all
          #all.isBake = true
          #next
        elsif all.camping != 9 && all.camping > 5 && !all.isCamp && @camping.size < 24 && params[:activities][:camping] == "1"
          all.update_attribute(:isCamp, true)
          @camping << all
          #all.isCamp = true
          #next
        elsif all.rocks != 9 && all.rocks > 5 && !all.isRock && @rocks.size < 12 && params[:activities][:rocks] == "1"
          all.update_attribute(:isRock, true)
          @rocks << all
          #all.isRock = true
          #next
        elsif all.fishing != 9 && all.fishing > 5 && !all.isFish && @fishing.size < 10 && params[:activities][:fishing] == "1"
          all.update_attribute(:isFish, true)
          @fishing << all
          #all.isFish = true
          #next
        elsif all.hiking != 9 && all.hiking > 5 && !all.isHike && @hiking.size < 90 && params[:activities][:hiking] == "1"
          all.update_attribute(:isHike, true)
          @hiking << all
          #all.isHike = true
          #next
        elsif all.pottery != 9 && all.pottery > 5 && !all.isPot && @pottery.size < 24 && params[:activities][:pottery] == "1"
          all.update_attribute(:isPot, true)
          @pottery << all
          #all.isPot = true
          #next
        elsif all.arts != 9 && all.arts > 5 && !all.isArt && @arts.size < 20 && params[:activities][:arts] == "1"
          all.update_attribute(:isArt, true)
          @arts << all
          #all.isArt = true
          #next
        elsif all.percussion != 9 && all.percussion > 5 && !all.isPer && @percussion.size < 10 && params[:activities][:percussion] == "1"
          all.update_attribute(:isPer, true)
          @percussion << all
          #all.isPer = true
          #next
        elsif all.crafts != 9 && all.crafts > 5 && !all.isCraft && @crafts.size < 16 && params[:activities][:crafts] == "1"
          all.update_attribute(:isCraft, true)
          @crafts << all
          #all.isCraft = true
          #next
        elsif all.games != 9 && all.games > 5 && !all.isGame && @games.size < 90 && params[:activities][:games] == "1"
          all.update_attribute(:isGame, true)
          @games << all
          #all.isGame = true
          #next
        elsif all.guitars != 9 && all.guitars > 5 && !all.isGuit && @guitars.size < 10 && params[:activities][:guitars] == "1"
          all.update_attribute(:isGuit, true)
          @guitars << all
          #next
          
        elsif all.choir != 9 && all.choir > 5 && !all.isChoir && @choir.size < 90 && params[:activities][:choir] == "1"
          all.update_attribute(:isChoir, true)
          @choir << all
          
        elsif all.writing != 9 && all.writing > 5 && !all.isWrite && @writing.size < 90 && params[:activities][:writing] == "1"
          all.update_attribute(:isWrite, true)
          @writing << all
          
        elsif all.weaving != 9 && all.weaving > 5 && !all.isWeave && @weaving.size < 90 && params[:activities][:weaving] == "1"
          all.update_attribute(:isWeave, true)
          @weaving << all
          
        elsif all.notdance != 9 && all.notdance > 5 && !all.isNotdance && @notdance.size < 90 && params[:activities][:notdance] == "1"
          all.update_attribute(:isNotdance, true)
          @notdance << all
          
        elsif all.painting != 9 && all.painting > 5 && !all.isPaint && @painting.size < 15 && params[:activities][:painting] == "1"
          all.update_attribute(:isPaint, true)
          @painting << all
          
        elsif all.sign != 9 && all.sign > 5 && !all.isSign && @sign.size < 90 && params[:activities][:sign] == "1"
          all.update_attribute(:isSign, true)
          @sign << all
          
        elsif all.spanish != 9 && all.spanish > 5 && !all.isSpan && @spanish.size < 90 && params[:activities][:spanish] == "1"
          all.update_attribute(:isSpan, true)
          @spanish << all
          
        elsif all.talking != 9 && all.talking > 5 && !all.isTalk && @talking.size < 90 && params[:activities][:talking] == "1"
          all.update_attribute(:isTalk, true)
          @talking << all
          
        else
          # The camper is added to the $un array, indicating an unassigned camper
          @un << all
        end
        
      end  
   
   elsif params[:activities][:slot] == "5"
   
    i = 5
      @all.each do |all|
        
        # Beginning of conditionals that determine where a camper gets put in the schedule
        if all.archery != 9 && all.archery <= i && !all.isArch && @archery.size < 16 && params[:activities][:archery] == "1"
          all.update_attribute(:isArch, true)
          @archery << all
          #all.isArch = true
          #next
          # instead of next, do else if so that the end of the thing can be used
        elsif all.riflery != 9 && all.riflery <= i && !all.isRif && @riflery.size < 16 && params[:activities][:riflery] == "1"
          all.update_attribute(:isRif, true)
          @riflery << all
          #all.isRif = true
          #next
        elsif all.canoeing != 9 && all.canoeing <= i && !all.isCan && @canoeing.size < 16 && params[:activities][:canoeing] == "1"
          all.update_attribute(:isCan, true)
          @canoeing << all
          #all.isCan = true
          #next
        elsif all.baking != 9 && all.baking <= i && !all.isBake && @baking.size < 10 && params[:activities][:baking] == "1"
          all.update_attribute(:isBake, true)
          @baking << all
          #all.isBake = true
          #next
        elsif all.camping != 9 && all.camping <= i && !all.isCamp && @camping.size < 24 && params[:activities][:camping] == "1"
          all.update_attribute(:isCamp, true)
          @camping << all
          #all.isCamp = true
          #next
        elsif all.rocks != 9 && all.rocks <= i && !all.isRock && @rocks.size < 12 && params[:activities][:rocks] == "1"
          all.update_attribute(:isRock, true)
          @rocks << all
          #all.isRock = true
          #next
        elsif all.fishing != 9 && all.fishing <= i && !all.isFish && @fishing.size < 10 && params[:activities][:fishing] == "1"
          all.update_attribute(:isFish, true)
          @fishing << all
          #all.isFish = true
          #next
        elsif all.hiking != 9 && all.hiking <= i && !all.isHike && @hiking.size < 90 && params[:activities][:hiking] == "1"
          all.update_attribute(:isHike, true)
          @hiking << all
          #all.isHike = true
          #next
        elsif all.pottery != 9 && all.pottery <= i && !all.isPot && @pottery.size < 24 && params[:activities][:pottery] == "1"
          all.update_attribute(:isPot, true)
          @pottery << all
          #all.isPot = true
          #next
        elsif all.arts != 9 && all.arts <= i && !all.isArt && @arts.size < 20 && params[:activities][:arts] == "1"
          all.update_attribute(:isArt, true)
          @arts << all
          #all.isArt = true
          #next
        elsif all.percussion != 9 && all.percussion <= i && !all.isPer && @percussion.size < 10 && params[:activities][:percussion] == "1"
          all.update_attribute(:isPer, true)
          @percussion << all
          #all.isPer = true
          #next
        elsif all.crafts != 9 && all.crafts <= i && !all.isCraft && @crafts.size < 16 && params[:activities][:crafts] == "1"
          all.update_attribute(:isCraft, true)
          @crafts << all
          #all.isCraft = true
          #next
        elsif all.games != 9 && all.games <= i && !all.isGame && @games.size < 90 && params[:activities][:games] == "1"
          all.update_attribute(:isGame, true)
          @games << all
          #all.isGame = true
          #next
        elsif all.guitars != 9 && all.guitars <= i && !all.isGuit && @guitars.size < 10 && params[:activities][:guitars] == "1"
          all.update_attribute(:isGuit, true)
          @guitars << all
          #next
        
        elsif all.choir != 9 && all.choir <= i && !all.isChoir && @choir.size < 90 && params[:activities][:choir] == "1"
          all.update_attribute(:isChoir, true)
          @choir << all
          
        elsif all.writing != 9 && all.writing <= i && !all.isWrite && @writing.size < 90 && params[:activities][:writing] == "1"
          all.update_attribute(:isWrite, true)
          @writing << all
          
        elsif all.weaving != 9 && all.weaving <= i && !all.isWeave && @weaving.size < 90 && params[:activities][:weaving] == "1"
          all.update_attribute(:isWeave, true)
          @weaving << all
          
        elsif all.notdance != 9 && all.notdance <= i && !all.isNotdance && @notdance.size < 90 && params[:activities][:notdance] == "1"
          all.update_attribute(:isNotdance, true)
          @notdance << all
          
        elsif all.painting != 9 && all.painting <= i && !all.isPaint && @painting.size < 15 && params[:activities][:painting] == "1"
          all.update_attribute(:isPaint, true)
          @painting << all
          
        elsif all.sign != 9 && all.sign <= i && !all.isSign && @sign.size < 90 && params[:activities][:sign] == "1"
          all.update_attribute(:isSign, true)
          @sign << all
          
        elsif all.spanish != 9 && all.spanish <= i && !all.isSpan && @spanish.size < 90 && params[:activities][:spanish] == "1"
          all.update_attribute(:isSpan, true)
          @spanish << all
          
        elsif all.talking != 9 && all.talking <= i && !all.isTalk && @talking.size < 90 && params[:activities][:talking] == "1"
          all.update_attribute(:isTalk, true)
          @talking << all
          
          # This next section will use the camper's optional activities if they could not get assigned on one of their main activities
          
        elsif all.archery != 9 && all.archery > 5 && !all.isArch && @archery.size < 16 && params[:activities][:archery] == "1"
          all.update_attribute(:isArch, true)
          @archery << all
          #all.isArch = true
          #next
          # instead of next, do else if so that the end of the thing can be used
        elsif all.riflery != 9 && all.riflery > 5 && !all.isRif && @riflery.size < 16 && params[:activities][:riflery] == "1"
          all.update_attribute(:isRif, true)
          @riflery << all
          #all.isRif = true
          #next
        elsif all.canoeing != 9 && all.canoeing > 5 && !all.isCan && @canoeing.size < 16 && params[:activities][:canoeing] == "1"
          all.update_attribute(:isCan, true)
          @canoeing << all
          #all.isCan = true
          #next
        elsif all.baking != 9 && all.baking > 5 && !all.isBake && @baking.size < 10 && params[:activities][:baking] == "1"
          all.update_attribute(:isBake, true)
          @baking << all
          #all.isBake = true
          #next
        elsif all.camping != 9 && all.camping > 5 && !all.isCamp && @camping.size < 24 && params[:activities][:camping] == "1"
          all.update_attribute(:isCamp, true)
          @camping << all
          #all.isCamp = true
          #next
        elsif all.rocks != 9 && all.rocks > 5 && !all.isRock && @rocks.size < 12 && params[:activities][:rocks] == "1"
          all.update_attribute(:isRock, true)
          @rocks << all
          #all.isRock = true
          #next
        elsif all.fishing != 9 && all.fishing > 5 && !all.isFish && @fishing.size < 10 && params[:activities][:fishing] == "1"
          all.update_attribute(:isFish, true)
          @fishing << all
          #all.isFish = true
          #next
        elsif all.hiking != 9 && all.hiking > 5 && !all.isHike && @hiking.size < 90 && params[:activities][:hiking] == "1"
          all.update_attribute(:isHike, true)
          @hiking << all
          #all.isHike = true
          #next
        elsif all.pottery != 9 && all.pottery > 5 && !all.isPot && @pottery.size < 24 && params[:activities][:pottery] == "1"
          all.update_attribute(:isPot, true)
          @pottery << all
          #all.isPot = true
          #next
        elsif all.arts != 9 && all.arts > 5 && !all.isArt && @arts.size < 20 && params[:activities][:arts] == "1"
          all.update_attribute(:isArt, true)
          @arts << all
          #all.isArt = true
          #next
        elsif all.percussion != 9 && all.percussion > 5 && !all.isPer && @percussion.size < 10 && params[:activities][:percussion] == "1"
          all.update_attribute(:isPer, true)
          @percussion << all
          #all.isPer = true
          #next
        elsif all.crafts != 9 && all.crafts > 5 && !all.isCraft && @crafts.size < 16 && params[:activities][:crafts] == "1"
          all.update_attribute(:isCraft, true)
          @crafts << all
          #all.isCraft = true
          #next
        elsif all.games != 9 && all.games > 5 && !all.isGame && @games.size < 90 && params[:activities][:games] == "1"
          all.update_attribute(:isGame, true)
          @games << all
          #all.isGame = true
          #next
        elsif all.guitars != 9 && all.guitars > 5 && !all.isGuit && @guitars.size < 10 && params[:activities][:guitars] == "1"
          all.update_attribute(:isGuit, true)
          @guitars << all
          #next
          
        elsif all.choir != 9 && all.choir > 5 && !all.isChoir && @choir.size < 90 && params[:activities][:choir] == "1"
          all.update_attribute(:isChoir, true)
          @choir << all
          
        elsif all.writing != 9 && all.writing > 5 && !all.isWrite && @writing.size < 90 && params[:activities][:writing] == "1"
          all.update_attribute(:isWrite, true)
          @writing << all
          
        elsif all.weaving != 9 && all.weaving > 5 && !all.isWeave && @weaving.size < 90 && params[:activities][:weaving] == "1"
          all.update_attribute(:isWeave, true)
          @weaving << all
          
        elsif all.notdance != 9 && all.notdance > 5 && !all.isNotdance && @notdance.size < 90 && params[:activities][:notdance] == "1"
          all.update_attribute(:isNotdance, true)
          @notdance << all
          
        elsif all.painting != 9 && all.painting > 5 && !all.isPaint && @painting.size < 15 && params[:activities][:painting] == "1"
          all.update_attribute(:isPaint, true)
          @painting << all
          
        elsif all.sign != 9 && all.sign > 5 && !all.isSign && @sign.size < 90 && params[:activities][:sign] == "1"
          all.update_attribute(:isSign, true)
          @sign << all
          
        elsif all.spanish != 9 && all.spanish > 5 && !all.isSpan && @spanish.size < 90 && params[:activities][:spanish] == "1"
          all.update_attribute(:isSpan, true)
          @spanish << all
          
        elsif all.talking != 9 && all.talking > 5 && !all.isTalk && @talking.size < 90 && params[:activities][:talking] == "1"
          all.update_attribute(:isTalk, true)
          @talking << all
          
        else
          # The camper is added to the $un array, indicating an unassigned camper
          @un << all
        end
        
      end  
   
   else
     flash[:danger] = "The time slot was not 1-5, it was \"#{params[:activities][:slot]}\""
     redirect_to trial_path
   end
   
   if params[:activities] != nil
     $archery = @archery
     $riflery = @riflery
     $canoeing = @canoeing
     $baking = @baking
     $camping = @camping
     $rocks = @rocks
     $fishing = @fishing
     $hiking = @hiking
     $pottery = @pottery
     $arts = @arts
     $percussion = @percussion
     $crafts = @crafts
     $games = @games
     $guitars = @guitars
     $un = @un
     $slot = params[:activities][:slot]
     
     $choir = @choir
     $writing = @writing
     $weaving = @weaving
     $notdance = @notdance
     $painting = @painting
     $sign = @sign
     $spanish = @spanish
     $talking = @talking
     
     $isArch = params[:activities][:archery]
     $isRif = params[:activities][:riflery]
     $isCan = params[:activities][:canoeing]
     $isBake = params[:activities][:baking]
     $isCamp = params[:activities][:camping]
     $isRock = params[:activities][:rocks]
     $isFish = params[:activities][:fishing]
     $isHike = params[:activities][:hiking]
     $isPot = params[:activities][:pottery]
     $isArt = params[:activities][:arts]
     $isPer = params[:activities][:percussion]
     $isCraft = params[:activities][:crafts]
     $isGame = params[:activities][:games]
     $isGuit = params[:activities][:guitars]
     
     $isChoir = params[:activities][:choir]
     $isWrite = params[:activities][:writing]
     $isWeave = params[:activities][:weaving]
     $isNotdance = params[:activities][:notdance]
     $isPaint = params[:activities][:painting]
     $isSign = params[:activities][:sign]
     $isSpan = params[:activities][:spanish]
     $isTalk = params[:activities][:talking]
     
   end
   
 end

=end

# the oldest scheduler code
=begin
  def schedule
    if !logged_in?
      redirect_to login_path
      flash[:danger] = 'Please Login to use Admin Functions'
    end
    
    if !Camper.any?
      flash[:warning] = "There are no campers to schedule"
      redirect_to admin_path
    end
    
    @campers = Camper.reorder("name ASC").paginate(per_page: 10, page: params[:page])
    @all = Camper.all
    
    one = @all[0]
    two = @all[1]

    if (one && (one.isArch || one.isRif || one.isCan || one.isBake || one.isCamp || one.isRock || one.isFish || one.isHike || 
        one.isPot || one.isArt || one.isPer || one.isCraft || one.isGame || one.isGuit))
      # if the first camper has been scheduled then the rest should have been so skip the scheduling bit (since it would break otherwise) and just get the variables
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
    elsif (two && (two.isArch || two.isRif || two.isCan || two.isBake || two.isCamp || two.isRock || two.isFish || two.isHike || 
            two.isPot || two.isArt || two.isPer || two.isCraft || two.isGame || two.isGuit))
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
    
    
    for i in 1..5
      @all.each do |all|
        
        # Beginning of conditionals that determine where a camper gets put in the schedule
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
        elsif all.baking != 9 && all.baking <= i && !all.isBake && $baking.size < i * 10 && i != 4
          all.update_attribute(:isBake, true)
          $baking << all
          #all.isBake = true
          #next
        elsif all.camping != 9 && all.camping <= i && !all.isCamp && $camping.size < i * 24 && i == 4
          all.update_attribute(:isCamp, true)
          $camping << all
          #all.isCamp = true
          #next
        elsif all.rocks != 9 && all.rocks <= i && !all.isRock && $rocks.size < i * 12 && (i == 2 || i == 4)
          all.update_attribute(:isRock, true)
          $rocks << all
          #all.isRock = true
          #next
        elsif all.fishing != 9 && all.fishing <= i && !all.isFish && $fishing.size < i * 10
          all.update_attribute(:isFish, true)
          $fishing << all
          #all.isFish = true
          #next
        elsif all.hiking != 9 && all.hiking <= i && !all.isHike && $hiking.size < i * 90 && i != 1
          all.update_attribute(:isHike, true)
          $hiking << all
          #all.isHike = true
          #next
        elsif all.pottery != 9 && all.pottery <= i && !all.isPot && $pottery.size < i * 24
          all.update_attribute(:isPot, true)
          $pottery << all
          #all.isPot = true
          #next
        elsif all.arts != 9 && all.arts <= i && !all.isArt && $arts.size < i * 90 && i != 4
          all.update_attribute(:isArt, true)
          $arts << all
          #all.isArt = true
          #next
        elsif all.percussion != 9 && all.percussion <= i && !all.isPer && $percussion.size < i * 10 && (i == 1 || i == 3)
          all.update_attribute(:isPer, true)
          $percussion << all
          #all.isPer = true
          #next
        elsif all.crafts != 9 && all.crafts <= i && !all.isCraft && $crafts.size < i * 16 && i != 2 && i != 4
          all.update_attribute(:isCraft, true)
          $crafts << all
          #all.isCraft = true
          #next
        elsif all.games != 9 && all.games <= i && !all.isGame && $games.size < i * 90 && i != 3
          all.update_attribute(:isGame, true)
          $games << all
          #all.isGame = true
          #next
        elsif all.guitars != 9 && all.guitars <= i && !all.isGuit && $guitars.size < i * 10 && (i == 1 || i == 3)
          all.update_attribute(:isGuit, true)
          $guitars << all
          #next
          
          # This next section will use the camper's optional activities if they could not get assigned on one of their main activities
          
        elsif all.archery != 9 && all.archery > 5 && !all.isArch && $archery.size < i * 16
          all.update_attribute(:isArch, true)
          $archery << all
          #all.isArch = true
          #next
          # instead of next, do else if so that the end of the thing can be used
        elsif all.riflery != 9 && all.riflery > 5 && !all.isRif && $riflery.size < i * 16
          all.update_attribute(:isRif, true)
          $riflery << all
          #all.isRif = true
          #next
        elsif all.canoeing != 9 && all.canoeing > 5 && !all.isCan && $canoeing.size < i * 16
          all.update_attribute(:isCan, true)
          $canoeing << all
          #all.isCan = true
          #next
        elsif all.baking != 9 && all.baking > 5 && !all.isBake && $baking.size < i * 10 && i != 4
          all.update_attribute(:isBake, true)
          $baking << all
          #all.isBake = true
          #next
        elsif all.camping != 9 && all.camping > 5 && !all.isCamp && $camping.size < i * 24 && i == 4
          all.update_attribute(:isCamp, true)
          $camping << all
          #all.isCamp = true
          #next
        elsif all.rocks != 9 && all.rocks > 5 && !all.isRock && $rocks.size < i * 12 && (i == 2 || i == 4)
          all.update_attribute(:isRock, true)
          $rocks << all
          #all.isRock = true
          #next
        elsif all.fishing != 9 && all.fishing > 5 && !all.isFish && $fishing.size < i * 10
          all.update_attribute(:isFish, true)
          $fishing << all
          #all.isFish = true
          #next
        elsif all.hiking != 9 && all.hiking > 5 && !all.isHike && $hiking.size < i * 90 && i != 1
          all.update_attribute(:isHike, true)
          $hiking << all
          #all.isHike = true
          #next
        elsif all.pottery != 9 && all.pottery > 5 && !all.isPot && $pottery.size < i * 24
          all.update_attribute(:isPot, true)
          $pottery << all
          #all.isPot = true
          #next
        elsif all.arts != 9 && all.arts > 5 && !all.isArt && $arts.size < i * 90 && i != 4
          all.update_attribute(:isArt, true)
          $arts << all
          #all.isArt = true
          #next
        elsif all.percussion != 9 && all.percussion > 5 && !all.isPer && $percussion.size < i * 10 && (i == 1 || i == 3)
          all.update_attribute(:isPer, true)
          $percussion << all
          #all.isPer = true
          #next
        elsif all.crafts != 9 && all.crafts > 5 && !all.isCraft && $crafts.size < i * 16 && i != 2 && i != 4
          all.update_attribute(:isCraft, true)
          $crafts << all
          #all.isCraft = true
          #next
        elsif all.games != 9 && all.games > 5 && !all.isGame && $games.size < i * 90 && i != 3
          all.update_attribute(:isGame, true)
          $games << all
          #all.isGame = true
          #next
        elsif all.guitars != 9 && all.guitars > 5 && !all.isGuit && $guitars.size < i * 10 && (i == 1 || i == 3)
          all.update_attribute(:isGuit, true)
          $guitars << all
          #next
        else
          # The camper is added to the $un array, indicating an unassigned camper
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
=end

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
    @all = Camper.all
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
  
  def better
    # get the things from act_rec and show
    @archery = Archery.first.list
    @riflery = Riflery.first.list
    @canoeing = Canoeing.first.list
    @baking = Baking.first.list
    @camping = Camping.first.list
    @rocks = Rock.first.list
    @fishing = Fishing.first.list
    @hiking = Hiking.first.list
    @pottery = Pottery.first.list
    @arts = Art.first.list
    @percussion = Percussion.first.list
    @crafts = Craft.first.list
    @games = Game.first.list
    @guitars = Guitar.first.list
    @un = Un.first.list
    
    @choir = Choir.first.list
    @writing = Writing.first.list
    @weaving = Weaving.first.list
    @notdance = Notdance.first.list
    @painting = Painting.first.list
    @sign = Sign.first.list
    @spanish = Spanish.first.list
    @talking = Talking.first.list
    
  end
  
  def doit
   # ok so here is where the magic happens
   # i need to make all of this change to act_rec objects and hope it works (it did)
   # when making a new schedule it should delete the current list of the activities (it does)
   # possibly make more act_rec objs to track the open items (I did, it works)

   @all = Camper.all
   
   Archery.first.update_attribute(:list, ["init"])
   Riflery.first.update_attribute(:list, ["init"])
   Canoeing.first.update_attribute(:list, ["init"])
   Baking.first.update_attribute(:list, ["init"])
   Camping.first.update_attribute(:list, ["init"])
   Rock.first.update_attribute(:list, ["init"])
   Fishing.first.update_attribute(:list, ["init"])
   Hiking.first.update_attribute(:list, ["init"])
   Pottery.first.update_attribute(:list, ["init"])
   Art.first.update_attribute(:list, ["init"])
   Percussion.first.update_attribute(:list, ["init"])
   Craft.first.update_attribute(:list, ["init"])
   Game.first.update_attribute(:list, ["init"])
   Guitar.first.update_attribute(:list, ["init"])
   Un.first.update_attribute(:list, ["init"])
   Choir.first.update_attribute(:list, ["init"])
   Writing.first.update_attribute(:list, ["init"])
   Weaving.first.update_attribute(:list, ["init"])
   Notdance.first.update_attribute(:list, ["init"])
   Painting.first.update_attribute(:list, ["init"])
   Sign.first.update_attribute(:list, ["init"])
   Spanish.first.update_attribute(:list, ["init"])
   Talking.first.update_attribute(:list, ["init"])
   
   Un.first.update_attribute(:list, ["init"])
   
   # Everything is on by default
   Schedule.first.update_attributes(slot: 0, isArch: true, isRif: true, isCan: true, isBake: true, isCamp: true, isRock: true, 
                                    isFish: true, isHike: true, isPot: true, isArt: true, isPer: true, isCraft: true, isGame: true,
                                    isGuit: true, isChoir: true, isWrite: true, isWeave: true, isNotdance: true, isPaint: true, 
                                    isSign: true, isSpan: true, isTalk: true)
   

   @archery = Array.new
   @riflery = Array.new
   @canoeing = Array.new
   @baking = Array.new
   @camping = Array.new
   @rocks = Array.new
   @fishing = Array.new
   @hiking = Array.new
   @pottery = Array.new
   @arts = Array.new
   @percussion = Array.new
   @crafts = Array.new
   @games = Array.new
   @guitars = Array.new
   @un = Array.new
   
   @choir = Array.new
   @writing = Array.new
   @weaving = Array.new
   @notdance = Array.new
   @painting = Array.new
   @sign = Array.new
   @spanish = Array.new
   @talking = Array.new
     

   if !params[:activities] || params[:activities] == "" || params[:activities] == nil
     flash[:warning] = "Something went wrong (at line 2152), nothing was scheduled. Please try again and contact Matthew at mdbuchanan0@gmail.com about this issue"
     redirect_to admin_path and return
   elsif params[:activities][:slot] == "1"
     i = 1
      @all.each do |all|
        
        # Beginning of conditionals that determine where a camper gets put in the schedule
        if all.archery != 9 && all.archery <= i && !all.isArch && @archery.size < 16 && params[:activities][:archery] == "1"
          all.update_attribute(:isArch, true)
          @archery << all.name
          #all.isArch = true
          #next
          # instead of next, do elsif so that the end of the thing can be used
        elsif all.riflery != 9 && all.riflery <= i && !all.isRif && @riflery.size < 16 && params[:activities][:riflery] == "1"
          all.update_attribute(:isRif, true)
          @riflery << all.name
          #all.isRif = true
          #next
        elsif all.canoeing != 9 && all.canoeing <= i && !all.isCan && @canoeing.size < 16 && params[:activities][:canoeing] == "1"
          all.update_attribute(:isCan, true)
          @canoeing << all.name
          #all.isCan = true
          #next
        elsif all.baking != 9 && all.baking <= i && !all.isBake && @baking.size < 15 && params[:activities][:baking] == "1"
          all.update_attribute(:isBake, true)
          @baking << all.name
          #all.isBake = true
          #next
        elsif all.camping != 9 && all.camping <= i && !all.isCamp && @camping.size < 24 && params[:activities][:camping] == "1"
          all.update_attribute(:isCamp, true)
          @camping << all.name
          #all.isCamp = true
          #next
        elsif all.rocks != 9 && all.rocks <= i && all.grade > 4 && !all.isRock && @rocks.size < 12 && params[:activities][:rocks] == "1"
          all.update_attribute(:isRock, true)
          @rocks << all.name
          #all.isRock = true
          #next
        elsif all.fishing != 9 && all.fishing <= i && !all.isFish && @fishing.size < 10 && params[:activities][:fishing] == "1"
          all.update_attribute(:isFish, true)
          @fishing << all.name
          #all.isFish = true
          #next
        elsif all.hiking != 9 && all.hiking <= i && !all.isHike && @hiking.size < 90 && params[:activities][:hiking] == "1"
          all.update_attribute(:isHike, true)
          @hiking << all.name
          #all.isHike = true
          #next
        elsif all.pottery != 9 && all.pottery <= i && !all.isPot && @pottery.size < 24 && params[:activities][:pottery] == "1"
          all.update_attribute(:isPot, true)
          @pottery << all.name
          #all.isPot = true
          #next
        elsif all.arts != 9 && all.arts <= i && !all.isArt && @arts.size < 20 && params[:activities][:arts] == "1"
          all.update_attribute(:isArt, true)
          @arts << all.name
          #all.isArt = true
          #next
        elsif all.percussion != 9 && all.percussion <= i && !all.isPer && @percussion.size < 10 && params[:activities][:percussion] == "1"
          all.update_attribute(:isPer, true)
          @percussion << all.name
          #all.isPer = true
          #next
        elsif all.crafts != 9 && all.crafts <= i && !all.isCraft && @crafts.size < 16 && params[:activities][:crafts] == "1"
          all.update_attribute(:isCraft, true)
          @crafts << all.name
          #all.isCraft = true
          #next
        elsif all.games != 9 && all.games <= i && !all.isGame && @games.size < 90 && params[:activities][:games] == "1"
          all.update_attribute(:isGame, true)
          @games << all.name
          #all.isGame = true
          #next
        elsif all.guitars != 9 && all.guitars <= i && !all.isGuit && @guitars.size < 10 && params[:activities][:guitars] == "1"
          all.update_attribute(:isGuit, true)
          @guitars << all.name
          #next
          
        elsif all.choir != 9 && all.choir <= i && !all.isChoir && @choir.size < 90 && params[:activities][:choir] == "1"
          all.update_attribute(:isChoir, true)
          @choir << all.name
          
        elsif all.writing != 9 && all.writing <= i && !all.isWrite && @writing.size < 90 && params[:activities][:writing] == "1"
          all.update_attribute(:isWrite, true)
          @writing << all.name
          
        elsif all.weaving != 9 && all.weaving <= i && !all.isWeave && @weaving.size < 90 && params[:activities][:weaving] == "1"
          all.update_attribute(:isWeave, true)
          @weaving << all.name
          
        elsif all.notdance != 9 && all.notdance <= i && !all.isNotdance && @notdance.size < 90 && params[:activities][:notdance] == "1"
          all.update_attribute(:isNotdance, true)
          @notdance << all.name
          
        elsif all.painting != 9 && all.painting <= i && !all.isPaint && @painting.size < 15 && params[:activities][:painting] == "1"
          all.update_attribute(:isPaint, true)
          @painting << all.name
          
        elsif all.sign != 9 && all.sign <= i && !all.isSign && @sign.size < 90 && params[:activities][:sign] == "1"
          all.update_attribute(:isSign, true)
          @sign << all.name
          
        elsif all.spanish != 9 && all.spanish <= i && !all.isSpan && @spanish.size < 90 && params[:activities][:spanish] == "1"
          all.update_attribute(:isSpan, true)
          @spanish << all.name
          
        elsif all.talking != 9 && all.talking <= i && !all.isTalk && @talking.size < 90 && params[:activities][:talking] == "1"
          all.update_attribute(:isTalk, true)
          @talking << all.name
          
          # This next section will use the camper's optional activities if they could not get assigned on one of their main activities
          
        elsif all.archery != 9 && all.archery > 3 && all.archery < 6 && !all.isArch && @archery.size < 16 && params[:activities][:archery] == "1"
          all.update_attribute(:isArch, true)
          @archery << all.name
          #all.isArch = true
          #next
          # instead of next, do else if so that the end of the thing can be used
        elsif all.riflery != 9 && all.riflery > 3 && all.riflery < 6 && !all.isRif && @riflery.size < 16 && params[:activities][:riflery] == "1"
          all.update_attribute(:isRif, true)
          @riflery << all.name
          #all.isRif = true
          #next
        elsif all.canoeing != 9 && all.canoeing > 3 && all.canoeing < 6 && !all.isCan && @canoeing.size < 16 && params[:activities][:canoeing] == "1"
          all.update_attribute(:isCan, true)
          @canoeing << all.name
          #all.isCan = true
          #next
        elsif all.baking != 9 && all.baking > 3 && all.baking < 6 && !all.isBake && @baking.size < 15 && params[:activities][:baking] == "1"
          all.update_attribute(:isBake, true)
          @baking << all.name
          #all.isBake = true
          #next
        elsif all.camping != 9 && all.camping > 3 && all.camping < 6 && !all.isCamp && @camping.size < 24 && params[:activities][:camping] == "1"
          all.update_attribute(:isCamp, true)
          @camping << all.name
          #all.isCamp = true
          #next
        elsif all.rocks != 9 && all.rocks > 3 && all.grade > 4 && all.rocks < 6 && !all.isRock && @rocks.size < 12 && params[:activities][:rocks] == "1"
          all.update_attribute(:isRock, true)
          @rocks << all.name
          #all.isRock = true
          #next
        elsif all.fishing != 9 && all.fishing > 3 && all.fishing < 6 && !all.isFish && @fishing.size < 10 && params[:activities][:fishing] == "1"
          all.update_attribute(:isFish, true)
          @fishing << all.name
          #all.isFish = true
          #next
        elsif all.hiking != 9 && all.hiking > 3 && all.hiking < 6 && !all.isHike && @hiking.size < 90 && params[:activities][:hiking] == "1"
          all.update_attribute(:isHike, true)
          @hiking << all.name
          #all.isHike = true
          #next
        elsif all.pottery != 9 && all.pottery > 3 && all.pottery < 6 && !all.isPot && @pottery.size < 24 && params[:activities][:pottery] == "1"
          all.update_attribute(:isPot, true)
          @pottery << all.name
          #all.isPot = true
          #next
        elsif all.arts != 9 && all.arts > 3 && all.arts < 6 && !all.isArt && @arts.size < 20 && params[:activities][:arts] == "1"
          all.update_attribute(:isArt, true)
          @arts << all.name
          #all.isArt = true
          #next
        elsif all.percussion != 9 && all.percussion > 3 && all.percussion < 6 && !all.isPer && @percussion.size < 10 && params[:activities][:percussion] == "1"
          all.update_attribute(:isPer, true)
          @percussion << all.name
          #all.isPer = true
          #next
        elsif all.crafts != 9 && all.crafts > 3 && all.crafts < 6 && !all.isCraft && @crafts.size < 16 && params[:activities][:crafts] == "1"
          all.update_attribute(:isCraft, true)
          @crafts << all.name
          #all.isCraft = true
          #next
        elsif all.games != 9 && all.games > 3 && all.games < 6 && !all.isGame && @games.size < 90 && params[:activities][:games] == "1"
          all.update_attribute(:isGame, true)
          @games << all.name
          #all.isGame = true
          #next
        elsif all.guitars != 9 && all.guitars > 3 && all.guitars < 6 && !all.isGuit && @guitars.size < 10 && params[:activities][:guitars] == "1"
          all.update_attribute(:isGuit, true)
          @guitars << all.name
          #next
          
        elsif all.choir != 9 && all.choir > 3 && all.choir < 6 && !all.isChoir && @choir.size < 90 && params[:activities][:choir] == "1"
          all.update_attribute(:isChoir, true)
          @choir << all.name
          
        elsif all.writing != 9 && all.writing > 3 && all.writing < 6 && !all.isWrite && @writing.size < 90 && params[:activities][:writing] == "1"
          all.update_attribute(:isWrite, true)
          @writing << all.name
          
        elsif all.weaving != 9 && all.weaving > 3 && all.weaving < 6 && !all.isWeave && @weaving.size < 90 && params[:activities][:weaving] == "1"
          all.update_attribute(:isWeave, true)
          @weaving << all.name
          
        elsif all.notdance != 9 && all.notdance > 3 && all.notdance < 6 && !all.isNotdance && @notdance.size < 90 && params[:activities][:notdance] == "1"
          all.update_attribute(:isNotdance, true)
          @notdance << all.name
          
        elsif all.painting != 9 && all.painting > 3 && all.painting < 6 && !all.isPaint && @painting.size < 15 && params[:activities][:painting] == "1"
          all.update_attribute(:isPaint, true)
          @painting << all.name
          
        elsif all.sign != 9 && all.sign > 3 && all.sign < 6 && !all.isSign && @sign.size < 90 && params[:activities][:sign] == "1"
          all.update_attribute(:isSign, true)
          @sign << all.name
          
        elsif all.spanish != 9 && all.spanish > 3 && all.spanish < 6 && !all.isSpan && @spanish.size < 90 && params[:activities][:spanish] == "1"
          all.update_attribute(:isSpan, true)
          @spanish << all.name
          
        elsif all.talking != 9 && all.talking > 3 && all.talking < 6 && !all.isTalk && @talking.size < 90 && params[:activities][:talking] == "1"
          all.update_attribute(:isTalk, true)
          @talking << all.name
          
        else
          # The camper is added to the $un array, indicating an unassigned camper
          @un << all.name
        end
        
      end  
      
     
   elsif params[:activities][:slot] == "2"
    i = 2
      @all.each do |all|
        
        # Beginning of conditionals that determine where a camper gets put in the schedule
        if all.archery != 9 && all.archery <= i && !all.isArch && @archery.size < 16 && params[:activities][:archery] == "1"
          all.update_attribute(:isArch, true)
          @archery << all.name
          #all.isArch = true
          #next
          # instead of next, do else if so that the end of the thing can be used
        elsif all.riflery != 9 && all.riflery <= i && !all.isRif && @riflery.size < 16 && params[:activities][:riflery] == "1"
          all.update_attribute(:isRif, true)
          @riflery << all.name
          #all.isRif = true
          #next
        elsif all.canoeing != 9 && all.canoeing <= i && !all.isCan && @canoeing.size < 16 && params[:activities][:canoeing] == "1"
          all.update_attribute(:isCan, true)
          @canoeing << all.name
          #all.isCan = true
          #next
        elsif all.baking != 9 && all.baking <= i && !all.isBake && @baking.size < 15 && params[:activities][:baking] == "1"
          all.update_attribute(:isBake, true)
          @baking << all.name
          #all.isBake = true
          #next
        elsif all.camping != 9 && all.camping <= i && !all.isCamp && @camping.size < 24 && params[:activities][:camping] == "1"
          all.update_attribute(:isCamp, true)
          @camping << all.name
          #all.isCamp = true
          #next
        elsif all.rocks != 9 && all.rocks <= i && all.grade > 4 && !all.isRock && @rocks.size < 12 && params[:activities][:rocks] == "1"
          all.update_attribute(:isRock, true)
          @rocks << all.name
          #all.isRock = true
          #next
        elsif all.fishing != 9 && all.fishing <= i && !all.isFish && @fishing.size < 10 && params[:activities][:fishing] == "1"
          all.update_attribute(:isFish, true)
          @fishing << all.name
          #all.isFish = true
          #next
        elsif all.hiking != 9 && all.hiking <= i && !all.isHike && @hiking.size < 90 && params[:activities][:hiking] == "1"
          all.update_attribute(:isHike, true)
          @hiking << all.name
          #all.isHike = true
          #next
        elsif all.pottery != 9 && all.pottery <= i && !all.isPot && @pottery.size < 24 && params[:activities][:pottery] == "1"
          all.update_attribute(:isPot, true)
          @pottery << all.name
          #all.isPot = true
          #next
        elsif all.arts != 9 && all.arts <= i && !all.isArt && @arts.size < 20 && params[:activities][:arts] == "1"
          all.update_attribute(:isArt, true)
          @arts << all.name
          #all.isArt = true
          #next
        elsif all.percussion != 9 && all.percussion <= i && !all.isPer && @percussion.size < 10 && params[:activities][:percussion] == "1"
          all.update_attribute(:isPer, true)
          @percussion << all.name
          #all.isPer = true
          #next
        elsif all.crafts != 9 && all.crafts <= i && !all.isCraft && @crafts.size < 16 && params[:activities][:crafts] == "1"
          all.update_attribute(:isCraft, true)
          @crafts << all.name
          #all.isCraft = true
          #next
        elsif all.games != 9 && all.games <= i && !all.isGame && @games.size < 90 && params[:activities][:games] == "1"
          all.update_attribute(:isGame, true)
          @games << all.name
          #all.isGame = true
          #next
        elsif all.guitars != 9 && all.guitars <= i && !all.isGuit && @guitars.size < 10 && params[:activities][:guitars] == "1"
          all.update_attribute(:isGuit, true)
          @guitars << all.name
          #next
          
        elsif all.choir != 9 && all.choir <= i && !all.isChoir && @choir.size < 90 && params[:activities][:choir] == "1"
          all.update_attribute(:isChoir, true)
          @choir << all.name
          
        elsif all.writing != 9 && all.writing <= i && !all.isWrite && @writing.size < 90 && params[:activities][:writing] == "1"
          all.update_attribute(:isWrite, true)
          @writing << all.name
          
        elsif all.weaving != 9 && all.weaving <= i && !all.isWeave && @weaving.size < 90 && params[:activities][:weaving] == "1"
          all.update_attribute(:isWeave, true)
          @weaving << all.name
          
        elsif all.notdance != 9 && all.notdance <= i && !all.isNotdance && @notdance.size < 90 && params[:activities][:notdance] == "1"
          all.update_attribute(:isNotdance, true)
          @notdance << all.name
          
        elsif all.painting != 9 && all.painting <= i && !all.isPaint && @painting.size < 15 && params[:activities][:painting] == "1"
          all.update_attribute(:isPaint, true)
          @painting << all.name
          
        elsif all.sign != 9 && all.sign <= i && !all.isSign && @sign.size < 90 && params[:activities][:sign] == "1"
          all.update_attribute(:isSign, true)
          @sign << all.name
          
        elsif all.spanish != 9 && all.spanish <= i && !all.isSpan && @spanish.size < 90 && params[:activities][:spanish] == "1"
          all.update_attribute(:isSpan, true)
          @spanish << all.name
          
        elsif all.talking != 9 && all.talking <= i && !all.isTalk && @talking.size < 90 && params[:activities][:talking] == "1"
          all.update_attribute(:isTalk, true)
          @talking << all.name
          
          # This next section will use the camper's optional activities if they could not get assigned on one of their main activities
          
        elsif all.archery != 9 && all.archery > 3 && all.archery < 6 && !all.isArch && @archery.size < 16 && params[:activities][:archery] == "1"
          all.update_attribute(:isArch, true)
          @archery << all.name
          #all.isArch = true
          #next
          # instead of next, do else if so that the end of the thing can be used
        elsif all.riflery != 9 && all.riflery > 3 && all.riflery < 6 && !all.isRif && @riflery.size < 16 && params[:activities][:riflery] == "1"
          all.update_attribute(:isRif, true)
          @riflery << all.name
          #all.isRif = true
          #next
        elsif all.canoeing != 9 && all.canoeing > 3 && all.canoeing < 6 && !all.isCan && @canoeing.size < 16 && params[:activities][:canoeing] == "1"
          all.update_attribute(:isCan, true)
          @canoeing << all.name
          #all.isCan = true
          #next
        elsif all.baking != 9 && all.baking > 3 && all.baking < 6 && !all.isBake && @baking.size < 15 && params[:activities][:baking] == "1"
          all.update_attribute(:isBake, true)
          @baking << all.name
          #all.isBake = true
          #next
        elsif all.camping != 9 && all.camping > 3 && all.camping < 6 && !all.isCamp && @camping.size < 24 && params[:activities][:camping] == "1"
          all.update_attribute(:isCamp, true)
          @camping << all.name
          #all.isCamp = true
          #next
        elsif all.rocks != 9 && all.rocks > 3 && all.grade > 4 && all.rocks < 6 && !all.isRock && @rocks.size < 12 && params[:activities][:rocks] == "1"
          all.update_attribute(:isRock, true)
          @rocks << all.name
          #all.isRock = true
          #next
        elsif all.fishing != 9 && all.fishing > 3 && all.fishing < 6 && !all.isFish && @fishing.size < 10 && params[:activities][:fishing] == "1"
          all.update_attribute(:isFish, true)
          @fishing << all.name
          #all.isFish = true
          #next
        elsif all.hiking != 9 && all.hiking > 3 && all.hiking < 6 && !all.isHike && @hiking.size < 90 && params[:activities][:hiking] == "1"
          all.update_attribute(:isHike, true)
          @hiking << all.name
          #all.isHike = true
          #next
        elsif all.pottery != 9 && all.pottery > 3 && all.pottery < 6 && !all.isPot && @pottery.size < 24 && params[:activities][:pottery] == "1"
          all.update_attribute(:isPot, true)
          @pottery << all.name
          #all.isPot = true
          #next
        elsif all.arts != 9 && all.arts > 3 && all.arts < 6 && !all.isArt && @arts.size < 20 && params[:activities][:arts] == "1"
          all.update_attribute(:isArt, true)
          @arts << all.name
          #all.isArt = true
          #next
        elsif all.percussion != 9 && all.percussion > 3 && all.percussion < 6 && !all.isPer && @percussion.size < 10 && params[:activities][:percussion] == "1"
          all.update_attribute(:isPer, true)
          @percussion << all.name
          #all.isPer = true
          #next
        elsif all.crafts != 9 && all.crafts > 3 && all.crafts < 6 && !all.isCraft && @crafts.size < 16 && params[:activities][:crafts] == "1"
          all.update_attribute(:isCraft, true)
          @crafts << all.name
          #all.isCraft = true
          #next
        elsif all.games != 9 && all.games > 3 && all.games < 6 && !all.isGame && @games.size < 90 && params[:activities][:games] == "1"
          all.update_attribute(:isGame, true)
          @games << all.name
          #all.isGame = true
          #next
        elsif all.guitars != 9 && all.guitars > 3 && all.guitars < 6 && !all.isGuit && @guitars.size < 10 && params[:activities][:guitars] == "1"
          all.update_attribute(:isGuit, true)
          @guitars << all.name
          #next
          
        elsif all.choir != 9 && all.choir > 3 && all.choir < 6 && !all.isChoir && @choir.size < 90 && params[:activities][:choir] == "1"
          all.update_attribute(:isChoir, true)
          @choir << all.name
          
        elsif all.writing != 9 && all.writing > 3 && all.writing < 6 && !all.isWrite && @writing.size < 90 && params[:activities][:writing] == "1"
          all.update_attribute(:isWrite, true)
          @writing << all.name
          
        elsif all.weaving != 9 && all.weaving > 3 && all.weaving < 6 && !all.isWeave && @weaving.size < 90 && params[:activities][:weaving] == "1"
          all.update_attribute(:isWeave, true)
          @weaving << all.name
          
        elsif all.notdance != 9 && all.notdance > 3 && all.notdance < 6 && !all.isNotdance && @notdance.size < 90 && params[:activities][:notdance] == "1"
          all.update_attribute(:isNotdance, true)
          @notdance << all.name
          
        elsif all.painting != 9 && all.painting > 3 && all.painting < 6 && !all.isPaint && @painting.size < 15 && params[:activities][:painting] == "1"
          all.update_attribute(:isPaint, true)
          @painting << all.name
          
        elsif all.sign != 9 && all.sign > 3 && all.sign < 6 && !all.isSign && @sign.size < 90 && params[:activities][:sign] == "1"
          all.update_attribute(:isSign, true)
          @sign << all.name
          
        elsif all.spanish != 9 && all.spanish > 3 && all.spanish < 6 && !all.isSpan && @spanish.size < 90 && params[:activities][:spanish] == "1"
          all.update_attribute(:isSpan, true)
          @spanish << all.name
          
        elsif all.talking != 9 && all.talking > 3 && all.talking < 6 && !all.isTalk && @talking.size < 90 && params[:activities][:talking] == "1"
          all.update_attribute(:isTalk, true)
          @talking << all.name
          
        else
          # The camper is added to the $un array, indicating an unassigned camper
          @un << all.name
        end
        
      end  
   
   elsif params[:activities][:slot] == "3"
   
    i = 3
      @all.each do |all|
        
        # Beginning of conditionals that determine where a camper gets put in the schedule
        if all.archery != 9 && all.archery <= i && !all.isArch && @archery.size < 16 && params[:activities][:archery] == "1"
          all.update_attribute(:isArch, true)
          @archery << all.name
          #all.isArch = true
          #next
          # instead of next, do else if so that the end of the thing can be used
        elsif all.riflery != 9 && all.riflery <= i && !all.isRif && @riflery.size < 16 && params[:activities][:riflery] == "1"
          all.update_attribute(:isRif, true)
          @riflery << all.name
          #all.isRif = true
          #next
        elsif all.canoeing != 9 && all.canoeing <= i && !all.isCan && @canoeing.size < 16 && params[:activities][:canoeing] == "1"
          all.update_attribute(:isCan, true)
          @canoeing << all.name
          #all.isCan = true
          #next
        elsif all.baking != 9 && all.baking <= i && !all.isBake && @baking.size < 15 && params[:activities][:baking] == "1"
          all.update_attribute(:isBake, true)
          @baking << all.name
          #all.isBake = true
          #next
        elsif all.camping != 9 && all.camping <= i && !all.isCamp && @camping.size < 24 && params[:activities][:camping] == "1"
          all.update_attribute(:isCamp, true)
          @camping << all.name
          #all.isCamp = true
          #next
        elsif all.rocks != 9 && all.rocks <= i && all.grade > 4 && !all.isRock && @rocks.size < 12 && params[:activities][:rocks] == "1"
          all.update_attribute(:isRock, true)
          @rocks << all.name
          #all.isRock = true
          #next
        elsif all.fishing != 9 && all.fishing <= i && !all.isFish && @fishing.size < 10 && params[:activities][:fishing] == "1"
          all.update_attribute(:isFish, true)
          @fishing << all.name
          #all.isFish = true
          #next
        elsif all.hiking != 9 && all.hiking <= i && !all.isHike && @hiking.size < 90 && params[:activities][:hiking] == "1"
          all.update_attribute(:isHike, true)
          @hiking << all.name
          #all.isHike = true
          #next
        elsif all.pottery != 9 && all.pottery <= i && !all.isPot && @pottery.size < 24 && params[:activities][:pottery] == "1"
          all.update_attribute(:isPot, true)
          @pottery << all.name
          #all.isPot = true
          #next
        elsif all.arts != 9 && all.arts <= i && !all.isArt && @arts.size < 20 && params[:activities][:arts] == "1"
          all.update_attribute(:isArt, true)
          @arts << all.name
          #all.isArt = true
          #next
        elsif all.percussion != 9 && all.percussion <= i && !all.isPer && @percussion.size < 10 && params[:activities][:percussion] == "1"
          all.update_attribute(:isPer, true)
          @percussion << all.name
          #all.isPer = true
          #next
        elsif all.crafts != 9 && all.crafts <= i && !all.isCraft && @crafts.size < 16 && params[:activities][:crafts] == "1"
          all.update_attribute(:isCraft, true)
          @crafts << all.name
          #all.isCraft = true
          #next
        elsif all.games != 9 && all.games <= i && !all.isGame && @games.size < 90 && params[:activities][:games] == "1"
          all.update_attribute(:isGame, true)
          @games << all.name
          #all.isGame = true
          #next
        elsif all.guitars != 9 && all.guitars <= i && !all.isGuit && @guitars.size < 10 && params[:activities][:guitars] == "1"
          all.update_attribute(:isGuit, true)
          @guitars << all.name
          #next
          
        elsif all.choir != 9 && all.choir <= i && !all.isChoir && @choir.size < 90 && params[:activities][:choir] == "1"
          all.update_attribute(:isChoir, true)
          @choir << all.name
          
        elsif all.writing != 9 && all.writing <= i && !all.isWrite && @writing.size < 90 && params[:activities][:writing] == "1"
          all.update_attribute(:isWrite, true)
          @writing << all.name
          
        elsif all.weaving != 9 && all.weaving <= i && !all.isWeave && @weaving.size < 90 && params[:activities][:weaving] == "1"
          all.update_attribute(:isWeave, true)
          @weaving << all.name
          
        elsif all.notdance != 9 && all.notdance <= i && !all.isNotdance && @notdance.size < 90 && params[:activities][:notdance] == "1"
          all.update_attribute(:isNotdance, true)
          @notdance << all.name
          
        elsif all.painting != 9 && all.painting <= i && !all.isPaint && @painting.size < 15 && params[:activities][:painting] == "1"
          all.update_attribute(:isPaint, true)
          @painting << all.name
          
        elsif all.sign != 9 && all.sign <= i && !all.isSign && @sign.size < 90 && params[:activities][:sign] == "1"
          all.update_attribute(:isSign, true)
          @sign << all.name
          
        elsif all.spanish != 9 && all.spanish <= i && !all.isSpan && @spanish.size < 90 && params[:activities][:spanish] == "1"
          all.update_attribute(:isSpan, true)
          @spanish << all.name
          
        elsif all.talking != 9 && all.talking <= i && !all.isTalk && @talking.size < 90 && params[:activities][:talking] == "1"
          all.update_attribute(:isTalk, true)
          @talking << all.name
        
          # This next section will use the camper's optional activities if they could not get assigned on one of their main activities
          
        elsif all.archery != 9 && all.archery > 3 && all.archery < 6 && !all.isArch && @archery.size < 16 && params[:activities][:archery] == "1"
          all.update_attribute(:isArch, true)
          @archery << all.name
          #all.isArch = true
          #next
          # instead of next, do else if so that the end of the thing can be used
        elsif all.riflery != 9 && all.riflery > 3 && all.riflery < 6 && !all.isRif && @riflery.size < 16 && params[:activities][:riflery] == "1"
          all.update_attribute(:isRif, true)
          @riflery << all.name
          #all.isRif = true
          #next
        elsif all.canoeing != 9 && all.canoeing > 3 && all.canoeing < 6 && !all.isCan && @canoeing.size < 16 && params[:activities][:canoeing] == "1"
          all.update_attribute(:isCan, true)
          @canoeing << all.name
          #all.isCan = true
          #next
        elsif all.baking != 9 && all.baking > 3 && all.baking < 6 && !all.isBake && @baking.size < 15 && params[:activities][:baking] == "1"
          all.update_attribute(:isBake, true)
          @baking << all.name
          #all.isBake = true
          #next
        elsif all.camping != 9 && all.camping > 3 && all.camping < 6 && !all.isCamp && @camping.size < 24 && params[:activities][:camping] == "1"
          all.update_attribute(:isCamp, true)
          @camping << all.name
          #all.isCamp = true
          #next
        elsif all.rocks != 9 && all.rocks > 3 && all.grade > 4 && all.rocks < 6 && !all.isRock && @rocks.size < 12 && params[:activities][:rocks] == "1"
          all.update_attribute(:isRock, true)
          @rocks << all.name
          #all.isRock = true
          #next
        elsif all.fishing != 9 && all.fishing > 3 && all.fishing < 6 && !all.isFish && @fishing.size < 10 && params[:activities][:fishing] == "1"
          all.update_attribute(:isFish, true)
          @fishing << all.name
          #all.isFish = true
          #next
        elsif all.hiking != 9 && all.hiking > 3 && all.hiking < 6 && !all.isHike && @hiking.size < 90 && params[:activities][:hiking] == "1"
          all.update_attribute(:isHike, true)
          @hiking << all.name
          #all.isHike = true
          #next
        elsif all.pottery != 9 && all.pottery > 3 && all.pottery < 6 && !all.isPot && @pottery.size < 24 && params[:activities][:pottery] == "1"
          all.update_attribute(:isPot, true)
          @pottery << all.name
          #all.isPot = true
          #next
        elsif all.arts != 9 && all.arts > 3 && all.arts < 6 && !all.isArt && @arts.size < 20 && params[:activities][:arts] == "1"
          all.update_attribute(:isArt, true)
          @arts << all.name
          #all.isArt = true
          #next
        elsif all.percussion != 9 && all.percussion > 3 && all.percussion < 6 && !all.isPer && @percussion.size < 10 && params[:activities][:percussion] == "1"
          all.update_attribute(:isPer, true)
          @percussion << all.name
          #all.isPer = true
          #next
        elsif all.crafts != 9 && all.crafts > 3 && all.crafts < 6 && !all.isCraft && @crafts.size < 16 && params[:activities][:crafts] == "1"
          all.update_attribute(:isCraft, true)
          @crafts << all.name
          #all.isCraft = true
          #next
        elsif all.games != 9 && all.games > 3 && all.games < 6 && !all.isGame && @games.size < 90 && params[:activities][:games] == "1"
          all.update_attribute(:isGame, true)
          @games << all.name
          #all.isGame = true
          #next
        elsif all.guitars != 9 && all.guitars > 3 && all.guitars < 6 && !all.isGuit && @guitars.size < 10 && params[:activities][:guitars] == "1"
          all.update_attribute(:isGuit, true)
          @guitars << all.name
          #next
          
        elsif all.choir != 9 && all.choir > 3 && all.choir < 6 && !all.isChoir && @choir.size < 90 && params[:activities][:choir] == "1"
          all.update_attribute(:isChoir, true)
          @choir << all.name
          
        elsif all.writing != 9 && all.writing > 3 && all.writing < 6 && !all.isWrite && @writing.size < 90 && params[:activities][:writing] == "1"
          all.update_attribute(:isWrite, true)
          @writing << all.name
          
        elsif all.weaving != 9 && all.weaving > 3 && all.weaving < 6 && !all.isWeave && @weaving.size < 90 && params[:activities][:weaving] == "1"
          all.update_attribute(:isWeave, true)
          @weaving << all.name
          
        elsif all.notdance != 9 && all.notdance > 3 && all.notdance < 6 && !all.isNotdance && @notdance.size < 90 && params[:activities][:notdance] == "1"
          all.update_attribute(:isNotdance, true)
          @notdance << all.name
          
        elsif all.painting != 9 && all.painting > 3 && all.painting < 6 && !all.isPaint && @painting.size < 15 && params[:activities][:painting] == "1"
          all.update_attribute(:isPaint, true)
          @painting << all.name
          
        elsif all.sign != 9 && all.sign > 3 && all.sign < 6 && !all.isSign && @sign.size < 90 && params[:activities][:sign] == "1"
          all.update_attribute(:isSign, true)
          @sign << all.name
          
        elsif all.spanish != 9 && all.spanish > 3 && all.spanish < 6 && !all.isSpan && @spanish.size < 90 && params[:activities][:spanish] == "1"
          all.update_attribute(:isSpan, true)
          @spanish << all.name
          
        elsif all.talking != 9 && all.talking > 3 && all.talking < 6 && !all.isTalk && @talking.size < 90 && params[:activities][:talking] == "1"
          all.update_attribute(:isTalk, true)
          @talking << all.name
          
        else
          # The camper is added to the $un array, indicating an unassigned camper
          @un << all.name
        end
        
      end  
   
   elsif params[:activities][:slot] == "4"
   
    i = 4
      @all.each do |all|
        
        # Beginning of conditionals that determine where a camper gets put in the schedule
        if all.archery != 9 && all.archery <= i && !all.isArch && @archery.size < 16 && params[:activities][:archery] == "1"
          all.update_attribute(:isArch, true)
          @archery << all.name
          #all.isArch = true
          #next
          # instead of next, do else if so that the end of the thing can be used
        elsif all.riflery != 9 && all.riflery <= i && !all.isRif && @riflery.size < 16 && params[:activities][:riflery] == "1"
          all.update_attribute(:isRif, true)
          @riflery << all.name
          #all.isRif = true
          #next
        elsif all.canoeing != 9 && all.canoeing <= i && !all.isCan && @canoeing.size < 16 && params[:activities][:canoeing] == "1"
          all.update_attribute(:isCan, true)
          @canoeing << all.name
          #all.isCan = true
          #next
        elsif all.baking != 9 && all.baking <= i && !all.isBake && @baking.size < 15 && params[:activities][:baking] == "1"
          all.update_attribute(:isBake, true)
          @baking << all.name
          #all.isBake = true
          #next
        elsif all.camping != 9 && all.camping <= i && !all.isCamp && @camping.size < 24 && params[:activities][:camping] == "1"
          all.update_attribute(:isCamp, true)
          @camping << all.name
          #all.isCamp = true
          #next
        elsif all.rocks != 9 && all.rocks <= i && all.grade > 4 && !all.isRock && @rocks.size < 12 && params[:activities][:rocks] == "1"
          all.update_attribute(:isRock, true)
          @rocks << all.name
          #all.isRock = true
          #next
        elsif all.fishing != 9 && all.fishing <= i && !all.isFish && @fishing.size < 10 && params[:activities][:fishing] == "1"
          all.update_attribute(:isFish, true)
          @fishing << all.name
          #all.isFish = true
          #next
        elsif all.hiking != 9 && all.hiking <= i && !all.isHike && @hiking.size < 90 && params[:activities][:hiking] == "1"
          all.update_attribute(:isHike, true)
          @hiking << all.name
          #all.isHike = true
          #next
        elsif all.pottery != 9 && all.pottery <= i && !all.isPot && @pottery.size < 24 && params[:activities][:pottery] == "1"
          all.update_attribute(:isPot, true)
          @pottery << all.name
          #all.isPot = true
          #next
        elsif all.arts != 9 && all.arts <= i && !all.isArt && @arts.size < 20 && params[:activities][:arts] == "1"
          all.update_attribute(:isArt, true)
          @arts << all.name
          #all.isArt = true
          #next
        elsif all.percussion != 9 && all.percussion <= i && !all.isPer && @percussion.size < 10 && params[:activities][:percussion] == "1"
          all.update_attribute(:isPer, true)
          @percussion << all.name
          #all.isPer = true
          #next
        elsif all.crafts != 9 && all.crafts <= i && !all.isCraft && @crafts.size < 16 && params[:activities][:crafts] == "1"
          all.update_attribute(:isCraft, true)
          @crafts << all.name
          #all.isCraft = true
          #next
        elsif all.games != 9 && all.games <= i && !all.isGame && @games.size < 90 && params[:activities][:games] == "1"
          all.update_attribute(:isGame, true)
          @games << all.name
          #all.isGame = true
          #next
        elsif all.guitars != 9 && all.guitars <= i && !all.isGuit && @guitars.size < 10 && params[:activities][:guitars] == "1"
          all.update_attribute(:isGuit, true)
          @guitars << all.name
          #next
          
        elsif all.choir != 9 && all.choir <= i && !all.isChoir && @choir.size < 90 && params[:activities][:choir] == "1"
          all.update_attribute(:isChoir, true)
          @choir << all.name
          
        elsif all.writing != 9 && all.writing <= i && !all.isWrite && @writing.size < 90 && params[:activities][:writing] == "1"
          all.update_attribute(:isWrite, true)
          @writing << all.name
          
        elsif all.weaving != 9 && all.weaving <= i && !all.isWeave && @weaving.size < 90 && params[:activities][:weaving] == "1"
          all.update_attribute(:isWeave, true)
          @weaving << all.name
          
        elsif all.notdance != 9 && all.notdance <= i && !all.isNotdance && @notdance.size < 90 && params[:activities][:notdance] == "1"
          all.update_attribute(:isNotdance, true)
          @notdance << all.name
          
        elsif all.painting != 9 && all.painting <= i && !all.isPaint && @painting.size < 15 && params[:activities][:painting] == "1"
          all.update_attribute(:isPaint, true)
          @painting << all.name
          
        elsif all.sign != 9 && all.sign <= i && !all.isSign && @sign.size < 90 && params[:activities][:sign] == "1"
          all.update_attribute(:isSign, true)
          @sign << all.name
          
        elsif all.spanish != 9 && all.spanish <= i && !all.isSpan && @spanish.size < 90 && params[:activities][:spanish] == "1"
          all.update_attribute(:isSpan, true)
          @spanish << all.name
          
        elsif all.talking != 9 && all.talking <= i && !all.isTalk && @talking.size < 90 && params[:activities][:talking] == "1"
          all.update_attribute(:isTalk, true)
          @talking << all.name
        
          # This next section will use the camper's optional activities if they could not get assigned on one of their main activities
          
        elsif all.archery != 9 && all.archery <= 6 && !all.isArch && @archery.size < 16 && params[:activities][:archery] == "1"
          all.update_attribute(:isArch, true)
          @archery << all.name
          #all.isArch = true
          #next
          # instead of next, do else if so that the end of the thing can be used
        elsif all.riflery != 9 && all.riflery <= 6 && !all.isRif && @riflery.size < 16 && params[:activities][:riflery] == "1"
          all.update_attribute(:isRif, true)
          @riflery << all.name
          #all.isRif = true
          #next
        elsif all.canoeing != 9 && all.canoeing <= 6 && !all.isCan && @canoeing.size < 16 && params[:activities][:canoeing] == "1"
          all.update_attribute(:isCan, true)
          @canoeing << all.name
          #all.isCan = true
          #next
        elsif all.baking != 9 && all.baking <= 6 && !all.isBake && @baking.size < 15 && params[:activities][:baking] == "1"
          all.update_attribute(:isBake, true)
          @baking << all.name
          #all.isBake = true
          #next
        elsif all.camping != 9 && all.camping <= 6 && !all.isCamp && @camping.size < 24 && params[:activities][:camping] == "1"
          all.update_attribute(:isCamp, true)
          @camping << all.name
          #all.isCamp = true
          #next
        elsif all.rocks != 9 && all.rocks <= 6 && all.grade > 4 && !all.isRock && @rocks.size < 12 && params[:activities][:rocks] == "1"
          all.update_attribute(:isRock, true)
          @rocks << all.name
          #all.isRock = true
          #next
        elsif all.fishing != 9 && all.fishing <= 6 && !all.isFish && @fishing.size < 10 && params[:activities][:fishing] == "1"
          all.update_attribute(:isFish, true)
          @fishing << all.name
          #all.isFish = true
          #next
        elsif all.hiking != 9 && all.hiking <= 6 && !all.isHike && @hiking.size < 90 && params[:activities][:hiking] == "1"
          all.update_attribute(:isHike, true)
          @hiking << all.name
          #all.isHike = true
          #next
        elsif all.pottery != 9 && all.pottery <= 6 && !all.isPot && @pottery.size < 24 && params[:activities][:pottery] == "1"
          all.update_attribute(:isPot, true)
          @pottery << all.name
          #all.isPot = true
          #next
        elsif all.arts != 9 && all.arts <= 6 && !all.isArt && @arts.size < 20 && params[:activities][:arts] == "1"
          all.update_attribute(:isArt, true)
          @arts << all.name
          #all.isArt = true
          #next
        elsif all.percussion != 9 && all.percussion <= 6 && !all.isPer && @percussion.size < 10 && params[:activities][:percussion] == "1"
          all.update_attribute(:isPer, true)
          @percussion << all.name
          #all.isPer = true
          #next
        elsif all.crafts != 9 && all.crafts <= 6 && !all.isCraft && @crafts.size < 16 && params[:activities][:crafts] == "1"
          all.update_attribute(:isCraft, true)
          @crafts << all.name
          #all.isCraft = true
          #next
        elsif all.games != 9 && all.games <= 6 && !all.isGame && @games.size < 90 && params[:activities][:games] == "1"
          all.update_attribute(:isGame, true)
          @games << all.name
          #all.isGame = true
          #next
        elsif all.guitars != 9 && all.guitars <= 6 && !all.isGuit && @guitars.size < 10 && params[:activities][:guitars] == "1"
          all.update_attribute(:isGuit, true)
          @guitars << all.name
          #next
          
        elsif all.choir != 9 && all.choir <= 6 && !all.isChoir && @choir.size < 90 && params[:activities][:choir] == "1"
          all.update_attribute(:isChoir, true)
          @choir << all.name
          
        elsif all.writing != 9 && all.writing <= 6 && !all.isWrite && @writing.size < 90 && params[:activities][:writing] == "1"
          all.update_attribute(:isWrite, true)
          @writing << all.name
          
        elsif all.weaving != 9 && all.weaving <= 6 && !all.isWeave && @weaving.size < 90 && params[:activities][:weaving] == "1"
          all.update_attribute(:isWeave, true)
          @weaving << all.name
          
        elsif all.notdance != 9 && all.notdance <= 6 && !all.isNotdance && @notdance.size < 90 && params[:activities][:notdance] == "1"
          all.update_attribute(:isNotdance, true)
          @notdance << all.name
          
        elsif all.painting != 9 && all.painting <= 6 && !all.isPaint && @painting.size < 15 && params[:activities][:painting] == "1"
          all.update_attribute(:isPaint, true)
          @painting << all.name
          
        elsif all.sign != 9 && all.sign <= 6 && !all.isSign && @sign.size < 90 && params[:activities][:sign] == "1"
          all.update_attribute(:isSign, true)
          @sign << all.name
          
        elsif all.spanish != 9 && all.spanish <= 6 && !all.isSpan && @spanish.size < 90 && params[:activities][:spanish] == "1"
          all.update_attribute(:isSpan, true)
          @spanish << all.name
          
        elsif all.talking != 9 && all.talking <= 6 && !all.isTalk && @talking.size < 90 && params[:activities][:talking] == "1"
          all.update_attribute(:isTalk, true)
          @talking << all.name
          
        else
          # The camper is added to the $un array, indicating an unassigned camper
          @un << all.name
        end
        
      end  
   
   elsif params[:activities][:slot] == "5"
   
    i = 5
      @all.each do |all|
        
        # Beginning of conditionals that determine where a camper gets put in the schedule
        if all.archery != 9 && all.archery <= i && !all.isArch && @archery.size < 16 && params[:activities][:archery] == "1"
          all.update_attribute(:isArch, true)
          @archery << all.name
          #all.isArch = true
          #next
          # instead of next, do else if so that the end of the thing can be used
        elsif all.riflery != 9 && all.riflery <= i && !all.isRif && @riflery.size < 16 && params[:activities][:riflery] == "1"
          all.update_attribute(:isRif, true)
          @riflery << all.name
          #all.isRif = true
          #next
        elsif all.canoeing != 9 && all.canoeing <= i && !all.isCan && @canoeing.size < 16 && params[:activities][:canoeing] == "1"
          all.update_attribute(:isCan, true)
          @canoeing << all.name
          #all.isCan = true
          #next
        elsif all.baking != 9 && all.baking <= i && !all.isBake && @baking.size < 15 && params[:activities][:baking] == "1"
          all.update_attribute(:isBake, true)
          @baking << all.name
          #all.isBake = true
          #next
        elsif all.camping != 9 && all.camping <= i && !all.isCamp && @camping.size < 24 && params[:activities][:camping] == "1"
          all.update_attribute(:isCamp, true)
          @camping << all.name
          #all.isCamp = true
          #next
        elsif all.rocks != 9 && all.rocks <= i && all.grade > 4 && !all.isRock && @rocks.size < 12 && params[:activities][:rocks] == "1"
          all.update_attribute(:isRock, true)
          @rocks << all.name
          #all.isRock = true
          #next
        elsif all.fishing != 9 && all.fishing <= i && !all.isFish && @fishing.size < 10 && params[:activities][:fishing] == "1"
          all.update_attribute(:isFish, true)
          @fishing << all.name
          #all.isFish = true
          #next
        elsif all.hiking != 9 && all.hiking <= i && !all.isHike && @hiking.size < 90 && params[:activities][:hiking] == "1"
          all.update_attribute(:isHike, true)
          @hiking << all.name
          #all.isHike = true
          #next
        elsif all.pottery != 9 && all.pottery <= i && !all.isPot && @pottery.size < 24 && params[:activities][:pottery] == "1"
          all.update_attribute(:isPot, true)
          @pottery << all.name
          #all.isPot = true
          #next
        elsif all.arts != 9 && all.arts <= i && !all.isArt && @arts.size < 20 && params[:activities][:arts] == "1"
          all.update_attribute(:isArt, true)
          @arts << all.name
          #all.isArt = true
          #next
        elsif all.percussion != 9 && all.percussion <= i && !all.isPer && @percussion.size < 10 && params[:activities][:percussion] == "1"
          all.update_attribute(:isPer, true)
          @percussion << all.name
          #all.isPer = true
          #next
        elsif all.crafts != 9 && all.crafts <= i && !all.isCraft && @crafts.size < 16 && params[:activities][:crafts] == "1"
          all.update_attribute(:isCraft, true)
          @crafts << all.name
          #all.isCraft = true
          #next
        elsif all.games != 9 && all.games <= i && !all.isGame && @games.size < 90 && params[:activities][:games] == "1"
          all.update_attribute(:isGame, true)
          @games << all.name
          #all.isGame = true
          #next
        elsif all.guitars != 9 && all.guitars <= i && !all.isGuit && @guitars.size < 10 && params[:activities][:guitars] == "1"
          all.update_attribute(:isGuit, true)
          @guitars << all.name
          #next
        
        elsif all.choir != 9 && all.choir <= i && !all.isChoir && @choir.size < 90 && params[:activities][:choir] == "1"
          all.update_attribute(:isChoir, true)
          @choir << all.name
          
        elsif all.writing != 9 && all.writing <= i && !all.isWrite && @writing.size < 90 && params[:activities][:writing] == "1"
          all.update_attribute(:isWrite, true)
          @writing << all.name
          
        elsif all.weaving != 9 && all.weaving <= i && !all.isWeave && @weaving.size < 90 && params[:activities][:weaving] == "1"
          all.update_attribute(:isWeave, true)
          @weaving << all.name
          
        elsif all.notdance != 9 && all.notdance <= i && !all.isNotdance && @notdance.size < 90 && params[:activities][:notdance] == "1"
          all.update_attribute(:isNotdance, true)
          @notdance << all.name
          
        elsif all.painting != 9 && all.painting <= i && !all.isPaint && @painting.size < 15 && params[:activities][:painting] == "1"
          all.update_attribute(:isPaint, true)
          @painting << all.name
          
        elsif all.sign != 9 && all.sign <= i && !all.isSign && @sign.size < 90 && params[:activities][:sign] == "1"
          all.update_attribute(:isSign, true)
          @sign << all.name
          
        elsif all.spanish != 9 && all.spanish <= i && !all.isSpan && @spanish.size < 90 && params[:activities][:spanish] == "1"
          all.update_attribute(:isSpan, true)
          @spanish << all.name
          
        elsif all.talking != 9 && all.talking <= i && !all.isTalk && @talking.size < 90 && params[:activities][:talking] == "1"
          all.update_attribute(:isTalk, true)
          @talking << all.name
          
          # This next section will use the camper's optional activities if they could not get assigned on one of their main activities
          
        elsif all.archery != 9 && all.archery > 5 && !all.isArch && @archery.size < 16 && params[:activities][:archery] == "1"
          all.update_attribute(:isArch, true)
          @archery << all.name
          #all.isArch = true
          #next
          # instead of next, do else if so that the end of the thing can be used
        elsif all.riflery != 9 && all.riflery > 5 && !all.isRif && @riflery.size < 16 && params[:activities][:riflery] == "1"
          all.update_attribute(:isRif, true)
          @riflery << all.name
          #all.isRif = true
          #next
        elsif all.canoeing != 9 && all.canoeing > 5 && !all.isCan && @canoeing.size < 16 && params[:activities][:canoeing] == "1"
          all.update_attribute(:isCan, true)
          @canoeing << all.name
          #all.isCan = true
          #next
        elsif all.baking != 9 && all.baking > 5 && !all.isBake && @baking.size < 15 && params[:activities][:baking] == "1"
          all.update_attribute(:isBake, true)
          @baking << all.name
          #all.isBake = true
          #next
        elsif all.camping != 9 && all.camping > 5 && !all.isCamp && @camping.size < 24 && params[:activities][:camping] == "1"
          all.update_attribute(:isCamp, true)
          @camping << all.name
          #all.isCamp = true
          #next
        elsif all.rocks != 9 && all.rocks > 5 && all.grade > 4 && !all.isRock && @rocks.size < 12 && params[:activities][:rocks] == "1"
          all.update_attribute(:isRock, true)
          @rocks << all.name
          #all.isRock = true
          #next
        elsif all.fishing != 9 && all.fishing > 5 && !all.isFish && @fishing.size < 10 && params[:activities][:fishing] == "1"
          all.update_attribute(:isFish, true)
          @fishing << all.name
          #all.isFish = true
          #next
        elsif all.hiking != 9 && all.hiking > 5 && !all.isHike && @hiking.size < 90 && params[:activities][:hiking] == "1"
          all.update_attribute(:isHike, true)
          @hiking << all.name
          #all.isHike = true
          #next
        elsif all.pottery != 9 && all.pottery > 5 && !all.isPot && @pottery.size < 24 && params[:activities][:pottery] == "1"
          all.update_attribute(:isPot, true)
          @pottery << all.name
          #all.isPot = true
          #next
        elsif all.arts != 9 && all.arts > 5 && !all.isArt && @arts.size < 20 && params[:activities][:arts] == "1"
          all.update_attribute(:isArt, true)
          @arts << all.name
          #all.isArt = true
          #next
        elsif all.percussion != 9 && all.percussion > 5 && !all.isPer && @percussion.size < 10 && params[:activities][:percussion] == "1"
          all.update_attribute(:isPer, true)
          @percussion << all.name
          #all.isPer = true
          #next
        elsif all.crafts != 9 && all.crafts > 5 && !all.isCraft && @crafts.size < 16 && params[:activities][:crafts] == "1"
          all.update_attribute(:isCraft, true)
          @crafts << all.name
          #all.isCraft = true
          #next
        elsif all.games != 9 && all.games > 5 && !all.isGame && @games.size < 90 && params[:activities][:games] == "1"
          all.update_attribute(:isGame, true)
          @games << all.name
          #all.isGame = true
          #next
        elsif all.guitars != 9 && all.guitars > 5 && !all.isGuit && @guitars.size < 10 && params[:activities][:guitars] == "1"
          all.update_attribute(:isGuit, true)
          @guitars << all.name
          #next
          
        elsif all.choir != 9 && all.choir > 5 && !all.isChoir && @choir.size < 90 && params[:activities][:choir] == "1"
          all.update_attribute(:isChoir, true)
          @choir << all.name
          
        elsif all.writing != 9 && all.writing > 5 && !all.isWrite && @writing.size < 90 && params[:activities][:writing] == "1"
          all.update_attribute(:isWrite, true)
          @writing << all.name
          
        elsif all.weaving != 9 && all.weaving > 5 && !all.isWeave && @weaving.size < 90 && params[:activities][:weaving] == "1"
          all.update_attribute(:isWeave, true)
          @weaving << all.name
          
        elsif all.notdance != 9 && all.notdance > 5 && !all.isNotdance && @notdance.size < 90 && params[:activities][:notdance] == "1"
          all.update_attribute(:isNotdance, true)
          @notdance << all.name
          
        elsif all.painting != 9 && all.painting > 5 && !all.isPaint && @painting.size < 15 && params[:activities][:painting] == "1"
          all.update_attribute(:isPaint, true)
          @painting << all.name
          
        elsif all.sign != 9 && all.sign > 5 && !all.isSign && @sign.size < 90 && params[:activities][:sign] == "1"
          all.update_attribute(:isSign, true)
          @sign << all.name
          
        elsif all.spanish != 9 && all.spanish > 5 && !all.isSpan && @spanish.size < 90 && params[:activities][:spanish] == "1"
          all.update_attribute(:isSpan, true)
          @spanish << all.name
          
        elsif all.talking != 9 && all.talking > 5 && !all.isTalk && @talking.size < 90 && params[:activities][:talking] == "1"
          all.update_attribute(:isTalk, true)
          @talking << all.name
          
        else
          # The camper is added to the $un array, indicating an unassigned camper
          @un << all.name
        end
        
      end  
   
   else
     flash[:danger] = "The time slot was not 1-5, it was \"#{params[:activities][:slot]}.\" Please enter a number 1-5 for the time slot"
     redirect_to trial_path and return
   end
     
   
   Archery.first.update_attribute(:list, @archery)
   Riflery.first.update_attribute(:list, @riflery)
   Canoeing.first.update_attribute(:list, @canoeing)
   Baking.first.update_attribute(:list, @baking)
   Camping.first.update_attribute(:list, @camping)
   Rock.first.update_attribute(:list, @rocks)
   Fishing.first.update_attribute(:list, @fishing)
   Hiking.first.update_attribute(:list, @hiking)
   Pottery.first.update_attribute(:list, @pottery)
   Art.first.update_attribute(:list, @arts)
   Percussion.first.update_attribute(:list, @percussion)
   Craft.first.update_attribute(:list, @crafts)
   Game.first.update_attribute(:list, @games)
   Guitar.first.update_attribute(:list, @guitars)
   Choir.first.update_attribute(:list, @choir)
   Writing.first.update_attribute(:list, @writing)
   Weaving.first.update_attribute(:list, @weaving)
   Notdance.first.update_attribute(:list, @notdance)
   Painting.first.update_attribute(:list, @painting)
   Sign.first.update_attribute(:list, @sign)
   Spanish.first.update_attribute(:list, @spanish)
   Talking.first.update_attribute(:list, @talking)
   Un.first.update_attribute(:list, @un)
   
   if !params[:activities] || params[:activities] == "" || params[:activities] == nil
     flash[:warning] = "Something went wrong after scheduling (at line 3289), the schedule should have been made 
                        and should be viewable, regardless please contact Matthew at mdbuchanan0@gmail.com about this issue"
     redirect_to admin_path and return
   else
     Schedule.first.update_attribute(:slot, params[:activities][:slot])
     
     if params[:activities][:archery] != "1"
       Schedule.first.update_attribute(:isArch, false)
     end
     if params[:activities][:riflery] != "1"
       Schedule.first.update_attribute(:isRif, false)
     end
     if params[:activities][:canoeing] != "1"
       Schedule.first.update_attribute(:isCan, false)
     end
     if params[:activities][:baking] != "1"
       Schedule.first.update_attribute(:isBake, false)
     end
     if params[:activities][:camping] != "1"
       Schedule.first.update_attribute(:isCamp, false)
     end
     if params[:activities][:rocks] != "1"
       Schedule.first.update_attribute(:isRock, false)
     end
     if params[:activities][:fishing] != "1"
       Schedule.first.update_attribute(:isFish, false)
     end
     if params[:activities][:hiking] != "1"
       Schedule.first.update_attribute(:isHike, false)
     end
     if params[:activities][:pottery] != "1"
       Schedule.first.update_attribute(:isPot, false)
     end
     if params[:activities][:arts] != "1"
       Schedule.first.update_attribute(:isArt, false)
     end
     if params[:activities][:percussion] != "1"
       Schedule.first.update_attribute(:isPer, false)
     end
     if params[:activities][:crafts] != "1"
       Schedule.first.update_attribute(:isCraft, false)
     end
     if params[:activities][:games] != "1"
       Schedule.first.update_attribute(:isGame, false)
     end
     if params[:activities][:guitars] != "1"
       Schedule.first.update_attribute(:isGuit, false)
     end
     if params[:activities][:choir] != "1"
       Schedule.first.update_attribute(:isChoir, false)
     end
     if params[:activities][:writing] != "1"
       Schedule.first.update_attribute(:isWrite, false)
     end
     if params[:activities][:weaving] != "1"
       Schedule.first.update_attribute(:isWeave, false)
     end
     if params[:activities][:notdance] != "1"
       Schedule.first.update_attribute(:isNotdance, false)
     end
     if params[:activities][:painting] != "1"
       Schedule.first.update_attribute(:isPaint, false)
     end
     if params[:activities][:sign] != "1"
       Schedule.first.update_attribute(:isSign, false)
     end
     if params[:activities][:spanish] != "1"
       Schedule.first.update_attribute(:isSpan, false)
     end
     if params[:activities][:talking] != "1"
       Schedule.first.update_attribute(:isTalk, false)
     end
   end
    flash[:success] = "Schedule created"
    redirect_to better_path
   
  end
  
  def reassign
    
    @camper = Camper.find(params[:id])
    
    @archery = Archery.first.list
    @riflery = Riflery.first.list
    @canoeing = Canoeing.first.list
    @baking = Baking.first.list
    @camping = Camping.first.list
    @rocks = Rock.first.list
    @fishing = Fishing.first.list
    @hiking = Hiking.first.list
    @pottery = Pottery.first.list
    @arts = Art.first.list
    @percussion = Percussion.first.list
    @crafts = Craft.first.list
    @games = Game.first.list
    @guitars = Guitar.first.list
    @un = Un.first.list
    
    @choir = Choir.first.list
    @writing = Writing.first.list
    @weaving = Weaving.first.list
    @notdance = Notdance.first.list
    @painting = Painting.first.list
    @sign = Sign.first.list
    @spanish = Spanish.first.list
    @talking = Talking.first.list
   
    @isArch = Schedule.first.isArch
    @isRif = Schedule.first.isRif
    @isCan = Schedule.first.isCan
    @isBake = Schedule.first.isBake
    @isCamp = Schedule.first.isCamp
    @isRock = Schedule.first.isRock
    @isFish = Schedule.first.isFish
    @isHike = Schedule.first.isHike
    @isPot = Schedule.first.isPot
    @isArt = Schedule.first.isArt
    @isPer = Schedule.first.isPer
    @isCraft = Schedule.first.isCraft
    @isGame = Schedule.first.isGame
    @isGuit = Schedule.first.isGuit
   
    @isChoir = Schedule.first.isChoir
    @isWrite = Schedule.first.isWrite
    @isWeave = Schedule.first.isWeave
    @isNotdance = Schedule.first.isNotdance
    @isPaint = Schedule.first.isPaint
    @isSign = Schedule.first.isSign
    @isSpan = Schedule.first.isSpan
    @isTalk = Schedule.first.isTalk
    
  end
  
  def again
    #do the reassignment here
    #use the lists to look up where the kid is and then remove him and update his boolean for that activity
    #then add him to the chosen activity and update that boolean
    #finally update the act_recs of each list that changed
    #if nothing was selected then go back and do nothing
    
    @camper = Camper.find(params[:id])
    
    @archery = Archery.first.list
    @riflery = Riflery.first.list
    @canoeing = Canoeing.first.list
    @baking = Baking.first.list
    @camping = Camping.first.list
    @rocks = Rock.first.list
    @fishing = Fishing.first.list
    @hiking = Hiking.first.list
    @pottery = Pottery.first.list
    @arts = Art.first.list
    @percussion = Percussion.first.list
    @crafts = Craft.first.list
    @games = Game.first.list
    @guitars = Guitar.first.list
    @un = Un.first.list
    
    @choir = Choir.first.list
    @writing = Writing.first.list
    @weaving = Weaving.first.list
    @notdance = Notdance.first.list
    @painting = Painting.first.list
    @sign = Sign.first.list
    @spanish = Spanish.first.list
    @talking = Talking.first.list
    
    if @archery.index(@camper.name) != nil
      
      if params[:reassign][:archery] == "1"
        
        flash[:warning] = "No reassignment has been done since the camper is already in archery today"
        redirect_to reassign_path and return
        
      elsif params[:reassign][:riflery] == "1"
        
        @archery.delete_at(@archery.index(@camper.name))
        @camper.update_attribute(:isArch, false)
        Archery.first.update_attribute(:list, @archery)
        
        @riflery << @camper.name
        @camper.update_attribute(:isRif, true)
        Riflery.first.update_attribute(:list, @riflery)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:canoeing] == "1"
      
        @archery.delete_at(@archery.index(@camper.name))
        @camper.update_attribute(:isArch, false)
        Archery.first.update_attribute(:list, @archery)
        
        @canoeing << @camper.name
        @camper.update_attribute(:isCan, true)
        Canoeing.first.update_attribute(:list, @canoeing)        
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:baking] == "1"
      
        @archery.delete_at(@archery.index(@camper.name))
        @camper.update_attribute(:isArch, false)
        Archery.first.update_attribute(:list, @archery)
        
        @baking << @camper.name
        @camper.update_attribute(:isBake, true)
        Baking.first.update_attribute(:list, @baking)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:camping] == "1"
        
        @archery.delete_at(@archery.index(@camper.name))
        @camper.update_attribute(:isArch, false)
        Archery.first.update_attribute(:list, @archery)
        
        @camping << @camper.name
        @camper.update_attribute(:isCamp, true)
        Camping.first.update_attribute(:list, @camping)
       
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:rocks] == "1"
        
        @archery.delete_at(@archery.index(@camper.name))
        @camper.update_attribute(:isArch, false)
        Archery.first.update_attribute(:list, @archery)
        
        @rocks << @camper.name
        @camper.update_attribute(:isRock, true)
        Rock.first.update_attribute(:list, @rocks)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:fishing] == "1"
        
        @archery.delete_at(@archery.index(@camper.name))
        @camper.update_attribute(:isArch, false)
        Archery.first.update_attribute(:list, @archery)
        
        @fishing << @camper.name
        @camper.update_attribute(:isFish, true)
        Fishing.first.update_attribute(:list, @fishing)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:hiking] == "1"
        
        @archery.delete_at(@archery.index(@camper.name))
        @camper.update_attribute(:isArch, false)
        Archery.first.update_attribute(:list, @archery)
        
        @hiking << @camper.name
        @camper.update_attribute(:isHike, true)
        Hiking.first.update_attribute(:list, @hiking)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:pottery] == "1"
      
        @archery.delete_at(@archery.index(@camper.name))
        @camper.update_attribute(:isArch, false)
        Archery.first.update_attribute(:list, @archery)
        
        @pottery << @camper.name
        @camper.update_attribute(:isPot, true)
        Pottery.first.update_attribute(:list, @pottery)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:arts] == "1"
        
        @archery.delete_at(@archery.index(@camper.name))
        @camper.update_attribute(:isArch, false)
        Archery.first.update_attribute(:list, @archery)
        
        @arts << @camper.name
        @camper.update_attribute(:isArt, true)
        Art.first.update_attribute(:list, @arts)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:percussion] == "1"
      
        @archery.delete_at(@archery.index(@camper.name))
        @camper.update_attribute(:isArch, false)
        Archery.first.update_attribute(:list, @archery)
        
        @percussion << @camper.name
        @camper.update_attribute(:isPer, true)
        Percussion.first.update_attribute(:list, @percussion)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:games] == "1"
        
        @archery.delete_at(@archery.index(@camper.name))
        @camper.update_attribute(:isArch, false)
        Archery.first.update_attribute(:list, @archery)
        
        @games << @camper.name
        @camper.update_attribute(:isGame, true)
        Game.first.update_attribute(:list, @games)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:guitars] == "1"
      
        @archery.delete_at(@archery.index(@camper.name))
        @camper.update_attribute(:isArch, false)
        Archery.first.update_attribute(:list, @archery)
        
        @guitars << @camper.name
        @camper.update_attribute(:isGuit, true)
        Guitar.first.update_attribute(:list, @guitars)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:choir] == "1"
      
        @archery.delete_at(@archery.index(@camper.name))
        @camper.update_attribute(:isArch, false)
        Archery.first.update_attribute(:list, @archery)
        
        @choir << @camper.name
        @camper.update_attribute(:isChoir, true)
        Choir.first.update_attribute(:list, @choir)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:writing] == "1"
        
        @archery.delete_at(@archery.index(@camper.name))
        @camper.update_attribute(:isArch, false)
        Archery.first.update_attribute(:list, @archery)
        
        @writing << @camper.name
        @camper.update_attribute(:isWrite, true)
        Writing.first.update_attribute(:list, @writing)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:weaving] == "1"
      
        @archery.delete_at(@archery.index(@camper.name))
        @camper.update_attribute(:isArch, false)
        Archery.first.update_attribute(:list, @archery)
        
        @weaving << @camper.name
        @camper.update_attribute(:isWeave, true)
        Weaving.first.update_attribute(:list, @weaving)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:notdance] == "1"
      
        @archery.delete_at(@archery.index(@camper.name))
        @camper.update_attribute(:isArch, false)
        Archery.first.update_attribute(:list, @archery)
        
        @notdance << @camper.name
        @camper.update_attribute(:isNotdance, true)
        Notdance.first.update_attribute(:list, @notdance)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:painting] == "1"
      
        @archery.delete_at(@archery.index(@camper.name))
        @camper.update_attribute(:isArch, false)
        Archery.first.update_attribute(:list, @archery)
        
        @painting << @camper.name
        @camper.update_attribute(:isPaint, true)
        Painting.first.update_attribute(:list, @painting)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:sign] == "1"
      
        @archery.delete_at(@archery.index(@camper.name))
        @camper.update_attribute(:isArch, false)
        Archery.first.update_attribute(:list, @archery)
        
        @sign << @camper.name
        @camper.update_attribute(:isSign, true)
        Sign.first.update_attribute(:list, @sign)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:spanish] == "1"
      
        @archery.delete_at(@archery.index(@camper.name))
        @camper.update_attribute(:isArch, false)
        Archery.first.update_attribute(:list, @archery)
        
        @spanish << @camper.name
        @camper.update_attribute(:isSpan, true)
        Spanish.first.update_attribute(:list, @spanish)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:talking] == "1"
      
        @archery.delete_at(@archery.index(@camper.name))
        @camper.update_attribute(:isArch, false)
        Archery.first.update_attribute(:list, @archery)
        
        @talking << @camper.name
        @camper.update_attribute(:isTalk, true)
        Talking.first.update_attribute(:list, @talking)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      else
        flash[:warning] = "No activity to reschedule to was selected, please select an activity"
        redirect_to reassign_path and return
      end
        
      
    elsif @riflery.index(@camper.name) != nil
    
      if params[:reassign][:archery] == "1"
        
        @riflery.delete_at(@riflery.index(@camper.name))
        @camper.update_attribute(:isRif, false)
        Riflery.first.update_attribute(:list, @riflery)
        
        @archery << @camper.name
        @camper.update_attribute(:isArch, true)
        Archery.first.update_attribute(:list, @archery)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:riflery] == "1"
        
        flash[:warning] = "No reassignment has been done since the camper is already in riflery today"
        redirect_to reassign_path and return
        
      elsif params[:reassign][:canoeing] == "1"
      
        @riflery.delete_at(@riflery.index(@camper.name))
        @camper.update_attribute(:isRif, false)
        Riflery.first.update_attribute(:list, @riflery)
        
        @canoeing << @camper.name
        @camper.update_attribute(:isCan, true)
        Canoeing.first.update_attribute(:list, @canoeing)        
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:baking] == "1"
      
        @riflery.delete_at(@riflery.index(@camper.name))
        @camper.update_attribute(:isRif, false)
        Riflery.first.update_attribute(:list, @riflery)
        
        @baking << @camper.name
        @camper.update_attribute(:isBake, true)
        Baking.first.update_attribute(:list, @baking)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:camping] == "1"
        
        @riflery.delete_at(@riflery.index(@camper.name))
        @camper.update_attribute(:isRif, false)
        Riflery.first.update_attribute(:list, @riflery)
        
        @camping << @camper.name
        @camper.update_attribute(:isCamp, true)
        Camping.first.update_attribute(:list, @camping)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:rocks] == "1"
        
        @riflery.delete_at(@riflery.index(@camper.name))
        @camper.update_attribute(:isRif, false)
        Riflery.first.update_attribute(:list, @riflery)
        
        @rocks << @camper.name
        @camper.update_attribute(:isRock, true)
        Rock.first.update_attribute(:list, @rocks)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:fishing] == "1"
        
        @riflery.delete_at(@riflery.index(@camper.name))
        @camper.update_attribute(:isRif, false)
        Riflery.first.update_attribute(:list, @riflery)
        
        @fishing << @camper.name
        @camper.update_attribute(:isFish, true)
        Fishing.first.update_attribute(:list, @fishing)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:hiking] == "1"
        
        @riflery.delete_at(@riflery.index(@camper.name))
        @camper.update_attribute(:isRif, false)
        Riflery.first.update_attribute(:list, @riflery)
        
        @hiking << @camper.name
        @camper.update_attribute(:isHike, true)
        Hiking.first.update_attribute(:list, @hiking)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:pottery] == "1"
      
        @riflery.delete_at(@riflery.index(@camper.name))
        @camper.update_attribute(:isRif, false)
        Riflery.first.update_attribute(:list, @riflery)
        
        @pottery << @camper.name
        @camper.update_attribute(:isPot, true)
        Pottery.first.update_attribute(:list, @pottery)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:arts] == "1"
        
        @riflery.delete_at(@riflery.index(@camper.name))
        @camper.update_attribute(:isRif, false)
        Riflery.first.update_attribute(:list, @riflery)
        
        @arts << @camper.name
        @camper.update_attribute(:isArt, true)
        Art.first.update_attribute(:list, @arts)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:percussion] == "1"
      
        @riflery.delete_at(@riflery.index(@camper.name))
        @camper.update_attribute(:isRif, false)
        Riflery.first.update_attribute(:list, @riflery)
        
        @percussion << @camper.name
        @camper.update_attribute(:isPer, true)
        Percussion.first.update_attribute(:list, @percussion)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:games] == "1"
        
        @riflery.delete_at(@riflery.index(@camper.name))
        @camper.update_attribute(:isRif, false)
        Riflery.first.update_attribute(:list, @riflery)
        
        @games << @camper.name
        @camper.update_attribute(:isGame, true)
        Game.first.update_attribute(:list, @games)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:guitars] == "1"
      
        @riflery.delete_at(@riflery.index(@camper.name))
        @camper.update_attribute(:isRif, false)
        Riflery.first.update_attribute(:list, @riflery)
        
        @guitars << @camper.name
        @camper.update_attribute(:isGuit, true)
        Guitar.first.update_attribute(:list, @guitars)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:choir] == "1"
      
        @riflery.delete_at(@riflery.index(@camper.name))
        @camper.update_attribute(:isRif, false)
        Riflery.first.update_attribute(:list, @riflery)
        
        @choir << @camper.name
        @camper.update_attribute(:isChoir, true)
        Choir.first.update_attribute(:list, @choir)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:writing] == "1"
        
        @riflery.delete_at(@riflery.index(@camper.name))
        @camper.update_attribute(:isRif, false)
        Riflery.first.update_attribute(:list, @riflery)
        
        @writing << @camper.name
        @camper.update_attribute(:isWrite, true)
        Writing.first.update_attribute(:list, @writing)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:weaving] == "1"
      
        @riflery.delete_at(@riflery.index(@camper.name))
        @camper.update_attribute(:isRif, false)
        Riflery.first.update_attribute(:list, @riflery)
        
        @weaving << @camper.name
        @camper.update_attribute(:isWeave, true)
        Weaving.first.update_attribute(:list, @weaving)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:notdance] == "1"
      
        @riflery.delete_at(@riflery.index(@camper.name))
        @camper.update_attribute(:isRif, false)
        Riflery.first.update_attribute(:list, @riflery)
        
        @notdance << @camper.name
        @camper.update_attribute(:isNotdance, true)
        Notdance.first.update_attribute(:list, @notdance)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:painting] == "1"
      
        @riflery.delete_at(@riflery.index(@camper.name))
        @camper.update_attribute(:isRif, false)
        Riflery.first.update_attribute(:list, @riflery)
        
        @painting << @camper.name
        @camper.update_attribute(:isPaint, true)
        Painting.first.update_attribute(:list, @painting)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:sign] == "1"
      
        @riflery.delete_at(@riflery.index(@camper.name))
        @camper.update_attribute(:isRif, false)
        Riflery.first.update_attribute(:list, @riflery)
        
        @sign << @camper.name
        @camper.update_attribute(:isSign, true)
        Sign.first.update_attribute(:list, @sign)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:spanish] == "1"
      
        @riflery.delete_at(@riflery.index(@camper.name))
        @camper.update_attribute(:isRif, false)
        Riflery.first.update_attribute(:list, @riflery)
        
        @spanish << @camper.name
        @camper.update_attribute(:isSpan, true)
        Spanish.first.update_attribute(:list, @spanish)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:talking] == "1"
      
        @riflery.delete_at(@riflery.index(@camper.name))
        @camper.update_attribute(:isRif, false)
        Riflery.first.update_attribute(:list, @riflery)
        
        @talking << @camper.name
        @camper.update_attribute(:isTalk, true)
        Talking.first.update_attribute(:list, @talking)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      else
        flash[:warning] = "No activity to reschedule to was selected, please select an activity"
        redirect_to reassign_path and return
      end
      
    elsif @canoeing.index(@camper.name) != nil
      
      if params[:reassign][:archery] == "1"
        
        @canoeing.delete_at(@canoeing.index(@camper.name))
        @camper.update_attribute(:isCan, false)
        Canoeing.first.update_attribute(:list, @canoeing)
        
        @archery << @camper.name
        @camper.update_attribute(:isArch, true)
        Archery.first.update_attribute(:list, @archery)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:riflery] == "1"
        
        @canoeing.delete_at(@canoeing.index(@camper.name))
        @camper.update_attribute(:isCan, false)
        Canoeing.first.update_attribute(:list, @canoeing)
        
        @riflery << @camper.name
        @camper.update_attribute(:isRif, true)
        Riflery.first.update_attribute(:list, @riflery)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:canoeing] == "1"
        
        flash[:warning] = "No reassignment has been done since the camper is already in canoeing today"
        redirect_to reassign_path and return
        
      elsif params[:reassign][:baking] == "1"
      
        @canoeing.delete_at(@canoeing.index(@camper.name))
        @camper.update_attribute(:isCan, false)
        Canoeing.first.update_attribute(:list, @canoeing)
        
        @baking << @camper.name
        @camper.update_attribute(:isBake, true)
        Baking.first.update_attribute(:list, @baking)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:camping] == "1"
        
        @canoeing.delete_at(@canoeing.index(@camper.name))
        @camper.update_attribute(:isCan, false)
        Canoeing.first.update_attribute(:list, @canoeing)
        
        @camping << @camper.name
        @camper.update_attribute(:isCamp, true)
        Camping.first.update_attribute(:list, @camping)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:rocks] == "1"
        
        @canoeing.delete_at(@canoeing.index(@camper.name))
        @camper.update_attribute(:isCan, false)
        Canoeing.first.update_attribute(:list, @canoeing)
        
        @rocks << @camper.name
        @camper.update_attribute(:isRock, true)
        Rock.first.update_attribute(:list, @rocks)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:fishing] == "1"
        
        @canoeing.delete_at(@canoeing.index(@camper.name))
        @camper.update_attribute(:isCan, false)
        Canoeing.first.update_attribute(:list, @canoeing)
        
        @fishing << @camper.name
        @camper.update_attribute(:isFish, true)
        Fishing.first.update_attribute(:list, @fishing)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:hiking] == "1"
        
        @canoeing.delete_at(@canoeing.index(@camper.name))
        @camper.update_attribute(:isCan, false)
        Canoeing.first.update_attribute(:list, @canoeing)
        
        @hiking << @camper.name
        @camper.update_attribute(:isHike, true)
        Hiking.first.update_attribute(:list, @hiking)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:pottery] == "1"
      
        @canoeing.delete_at(@canoeing.index(@camper.name))
        @camper.update_attribute(:isCan, false)
        Canoeing.first.update_attribute(:list, @canoeing)
        
        @pottery << @camper.name
        @camper.update_attribute(:isPot, true)
        Pottery.first.update_attribute(:list, @pottery)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:arts] == "1"
        
        @canoeing.delete_at(@canoeing.index(@camper.name))
        @camper.update_attribute(:isCan, false)
        Canoeing.first.update_attribute(:list, @canoeing)
        
        @arts << @camper.name
        @camper.update_attribute(:isArt, true)
        Art.first.update_attribute(:list, @arts)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:percussion] == "1"
      
        @canoeing.delete_at(@canoeing.index(@camper.name))
        @camper.update_attribute(:isCan, false)
        Canoeing.first.update_attribute(:list, @canoeing)
        
        @percussion << @camper.name
        @camper.update_attribute(:isPer, true)
        Percussion.first.update_attribute(:list, @percussion)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:games] == "1"
        
        @canoeing.delete_at(@canoeing.index(@camper.name))
        @camper.update_attribute(:isCan, false)
        Canoeing.first.update_attribute(:list, @canoeing)
        
        @games << @camper.name
        @camper.update_attribute(:isGame, true)
        Game.first.update_attribute(:list, @games)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:guitars] == "1"
      
        @canoeing.delete_at(@canoeing.index(@camper.name))
        @camper.update_attribute(:isCan, false)
        Canoeing.first.update_attribute(:list, @canoeing)
        
        @guitars << @camper.name
        @camper.update_attribute(:isGuit, true)
        Guitar.first.update_attribute(:list, @guitars)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:choir] == "1"
      
        @canoeing.delete_at(@canoeing.index(@camper.name))
        @camper.update_attribute(:isCan, false)
        Canoeing.first.update_attribute(:list, @canoeing)
        
        @choir << @camper.name
        @camper.update_attribute(:isChoir, true)
        Choir.first.update_attribute(:list, @choir)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:writing] == "1"
        
        @canoeing.delete_at(@canoeing.index(@camper.name))
        @camper.update_attribute(:isCan, false)
        Canoeing.first.update_attribute(:list, @canoeing)
        
        @writing << @camper.name
        @camper.update_attribute(:isWrite, true)
        Writing.first.update_attribute(:list, @writing)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:weaving] == "1"
      
        @canoeing.delete_at(@canoeing.index(@camper.name))
        @camper.update_attribute(:isCan, false)
        Canoeing.first.update_attribute(:list, @canoeing)
        
        @weaving << @camper.name
        @camper.update_attribute(:isWeave, true)
        Weaving.first.update_attribute(:list, @weaving)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:notdance] == "1"
      
        @canoeing.delete_at(@canoeing.index(@camper.name))
        @camper.update_attribute(:isCan, false)
        Canoeing.first.update_attribute(:list, @canoeing)
        
        @notdance << @camper.name
        @camper.update_attribute(:isNotdance, true)
        Notdance.first.update_attribute(:list, @notdance)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:painting] == "1"
      
        @canoeing.delete_at(@canoeing.index(@camper.name))
        @camper.update_attribute(:isCan, false)
        Canoeing.first.update_attribute(:list, @canoeing)
        
        @painting << @camper.name
        @camper.update_attribute(:isPaint, true)
        Painting.first.update_attribute(:list, @painting)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:sign] == "1"
      
        @canoeing.delete_at(@canoeing.index(@camper.name))
        @camper.update_attribute(:isCan, false)
        Canoeing.first.update_attribute(:list, @canoeing)
        
        @sign << @camper.name
        @camper.update_attribute(:isSign, true)
        Sign.first.update_attribute(:list, @sign)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:spanish] == "1"
      
        @canoeing.delete_at(@canoeing.index(@camper.name))
        @camper.update_attribute(:isCan, false)
        Canoeing.first.update_attribute(:list, @canoeing)
        
        @spanish << @camper.name
        @camper.update_attribute(:isSpan, true)
        Spanish.first.update_attribute(:list, @spanish)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:talking] == "1"
      
        @canoeing.delete_at(@canoeing.index(@camper.name))
        @camper.update_attribute(:isCan, false)
        Canoeing.first.update_attribute(:list, @canoeing)
        
        @talking << @camper.name
        @camper.update_attribute(:isTalk, true)
        Talking.first.update_attribute(:list, @talking)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      else
        flash[:warning] = "No activity to reschedule to was selected, please select an activity"
        redirect_to reassign_path and return
      end
      
    elsif @baking.index(@camper.name) != nil
      
      if params[:reassign][:archery] == "1"
        
        @baking.delete_at(@baking.index(@camper.name))
        @camper.update_attribute(:isBake, false)
        Baking.first.update_attribute(:list, @baking)
        
        @archery << @camper.name
        @camper.update_attribute(:isArch, true)
        Archery.first.update_attribute(:list, @archery)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:riflery] == "1"
        
        @baking.delete_at(@baking.index(@camper.name))
        @camper.update_attribute(:isBake, false)
        Baking.first.update_attribute(:list, @baking)
        
        @riflery << @camper.name
        @camper.update_attribute(:isRif, true)
        Riflery.first.update_attribute(:list, @riflery)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:canoeing] == "1"
      
        @baking.delete_at(@baking.index(@camper.name))
        @camper.update_attribute(:isBake, false)
        Baking.first.update_attribute(:list, @baking)
        
        @canoeing << @camper.name
        @camper.update_attribute(:isCan, true)
        Canoeing.first.update_attribute(:list, @canoeing)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:baking] == "1"
      
        flash[:warning] = "No reassignment has been done since the camper is already in baking today"
        redirect_to reassign_path and return
        
      elsif params[:reassign][:camping] == "1"
        
        @baking.delete_at(@baking.index(@camper.name))
        @camper.update_attribute(:isBake, false)
        Baking.first.update_attribute(:list, @baking)
        
        @camping << @camper.name
        @camper.update_attribute(:isCamp, true)
        Camping.first.update_attribute(:list, @camping)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:rocks] == "1"
        
        @baking.delete_at(@baking.index(@camper.name))
        @camper.update_attribute(:isBake, false)
        Baking.first.update_attribute(:list, @baking)
        
        @rocks << @camper.name
        @camper.update_attribute(:isRock, true)
        Rock.first.update_attribute(:list, @rocks)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:fishing] == "1"
        
        @baking.delete_at(@baking.index(@camper.name))
        @camper.update_attribute(:isBake, false)
        Baking.first.update_attribute(:list, @baking)
        
        @fishing << @camper.name
        @camper.update_attribute(:isFish, true)
        Fishing.first.update_attribute(:list, @fishing)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:hiking] == "1"
        
        @baking.delete_at(@baking.index(@camper.name))
        @camper.update_attribute(:isBake, false)
        Baking.first.update_attribute(:list, @baking)
        
        @hiking << @camper.name
        @camper.update_attribute(:isHike, true)
        Hiking.first.update_attribute(:list, @hiking)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:pottery] == "1"
      
        @baking.delete_at(@baking.index(@camper.name))
        @camper.update_attribute(:isBake, false)
        Baking.first.update_attribute(:list, @baking)
        
        @pottery << @camper.name
        @camper.update_attribute(:isPot, true)
        Pottery.first.update_attribute(:list, @pottery)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:arts] == "1"
        
        @baking.delete_at(@baking.index(@camper.name))
        @camper.update_attribute(:isBake, false)
        Baking.first.update_attribute(:list, @baking)
        
        @arts << @camper.name
        @camper.update_attribute(:isArt, true)
        Art.first.update_attribute(:list, @arts)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:percussion] == "1"
      
        @baking.delete_at(@baking.index(@camper.name))
        @camper.update_attribute(:isBake, false)
        Baking.first.update_attribute(:list, @baking)
        
        @percussion << @camper.name
        @camper.update_attribute(:isPer, true)
        Percussion.first.update_attribute(:list, @percussion)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:games] == "1"
        
        @baking.delete_at(@baking.index(@camper.name))
        @camper.update_attribute(:isBake, false)
        Baking.first.update_attribute(:list, @baking)
        
        @games << @camper.name
        @camper.update_attribute(:isGame, true)
        Game.first.update_attribute(:list, @games)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:guitars] == "1"
      
        @baking.delete_at(@baking.index(@camper.name))
        @camper.update_attribute(:isBake, false)
        Baking.first.update_attribute(:list, @baking)
        
        @guitars << @camper.name
        @camper.update_attribute(:isGuit, true)
        Guitar.first.update_attribute(:list, @guitars)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:choir] == "1"
      
        @baking.delete_at(@baking.index(@camper.name))
        @camper.update_attribute(:isBake, false)
        Baking.first.update_attribute(:list, @baking)
        
        @choir << @camper.name
        @camper.update_attribute(:isChoir, true)
        Choir.first.update_attribute(:list, @choir)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:writing] == "1"
        
        @baking.delete_at(@baking.index(@camper.name))
        @camper.update_attribute(:isBake, false)
        Baking.first.update_attribute(:list, @baking)
        
        @writing << @camper.name
        @camper.update_attribute(:isWrite, true)
        Writing.first.update_attribute(:list, @writing)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:weaving] == "1"
      
        @baking.delete_at(@baking.index(@camper.name))
        @camper.update_attribute(:isBake, false)
        Baking.first.update_attribute(:list, @baking)
        
        @weaving << @camper.name
        @camper.update_attribute(:isWeave, true)
        Weaving.first.update_attribute(:list, @weaving)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:notdance] == "1"
      
        @baking.delete_at(@baking.index(@camper.name))
        @camper.update_attribute(:isBake, false)
        Baking.first.update_attribute(:list, @baking)
        
        @notdance << @camper.name
        @camper.update_attribute(:isNotdance, true)
        Notdance.first.update_attribute(:list, @notdance)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:painting] == "1"
      
        @baking.delete_at(@baking.index(@camper.name))
        @camper.update_attribute(:isBake, false)
        Baking.first.update_attribute(:list, @baking)
        
        @painting << @camper.name
        @camper.update_attribute(:isPaint, true)
        Painting.first.update_attribute(:list, @painting)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:sign] == "1"
      
        @baking.delete_at(@baking.index(@camper.name))
        @camper.update_attribute(:isBake, false)
        Baking.first.update_attribute(:list, @baking)
        
        @sign << @camper.name
        @camper.update_attribute(:isSign, true)
        Sign.first.update_attribute(:list, @sign)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:spanish] == "1"
      
        @baking.delete_at(@baking.index(@camper.name))
        @camper.update_attribute(:isBake, false)
        Baking.first.update_attribute(:list, @baking)
        
        @spanish << @camper.name
        @camper.update_attribute(:isSpan, true)
        Spanish.first.update_attribute(:list, @spanish)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:talking] == "1"
      
        @baking.delete_at(@baking.index(@camper.name))
        @camper.update_attribute(:isBake, false)
        Baking.first.update_attribute(:list, @baking)
        
        @talking << @camper.name
        @camper.update_attribute(:isTalk, true)
        Talking.first.update_attribute(:list, @talking)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      else
        flash[:warning] = "No activity to reschedule to was selected, please select an activity"
        redirect_to reassign_path and return
      end
      
    elsif @camping.index(@camper.name) != nil
      
      if params[:reassign][:archery] == "1"
        
        @camping.delete_at(@camping.index(@camper.name))
        @camper.update_attribute(:isCamp, false)
        Camping.first.update_attribute(:list, @camping)
        
        @archery << @camper.name
        @camper.update_attribute(:isArch, true)
        Archery.first.update_attribute(:list, @archery)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:riflery] == "1"
        
        @camping.delete_at(@camping.index(@camper.name))
        @camper.update_attribute(:isCamp, false)
        Camping.first.update_attribute(:list, @camping)
        
        @riflery << @camper.name
        @camper.update_attribute(:isRif, true)
        Riflery.first.update_attribute(:list, @riflery)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:canoeing] == "1"
      
        @camping.delete_at(@camping.index(@camper.name))
        @camper.update_attribute(:isCamp, false)
        Camping.first.update_attribute(:list, @camping)
        
        @canoeing << @camper.name
        @camper.update_attribute(:isCan, true)
        Canoeing.first.update_attribute(:list, @canoeing)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:baking] == "1"
      
        @camping.delete_at(@camping.index(@camper.name))
        @camper.update_attribute(:isCamp, false)
        Camping.first.update_attribute(:list, @camping)
        
        @baking << @camper.name
        @camper.update_attribute(:isBake, true)
        Baking.first.update_attribute(:list, @baking)
        
        flash[:success] = "Camper has been successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:camping] == "1"
        
        flash[:warning] = "No reassignment has been done since the camper is already in camping today"
        redirect_to reassign_path and return
        
      elsif params[:reassign][:rocks] == "1"
        
        @camping.delete_at(@camping.index(@camper.name))
        @camper.update_attribute(:isCamp, false)
        Camping.first.update_attribute(:list, @camping)
        
        @rocks << @camper.name
        @camper.update_attribute(:isRock, true)
        Rock.first.update_attribute(:list, @rocks)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:fishing] == "1"
        
        @camping.delete_at(@camping.index(@camper.name))
        @camper.update_attribute(:isCamp, false)
        Camping.first.update_attribute(:list, @camping)
        
        @fishing << @camper.name
        @camper.update_attribute(:isFish, true)
        Fishing.first.update_attribute(:list, @fishing)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:hiking] == "1"
        
        @camping.delete_at(@camping.index(@camper.name))
        @camper.update_attribute(:isCamp, false)
        Camping.first.update_attribute(:list, @camping)
        
        @hiking << @camper.name
        @camper.update_attribute(:isHike, true)
        Hiking.first.update_attribute(:list, @hiking)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:pottery] == "1"
      
        @camping.delete_at(@camping.index(@camper.name))
        @camper.update_attribute(:isCamp, false)
        Camping.first.update_attribute(:list, @camping)
        
        @pottery << @camper.name
        @camper.update_attribute(:isPot, true)
        Pottery.first.update_attribute(:list, @pottery)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:arts] == "1"
        
        @camping.delete_at(@camping.index(@camper.name))
        @camper.update_attribute(:isCamp, false)
        Camping.first.update_attribute(:list, @camping)
        
        @arts << @camper.name
        @camper.update_attribute(:isArt, true)
        Art.first.update_attribute(:list, @arts)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:percussion] == "1"
      
        @camping.delete_at(@camping.index(@camper.name))
        @camper.update_attribute(:isCamp, false)
        Camping.first.update_attribute(:list, @camping)
        
        @percussion << @camper.name
        @camper.update_attribute(:isPer, true)
        Percussion.first.update_attribute(:list, @percussion)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:games] == "1"
        
        @camping.delete_at(@camping.index(@camper.name))
        @camper.update_attribute(:isCamp, false)
        Camping.first.update_attribute(:list, @camping)
        
        @games << @camper.name
        @camper.update_attribute(:isGame, true)
        Game.first.update_attribute(:list, @games)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:guitars] == "1"
      
        @camping.delete_at(@camping.index(@camper.name))
        @camper.update_attribute(:isCamp, false)
        Camping.first.update_attribute(:list, @camping)
        
        @guitars << @camper.name
        @camper.update_attribute(:isGuit, true)
        Guitar.first.update_attribute(:list, @guitars)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:choir] == "1"
      
        @camping.delete_at(@camping.index(@camper.name))
        @camper.update_attribute(:isCamp, false)
        Camping.first.update_attribute(:list, @camping)
        
        @choir << @camper.name
        @camper.update_attribute(:isChoir, true)
        Choir.first.update_attribute(:list, @choir)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:writing] == "1"
        
        @camping.delete_at(@camping.index(@camper.name))
        @camper.update_attribute(:isCamp, false)
        Camping.first.update_attribute(:list, @camping)
        
        @writing << @camper.name
        @camper.update_attribute(:isWrite, true)
        Writing.first.update_attribute(:list, @writing)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:weaving] == "1"
      
        @camping.delete_at(@camping.index(@camper.name))
        @camper.update_attribute(:isCamp, false)
        Camping.first.update_attribute(:list, @camping)
        
        @weaving << @camper.name
        @camper.update_attribute(:isWeave, true)
        Weaving.first.update_attribute(:list, @weaving)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:notdance] == "1"
      
        @camping.delete_at(@camping.index(@camper.name))
        @camper.update_attribute(:isCamp, false)
        Camping.first.update_attribute(:list, @camping)
        
        @notdance << @camper.name
        @camper.update_attribute(:isNotdance, true)
        Notdance.first.update_attribute(:list, @notdance)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:painting] == "1"
      
        @camping.delete_at(@camping.index(@camper.name))
        @camper.update_attribute(:isCamp, false)
        Camping.first.update_attribute(:list, @camping)
        
        @painting << @camper.name
        @camper.update_attribute(:isPaint, true)
        Painting.first.update_attribute(:list, @painting)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:sign] == "1"
      
        @camping.delete_at(@camping.index(@camper.name))
        @camper.update_attribute(:isCamp, false)
        Camping.first.update_attribute(:list, @camping)
        
        @sign << @camper.name
        @camper.update_attribute(:isSign, true)
        Sign.first.update_attribute(:list, @sign)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:spanish] == "1"
      
        @camping.delete_at(@camping.index(@camper.name))
        @camper.update_attribute(:isCamp, false)
        Camping.first.update_attribute(:list, @camping)
        
        @spanish << @camper.name
        @camper.update_attribute(:isSpan, true)
        Spanish.first.update_attribute(:list, @spanish)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:talking] == "1"
      
        @camping.delete_at(@camping.index(@camper.name))
        @camper.update_attribute(:isCamp, false)
        Camping.first.update_attribute(:list, @camping)
        
        @talking << @camper.name
        @camper.update_attribute(:isTalk, true)
        Talking.first.update_attribute(:list, @talking)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      else
        flash[:warning] = "No activity to reschedule to was selected, please select an activity"
        redirect_to reassign_path and return
      end
      
    elsif @rocks.index(@camper.name) != nil
      
      if params[:reassign][:archery] == "1"
        
        @rocks.delete_at(@rocks.index(@camper.name))
        @camper.update_attribute(:isRock, false)
        Rock.first.update_attribute(:list, @rocks)
        
        @archery << @camper.name
        @camper.update_attribute(:isArch, true)
        Archery.first.update_attribute(:list, @archery)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:riflery] == "1"
        
        @rocks.delete_at(@rocks.index(@camper.name))
        @camper.update_attribute(:isRock, false)
        Rock.first.update_attribute(:list, @rocks)
        
        @riflery << @camper.name
        @camper.update_attribute(:isRif, true)
        Riflery.first.update_attribute(:list, @riflery)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:canoeing] == "1"
      
        @rocks.delete_at(@rocks.index(@camper.name))
        @camper.update_attribute(:isRock, false)
        Rock.first.update_attribute(:list, @rocks)
        
        @canoeing << @camper.name
        @camper.update_attribute(:isCan, true)
        Canoeing.first.update_attribute(:list, @canoeing)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:baking] == "1"
      
        @rocks.delete_at(@rocks.index(@camper.name))
        @camper.update_attribute(:isRock, false)
        Rock.first.update_attribute(:list, @rocks)
        
        @baking << @camper.name
        @camper.update_attribute(:isBake, true)
        Baking.first.update_attribute(:list, @baking)
        
        flash[:success] = "Camper has been successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:camping] == "1"
      
        @rocks.delete_at(@rocks.index(@camper.name))
        @camper.update_attribute(:isRock, false)
        Rock.first.update_attribute(:list, @rocks)
        
        @camping << @camper.name
        @camper.update_attribute(:isCamp, true)
        Camping.first.update_attribute(:list, @camping)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:rocks] == "1"
        
        flash[:warning] = "No reassignment has been done since the camper is already in rock wall today"
        redirect_to reassign_path and return
        
      elsif params[:reassign][:fishing] == "1"
        
        @rocks.delete_at(@rocks.index(@camper.name))
        @camper.update_attribute(:isRock, false)
        Rock.first.update_attribute(:list, @rocks)
        
        @fishing << @camper.name
        @camper.update_attribute(:isFish, true)
        Fishing.first.update_attribute(:list, @fishing)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:hiking] == "1"
        
        @rocks.delete_at(@rocks.index(@camper.name))
        @camper.update_attribute(:isRock, false)
        Rock.first.update_attribute(:list, @rocks)
        
        @hiking << @camper.name
        @camper.update_attribute(:isHike, true)
        Hiking.first.update_attribute(:list, @hiking)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:pottery] == "1"
      
        @rocks.delete_at(@rocks.index(@camper.name))
        @camper.update_attribute(:isRock, false)
        Rock.first.update_attribute(:list, @rocks)
        
        @pottery << @camper.name
        @camper.update_attribute(:isPot, true)
        Pottery.first.update_attribute(:list, @pottery)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:arts] == "1"
        
        @rocks.delete_at(@rocks.index(@camper.name))
        @camper.update_attribute(:isRock, false)
        Rock.first.update_attribute(:list, @rocks)
        
        @arts << @camper.name
        @camper.update_attribute(:isArt, true)
        Art.first.update_attribute(:list, @arts)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:percussion] == "1"
      
        @rocks.delete_at(@rocks.index(@camper.name))
        @camper.update_attribute(:isRock, false)
        Rock.first.update_attribute(:list, @rocks)
        
        @percussion << @camper.name
        @camper.update_attribute(:isPer, true)
        Percussion.first.update_attribute(:list, @percussion)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:games] == "1"
        
        @rocks.delete_at(@rocks.index(@camper.name))
        @camper.update_attribute(:isRock, false)
        Rock.first.update_attribute(:list, @rocks)
        
        @games << @camper.name
        @camper.update_attribute(:isGame, true)
        Game.first.update_attribute(:list, @games)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:guitars] == "1"
      
        @rocks.delete_at(@rocks.index(@camper.name))
        @camper.update_attribute(:isRock, false)
        Rock.first.update_attribute(:list, @rocks)
        
        @guitars << @camper.name
        @camper.update_attribute(:isGuit, true)
        Guitar.first.update_attribute(:list, @guitars)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:choir] == "1"
      
        @rocks.delete_at(@rocks.index(@camper.name))
        @camper.update_attribute(:isRock, false)
        Rock.first.update_attribute(:list, @rocks)
        
        @choir << @camper.name
        @camper.update_attribute(:isChoir, true)
        Choir.first.update_attribute(:list, @choir)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:writing] == "1"
        
        @rocks.delete_at(@rocks.index(@camper.name))
        @camper.update_attribute(:isRock, false)
        Rock.first.update_attribute(:list, @rocks)
        
        @writing << @camper.name
        @camper.update_attribute(:isWrite, true)
        Writing.first.update_attribute(:list, @writing)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:weaving] == "1"
      
        @rocks.delete_at(@rocks.index(@camper.name))
        @camper.update_attribute(:isRock, false)
        Rock.first.update_attribute(:list, @rocks)
        
        @weaving << @camper.name
        @camper.update_attribute(:isWeave, true)
        Weaving.first.update_attribute(:list, @weaving)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:notdance] == "1"
      
        @rocks.delete_at(@rocks.index(@camper.name))
        @camper.update_attribute(:isRock, false)
        Rock.first.update_attribute(:list, @rocks)
        
        @notdance << @camper.name
        @camper.update_attribute(:isNotdance, true)
        Notdance.first.update_attribute(:list, @notdance)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:painting] == "1"
      
        @rocks.delete_at(@rocks.index(@camper.name))
        @camper.update_attribute(:isRock, false)
        Rock.first.update_attribute(:list, @rocks)
        
        @painting << @camper.name
        @camper.update_attribute(:isPaint, true)
        Painting.first.update_attribute(:list, @painting)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:sign] == "1"
      
        @rocks.delete_at(@rocks.index(@camper.name))
        @camper.update_attribute(:isRock, false)
        Rock.first.update_attribute(:list, @rocks)
        
        @sign << @camper.name
        @camper.update_attribute(:isSign, true)
        Sign.first.update_attribute(:list, @sign)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:spanish] == "1"
      
        @rocks.delete_at(@rocks.index(@camper.name))
        @camper.update_attribute(:isRock, false)
        Rock.first.update_attribute(:list, @rocks)
        
        @spanish << @camper.name
        @camper.update_attribute(:isSpan, true)
        Spanish.first.update_attribute(:list, @spanish)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:talking] == "1"
      
        @rocks.delete_at(@rocks.index(@camper.name))
        @camper.update_attribute(:isRock, false)
        Rock.first.update_attribute(:list, @rocks)
        
        @talking << @camper.name
        @camper.update_attribute(:isTalk, true)
        Talking.first.update_attribute(:list, @talking)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      else
        flash[:warning] = "No activity to reschedule to was selected, please select an activity"
        redirect_to reassign_path and return
      end
      
    elsif @fishing.index(@camper.name) != nil
      
      if params[:reassign][:archery] == "1"
        
        @fishing.delete_at(@fishing.index(@camper.name))
        @camper.update_attribute(:isFish, false)
        Fishing.first.update_attribute(:list, @fishing)
        
        @archery << @camper.name
        @camper.update_attribute(:isArch, true)
        Archery.first.update_attribute(:list, @archery)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:riflery] == "1"
        
        @fishing.delete_at(@fishing.index(@camper.name))
        @camper.update_attribute(:isFish, false)
        Fishing.first.update_attribute(:list, @fishing)
        
        @riflery << @camper.name
        @camper.update_attribute(:isRif, true)
        Riflery.first.update_attribute(:list, @riflery)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:canoeing] == "1"
      
        @fishing.delete_at(@fishing.index(@camper.name))
        @camper.update_attribute(:isFish, false)
        Fishing.first.update_attribute(:list, @fishing)
        
        @canoeing << @camper.name
        @camper.update_attribute(:isCan, true)
        Canoeing.first.update_attribute(:list, @canoeing)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:baking] == "1"
      
        @fishing.delete_at(@fishing.index(@camper.name))
        @camper.update_attribute(:isFish, false)
        Fishing.first.update_attribute(:list, @fishing)
        
        @baking << @camper.name
        @camper.update_attribute(:isBake, true)
        Baking.first.update_attribute(:list, @baking)
        
        flash[:success] = "Camper has been successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:camping] == "1"
      
        @fishing.delete_at(@fishing.index(@camper.name))
        @camper.update_attribute(:isFish, false)
        Fishing.first.update_attribute(:list, @fishing)
        
        @camping << @camper.name
        @camper.update_attribute(:isCamp, true)
        Camping.first.update_attribute(:list, @camping)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:rocks] == "1"
      
        @fishing.delete_at(@fishing.index(@camper.name))
        @camper.update_attribute(:isFish, false)
        Fishing.first.update_attribute(:list, @fishing)
        
        @rocks << @camper.name
        @camper.update_attribute(:isRock, true)
        Rock.first.update_attribute(:list, @rocks)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:fishing] == "1"
        
        flash[:warning] = "No reassignment has been done since the camper is already in fishing today"
        redirect_to reassign_path and return
        
      elsif params[:reassign][:hiking] == "1"
        
        @fishing.delete_at(@fishing.index(@camper.name))
        @camper.update_attribute(:isFish, false)
        Fishing.first.update_attribute(:list, @fishing)
        
        @hiking << @camper.name
        @camper.update_attribute(:isHike, true)
        Hiking.first.update_attribute(:list, @hiking)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:pottery] == "1"
      
        @fishing.delete_at(@fishing.index(@camper.name))
        @camper.update_attribute(:isFish, false)
        Fishing.first.update_attribute(:list, @fishing)
        
        @pottery << @camper.name
        @camper.update_attribute(:isPot, true)
        Pottery.first.update_attribute(:list, @pottery)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:arts] == "1"
        
        @fishing.delete_at(@fishing.index(@camper.name))
        @camper.update_attribute(:isFish, false)
        Fishing.first.update_attribute(:list, @fishing)
        
        @arts << @camper.name
        @camper.update_attribute(:isArt, true)
        Art.first.update_attribute(:list, @arts)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:percussion] == "1"
      
        @fishing.delete_at(@fishing.index(@camper.name))
        @camper.update_attribute(:isFish, false)
        Fishing.first.update_attribute(:list, @fishing)
        
        @percussion << @camper.name
        @camper.update_attribute(:isPer, true)
        Percussion.first.update_attribute(:list, @percussion)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:games] == "1"
        
        @fishing.delete_at(@fishing.index(@camper.name))
        @camper.update_attribute(:isFish, false)
        Fishing.first.update_attribute(:list, @fishing)
        
        @games << @camper.name
        @camper.update_attribute(:isGame, true)
        Game.first.update_attribute(:list, @games)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:guitars] == "1"
      
        @fishing.delete_at(@fishing.index(@camper.name))
        @camper.update_attribute(:isFish, false)
        Fishing.first.update_attribute(:list, @fishing)
        
        @guitars << @camper.name
        @camper.update_attribute(:isGuit, true)
        Guitar.first.update_attribute(:list, @guitars)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:choir] == "1"
      
        @fishing.delete_at(@fishing.index(@camper.name))
        @camper.update_attribute(:isFish, false)
        Fishing.first.update_attribute(:list, @fishing)
        
        @choir << @camper.name
        @camper.update_attribute(:isChoir, true)
        Choir.first.update_attribute(:list, @choir)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:writing] == "1"
        
        @fishing.delete_at(@fishing.index(@camper.name))
        @camper.update_attribute(:isFish, false)
        Fishing.first.update_attribute(:list, @fishing)
        
        @writing << @camper.name
        @camper.update_attribute(:isWrite, true)
        Writing.first.update_attribute(:list, @writing)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:weaving] == "1"
      
        @fishing.delete_at(@fishing.index(@camper.name))
        @camper.update_attribute(:isFish, false)
        Fishing.first.update_attribute(:list, @fishing)
        
        @weaving << @camper.name
        @camper.update_attribute(:isWeave, true)
        Weaving.first.update_attribute(:list, @weaving)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:notdance] == "1"
      
        @fishing.delete_at(@fishing.index(@camper.name))
        @camper.update_attribute(:isFish, false)
        Fishing.first.update_attribute(:list, @fishing)
        
        @notdance << @camper.name
        @camper.update_attribute(:isNotdance, true)
        Notdance.first.update_attribute(:list, @notdance)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:painting] == "1"
      
        @fishing.delete_at(@fishing.index(@camper.name))
        @camper.update_attribute(:isFish, false)
        Fishing.first.update_attribute(:list, @fishing)
        
        @painting << @camper.name
        @camper.update_attribute(:isPaint, true)
        Painting.first.update_attribute(:list, @painting)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:sign] == "1"
      
        @fishing.delete_at(@fishing.index(@camper.name))
        @camper.update_attribute(:isFish, false)
        Fishing.first.update_attribute(:list, @fishing)
        
        @sign << @camper.name
        @camper.update_attribute(:isSign, true)
        Sign.first.update_attribute(:list, @sign)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:spanish] == "1"
      
        @fishing.delete_at(@fishing.index(@camper.name))
        @camper.update_attribute(:isFish, false)
        Fishing.first.update_attribute(:list, @fishing)
        
        @spanish << @camper.name
        @camper.update_attribute(:isSpan, true)
        Spanish.first.update_attribute(:list, @spanish)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:talking] == "1"
      
        @fishing.delete_at(@fishing.index(@camper.name))
        @camper.update_attribute(:isFish, false)
        Fishing.first.update_attribute(:list, @fishing)
        
        @talking << @camper.name
        @camper.update_attribute(:isTalk, true)
        Talking.first.update_attribute(:list, @talking)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      else
        flash[:warning] = "No activity to reschedule to was selected, please select an activity"
        redirect_to reassign_path and return
      end
      
    elsif @hiking.index(@camper.name) != nil
      
      if params[:reassign][:archery] == "1"
        
        @hiking.delete_at(@hiking.index(@camper.name))
        @camper.update_attribute(:isHike, false)
        Hiking.first.update_attribute(:list, @hiking)
        
        @archery << @camper.name
        @camper.update_attribute(:isArch, true)
        Archery.first.update_attribute(:list, @archery)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:riflery] == "1"
        
        @hiking.delete_at(@hiking.index(@camper.name))
        @camper.update_attribute(:isHike, false)
        Hiking.first.update_attribute(:list, @hiking)
        
        @riflery << @camper.name
        @camper.update_attribute(:isRif, true)
        Riflery.first.update_attribute(:list, @riflery)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:canoeing] == "1"
      
        @hiking.delete_at(@hiking.index(@camper.name))
        @camper.update_attribute(:isHike, false)
        Hiking.first.update_attribute(:list, @hiking)
        
        @canoeing << @camper.name
        @camper.update_attribute(:isCan, true)
        Canoeing.first.update_attribute(:list, @canoeing)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:baking] == "1"
      
        @hiking.delete_at(@hiking.index(@camper.name))
        @camper.update_attribute(:isHike, false)
        Hiking.first.update_attribute(:list, @hiking)
        
        @baking << @camper.name
        @camper.update_attribute(:isBake, true)
        Baking.first.update_attribute(:list, @baking)
        
        flash[:success] = "Camper has been successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:camping] == "1"
      
        @hiking.delete_at(@hiking.index(@camper.name))
        @camper.update_attribute(:isHike, false)
        Hiking.first.update_attribute(:list, @hiking)
        
        @camping << @camper.name
        @camper.update_attribute(:isCamp, true)
        Camping.first.update_attribute(:list, @camping)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:rocks] == "1"
      
        @hiking.delete_at(@hiking.index(@camper.name))
        @camper.update_attribute(:isHike, false)
        Hiking.first.update_attribute(:list, @hiking)
        
        @rocks << @camper.name
        @camper.update_attribute(:isRock, true)
        Rock.first.update_attribute(:list, @rocks)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:fishing] == "1"
      
        @hiking.delete_at(@hiking.index(@camper.name))
        @camper.update_attribute(:isHike, false)
        Hiking.first.update_attribute(:list, @hiking)
        
        @fishing << @camper.name
        @camper.update_attribute(:isFish, true)
        Fishing.first.update_attribute(:list, @fishing)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:hiking] == "1"
        
        flash[:warning] = "No reassignment has been done since the camper is already in hiking today"
        redirect_to reassign_path and return
        
      elsif params[:reassign][:pottery] == "1"
      
        @hiking.delete_at(@hiking.index(@camper.name))
        @camper.update_attribute(:isHike, false)
        Hiking.first.update_attribute(:list, @hiking)
        
        @pottery << @camper.name
        @camper.update_attribute(:isPot, true)
        Pottery.first.update_attribute(:list, @pottery)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:arts] == "1"
        
        @hiking.delete_at(@hiking.index(@camper.name))
        @camper.update_attribute(:isHike, false)
        Hiking.first.update_attribute(:list, @hiking)
        
        @arts << @camper.name
        @camper.update_attribute(:isArt, true)
        Art.first.update_attribute(:list, @arts)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:percussion] == "1"
      
        @hiking.delete_at(@hiking.index(@camper.name))
        @camper.update_attribute(:isHike, false)
        Hiking.first.update_attribute(:list, @hiking)
        
        @percussion << @camper.name
        @camper.update_attribute(:isPer, true)
        Percussion.first.update_attribute(:list, @percussion)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:games] == "1"
        
        @hiking.delete_at(@hiking.index(@camper.name))
        @camper.update_attribute(:isHike, false)
        Hiking.first.update_attribute(:list, @hiking)
        
        @games << @camper.name
        @camper.update_attribute(:isGame, true)
        Game.first.update_attribute(:list, @games)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:guitars] == "1"
      
        @hiking.delete_at(@hiking.index(@camper.name))
        @camper.update_attribute(:isHike, false)
        Hiking.first.update_attribute(:list, @hiking)
        
        @guitars << @camper.name
        @camper.update_attribute(:isGuit, true)
        Guitar.first.update_attribute(:list, @guitars)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:choir] == "1"
      
        @hiking.delete_at(@hiking.index(@camper.name))
        @camper.update_attribute(:isHike, false)
        Hiking.first.update_attribute(:list, @hiking)
        
        @choir << @camper.name
        @camper.update_attribute(:isChoir, true)
        Choir.first.update_attribute(:list, @choir)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:writing] == "1"
        
        @hiking.delete_at(@hiking.index(@camper.name))
        @camper.update_attribute(:isHike, false)
        Hiking.first.update_attribute(:list, @hiking)
        
        @writing << @camper.name
        @camper.update_attribute(:isWrite, true)
        Writing.first.update_attribute(:list, @writing)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:weaving] == "1"
      
        @hiking.delete_at(@hiking.index(@camper.name))
        @camper.update_attribute(:isHike, false)
        Hiking.first.update_attribute(:list, @hiking)
        
        @weaving << @camper.name
        @camper.update_attribute(:isWeave, true)
        Weaving.first.update_attribute(:list, @weaving)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:notdance] == "1"
      
        @hiking.delete_at(@hiking.index(@camper.name))
        @camper.update_attribute(:isHike, false)
        Hiking.first.update_attribute(:list, @hiking)
        
        @notdance << @camper.name
        @camper.update_attribute(:isNotdance, true)
        Notdance.first.update_attribute(:list, @notdance)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:painting] == "1"
      
        @hiking.delete_at(@hiking.index(@camper.name))
        @camper.update_attribute(:isHike, false)
        Hiking.first.update_attribute(:list, @hiking)
        
        @painting << @camper.name
        @camper.update_attribute(:isPaint, true)
        Painting.first.update_attribute(:list, @painting)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:sign] == "1"
      
        @hiking.delete_at(@hiking.index(@camper.name))
        @camper.update_attribute(:isHike, false)
        Hiking.first.update_attribute(:list, @hiking)
        
        @sign << @camper.name
        @camper.update_attribute(:isSign, true)
        Sign.first.update_attribute(:list, @sign)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:spanish] == "1"
      
        @hiking.delete_at(@hiking.index(@camper.name))
        @camper.update_attribute(:isHike, false)
        Hiking.first.update_attribute(:list, @hiking)
        
        @spanish << @camper.name
        @camper.update_attribute(:isSpan, true)
        Spanish.first.update_attribute(:list, @spanish)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:talking] == "1"
      
        @hiking.delete_at(@hiking.index(@camper.name))
        @camper.update_attribute(:isHike, false)
        Hiking.first.update_attribute(:list, @hiking)
        
        @talking << @camper.name
        @camper.update_attribute(:isTalk, true)
        Talking.first.update_attribute(:list, @talking)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      else
        flash[:warning] = "No activity to reschedule to was selected, please select an activity"
        redirect_to reassign_path and return
      end
      
    elsif @pottery.index(@camper.name) != nil
      
      if params[:reassign][:archery] == "1"
        
        @pottery.delete_at(@pottery.index(@camper.name))
        @camper.update_attribute(:isPot, false)
        Pottery.first.update_attribute(:list, @pottery)
        
        @archery << @camper.name
        @camper.update_attribute(:isArch, true)
        Archery.first.update_attribute(:list, @archery)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:riflery] == "1"
        
        @pottery.delete_at(@pottery.index(@camper.name))
        @camper.update_attribute(:isPot, false)
        Pottery.first.update_attribute(:list, @pottery)
        
        @riflery << @camper.name
        @camper.update_attribute(:isRif, true)
        Riflery.first.update_attribute(:list, @riflery)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:canoeing] == "1"
      
        @pottery.delete_at(@pottery.index(@camper.name))
        @camper.update_attribute(:isPot, false)
        Pottery.first.update_attribute(:list, @pottery)
        
        @canoeing << @camper.name
        @camper.update_attribute(:isCan, true)
        Canoeing.first.update_attribute(:list, @canoeing)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:baking] == "1"
      
        @pottery.delete_at(@pottery.index(@camper.name))
        @camper.update_attribute(:isPot, false)
        Pottery.first.update_attribute(:list, @pottery)
        
        @baking << @camper.name
        @camper.update_attribute(:isBake, true)
        Baking.first.update_attribute(:list, @baking)
        
        flash[:success] = "Camper has been successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:camping] == "1"
      
        @pottery.delete_at(@pottery.index(@camper.name))
        @camper.update_attribute(:isPot, false)
        Pottery.first.update_attribute(:list, @pottery)
        
        @camping << @camper.name
        @camper.update_attribute(:isCamp, true)
        Camping.first.update_attribute(:list, @camping)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:rocks] == "1"
      
        @pottery.delete_at(@pottery.index(@camper.name))
        @camper.update_attribute(:isPot, false)
        Pottery.first.update_attribute(:list, @pottery)
        
        @rocks << @camper.name
        @camper.update_attribute(:isRock, true)
        Rock.first.update_attribute(:list, @rocks)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:fishing] == "1"
      
        @pottery.delete_at(@pottery.index(@camper.name))
        @camper.update_attribute(:isPot, false)
        Pottery.first.update_attribute(:list, @pottery)
        
        @fishing << @camper.name
        @camper.update_attribute(:isFish, true)
        Fishing.first.update_attribute(:list, @fishing)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:hiking] == "1"
      
        @pottery.delete_at(@pottery.index(@camper.name))
        @camper.update_attribute(:isPot, false)
        Pottery.first.update_attribute(:list, @pottery)
        
        @hiking << @camper.name
        @camper.update_attribute(:isHike, true)
        Hiking.first.update_attribute(:list, @hiking)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:pottery] == "1"
      
        flash[:warning] = "No reassignment has been done since the camper is already in pottery today"
        redirect_to reassign_path and return
        
      elsif params[:reassign][:arts] == "1"
        
        @pottery.delete_at(@pottery.index(@camper.name))
        @camper.update_attribute(:isPot, false)
        Pottery.first.update_attribute(:list, @pottery)
        
        @arts << @camper.name
        @camper.update_attribute(:isArt, true)
        Art.first.update_attribute(:list, @arts)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:percussion] == "1"
      
        @pottery.delete_at(@pottery.index(@camper.name))
        @camper.update_attribute(:isPot, false)
        Pottery.first.update_attribute(:list, @pottery)
        
        @percussion << @camper.name
        @camper.update_attribute(:isPer, true)
        Percussion.first.update_attribute(:list, @percussion)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:games] == "1"
        
        @pottery.delete_at(@pottery.index(@camper.name))
        @camper.update_attribute(:isPot, false)
        Pottery.first.update_attribute(:list, @pottery)
        
        @games << @camper.name
        @camper.update_attribute(:isGame, true)
        Game.first.update_attribute(:list, @games)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:guitars] == "1"
      
        @pottery.delete_at(@pottery.index(@camper.name))
        @camper.update_attribute(:isPot, false)
        Pottery.first.update_attribute(:list, @pottery)
        
        @guitars << @camper.name
        @camper.update_attribute(:isGuit, true)
        Guitar.first.update_attribute(:list, @guitars)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:choir] == "1"
      
        @pottery.delete_at(@pottery.index(@camper.name))
        @camper.update_attribute(:isPot, false)
        Pottery.first.update_attribute(:list, @pottery)
        
        @choir << @camper.name
        @camper.update_attribute(:isChoir, true)
        Choir.first.update_attribute(:list, @choir)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:writing] == "1"
        
        @pottery.delete_at(@pottery.index(@camper.name))
        @camper.update_attribute(:isPot, false)
        Pottery.first.update_attribute(:list, @pottery)
        
        @writing << @camper.name
        @camper.update_attribute(:isWrite, true)
        Writing.first.update_attribute(:list, @writing)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:weaving] == "1"
      
        @pottery.delete_at(@pottery.index(@camper.name))
        @camper.update_attribute(:isPot, false)
        Pottery.first.update_attribute(:list, @pottery)
        
        @weaving << @camper.name
        @camper.update_attribute(:isWeave, true)
        Weaving.first.update_attribute(:list, @weaving)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:notdance] == "1"
      
        @pottery.delete_at(@pottery.index(@camper.name))
        @camper.update_attribute(:isPot, false)
        Pottery.first.update_attribute(:list, @pottery)
        
        @notdance << @camper.name
        @camper.update_attribute(:isNotdance, true)
        Notdance.first.update_attribute(:list, @notdance)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:painting] == "1"
      
        @pottery.delete_at(@pottery.index(@camper.name))
        @camper.update_attribute(:isPot, false)
        Pottery.first.update_attribute(:list, @pottery)
        
        @painting << @camper.name
        @camper.update_attribute(:isPaint, true)
        Painting.first.update_attribute(:list, @painting)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:sign] == "1"
      
        @pottery.delete_at(@pottery.index(@camper.name))
        @camper.update_attribute(:isPot, false)
        Pottery.first.update_attribute(:list, @pottery)
        
        @sign << @camper.name
        @camper.update_attribute(:isSign, true)
        Sign.first.update_attribute(:list, @sign)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:spanish] == "1"
      
        @pottery.delete_at(@pottery.index(@camper.name))
        @camper.update_attribute(:isPot, false)
        Pottery.first.update_attribute(:list, @pottery)
        
        @spanish << @camper.name
        @camper.update_attribute(:isSpan, true)
        Spanish.first.update_attribute(:list, @spanish)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:talking] == "1"
      
        @pottery.delete_at(@pottery.index(@camper.name))
        @camper.update_attribute(:isPot, false)
        Pottery.first.update_attribute(:list, @pottery)
        
        @talking << @camper.name
        @camper.update_attribute(:isTalk, true)
        Talking.first.update_attribute(:list, @talking)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      else
        flash[:warning] = "No activity to reschedule to was selected, please select an activity"
        redirect_to reassign_path and return
      end
      
    elsif @arts.index(@camper.name) != nil
      
      if params[:reassign][:archery] == "1"
        
        @arts.delete_at(@arts.index(@camper.name))
        @camper.update_attribute(:isArt, false)
        Art.first.update_attribute(:list, @arts)
        
        @archery << @camper.name
        @camper.update_attribute(:isArch, true)
        Archery.first.update_attribute(:list, @archery)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:riflery] == "1"
        
        @arts.delete_at(@arts.index(@camper.name))
        @camper.update_attribute(:isArt, false)
        Art.first.update_attribute(:list, @arts)
        
        @riflery << @camper.name
        @camper.update_attribute(:isRif, true)
        Riflery.first.update_attribute(:list, @riflery)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:canoeing] == "1"
      
        @arts.delete_at(@arts.index(@camper.name))
        @camper.update_attribute(:isArt, false)
        Art.first.update_attribute(:list, @arts)
        
        @canoeing << @camper.name
        @camper.update_attribute(:isCan, true)
        Canoeing.first.update_attribute(:list, @canoeing)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:baking] == "1"
      
        @arts.delete_at(@arts.index(@camper.name))
        @camper.update_attribute(:isArt, false)
        Art.first.update_attribute(:list, @arts)
        
        @baking << @camper.name
        @camper.update_attribute(:isBake, true)
        Baking.first.update_attribute(:list, @baking)
        
        flash[:success] = "Camper has been successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:camping] == "1"
      
        @arts.delete_at(@arts.index(@camper.name))
        @camper.update_attribute(:isArt, false)
        Art.first.update_attribute(:list, @arts)
        
        @camping << @camper.name
        @camper.update_attribute(:isCamp, true)
        Camping.first.update_attribute(:list, @camping)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:rocks] == "1"
      
        @arts.delete_at(@arts.index(@camper.name))
        @camper.update_attribute(:isArt, false)
        Art.first.update_attribute(:list, @arts)
        
        @rocks << @camper.name
        @camper.update_attribute(:isRock, true)
        Rock.first.update_attribute(:list, @rocks)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:fishing] == "1"
      
        @arts.delete_at(@arts.index(@camper.name))
        @camper.update_attribute(:isArt, false)
        Art.first.update_attribute(:list, @arts)
        
        @fishing << @camper.name
        @camper.update_attribute(:isFish, true)
        Fishing.first.update_attribute(:list, @fishing)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:hiking] == "1"
      
        @arts.delete_at(@arts.index(@camper.name))
        @camper.update_attribute(:isArt, false)
        Art.first.update_attribute(:list, @arts)
        
        @hiking << @camper.name
        @camper.update_attribute(:isHike, true)
        Hiking.first.update_attribute(:list, @hiking)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:pottery] == "1"
      
        @arts.delete_at(@arts.index(@camper.name))
        @camper.update_attribute(:isArt, false)
        Art.first.update_attribute(:list, @arts)
        
        @pottery << @camper.name
        @camper.update_attribute(:isPot, true)
        Pottery.first.update_attribute(:list, @pottery)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:arts] == "1"
        
        flash[:warning] = "No reassignment has been done since the camper is already in puppets/drama today"
        redirect_to reassign_path and return
        
      elsif params[:reassign][:percussion] == "1"
      
        @arts.delete_at(@arts.index(@camper.name))
        @camper.update_attribute(:isArt, false)
        Art.first.update_attribute(:list, @arts)
        
        @percussion << @camper.name
        @camper.update_attribute(:isPer, true)
        Percussion.first.update_attribute(:list, @percussion)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:games] == "1"
        
        @arts.delete_at(@arts.index(@camper.name))
        @camper.update_attribute(:isArt, false)
        Art.first.update_attribute(:list, @arts)
        
        @games << @camper.name
        @camper.update_attribute(:isGame, true)
        Game.first.update_attribute(:list, @games)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:guitars] == "1"
      
        @arts.delete_at(@arts.index(@camper.name))
        @camper.update_attribute(:isArt, false)
        Art.first.update_attribute(:list, @arts)
        
        @guitars << @camper.name
        @camper.update_attribute(:isGuit, true)
        Guitar.first.update_attribute(:list, @guitars)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:choir] == "1"
      
        @arts.delete_at(@arts.index(@camper.name))
        @camper.update_attribute(:isArt, false)
        Art.first.update_attribute(:list, @arts)
        
        @choir << @camper.name
        @camper.update_attribute(:isChoir, true)
        Choir.first.update_attribute(:list, @choir)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:writing] == "1"
        
        @arts.delete_at(@arts.index(@camper.name))
        @camper.update_attribute(:isArt, false)
        Art.first.update_attribute(:list, @arts)
        
        @writing << @camper.name
        @camper.update_attribute(:isWrite, true)
        Writing.first.update_attribute(:list, @writing)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:weaving] == "1"
      
        @arts.delete_at(@arts.index(@camper.name))
        @camper.update_attribute(:isArt, false)
        Art.first.update_attribute(:list, @arts)
        
        @weaving << @camper.name
        @camper.update_attribute(:isWeave, true)
        Weaving.first.update_attribute(:list, @weaving)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:notdance] == "1"
      
        @arts.delete_at(@arts.index(@camper.name))
        @camper.update_attribute(:isArt, false)
        Art.first.update_attribute(:list, @arts)
        
        @notdance << @camper.name
        @camper.update_attribute(:isNotdance, true)
        Notdance.first.update_attribute(:list, @notdance)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:painting] == "1"
      
        @arts.delete_at(@arts.index(@camper.name))
        @camper.update_attribute(:isArt, false)
        Art.first.update_attribute(:list, @arts)
        
        @painting << @camper.name
        @camper.update_attribute(:isPaint, true)
        Painting.first.update_attribute(:list, @painting)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:sign] == "1"
      
        @arts.delete_at(@arts.index(@camper.name))
        @camper.update_attribute(:isArt, false)
        Art.first.update_attribute(:list, @arts)
        
        @sign << @camper.name
        @camper.update_attribute(:isSign, true)
        Sign.first.update_attribute(:list, @sign)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:spanish] == "1"
      
        @arts.delete_at(@arts.index(@camper.name))
        @camper.update_attribute(:isArt, false)
        Art.first.update_attribute(:list, @arts)
        
        @spanish << @camper.name
        @camper.update_attribute(:isSpan, true)
        Spanish.first.update_attribute(:list, @spanish)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:talking] == "1"
      
        @arts.delete_at(@arts.index(@camper.name))
        @camper.update_attribute(:isArt, false)
        Art.first.update_attribute(:list, @arts)
        
        @talking << @camper.name
        @camper.update_attribute(:isTalk, true)
        Talking.first.update_attribute(:list, @talking)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      else
        flash[:warning] = "No activity to reschedule to was selected, please select an activity"
        redirect_to reassign_path and return
      end
      
    elsif @percussion.index(@camper.name) != nil
      
      if params[:reassign][:archery] == "1"
        
        @percussion.delete_at(@percussion.index(@camper.name))
        @camper.update_attribute(:isPer, false)
        Percussion.first.update_attribute(:list, @percussion)
        
        @archery << @camper.name
        @camper.update_attribute(:isArch, true)
        Archery.first.update_attribute(:list, @archery)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:riflery] == "1"
        
        @percussion.delete_at(@percussion.index(@camper.name))
        @camper.update_attribute(:isPer, false)
        Percussion.first.update_attribute(:list, @percussion)
        
        @riflery << @camper.name
        @camper.update_attribute(:isRif, true)
        Riflery.first.update_attribute(:list, @riflery)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:canoeing] == "1"
      
        @percussion.delete_at(@percussion.index(@camper.name))
        @camper.update_attribute(:isPer, false)
        Percussion.first.update_attribute(:list, @percussion)
        
        @canoeing << @camper.name
        @camper.update_attribute(:isCan, true)
        Canoeing.first.update_attribute(:list, @canoeing)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:baking] == "1"
      
        @percussion.delete_at(@percussion.index(@camper.name))
        @camper.update_attribute(:isPer, false)
        Percussion.first.update_attribute(:list, @percussion)
        
        @baking << @camper.name
        @camper.update_attribute(:isBake, true)
        Baking.first.update_attribute(:list, @baking)
        
        flash[:success] = "Camper has been successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:camping] == "1"
      
        @percussion.delete_at(@percussion.index(@camper.name))
        @camper.update_attribute(:isPer, false)
        Percussion.first.update_attribute(:list, @percussion)
        
        @camping << @camper.name
        @camper.update_attribute(:isCamp, true)
        Camping.first.update_attribute(:list, @camping)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:rocks] == "1"
      
        @percussion.delete_at(@percussion.index(@camper.name))
        @camper.update_attribute(:isPer, false)
        Percussion.first.update_attribute(:list, @percussion)
        
        @rocks << @camper.name
        @camper.update_attribute(:isRock, true)
        Rock.first.update_attribute(:list, @rocks)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:fishing] == "1"
      
        @percussion.delete_at(@percussion.index(@camper.name))
        @camper.update_attribute(:isPer, false)
        Percussion.first.update_attribute(:list, @percussion)
        
        @fishing << @camper.name
        @camper.update_attribute(:isFish, true)
        Fishing.first.update_attribute(:list, @fishing)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:hiking] == "1"
      
        @percussion.delete_at(@percussion.index(@camper.name))
        @camper.update_attribute(:isPer, false)
        Percussion.first.update_attribute(:list, @percussion)
        
        @hiking << @camper.name
        @camper.update_attribute(:isHike, true)
        Hiking.first.update_attribute(:list, @hiking)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:pottery] == "1"
      
        @percussion.delete_at(@percussion.index(@camper.name))
        @camper.update_attribute(:isPer, false)
        Percussion.first.update_attribute(:list, @percussion)
        
        @pottery << @camper.name
        @camper.update_attribute(:isPot, true)
        Pottery.first.update_attribute(:list, @pottery)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:arts] == "1"
      
        @percussion.delete_at(@percussion.index(@camper.name))
        @camper.update_attribute(:isPer, false)
        Percussion.first.update_attribute(:list, @percussion)
        
        @arts << @camper.name
        @camper.update_attribute(:isArt, true)
        Art.first.update_attribute(:list, @arts)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:percussion] == "1"
      
        flash[:warning] = "No reassignment has been done since the camper is already in percussion today"
        redirect_to reassign_path and return
        
      elsif params[:reassign][:games] == "1"
        
        @percussion.delete_at(@percussion.index(@camper.name))
        @camper.update_attribute(:isPer, false)
        Percussion.first.update_attribute(:list, @percussion)
        
        @games << @camper.name
        @camper.update_attribute(:isGame, true)
        Game.first.update_attribute(:list, @games)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:guitars] == "1"
      
        @percussion.delete_at(@percussion.index(@camper.name))
        @camper.update_attribute(:isPer, false)
        Percussion.first.update_attribute(:list, @percussion)
        
        @guitars << @camper.name
        @camper.update_attribute(:isGuit, true)
        Guitar.first.update_attribute(:list, @guitars)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:choir] == "1"
      
        @percussion.delete_at(@percussion.index(@camper.name))
        @camper.update_attribute(:isPer, false)
        Percussion.first.update_attribute(:list, @percussion)
        
        @choir << @camper.name
        @camper.update_attribute(:isChoir, true)
        Choir.first.update_attribute(:list, @choir)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:writing] == "1"
        
        @percussion.delete_at(@percussion.index(@camper.name))
        @camper.update_attribute(:isPer, false)
        Percussion.first.update_attribute(:list, @percussion)
        
        @writing << @camper.name
        @camper.update_attribute(:isWrite, true)
        Writing.first.update_attribute(:list, @writing)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:weaving] == "1"
      
        @percussion.delete_at(@percussion.index(@camper.name))
        @camper.update_attribute(:isPer, false)
        Percussion.first.update_attribute(:list, @percussion)
        
        @weaving << @camper.name
        @camper.update_attribute(:isWeave, true)
        Weaving.first.update_attribute(:list, @weaving)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:notdance] == "1"
      
        @percussion.delete_at(@percussion.index(@camper.name))
        @camper.update_attribute(:isPer, false)
        Percussion.first.update_attribute(:list, @percussion)
        
        @notdance << @camper.name
        @camper.update_attribute(:isNotdance, true)
        Notdance.first.update_attribute(:list, @notdance)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:painting] == "1"
      
        @percussion.delete_at(@percussion.index(@camper.name))
        @camper.update_attribute(:isPer, false)
        Percussion.first.update_attribute(:list, @percussion)
        
        @painting << @camper.name
        @camper.update_attribute(:isPaint, true)
        Painting.first.update_attribute(:list, @painting)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:sign] == "1"
      
        @percussion.delete_at(@percussion.index(@camper.name))
        @camper.update_attribute(:isPer, false)
        Percussion.first.update_attribute(:list, @percussion)
        
        @sign << @camper.name
        @camper.update_attribute(:isSign, true)
        Sign.first.update_attribute(:list, @sign)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:spanish] == "1"
      
        @percussion.delete_at(@percussion.index(@camper.name))
        @camper.update_attribute(:isPer, false)
        Percussion.first.update_attribute(:list, @percussion)
        
        @spanish << @camper.name
        @camper.update_attribute(:isSpan, true)
        Spanish.first.update_attribute(:list, @spanish)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:talking] == "1"
      
        @percussion.delete_at(@percussion.index(@camper.name))
        @camper.update_attribute(:isPer, false)
        Percussion.first.update_attribute(:list, @percussion)
        
        @talking << @camper.name
        @camper.update_attribute(:isTalk, true)
        Talking.first.update_attribute(:list, @talking)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      else
        flash[:warning] = "No activity to reschedule to was selected, please select an activity"
        redirect_to reassign_path and return
      end
      
    elsif @games.index(@camper.name) != nil
      
      if params[:reassign][:archery] == "1"
        
        @games.delete_at(@games.index(@camper.name))
        @camper.update_attribute(:isGame, false)
        Game.first.update_attribute(:list, @games)
        
        @archery << @camper.name
        @camper.update_attribute(:isArch, true)
        Archery.first.update_attribute(:list, @archery)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:riflery] == "1"
        
        @games.delete_at(@games.index(@camper.name))
        @camper.update_attribute(:isGame, false)
        Game.first.update_attribute(:list, @games)
        
        @riflery << @camper.name
        @camper.update_attribute(:isRif, true)
        Riflery.first.update_attribute(:list, @riflery)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:canoeing] == "1"
      
        @games.delete_at(@games.index(@camper.name))
        @camper.update_attribute(:isGame, false)
        Game.first.update_attribute(:list, @games)
        
        @canoeing << @camper.name
        @camper.update_attribute(:isCan, true)
        Canoeing.first.update_attribute(:list, @canoeing)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:baking] == "1"
      
        @games.delete_at(@games.index(@camper.name))
        @camper.update_attribute(:isGame, false)
        Game.first.update_attribute(:list, @games)
        
        @baking << @camper.name
        @camper.update_attribute(:isBake, true)
        Baking.first.update_attribute(:list, @baking)
        
        flash[:success] = "Camper has been successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:camping] == "1"
      
        @games.delete_at(@games.index(@camper.name))
        @camper.update_attribute(:isGame, false)
        Game.first.update_attribute(:list, @games)
        
        @camping << @camper.name
        @camper.update_attribute(:isCamp, true)
        Camping.first.update_attribute(:list, @camping)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:rocks] == "1"
      
        @games.delete_at(@games.index(@camper.name))
        @camper.update_attribute(:isGame, false)
        Game.first.update_attribute(:list, @games)
        
        @rocks << @camper.name
        @camper.update_attribute(:isRock, true)
        Rock.first.update_attribute(:list, @rocks)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:fishing] == "1"
      
        @games.delete_at(@games.index(@camper.name))
        @camper.update_attribute(:isGame, false)
        Game.first.update_attribute(:list, @games)
        
        @fishing << @camper.name
        @camper.update_attribute(:isFish, true)
        Fishing.first.update_attribute(:list, @fishing)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:hiking] == "1"
      
        @games.delete_at(@games.index(@camper.name))
        @camper.update_attribute(:isGame, false)
        Game.first.update_attribute(:list, @games)
        
        @hiking << @camper.name
        @camper.update_attribute(:isHike, true)
        Hiking.first.update_attribute(:list, @hiking)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:pottery] == "1"
      
        @games.delete_at(@games.index(@camper.name))
        @camper.update_attribute(:isGame, false)
        Game.first.update_attribute(:list, @games)
        
        @pottery << @camper.name
        @camper.update_attribute(:isPot, true)
        Pottery.first.update_attribute(:list, @pottery)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:arts] == "1"
      
        @games.delete_at(@games.index(@camper.name))
        @camper.update_attribute(:isGame, false)
        Game.first.update_attribute(:list, @games)
        
        @arts << @camper.name
        @camper.update_attribute(:isArt, true)
        Art.first.update_attribute(:list, @arts)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:percussion] == "1"
      
        @games.delete_at(@games.index(@camper.name))
        @camper.update_attribute(:isGame, false)
        Game.first.update_attribute(:list, @games)
        
        @percussion << @camper.name
        @camper.update_attribute(:isPer, true)
        Percussion.first.update_attribute(:list, @percussion)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:games] == "1"
      
        flash[:warning] = "No reassignment has been done since the camper is already in games today"
        redirect_to reassign_path and return
        
      elsif params[:reassign][:guitars] == "1"
      
        @games.delete_at(@games.index(@camper.name))
        @camper.update_attribute(:isGame, false)
        Game.first.update_attribute(:list, @games)
        
        @guitars << @camper.name
        @camper.update_attribute(:isGuit, true)
        Guitar.first.update_attribute(:list, @guitars)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:choir] == "1"
      
        @games.delete_at(@games.index(@camper.name))
        @camper.update_attribute(:isGame, false)
        Game.first.update_attribute(:list, @games)
        
        @choir << @camper.name
        @camper.update_attribute(:isChoir, true)
        Choir.first.update_attribute(:list, @choir)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:writing] == "1"
        
        @games.delete_at(@games.index(@camper.name))
        @camper.update_attribute(:isGame, false)
        Game.first.update_attribute(:list, @games)
        
        @writing << @camper.name
        @camper.update_attribute(:isWrite, true)
        Writing.first.update_attribute(:list, @writing)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:weaving] == "1"
      
        @games.delete_at(@games.index(@camper.name))
        @camper.update_attribute(:isGame, false)
        Game.first.update_attribute(:list, @games)
        
        @weaving << @camper.name
        @camper.update_attribute(:isWeave, true)
        Weaving.first.update_attribute(:list, @weaving)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:notdance] == "1"
      
        @games.delete_at(@games.index(@camper.name))
        @camper.update_attribute(:isGame, false)
        Game.first.update_attribute(:list, @games)
        
        @notdance << @camper.name
        @camper.update_attribute(:isNotdance, true)
        Notdance.first.update_attribute(:list, @notdance)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:painting] == "1"
      
        @games.delete_at(@games.index(@camper.name))
        @camper.update_attribute(:isGame, false)
        Game.first.update_attribute(:list, @games)
        
        @painting << @camper.name
        @camper.update_attribute(:isPaint, true)
        Painting.first.update_attribute(:list, @painting)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:sign] == "1"
      
        @games.delete_at(@games.index(@camper.name))
        @camper.update_attribute(:isGame, false)
        Game.first.update_attribute(:list, @games)
        
        @sign << @camper.name
        @camper.update_attribute(:isSign, true)
        Sign.first.update_attribute(:list, @sign)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:spanish] == "1"
      
        @games.delete_at(@games.index(@camper.name))
        @camper.update_attribute(:isGame, false)
        Game.first.update_attribute(:list, @games)
        
        @spanish << @camper.name
        @camper.update_attribute(:isSpan, true)
        Spanish.first.update_attribute(:list, @spanish)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:talking] == "1"
      
        @games.delete_at(@games.index(@camper.name))
        @camper.update_attribute(:isGame, false)
        Game.first.update_attribute(:list, @games)
        
        @talking << @camper.name
        @camper.update_attribute(:isTalk, true)
        Talking.first.update_attribute(:list, @talking)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      else
        flash[:warning] = "No activity to reschedule to was selected, please select an activity"
        redirect_to reassign_path and return
      end
      
    elsif @guitars.index(@camper.name) != nil
      
      if params[:reassign][:archery] == "1"
        
        @guitars.delete_at(@guitars.index(@camper.name))
        @camper.update_attribute(:isGuit, false)
        Guitar.first.update_attribute(:list, @guitars)
        
        @archery << @camper.name
        @camper.update_attribute(:isArch, true)
        Archery.first.update_attribute(:list, @archery)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:riflery] == "1"
        
        @guitars.delete_at(@guitars.index(@camper.name))
        @camper.update_attribute(:isGuit, false)
        Guitar.first.update_attribute(:list, @guitars)
        
        @riflery << @camper.name
        @camper.update_attribute(:isRif, true)
        Riflery.first.update_attribute(:list, @riflery)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:canoeing] == "1"
      
        @guitars.delete_at(@guitars.index(@camper.name))
        @camper.update_attribute(:isGuit, false)
        Guitar.first.update_attribute(:list, @guitars)
        
        @canoeing << @camper.name
        @camper.update_attribute(:isCan, true)
        Canoeing.first.update_attribute(:list, @canoeing)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:baking] == "1"
      
        @guitars.delete_at(@guitars.index(@camper.name))
        @camper.update_attribute(:isGuit, false)
        Guitar.first.update_attribute(:list, @guitars)
        
        @baking << @camper.name
        @camper.update_attribute(:isBake, true)
        Baking.first.update_attribute(:list, @baking)
        
        flash[:success] = "Camper has been successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:camping] == "1"
      
        @guitars.delete_at(@guitars.index(@camper.name))
        @camper.update_attribute(:isGuit, false)
        Guitar.first.update_attribute(:list, @guitars)
        
        @camping << @camper.name
        @camper.update_attribute(:isCamp, true)
        Camping.first.update_attribute(:list, @camping)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:rocks] == "1"
      
        @guitars.delete_at(@guitars.index(@camper.name))
        @camper.update_attribute(:isGuit, false)
        Guitar.first.update_attribute(:list, @guitars)
        
        @rocks << @camper.name
        @camper.update_attribute(:isRock, true)
        Rock.first.update_attribute(:list, @rocks)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:fishing] == "1"
      
        @guitars.delete_at(@guitars.index(@camper.name))
        @camper.update_attribute(:isGuit, false)
        Guitar.first.update_attribute(:list, @guitars)
        
        @fishing << @camper.name
        @camper.update_attribute(:isFish, true)
        Fishing.first.update_attribute(:list, @fishing)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:hiking] == "1"
      
        @guitars.delete_at(@guitars.index(@camper.name))
        @camper.update_attribute(:isGuit, false)
        Guitar.first.update_attribute(:list, @guitars)
        
        @hiking << @camper.name
        @camper.update_attribute(:isHike, true)
        Hiking.first.update_attribute(:list, @hiking)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:pottery] == "1"
      
        @guitars.delete_at(@guitars.index(@camper.name))
        @camper.update_attribute(:isGuit, false)
        Guitar.first.update_attribute(:list, @guitars)
        
        @pottery << @camper.name
        @camper.update_attribute(:isPot, true)
        Pottery.first.update_attribute(:list, @pottery)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:arts] == "1"
      
        @guitars.delete_at(@guitars.index(@camper.name))
        @camper.update_attribute(:isGuit, false)
        Guitar.first.update_attribute(:list, @guitars)
        
        @arts << @camper.name
        @camper.update_attribute(:isArt, true)
        Art.first.update_attribute(:list, @arts)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:percussion] == "1"
      
        @guitars.delete_at(@guitars.index(@camper.name))
        @camper.update_attribute(:isGuit, false)
        Guitar.first.update_attribute(:list, @guitars)
        
        @percussion << @camper.name
        @camper.update_attribute(:isPer, true)
        Percussion.first.update_attribute(:list, @percussion)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:games] == "1"
      
        @guitars.delete_at(@guitars.index(@camper.name))
        @camper.update_attribute(:isGuit, false)
        Guitar.first.update_attribute(:list, @guitars)
        
        @games << @camper.name
        @camper.update_attribute(:isGame, true)
        Game.first.update_attribute(:list, @games)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:guitars] == "1"
      
        flash[:warning] = "No reassignment has been done since the camper is already in guitars today"
        redirect_to reassign_path and return
        
      elsif params[:reassign][:choir] == "1"
      
        @guitars.delete_at(@guitars.index(@camper.name))
        @camper.update_attribute(:isGuit, false)
        Guitar.first.update_attribute(:list, @guitars)
        
        @choir << @camper.name
        @camper.update_attribute(:isChoir, true)
        Choir.first.update_attribute(:list, @choir)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:writing] == "1"
        
        @guitars.delete_at(@guitars.index(@camper.name))
        @camper.update_attribute(:isGuit, false)
        Guitar.first.update_attribute(:list, @guitars)
        
        @writing << @camper.name
        @camper.update_attribute(:isWrite, true)
        Writing.first.update_attribute(:list, @writing)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:weaving] == "1"
      
        @guitars.delete_at(@guitars.index(@camper.name))
        @camper.update_attribute(:isGuit, false)
        Guitar.first.update_attribute(:list, @guitars)
        
        @weaving << @camper.name
        @camper.update_attribute(:isWeave, true)
        Weaving.first.update_attribute(:list, @weaving)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:notdance] == "1"
      
        @guitars.delete_at(@guitars.index(@camper.name))
        @camper.update_attribute(:isGuit, false)
        Guitar.first.update_attribute(:list, @guitars)
        
        @notdance << @camper.name
        @camper.update_attribute(:isNotdance, true)
        Notdance.first.update_attribute(:list, @notdance)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:painting] == "1"
      
        @guitars.delete_at(@guitars.index(@camper.name))
        @camper.update_attribute(:isGuit, false)
        Guitar.first.update_attribute(:list, @guitars)
        
        @painting << @camper.name
        @camper.update_attribute(:isPaint, true)
        Painting.first.update_attribute(:list, @painting)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:sign] == "1"
      
        @guitars.delete_at(@guitars.index(@camper.name))
        @camper.update_attribute(:isGuit, false)
        Guitar.first.update_attribute(:list, @guitars)
        
        @sign << @camper.name
        @camper.update_attribute(:isSign, true)
        Sign.first.update_attribute(:list, @sign)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:spanish] == "1"
      
        @guitars.delete_at(@guitars.index(@camper.name))
        @camper.update_attribute(:isGuit, false)
        Guitar.first.update_attribute(:list, @guitars)
        
        @spanish << @camper.name
        @camper.update_attribute(:isSpan, true)
        Spanish.first.update_attribute(:list, @spanish)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:talking] == "1"
      
        @guitars.delete_at(@guitars.index(@camper.name))
        @camper.update_attribute(:isGuit, false)
        Guitar.first.update_attribute(:list, @guitars)
        
        @talking << @camper.name
        @camper.update_attribute(:isTalk, true)
        Talking.first.update_attribute(:list, @talking)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      else
        flash[:warning] = "No activity to reschedule to was selected, please select an activity"
        redirect_to reassign_path and return
      end
      
    elsif @choir.index(@camper.name) != nil
      
      if params[:reassign][:archery] == "1"
        
        @choir.delete_at(@choir.index(@camper.name))
        @camper.update_attribute(:isChoir, false)
        Choir.first.update_attribute(:list, @choir)
        
        @archery << @camper.name
        @camper.update_attribute(:isArch, true)
        Archery.first.update_attribute(:list, @archery)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:riflery] == "1"
        
        @choir.delete_at(@choir.index(@camper.name))
        @camper.update_attribute(:isChoir, false)
        Choir.first.update_attribute(:list, @choir)
        
        @riflery << @camper.name
        @camper.update_attribute(:isRif, true)
        Riflery.first.update_attribute(:list, @riflery)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:canoeing] == "1"
      
        @choir.delete_at(@choir.index(@camper.name))
        @camper.update_attribute(:isChoir, false)
        Choir.first.update_attribute(:list, @choir)
        
        @canoeing << @camper.name
        @camper.update_attribute(:isCan, true)
        Canoeing.first.update_attribute(:list, @canoeing)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:baking] == "1"
      
        @choir.delete_at(@choir.index(@camper.name))
        @camper.update_attribute(:isChoir, false)
        Choir.first.update_attribute(:list, @choir)
        
        @baking << @camper.name
        @camper.update_attribute(:isBake, true)
        Baking.first.update_attribute(:list, @baking)
        
        flash[:success] = "Camper has been successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:camping] == "1"
      
        @choir.delete_at(@choir.index(@camper.name))
        @camper.update_attribute(:isChoir, false)
        Choir.first.update_attribute(:list, @choir)
        
        @camping << @camper.name
        @camper.update_attribute(:isCamp, true)
        Camping.first.update_attribute(:list, @camping)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:rocks] == "1"
      
        @choir.delete_at(@choir.index(@camper.name))
        @camper.update_attribute(:isChoir, false)
        Choir.first.update_attribute(:list, @choir)
        
        @rocks << @camper.name
        @camper.update_attribute(:isRock, true)
        Rock.first.update_attribute(:list, @rocks)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:fishing] == "1"
      
        @choir.delete_at(@choir.index(@camper.name))
        @camper.update_attribute(:isChoir, false)
        Choir.first.update_attribute(:list, @choir)
        
        @fishing << @camper.name
        @camper.update_attribute(:isFish, true)
        Fishing.first.update_attribute(:list, @fishing)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:hiking] == "1"
      
        @choir.delete_at(@choir.index(@camper.name))
        @camper.update_attribute(:isChoir, false)
        Choir.first.update_attribute(:list, @choir)
        
        @hiking << @camper.name
        @camper.update_attribute(:isHike, true)
        Hiking.first.update_attribute(:list, @hiking)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:pottery] == "1"
      
        @choir.delete_at(@choir.index(@camper.name))
        @camper.update_attribute(:isChoir, false)
        Choir.first.update_attribute(:list, @choir)
        
        @pottery << @camper.name
        @camper.update_attribute(:isPot, true)
        Pottery.first.update_attribute(:list, @pottery)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:arts] == "1"
      
        @choir.delete_at(@choir.index(@camper.name))
        @camper.update_attribute(:isChoir, false)
        Choir.first.update_attribute(:list, @choir)
        
        @arts << @camper.name
        @camper.update_attribute(:isArt, true)
        Art.first.update_attribute(:list, @arts)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:percussion] == "1"
      
        @choir.delete_at(@choir.index(@camper.name))
        @camper.update_attribute(:isChoir, false)
        Choir.first.update_attribute(:list, @choir)
        
        @percussion << @camper.name
        @camper.update_attribute(:isPer, true)
        Percussion.first.update_attribute(:list, @percussion)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:games] == "1"
      
        @choir.delete_at(@choir.index(@camper.name))
        @camper.update_attribute(:isChoir, false)
        Choir.first.update_attribute(:list, @choir)
        
        @games << @camper.name
        @camper.update_attribute(:isGame, true)
        Game.first.update_attribute(:list, @games)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:guitars] == "1"
      
        @choir.delete_at(@choir.index(@camper.name))
        @camper.update_attribute(:isChoir, false)
        Choir.first.update_attribute(:list, @choir)
        
        @guitars << @camper.name
        @camper.update_attribute(:isGuit, true)
        Guitar.first.update_attribute(:list, @guitars)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:choir] == "1"
      
        flash[:warning] = "No reassignment has been done since the camper is already in choir today"
        redirect_to reassign_path and return
        
      elsif params[:reassign][:writing] == "1"
        
        @choir.delete_at(@choir.index(@camper.name))
        @camper.update_attribute(:isChoir, false)
        Choir.first.update_attribute(:list, @choir)
        
        @writing << @camper.name
        @camper.update_attribute(:isWrite, true)
        Writing.first.update_attribute(:list, @writing)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:weaving] == "1"
      
        @choir.delete_at(@choir.index(@camper.name))
        @camper.update_attribute(:isChoir, false)
        Choir.first.update_attribute(:list, @choir)
        
        @weaving << @camper.name
        @camper.update_attribute(:isWeave, true)
        Weaving.first.update_attribute(:list, @weaving)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:notdance] == "1"
      
        @choir.delete_at(@choir.index(@camper.name))
        @camper.update_attribute(:isChoir, false)
        Choir.first.update_attribute(:list, @choir)
        
        @notdance << @camper.name
        @camper.update_attribute(:isNotdance, true)
        Notdance.first.update_attribute(:list, @notdance)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:painting] == "1"
      
        @choir.delete_at(@choir.index(@camper.name))
        @camper.update_attribute(:isChoir, false)
        Choir.first.update_attribute(:list, @choir)
        
        @painting << @camper.name
        @camper.update_attribute(:isPaint, true)
        Painting.first.update_attribute(:list, @painting)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:sign] == "1"
      
        @choir.delete_at(@choir.index(@camper.name))
        @camper.update_attribute(:isChoir, false)
        Choir.first.update_attribute(:list, @choir)
        
        @sign << @camper.name
        @camper.update_attribute(:isSign, true)
        Sign.first.update_attribute(:list, @sign)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:spanish] == "1"
      
        @choir.delete_at(@choir.index(@camper.name))
        @camper.update_attribute(:isChoir, false)
        Choir.first.update_attribute(:list, @choir)
        
        @spanish << @camper.name
        @camper.update_attribute(:isSpan, true)
        Spanish.first.update_attribute(:list, @spanish)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:talking] == "1"
      
        @choir.delete_at(@choir.index(@camper.name))
        @camper.update_attribute(:isChoir, false)
        Choir.first.update_attribute(:list, @choir)
        
        @talking << @camper.name
        @camper.update_attribute(:isTalk, true)
        Talking.first.update_attribute(:list, @talking)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      else
        flash[:warning] = "No activity to reschedule to was selected, please select an activity"
        redirect_to reassign_path and return
      end
      
    elsif @writing.index(@camper.name) != nil
      
      if params[:reassign][:archery] == "1"
        
        @writing.delete_at(@writing.index(@camper.name))
        @camper.update_attribute(:isWrite, false)
        Writing.first.update_attribute(:list, @writing)
        
        @archery << @camper.name
        @camper.update_attribute(:isArch, true)
        Archery.first.update_attribute(:list, @archery)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:riflery] == "1"
        
        @writing.delete_at(@writing.index(@camper.name))
        @camper.update_attribute(:isWrite, false)
        Writing.first.update_attribute(:list, @writing)
        
        @riflery << @camper.name
        @camper.update_attribute(:isRif, true)
        Riflery.first.update_attribute(:list, @riflery)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:canoeing] == "1"
      
        @writing.delete_at(@writing.index(@camper.name))
        @camper.update_attribute(:isWrite, false)
        Writing.first.update_attribute(:list, @writing)
        
        @canoeing << @camper.name
        @camper.update_attribute(:isCan, true)
        Canoeing.first.update_attribute(:list, @canoeing)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:baking] == "1"
      
        @writing.delete_at(@writing.index(@camper.name))
        @camper.update_attribute(:isWrite, false)
        Writing.first.update_attribute(:list, @writing)
        
        @baking << @camper.name
        @camper.update_attribute(:isBake, true)
        Baking.first.update_attribute(:list, @baking)
        
        flash[:success] = "Camper has been successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:camping] == "1"
      
        @writing.delete_at(@writing.index(@camper.name))
        @camper.update_attribute(:isWrite, false)
        Writing.first.update_attribute(:list, @writing)
        
        @camping << @camper.name
        @camper.update_attribute(:isCamp, true)
        Camping.first.update_attribute(:list, @camping)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:rocks] == "1"
      
        @writing.delete_at(@writing.index(@camper.name))
        @camper.update_attribute(:isWrite, false)
        Writing.first.update_attribute(:list, @writing)
        
        @rocks << @camper.name
        @camper.update_attribute(:isRock, true)
        Rock.first.update_attribute(:list, @rocks)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:fishing] == "1"
      
        @writing.delete_at(@writing.index(@camper.name))
        @camper.update_attribute(:isWrite, false)
        Writing.first.update_attribute(:list, @writing)
        
        @fishing << @camper.name
        @camper.update_attribute(:isFish, true)
        Fishing.first.update_attribute(:list, @fishing)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:hiking] == "1"
      
        @writing.delete_at(@writing.index(@camper.name))
        @camper.update_attribute(:isWrite, false)
        Writing.first.update_attribute(:list, @writing)
        
        @hiking << @camper.name
        @camper.update_attribute(:isHike, true)
        Hiking.first.update_attribute(:list, @hiking)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:pottery] == "1"
      
        @writing.delete_at(@writing.index(@camper.name))
        @camper.update_attribute(:isWrite, false)
        Writing.first.update_attribute(:list, @writing)
        
        @pottery << @camper.name
        @camper.update_attribute(:isPot, true)
        Pottery.first.update_attribute(:list, @pottery)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:arts] == "1"
      
        @writing.delete_at(@writing.index(@camper.name))
        @camper.update_attribute(:isWrite, false)
        Writing.first.update_attribute(:list, @writing)
        
        @arts << @camper.name
        @camper.update_attribute(:isArt, true)
        Art.first.update_attribute(:list, @arts)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:percussion] == "1"
      
        @writing.delete_at(@writing.index(@camper.name))
        @camper.update_attribute(:isWrite, false)
        Writing.first.update_attribute(:list, @writing)
        
        @percussion << @camper.name
        @camper.update_attribute(:isPer, true)
        Percussion.first.update_attribute(:list, @percussion)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:games] == "1"
      
        @writing.delete_at(@writing.index(@camper.name))
        @camper.update_attribute(:isWrite, false)
        Writing.first.update_attribute(:list, @writing)
        
        @games << @camper.name
        @camper.update_attribute(:isGame, true)
        Game.first.update_attribute(:list, @games)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:guitars] == "1"
      
        @writing.delete_at(@writing.index(@camper.name))
        @camper.update_attribute(:isWrite, false)
        Writing.first.update_attribute(:list, @writing)
        
        @guitars << @camper.name
        @camper.update_attribute(:isGuit, true)
        Guitar.first.update_attribute(:list, @guitars)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:choir] == "1"
        
        @writing.delete_at(@writing.index(@camper.name))
        @camper.update_attribute(:isWrite, false)
        Writing.first.update_attribute(:list, @writing)
        
        @choir << @camper.name
        @camper.update_attribute(:isChoir, true)
        Choir.first.update_attribute(:list, @choir)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:writing] == "1"
      
        flash[:warning] = "No reassignment has been done since the camper is already in writing today"
        redirect_to reassign_path and return
        
      elsif params[:reassign][:weaving] == "1"
      
        @writing.delete_at(@writing.index(@camper.name))
        @camper.update_attribute(:isWrite, false)
        Writing.first.update_attribute(:list, @writing)
        
        @weaving << @camper.name
        @camper.update_attribute(:isWeave, true)
        Weaving.first.update_attribute(:list, @weaving)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:notdance] == "1"
      
        @writing.delete_at(@writing.index(@camper.name))
        @camper.update_attribute(:isWrite, false)
        Writing.first.update_attribute(:list, @writing)
        
        @notdance << @camper.name
        @camper.update_attribute(:isNotdance, true)
        Notdance.first.update_attribute(:list, @notdance)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:painting] == "1"
      
        @writing.delete_at(@writing.index(@camper.name))
        @camper.update_attribute(:isWrite, false)
        Writing.first.update_attribute(:list, @writing)
        
        @painting << @camper.name
        @camper.update_attribute(:isPaint, true)
        Painting.first.update_attribute(:list, @painting)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:sign] == "1"
      
        @writing.delete_at(@writing.index(@camper.name))
        @camper.update_attribute(:isWrite, false)
        Writing.first.update_attribute(:list, @writing)
        
        @sign << @camper.name
        @camper.update_attribute(:isSign, true)
        Sign.first.update_attribute(:list, @sign)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:spanish] == "1"
      
        @writing.delete_at(@writing.index(@camper.name))
        @camper.update_attribute(:isWrite, false)
        Writing.first.update_attribute(:list, @writing)
        
        @spanish << @camper.name
        @camper.update_attribute(:isSpan, true)
        Spanish.first.update_attribute(:list, @spanish)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:talking] == "1"
      
        @writing.delete_at(@writing.index(@camper.name))
        @camper.update_attribute(:isWrite, false)
        Writing.first.update_attribute(:list, @writing)
        
        @talking << @camper.name
        @camper.update_attribute(:isTalk, true)
        Talking.first.update_attribute(:list, @talking)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      else
        flash[:warning] = "No activity to reschedule to was selected, please select an activity"
        redirect_to reassign_path and return
      end
      
    elsif @weaving.index(@camper.name) != nil
      
      if params[:reassign][:archery] == "1"
        
        @weaving.delete_at(@weaving.index(@camper.name))
        @camper.update_attribute(:isWeave, false)
        Weaving.first.update_attribute(:list, @weaving)
        
        @archery << @camper.name
        @camper.update_attribute(:isArch, true)
        Archery.first.update_attribute(:list, @archery)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:riflery] == "1"
        
        @weaving.delete_at(@weaving.index(@camper.name))
        @camper.update_attribute(:isWeave, false)
        Weaving.first.update_attribute(:list, @weaving)
        
        @riflery << @camper.name
        @camper.update_attribute(:isRif, true)
        Riflery.first.update_attribute(:list, @riflery)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:canoeing] == "1"
      
        @weaving.delete_at(@weaving.index(@camper.name))
        @camper.update_attribute(:isWeave, false)
        Weaving.first.update_attribute(:list, @weaving)
        
        @canoeing << @camper.name
        @camper.update_attribute(:isCan, true)
        Canoeing.first.update_attribute(:list, @canoeing)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:baking] == "1"
      
        @weaving.delete_at(@weaving.index(@camper.name))
        @camper.update_attribute(:isWeave, false)
        Weaving.first.update_attribute(:list, @weaving)
        
        @baking << @camper.name
        @camper.update_attribute(:isBake, true)
        Baking.first.update_attribute(:list, @baking)
        
        flash[:success] = "Camper has been successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:camping] == "1"
      
        @weaving.delete_at(@weaving.index(@camper.name))
        @camper.update_attribute(:isWeave, false)
        Weaving.first.update_attribute(:list, @weaving)
        
        @camping << @camper.name
        @camper.update_attribute(:isCamp, true)
        Camping.first.update_attribute(:list, @camping)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:rocks] == "1"
      
        @weaving.delete_at(@weaving.index(@camper.name))
        @camper.update_attribute(:isWeave, false)
        Weaving.first.update_attribute(:list, @weaving)
        
        @rocks << @camper.name
        @camper.update_attribute(:isRock, true)
        Rock.first.update_attribute(:list, @rocks)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:fishing] == "1"
      
        @weaving.delete_at(@weaving.index(@camper.name))
        @camper.update_attribute(:isWeave, false)
        Weaving.first.update_attribute(:list, @weaving)
        
        @fishing << @camper.name
        @camper.update_attribute(:isFish, true)
        Fishing.first.update_attribute(:list, @fishing)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:hiking] == "1"
      
        @weaving.delete_at(@weaving.index(@camper.name))
        @camper.update_attribute(:isWeave, false)
        Weaving.first.update_attribute(:list, @weaving)
        
        @hiking << @camper.name
        @camper.update_attribute(:isHike, true)
        Hiking.first.update_attribute(:list, @hiking)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:pottery] == "1"
      
        @weaving.delete_at(@weaving.index(@camper.name))
        @camper.update_attribute(:isWeave, false)
        Weaving.first.update_attribute(:list, @weaving)
        
        @pottery << @camper.name
        @camper.update_attribute(:isPot, true)
        Pottery.first.update_attribute(:list, @pottery)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:arts] == "1"
      
        @weaving.delete_at(@weaving.index(@camper.name))
        @camper.update_attribute(:isWeave, false)
        Weaving.first.update_attribute(:list, @weaving)
        
        @arts << @camper.name
        @camper.update_attribute(:isArt, true)
        Art.first.update_attribute(:list, @arts)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:percussion] == "1"
      
        @weaving.delete_at(@weaving.index(@camper.name))
        @camper.update_attribute(:isWeave, false)
        Weaving.first.update_attribute(:list, @weaving)
        
        @percussion << @camper.name
        @camper.update_attribute(:isPer, true)
        Percussion.first.update_attribute(:list, @percussion)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:games] == "1"
      
        @weaving.delete_at(@weaving.index(@camper.name))
        @camper.update_attribute(:isWeave, false)
        Weaving.first.update_attribute(:list, @weaving)
        
        @games << @camper.name
        @camper.update_attribute(:isGame, true)
        Game.first.update_attribute(:list, @games)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:guitars] == "1"
      
        @weaving.delete_at(@weaving.index(@camper.name))
        @camper.update_attribute(:isWeave, false)
        Weaving.first.update_attribute(:list, @weaving)
        
        @guitars << @camper.name
        @camper.update_attribute(:isGuit, true)
        Guitar.first.update_attribute(:list, @guitars)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:choir] == "1"
        
        @weaving.delete_at(@weaving.index(@camper.name))
        @camper.update_attribute(:isWeave, false)
        Weaving.first.update_attribute(:list, @weaving)
        
        @choir << @camper.name
        @camper.update_attribute(:isChoir, true)
        Choir.first.update_attribute(:list, @choir)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:writing] == "1"
      
        @weaving.delete_at(@weaving.index(@camper.name))
        @camper.update_attribute(:isWeave, false)
        Weaving.first.update_attribute(:list, @weaving)
        
        @writing << @camper.name
        @camper.update_attribute(:isWrite, true)
        Writing.first.update_attribute(:list, @writing)
        
        flash[:success] = "Camper has successfully been scheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:weaving] == "1"
      
        flash[:warning] = "No reassignment has been done since the camper is already in weaving today"
        redirect_to reassign_path and return
        
      elsif params[:reassign][:notdance] == "1"
      
        @weaving.delete_at(@weaving.index(@camper.name))
        @camper.update_attribute(:isWeave, false)
        Weaving.first.update_attribute(:list, @weaving)
        
        @notdance << @camper.name
        @camper.update_attribute(:isNotdance, true)
        Notdance.first.update_attribute(:list, @notdance)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:painting] == "1"
      
        @weaving.delete_at(@weaving.index(@camper.name))
        @camper.update_attribute(:isWeave, false)
        Weaving.first.update_attribute(:list, @weaving)
        
        @painting << @camper.name
        @camper.update_attribute(:isPaint, true)
        Painting.first.update_attribute(:list, @painting)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:sign] == "1"
      
        @weaving.delete_at(@weaving.index(@camper.name))
        @camper.update_attribute(:isWeave, false)
        Weaving.first.update_attribute(:list, @weaving)
        
        @sign << @camper.name
        @camper.update_attribute(:isSign, true)
        Sign.first.update_attribute(:list, @sign)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:spanish] == "1"
      
        @weaving.delete_at(@weaving.index(@camper.name))
        @camper.update_attribute(:isWeave, false)
        Weaving.first.update_attribute(:list, @weaving)
        
        @spanish << @camper.name
        @camper.update_attribute(:isSpan, true)
        Spanish.first.update_attribute(:list, @spanish)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:talking] == "1"
      
        @weaving.delete_at(@weaving.index(@camper.name))
        @camper.update_attribute(:isWeave, false)
        Weaving.first.update_attribute(:list, @weaving)
        
        @talking << @camper.name
        @camper.update_attribute(:isTalk, true)
        Talking.first.update_attribute(:list, @talking)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      else
        flash[:warning] = "No activity to reschedule to was selected, please select an activity"
        redirect_to reassign_path and return
      end
      
    elsif @notdance.index(@camper.name) != nil
      
      if params[:reassign][:archery] == "1"
        
        @notdance.delete_at(@notdance.index(@camper.name))
        @camper.update_attribute(:isNotdance, false)
        Notdance.first.update_attribute(:list, @notdance)
        
        @archery << @camper.name
        @camper.update_attribute(:isArch, true)
        Archery.first.update_attribute(:list, @archery)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:riflery] == "1"
        
        @notdance.delete_at(@notdance.index(@camper.name))
        @camper.update_attribute(:isNotdance, false)
        Notdance.first.update_attribute(:list, @notdance)
        
        @riflery << @camper.name
        @camper.update_attribute(:isRif, true)
        Riflery.first.update_attribute(:list, @riflery)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:canoeing] == "1"
      
        @notdance.delete_at(@notdance.index(@camper.name))
        @camper.update_attribute(:isNotdance, false)
        Notdance.first.update_attribute(:list, @notdance)
        
        @canoeing << @camper.name
        @camper.update_attribute(:isCan, true)
        Canoeing.first.update_attribute(:list, @canoeing)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:baking] == "1"
      
        @notdance.delete_at(@notdance.index(@camper.name))
        @camper.update_attribute(:isNotdance, false)
        Notdance.first.update_attribute(:list, @notdance)
        
        @baking << @camper.name
        @camper.update_attribute(:isBake, true)
        Baking.first.update_attribute(:list, @baking)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:camping] == "1"
      
        @notdance.delete_at(@notdance.index(@camper.name))
        @camper.update_attribute(:isNotdance, false)
        Notdance.first.update_attribute(:list, @notdance)
        
        @camping << @camper.name
        @camper.update_attribute(:isCamp, true)
        Camping.first.update_attribute(:list, @camping)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:rocks] == "1"
      
        @notdance.delete_at(@notdance.index(@camper.name))
        @camper.update_attribute(:isNotdance, false)
        Notdance.first.update_attribute(:list, @notdance)
        
        @rocks << @camper.name
        @camper.update_attribute(:isRock, true)
        Rock.first.update_attribute(:list, @rocks)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:fishing] == "1"
      
        @notdance.delete_at(@notdance.index(@camper.name))
        @camper.update_attribute(:isNotdance, false)
        Notdance.first.update_attribute(:list, @notdance)
        
        @fishing << @camper.name
        @camper.update_attribute(:isFish, true)
        Fishing.first.update_attribute(:list, @fishing)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:hiking] == "1"
      
        @notdance.delete_at(@notdance.index(@camper.name))
        @camper.update_attribute(:isNotdance, false)
        Notdance.first.update_attribute(:list, @notdance)
        
        @hiking << @camper.name
        @camper.update_attribute(:isHike, true)
        Hiking.first.update_attribute(:list, @hiking)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:pottery] == "1"
      
        @notdance.delete_at(@notdance.index(@camper.name))
        @camper.update_attribute(:isNotdance, false)
        Notdance.first.update_attribute(:list, @notdance)
        
        @pottery << @camper.name
        @camper.update_attribute(:isPot, true)
        Pottery.first.update_attribute(:list, @pottery)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:arts] == "1"
      
        @notdance.delete_at(@notdance.index(@camper.name))
        @camper.update_attribute(:isNotdance, false)
        Notdance.first.update_attribute(:list, @notdance)
        
        @arts << @camper.name
        @camper.update_attribute(:isArt, true)
        Art.first.update_attribute(:list, @arts)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:percussion] == "1"
      
        @notdance.delete_at(@notdance.index(@camper.name))
        @camper.update_attribute(:isNotdance, false)
        Notdance.first.update_attribute(:list, @notdance)
        
        @percussion << @camper.name
        @camper.update_attribute(:isPer, true)
        Percussion.first.update_attribute(:list, @percussion)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:games] == "1"
      
        @notdance.delete_at(@notdance.index(@camper.name))
        @camper.update_attribute(:isNotdance, false)
        Notdance.first.update_attribute(:list, @notdance)
        
        @games << @camper.name
        @camper.update_attribute(:isGame, true)
        Game.first.update_attribute(:list, @games)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:guitars] == "1"
      
        @notdance.delete_at(@notdance.index(@camper.name))
        @camper.update_attribute(:isNotdance, false)
        Notdance.first.update_attribute(:list, @notdance)
        
        @guitars << @camper.name
        @camper.update_attribute(:isGuit, true)
        Guitar.first.update_attribute(:list, @guitars)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:choir] == "1"
        
        @notdance.delete_at(@notdance.index(@camper.name))
        @camper.update_attribute(:isNotdance, false)
        Notdance.first.update_attribute(:list, @notdance)
        
        @choir << @camper.name
        @camper.update_attribute(:isChoir, true)
        Choir.first.update_attribute(:list, @choir)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:writing] == "1"
      
        @notdance.delete_at(@notdance.index(@camper.name))
        @camper.update_attribute(:isNotdance, false)
        Notdance.first.update_attribute(:list, @notdance)
        
        @writing << @camper.name
        @camper.update_attribute(:isWrite, true)
        Writing.first.update_attribute(:list, @writing)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:weaving] == "1"
      
        @notdance.delete_at(@notdance.index(@camper.name))
        @camper.update_attribute(:isNotdance, false)
        Notdance.first.update_attribute(:list, @notdance)
        
        @weaving << @camper.name
        @camper.update_attribute(:isWeave, true)
        Weaving.first.update_attribute(:list, @weaving)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:notdance] == "1"
      
        flash[:warning] = "No reassignment has been done since the camper is already in interpretive movement today"
        redirect_to reassign_path and return
        
      elsif params[:reassign][:painting] == "1"
      
        @notdance.delete_at(@notdance.index(@camper.name))
        @camper.update_attribute(:isNotdance, false)
        Notdance.first.update_attribute(:list, @notdance)
        
        @painting << @camper.name
        @camper.update_attribute(:isPaint, true)
        Painting.first.update_attribute(:list, @painting)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:sign] == "1"
      
        @notdance.delete_at(@notdance.index(@camper.name))
        @camper.update_attribute(:isNotdance, false)
        Notdance.first.update_attribute(:list, @notdance)
        
        @sign << @camper.name
        @camper.update_attribute(:isSign, true)
        Sign.first.update_attribute(:list, @sign)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:spanish] == "1"
      
        @notdance.delete_at(@notdance.index(@camper.name))
        @camper.update_attribute(:isNotdance, false)
        Notdance.first.update_attribute(:list, @notdance)
        
        @spanish << @camper.name
        @camper.update_attribute(:isSpan, true)
        Spanish.first.update_attribute(:list, @spanish)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:talking] == "1"
      
        @notdance.delete_at(@notdance.index(@camper.name))
        @camper.update_attribute(:isNotdance, false)
        Notdance.first.update_attribute(:list, @notdance)
        
        @talking << @camper.name
        @camper.update_attribute(:isTalk, true)
        Talking.first.update_attribute(:list, @talking)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      else
        flash[:warning] = "No activity to reschedule to was selected, please select an activity"
        redirect_to reassign_path and return
      end
      
    elsif @painting.index(@camper.name) != nil
      
      if params[:reassign][:archery] == "1"
        
        @painting.delete_at(@painting.index(@camper.name))
        @camper.update_attribute(:isPaint, false)
        Painting.first.update_attribute(:list, @painting)
        
        @archery << @camper.name
        @camper.update_attribute(:isArch, true)
        Archery.first.update_attribute(:list, @archery)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:riflery] == "1"
        
        @painting.delete_at(@painting.index(@camper.name))
        @camper.update_attribute(:isPaint, false)
        Painting.first.update_attribute(:list, @painting)
        
        @riflery << @camper.name
        @camper.update_attribute(:isRif, true)
        Riflery.first.update_attribute(:list, @riflery)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:canoeing] == "1"
      
        @painting.delete_at(@painting.index(@camper.name))
        @camper.update_attribute(:isPaint, false)
        Painting.first.update_attribute(:list, @painting)
        
        @canoeing << @camper.name
        @camper.update_attribute(:isCan, true)
        Canoeing.first.update_attribute(:list, @canoeing)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:baking] == "1"
      
        @painting.delete_at(@painting.index(@camper.name))
        @camper.update_attribute(:isPaint, false)
        Painting.first.update_attribute(:list, @painting)
        
        @baking << @camper.name
        @camper.update_attribute(:isBake, true)
        Baking.first.update_attribute(:list, @baking)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:camping] == "1"
      
        @painting.delete_at(@painting.index(@camper.name))
        @camper.update_attribute(:isPaint, false)
        Painting.first.update_attribute(:list, @painting)
        
        @camping << @camper.name
        @camper.update_attribute(:isCamp, true)
        Camping.first.update_attribute(:list, @camping)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:rocks] == "1"
      
        @painting.delete_at(@painting.index(@camper.name))
        @camper.update_attribute(:isPaint, false)
        Painting.first.update_attribute(:list, @painting)
        
        @rocks << @camper.name
        @camper.update_attribute(:isRock, true)
        Rock.first.update_attribute(:list, @rocks)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:fishing] == "1"
      
        @painting.delete_at(@painting.index(@camper.name))
        @camper.update_attribute(:isPaint, false)
        Painting.first.update_attribute(:list, @painting)
        
        @fishing << @camper.name
        @camper.update_attribute(:isFish, true)
        Fishing.first.update_attribute(:list, @fishing)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:hiking] == "1"
      
        @painting.delete_at(@painting.index(@camper.name))
        @camper.update_attribute(:isPaint, false)
        Painting.first.update_attribute(:list, @painting)
        
        @hiking << @camper.name
        @camper.update_attribute(:isHike, true)
        Hiking.first.update_attribute(:list, @hiking)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:pottery] == "1"
      
        @painting.delete_at(@painting.index(@camper.name))
        @camper.update_attribute(:isPaint, false)
        Painting.first.update_attribute(:list, @painting)
        
        @pottery << @camper.name
        @camper.update_attribute(:isPot, true)
        Pottery.first.update_attribute(:list, @pottery)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:arts] == "1"
      
        @painting.delete_at(@painting.index(@camper.name))
        @camper.update_attribute(:isPaint, false)
        Painting.first.update_attribute(:list, @painting)
        
        @arts << @camper.name
        @camper.update_attribute(:isArt, true)
        Art.first.update_attribute(:list, @arts)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:percussion] == "1"
      
        @painting.delete_at(@painting.index(@camper.name))
        @camper.update_attribute(:isPaint, false)
        Painting.first.update_attribute(:list, @painting)
        
        @percussion << @camper.name
        @camper.update_attribute(:isPer, true)
        Percussion.first.update_attribute(:list, @percussion)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:games] == "1"
      
        @painting.delete_at(@painting.index(@camper.name))
        @camper.update_attribute(:isPaint, false)
        Painting.first.update_attribute(:list, @painting)
        
        @games << @camper.name
        @camper.update_attribute(:isGame, true)
        Game.first.update_attribute(:list, @games)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:guitars] == "1"
      
        @painting.delete_at(@painting.index(@camper.name))
        @camper.update_attribute(:isPaint, false)
        Painting.first.update_attribute(:list, @painting)
        
        @guitars << @camper.name
        @camper.update_attribute(:isGuit, true)
        Guitar.first.update_attribute(:list, @guitars)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:choir] == "1"
        
        @painting.delete_at(@painting.index(@camper.name))
        @camper.update_attribute(:isPaint, false)
        Painting.first.update_attribute(:list, @painting)
        
        @choir << @camper.name
        @camper.update_attribute(:isChoir, true)
        Choir.first.update_attribute(:list, @choir)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:writing] == "1"
      
        @painting.delete_at(@painting.index(@camper.name))
        @camper.update_attribute(:isPaint, false)
        Painting.first.update_attribute(:list, @painting)
        
        @writing << @camper.name
        @camper.update_attribute(:isWrite, true)
        Writing.first.update_attribute(:list, @writing)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:weaving] == "1"
      
        @painting.delete_at(@painting.index(@camper.name))
        @camper.update_attribute(:isPaint, false)
        Painting.first.update_attribute(:list, @painting)
        
        @weaving << @camper.name
        @camper.update_attribute(:isWeave, true)
        Weaving.first.update_attribute(:list, @weaving)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:notdance] == "1"
      
        @painting.delete_at(@painting.index(@camper.name))
        @camper.update_attribute(:isPaint, false)
        Painting.first.update_attribute(:list, @painting)
        
        @notdance << @camper.name
        @camper.update_attribute(:isNotdance, true)
        Notdance.first.update_attribute(:list, @notdance)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:painting] == "1"
      
        flash[:warning] = "No reassignment has been done since the camper is already in painting today"
        redirect_to reassign_path and return
        
      elsif params[:reassign][:sign] == "1"
      
        @painting.delete_at(@painting.index(@camper.name))
        @camper.update_attribute(:isPaint, false)
        Painting.first.update_attribute(:list, @painting)
        
        @sign << @camper.name
        @camper.update_attribute(:isSign, true)
        Sign.first.update_attribute(:list, @sign)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:spanish] == "1"
      
        @painting.delete_at(@painting.index(@camper.name))
        @camper.update_attribute(:isPaint, false)
        Painting.first.update_attribute(:list, @painting)
        
        @spanish << @camper.name
        @camper.update_attribute(:isSpan, true)
        Spanish.first.update_attribute(:list, @spanish)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:talking] == "1"
      
        @painting.delete_at(@painting.index(@camper.name))
        @camper.update_attribute(:isPaint, false)
        Painting.first.update_attribute(:list, @painting)
        
        @talking << @camper.name
        @camper.update_attribute(:isTalk, true)
        Talking.first.update_attribute(:list, @talking)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      else
        flash[:warning] = "No activity to reschedule to was selected, please select an activity"
        redirect_to reassign_path and return
      end
      
    elsif @sign.index(@camper.name) != nil
      
      if params[:reassign][:archery] == "1"
        
        @sign.delete_at(@sign.index(@camper.name))
        @camper.update_attribute(:isSign, false)
        Sign.first.update_attribute(:list, @sign)
        
        @archery << @camper.name
        @camper.update_attribute(:isArch, true)
        Archery.first.update_attribute(:list, @archery)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:riflery] == "1"
        
        @sign.delete_at(@sign.index(@camper.name))
        @camper.update_attribute(:isSign, false)
        Sign.first.update_attribute(:list, @sign)
        
        @riflery << @camper.name
        @camper.update_attribute(:isRif, true)
        Riflery.first.update_attribute(:list, @riflery)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:canoeing] == "1"
      
        @sign.delete_at(@sign.index(@camper.name))
        @camper.update_attribute(:isSign, false)
        Sign.first.update_attribute(:list, @sign)
        
        @canoeing << @camper.name
        @camper.update_attribute(:isCan, true)
        Canoeing.first.update_attribute(:list, @canoeing)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:baking] == "1"
      
        @sign.delete_at(@sign.index(@camper.name))
        @camper.update_attribute(:isSign, false)
        Sign.first.update_attribute(:list, @sign)
        
        @baking << @camper.name
        @camper.update_attribute(:isBake, true)
        Baking.first.update_attribute(:list, @baking)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:camping] == "1"
      
        @sign.delete_at(@sign.index(@camper.name))
        @camper.update_attribute(:isSign, false)
        Sign.first.update_attribute(:list, @sign)
        
        @camping << @camper.name
        @camper.update_attribute(:isCamp, true)
        Camping.first.update_attribute(:list, @camping)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:rocks] == "1"
      
        @sign.delete_at(@sign.index(@camper.name))
        @camper.update_attribute(:isSign, false)
        Sign.first.update_attribute(:list, @sign)
        
        @rocks << @camper.name
        @camper.update_attribute(:isRock, true)
        Rock.first.update_attribute(:list, @rocks)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:fishing] == "1"
      
        @sign.delete_at(@sign.index(@camper.name))
        @camper.update_attribute(:isSign, false)
        Sign.first.update_attribute(:list, @sign)
        
        @fishing << @camper.name
        @camper.update_attribute(:isFish, true)
        Fishing.first.update_attribute(:list, @fishing)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:hiking] == "1"
      
        @sign.delete_at(@sign.index(@camper.name))
        @camper.update_attribute(:isSign, false)
        Sign.first.update_attribute(:list, @sign)
        
        @hiking << @camper.name
        @camper.update_attribute(:isHike, true)
        Hiking.first.update_attribute(:list, @hiking)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:pottery] == "1"
      
        @sign.delete_at(@sign.index(@camper.name))
        @camper.update_attribute(:isSign, false)
        Sign.first.update_attribute(:list, @sign)
        
        @pottery << @camper.name
        @camper.update_attribute(:isPot, true)
        Pottery.first.update_attribute(:list, @pottery)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:arts] == "1"
      
        @sign.delete_at(@sign.index(@camper.name))
        @camper.update_attribute(:isSign, false)
        Sign.first.update_attribute(:list, @sign)
        
        @arts << @camper.name
        @camper.update_attribute(:isArt, true)
        Art.first.update_attribute(:list, @arts)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:percussion] == "1"
      
        @sign.delete_at(@sign.index(@camper.name))
        @camper.update_attribute(:isSign, false)
        Sign.first.update_attribute(:list, @sign)
        
        @percussion << @camper.name
        @camper.update_attribute(:isPer, true)
        Percussion.first.update_attribute(:list, @percussion)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:games] == "1"
      
        @sign.delete_at(@sign.index(@camper.name))
        @camper.update_attribute(:isSign, false)
        Sign.first.update_attribute(:list, @sign)
        
        @games << @camper.name
        @camper.update_attribute(:isGame, true)
        Game.first.update_attribute(:list, @games)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:guitars] == "1"
      
        @sign.delete_at(@sign.index(@camper.name))
        @camper.update_attribute(:isSign, false)
        Sign.first.update_attribute(:list, @sign)
        
        @guitars << @camper.name
        @camper.update_attribute(:isGuit, true)
        Guitar.first.update_attribute(:list, @guitars)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:choir] == "1"
        
        @sign.delete_at(@sign.index(@camper.name))
        @camper.update_attribute(:isSign, false)
        Sign.first.update_attribute(:list, @sign)
        
        @choir << @camper.name
        @camper.update_attribute(:isChoir, true)
        Choir.first.update_attribute(:list, @choir)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:writing] == "1"
      
        @sign.delete_at(@sign.index(@camper.name))
        @camper.update_attribute(:isSign, false)
        Sign.first.update_attribute(:list, @sign)
        
        @writing << @camper.name
        @camper.update_attribute(:isWrite, true)
        Writing.first.update_attribute(:list, @writing)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:weaving] == "1"
      
        @sign.delete_at(@sign.index(@camper.name))
        @camper.update_attribute(:isSign, false)
        Sign.first.update_attribute(:list, @sign)
        
        @weaving << @camper.name
        @camper.update_attribute(:isWeave, true)
        Weaving.first.update_attribute(:list, @weaving)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:notdance] == "1"
      
        @sign.delete_at(@sign.index(@camper.name))
        @camper.update_attribute(:isSign, false)
        Sign.first.update_attribute(:list, @sign)
        
        @notdance << @camper.name
        @camper.update_attribute(:isNotdance, true)
        Notdance.first.update_attribute(:list, @notdance)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:painting] == "1"
      
        @sign.delete_at(@sign.index(@camper.name))
        @camper.update_attribute(:isSign, false)
        Sign.first.update_attribute(:list, @sign)
        
        @painting << @camper.name
        @camper.update_attribute(:isPaint, true)
        Painting.first.update_attribute(:list, @painting)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:sign] == "1"
      
        flash[:warning] = "No reassignment has been done since the camper is already in sign language today"
        redirect_to reassign_path and return
        
      elsif params[:reassign][:spanish] == "1"
      
        @sign.delete_at(@sign.index(@camper.name))
        @camper.update_attribute(:isSign, false)
        Sign.first.update_attribute(:list, @sign)
        
        @spanish << @camper.name
        @camper.update_attribute(:isSpan, true)
        Spanish.first.update_attribute(:list, @spanish)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      elsif params[:reassign][:talking] == "1"
      
        @sign.delete_at(@sign.index(@camper.name))
        @camper.update_attribute(:isSign, false)
        Sign.first.update_attribute(:list, @sign)
        
        @talking << @camper.name
        @camper.update_attribute(:isTalk, true)
        Talking.first.update_attribute(:list, @talking)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      else
        flash[:warning] = "No activity to reschedule to was selected, please select an activity"
        redirect_to reassign_path and return
      end
      
    elsif @spanish.index(@camper.name) != nil
      
      if params[:reassign][:archery] == "1"
        
        @spanish.delete_at(@spanish.index(@camper.name))
        @camper.update_attribute(:isSpan, false)
        Spanish.first.update_attribute(:list, @spanish)
        
        @archery << @camper.name
        @camper.update_attribute(:isArch, true)
        Archery.first.update_attribute(:list, @archery)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:riflery] == "1"
        
        @spanish.delete_at(@spanish.index(@camper.name))
        @camper.update_attribute(:isSpan, false)
        Spanish.first.update_attribute(:list, @spanish)
        
        @riflery << @camper.name
        @camper.update_attribute(:isRif, true)
        Riflery.first.update_attribute(:list, @riflery)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:canoeing] == "1"
      
        @spanish.delete_at(@spanish.index(@camper.name))
        @camper.update_attribute(:isSpan, false)
        Spanish.first.update_attribute(:list, @spanish)
        
        @canoeing << @camper.name
        @camper.update_attribute(:isCan, true)
        Canoeing.first.update_attribute(:list, @canoeing)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:baking] == "1"
      
        @spanish.delete_at(@spanish.index(@camper.name))
        @camper.update_attribute(:isSpan, false)
        Spanish.first.update_attribute(:list, @spanish)
        
        @baking << @camper.name
        @camper.update_attribute(:isBake, true)
        Baking.first.update_attribute(:list, @baking)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:camping] == "1"
      
        @spanish.delete_at(@spanish.index(@camper.name))
        @camper.update_attribute(:isSpan, false)
        Spanish.first.update_attribute(:list, @spanish)
        
        @camping << @camper.name
        @camper.update_attribute(:isCamp, true)
        Camping.first.update_attribute(:list, @camping)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:rocks] == "1"
      
        @spanish.delete_at(@spanish.index(@camper.name))
        @camper.update_attribute(:isSpan, false)
        Spanish.first.update_attribute(:list, @spanish)
        
        @rocks << @camper.name
        @camper.update_attribute(:isRock, true)
        Rock.first.update_attribute(:list, @rocks)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:fishing] == "1"
      
        @spanish.delete_at(@spanish.index(@camper.name))
        @camper.update_attribute(:isSpan, false)
        Spanish.first.update_attribute(:list, @spanish)
        
        @fishing << @camper.name
        @camper.update_attribute(:isFish, true)
        Fishing.first.update_attribute(:list, @fishing)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:hiking] == "1"
      
        @spanish.delete_at(@spanish.index(@camper.name))
        @camper.update_attribute(:isSpan, false)
        Spanish.first.update_attribute(:list, @spanish)
        
        @hiking << @camper.name
        @camper.update_attribute(:isHike, true)
        Hiking.first.update_attribute(:list, @hiking)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:pottery] == "1"
      
        @spanish.delete_at(@spanish.index(@camper.name))
        @camper.update_attribute(:isSpan, false)
        Spanish.first.update_attribute(:list, @spanish)
        
        @pottery << @camper.name
        @camper.update_attribute(:isPot, true)
        Pottery.first.update_attribute(:list, @pottery)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:arts] == "1"
      
        @spanish.delete_at(@spanish.index(@camper.name))
        @camper.update_attribute(:isSpan, false)
        Spanish.first.update_attribute(:list, @spanish)
        
        @arts << @camper.name
        @camper.update_attribute(:isArt, true)
        Art.first.update_attribute(:list, @arts)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:percussion] == "1"
      
        @spanish.delete_at(@spanish.index(@camper.name))
        @camper.update_attribute(:isSpan, false)
        Spanish.first.update_attribute(:list, @spanish)
        
        @percussion << @camper.name
        @camper.update_attribute(:isPer, true)
        Percussion.first.update_attribute(:list, @percussion)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:games] == "1"
      
        @spanish.delete_at(@spanish.index(@camper.name))
        @camper.update_attribute(:isSpan, false)
        Spanish.first.update_attribute(:list, @spanish)
        
        @games << @camper.name
        @camper.update_attribute(:isGame, true)
        Game.first.update_attribute(:list, @games)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:guitars] == "1"
      
        @spanish.delete_at(@spanish.index(@camper.name))
        @camper.update_attribute(:isSpan, false)
        Spanish.first.update_attribute(:list, @spanish)
        
        @guitars << @camper.name
        @camper.update_attribute(:isGuit, true)
        Guitar.first.update_attribute(:list, @guitars)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:choir] == "1"
        
        @spanish.delete_at(@spanish.index(@camper.name))
        @camper.update_attribute(:isSpan, false)
        Spanish.first.update_attribute(:list, @spanish)
        
        @choir << @camper.name
        @camper.update_attribute(:isChoir, true)
        Choir.first.update_attribute(:list, @choir)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:writing] == "1"
      
        @spanish.delete_at(@spanish.index(@camper.name))
        @camper.update_attribute(:isSpan, false)
        Spanish.first.update_attribute(:list, @spanish)
        
        @writing << @camper.name
        @camper.update_attribute(:isWrite, true)
        Writing.first.update_attribute(:list, @writing)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:weaving] == "1"
      
        @spanish.delete_at(@spanish.index(@camper.name))
        @camper.update_attribute(:isSpan, false)
        Spanish.first.update_attribute(:list, @spanish)
        
        @weaving << @camper.name
        @camper.update_attribute(:isWeave, true)
        Weaving.first.update_attribute(:list, @weaving)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:notdance] == "1"
      
        @spanish.delete_at(@spanish.index(@camper.name))
        @camper.update_attribute(:isSpan, false)
        Spanish.first.update_attribute(:list, @spanish)
        
        @notdance << @camper.name
        @camper.update_attribute(:isNotdance, true)
        Notdance.first.update_attribute(:list, @notdance)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:painting] == "1"
      
        @spanish.delete_at(@spanish.index(@camper.name))
        @camper.update_attribute(:isSpan, false)
        Spanish.first.update_attribute(:list, @spanish)
        
        @painting << @camper.name
        @camper.update_attribute(:isPaint, true)
        Painting.first.update_attribute(:list, @painting)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:sign] == "1"
      
        @spanish.delete_at(@spanish.index(@camper.name))
        @camper.update_attribute(:isSpan, false)
        Spanish.first.update_attribute(:list, @spanish)
        
        @sign << @camper.name
        @camper.update_attribute(:isSign, true)
        Sign.first.update_attribute(:list, @sign)
        
      elsif params[:reassign][:spanish] == "1"
      
        flash[:warning] = "No reassignment has been done since the camper is already in spanish today"
        redirect_to reassign_path and return
        
      elsif params[:reassign][:talking] == "1"
      
        @spanish.delete_at(@spanish.index(@camper.name))
        @camper.update_attribute(:isSpan, false)
        Spanish.first.update_attribute(:list, @spanish)
        
        @talking << @camper.name
        @camper.update_attribute(:isTalk, true)
        Talking.first.update_attribute(:list, @talking)
        
        flash[:success] = "Camper has successfully been rescheduled"        
        redirect_to better_path and return
        
      else
        flash[:warning] = "No activity to reschedule to was selected, please select an activity"
        redirect_to reassign_path and return
      end
      
    elsif @talking.index(@camper.name) != nil
      
      if params[:reassign][:archery] == "1"
        
        @talking.delete_at(@talking.index(@camper.name))
        @camper.update_attribute(:isTalk, false)
        Talking.first.update_attribute(:list, @talking)
        
        @archery << @camper.name
        @camper.update_attribute(:isArch, true)
        Archery.first.update_attribute(:list, @archery)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:riflery] == "1"
        
        @talking.delete_at(@talking.index(@camper.name))
        @camper.update_attribute(:isTalk, false)
        Talking.first.update_attribute(:list, @talking)
        
        @riflery << @camper.name
        @camper.update_attribute(:isRif, true)
        Riflery.first.update_attribute(:list, @riflery)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:canoeing] == "1"
      
        @talking.delete_at(@talking.index(@camper.name))
        @camper.update_attribute(:isTalk, false)
        Talking.first.update_attribute(:list, @talking)
        
        @canoeing << @camper.name
        @camper.update_attribute(:isCan, true)
        Canoeing.first.update_attribute(:list, @canoeing)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:baking] == "1"
      
        @talking.delete_at(@talking.index(@camper.name))
        @camper.update_attribute(:isTalk, false)
        Talking.first.update_attribute(:list, @talking)
        
        @baking << @camper.name
        @camper.update_attribute(:isBake, true)
        Baking.first.update_attribute(:list, @baking)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:camping] == "1"
      
        @talking.delete_at(@talking.index(@camper.name))
        @camper.update_attribute(:isTalk, false)
        Talking.first.update_attribute(:list, @talking)
        
        @camping << @camper.name
        @camper.update_attribute(:isCamp, true)
        Camping.first.update_attribute(:list, @camping)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:rocks] == "1"
      
        @talking.delete_at(@talking.index(@camper.name))
        @camper.update_attribute(:isTalk, false)
        Talking.first.update_attribute(:list, @talking)
        
        @rocks << @camper.name
        @camper.update_attribute(:isRock, true)
        Rock.first.update_attribute(:list, @rocks)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:fishing] == "1"
      
        @talking.delete_at(@talking.index(@camper.name))
        @camper.update_attribute(:isTalk, false)
        Talking.first.update_attribute(:list, @talking)
        
        @fishing << @camper.name
        @camper.update_attribute(:isFish, true)
        Fishing.first.update_attribute(:list, @fishing)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:hiking] == "1"
      
        @talking.delete_at(@talking.index(@camper.name))
        @camper.update_attribute(:isTalk, false)
        Talking.first.update_attribute(:list, @talking)
        
        @hiking << @camper.name
        @camper.update_attribute(:isHike, true)
        Hiking.first.update_attribute(:list, @hiking)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:pottery] == "1"
      
        @talking.delete_at(@talking.index(@camper.name))
        @camper.update_attribute(:isTalk, false)
        Talking.first.update_attribute(:list, @talking)
        
        @pottery << @camper.name
        @camper.update_attribute(:isPot, true)
        Pottery.first.update_attribute(:list, @pottery)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:arts] == "1"
      
        @talking.delete_at(@talking.index(@camper.name))
        @camper.update_attribute(:isTalk, false)
        Talking.first.update_attribute(:list, @talking)
        
        @arts << @camper.name
        @camper.update_attribute(:isArt, true)
        Art.first.update_attribute(:list, @arts)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:percussion] == "1"
      
        @talking.delete_at(@talking.index(@camper.name))
        @camper.update_attribute(:isTalk, false)
        Talking.first.update_attribute(:list, @talking)
        
        @percussion << @camper.name
        @camper.update_attribute(:isPer, true)
        Percussion.first.update_attribute(:list, @percussion)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:games] == "1"
      
        @talking.delete_at(@talking.index(@camper.name))
        @camper.update_attribute(:isTalk, false)
        Talking.first.update_attribute(:list, @talking)
        
        @games << @camper.name
        @camper.update_attribute(:isGame, true)
        Game.first.update_attribute(:list, @games)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:guitars] == "1"
      
        @talking.delete_at(@talking.index(@camper.name))
        @camper.update_attribute(:isTalk, false)
        Talking.first.update_attribute(:list, @talking)
        
        @guitars << @camper.name
        @camper.update_attribute(:isGuit, true)
        Guitar.first.update_attribute(:list, @guitars)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:choir] == "1"
        
        @talking.delete_at(@talking.index(@camper.name))
        @camper.update_attribute(:isTalk, false)
        Talking.first.update_attribute(:list, @talking)
        
        @choir << @camper.name
        @camper.update_attribute(:isChoir, true)
        Choir.first.update_attribute(:list, @choir)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:writing] == "1"
      
        @talking.delete_at(@talking.index(@camper.name))
        @camper.update_attribute(:isTalk, false)
        Talking.first.update_attribute(:list, @talking)
        
        @writing << @camper.name
        @camper.update_attribute(:isWrite, true)
        Writing.first.update_attribute(:list, @writing)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:weaving] == "1"
      
        @talking.delete_at(@talking.index(@camper.name))
        @camper.update_attribute(:isTalk, false)
        Talking.first.update_attribute(:list, @talking)
        
        @weaving << @camper.name
        @camper.update_attribute(:isWeave, true)
        Weaving.first.update_attribute(:list, @weaving)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:notdance] == "1"
      
        @talking.delete_at(@talking.index(@camper.name))
        @camper.update_attribute(:isTalk, false)
        Talking.first.update_attribute(:list, @talking)
        
        @notdance << @camper.name
        @camper.update_attribute(:isNotdance, true)
        Notdance.first.update_attribute(:list, @notdance)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:painting] == "1"
      
        @talking.delete_at(@talking.index(@camper.name))
        @camper.update_attribute(:isTalk, false)
        Talking.first.update_attribute(:list, @talking)
        
        @painting << @camper.name
        @camper.update_attribute(:isPaint, true)
        Painting.first.update_attribute(:list, @painting)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:sign] == "1"
      
        @talking.delete_at(@talking.index(@camper.name))
        @camper.update_attribute(:isTalk, false)
        Talking.first.update_attribute(:list, @talking)
        
        @sign << @camper.name
        @camper.update_attribute(:isSign, true)
        Sign.first.update_attribute(:list, @sign)
        
      elsif params[:reassign][:spanish] == "1"
      
        @talking.delete_at(@talking.index(@camper.name))
        @camper.update_attribute(:isTalk, false)
        Talking.first.update_attribute(:list, @talking)
        
        @spanish << @camper.name
        @camper.update_attribute(:isSpan, true)
        Spanish.first.update_attribute(:list, @spanish)
        
        flash[:success] = "Camper has successfully been rescheduled"
        redirect_to better_path and return
        
      elsif params[:reassign][:talking] == "1"
      
        flash[:warning] = "No reassignment has been done since the camper is already in talking with missionary today"
        redirect_to reassign_path and return
        
      else
        flash[:warning] = "No activity to reschedule to was selected, please select an activity"
        redirect_to reassign_path and return
      end
      
    else
      flash[:danger] = "The camper was not found in any of the activity lists, please contact Matthew at mdbuchanan0@gmail.com about this error"
    end
    
  end
  
  def rescind
    
   @archery = Archery.first.list
   @riflery = Riflery.first.list
   @canoeing = Canoeing.first.list
   @baking = Baking.first.list
   @camping = Camping.first.list
   @rocks = Rock.first.list
   @fishing = Fishing.first.list
   @hiking = Hiking.first.list
   @pottery = Pottery.first.list
   @arts = Art.first.list
   @percussion = Percussion.first.list
   @crafts = Craft.first.list
   @games = Game.first.list
   @guitars = Guitar.first.list
   @un = Un.first.list
    
   @choir = Choir.first.list
   @writing = Writing.first.list
   @weaving = Weaving.first.list
   @notdance = Notdance.first.list
   @painting = Painting.first.list
   @sign = Sign.first.list
   @spanish = Spanish.first.list
   @talking = Talking.first.list
   
   @archery.each do |name|
     Camper.find_by_name(name).update_attribute(:isArch, false)
   end
   
   @riflery.each do |name|
     Camper.find_by_name(name).update_attribute(:isRif, false)
   end
   
   @canoeing.each do |name|
     Camper.find_by_name(name).update_attribute(:isCan, false)
   end
   
   @baking.each do |name|
     Camper.find_by_name(name).update_attribute(:isBake, false)
   end
   
   @camping.each do |name|
     Camper.find_by_name(name).update_attribute(:isCamp, false)
   end
   
   @rocks.each do |name|
     Camper.find_by_name(name).update_attribute(:isRock, false)
   end
   
   @fishing.each do |name|
     Camper.find_by_name(name).update_attribute(:isFish, false)
   end
   
   @hiking.each do |name|
     Camper.find_by_name(name).update_attribute(:isHike, false)
   end
   
   @pottery.each do |name|
     Camper.find_by_name(name).update_attribute(:isPot, false)
   end
   
   @arts.each do |name|
     Camper.find_by_name(name).update_attribute(:isArt, false)
   end
   
   @percussion.each do |name|
     Camper.find_by_name(name).update_attribute(:isPer, false)
   end
   
   @games.each do |name|
     Camper.find_by_name(name).update_attribute(:isGame, false)
   end
   
   @guitars.each do |name|
     Camper.find_by_name(name).update_attribute(:isGuit, false)
   end
   
   @choir.each do |name|
     Camper.find_by_name(name).update_attribute(:isChoir, false)
   end
   
   @writing.each do |name|
     Camper.find_by_name(name).update_attribute(:isWrite, false)
   end
   
   @weaving.each do |name|
     Camper.find_by_name(name).update_attribute(:isWeave, false)
   end
   
   @notdance.each do |name|
     Camper.find_by_name(name).update_attribute(:isNotdance, false)
   end
   
   @painting.each do |name|
     Camper.find_by_name(name).update_attribute(:isPaint, false)
   end
   
   @sign.each do |name|
     Camper.find_by_name(name).update_attribute(:isSign, false)
   end
   
   @spanish.each do |name|
     Camper.find_by_name(name).update_attribute(:isSpan, false)
   end
   
   @talking.each do |name|
     Camper.find_by_name(name).update_attribute(:isTalk, false)
   end
   
   Archery.first.update_attribute(:list, [])
   Riflery.first.update_attribute(:list, [])
   Canoeing.first.update_attribute(:list, [])
   Baking.first.update_attribute(:list, [])
   Camping.first.update_attribute(:list, [])
   Rock.first.update_attribute(:list, [])
   Fishing.first.update_attribute(:list, [])
   Hiking.first.update_attribute(:list, [])
   Pottery.first.update_attribute(:list, [])
   Art.first.update_attribute(:list, [])
   Percussion.first.update_attribute(:list, [])
   Game.first.update_attribute(:list, [])
   Guitar.first.update_attribute(:list, [])
   
   Choir.first.update_attribute(:list, [])
   Writing.first.update_attribute(:list, [])
   Weaving.first.update_attribute(:list, [])
   Notdance.first.update_attribute(:list, [])
   Painting.first.update_attribute(:list, [])
   Sign.first.update_attribute(:list, [])
   Spanish.first.update_attribute(:list, [])
   Talking.first.update_attribute(:list, [])
   
   Un.first.update_attribute(:list, [])
   
   flash[:success] = "Today's schedule has successfully been reset"
   redirect_to admin_path
   
  end
  
  def toggle
    Link.first.update_attribute(:on, !Link.first.on)
    redirect_to better_path
  end
  
  def best
    # here is where the newest and (hopefully) best scheduler implementation will go
    # it will run through each individual camper looking for their first activity choice
    # if found it will assign them to that activity and them remove them from the list that's 
    # being searched through; at the end of that "pass" it will then search through the remaining
    # campers for their second activity choice; it will continue doing this until either there are no 
    # more campers to go through or the last number has been reached; if any campers still remain
    # they will be sent to the unassigned list for manual scheduling
  end
  
  def minimake
   if !logged_in?
      redirect_to login_path
      flash[:danger] = 'Please Login to use Admin Functions'
   end
   
   if !Camper.any?
      flash[:warning] = "There are no campers to schedule"
      redirect_to admin_path
   end
  end
  
  def mini
   # this is copied from the doit version of the scheduler
   # it is for mini camps since they have different size needs
   # it will use a different url to post from than the regular schedule

   @all = Camper.all
   
   Archery.first.update_attribute(:list, ["init"])
   Riflery.first.update_attribute(:list, ["init"])
   Canoeing.first.update_attribute(:list, ["init"])
   Baking.first.update_attribute(:list, ["init"])
   Camping.first.update_attribute(:list, ["init"])
   Rock.first.update_attribute(:list, ["init"])
   Fishing.first.update_attribute(:list, ["init"])
   Hiking.first.update_attribute(:list, ["init"])
   Pottery.first.update_attribute(:list, ["init"])
   Art.first.update_attribute(:list, ["init"])
   Percussion.first.update_attribute(:list, ["init"])
   Craft.first.update_attribute(:list, ["init"])
   Game.first.update_attribute(:list, ["init"])
   Guitar.first.update_attribute(:list, ["init"])
   Un.first.update_attribute(:list, ["init"])
   Choir.first.update_attribute(:list, ["init"])
   Writing.first.update_attribute(:list, ["init"])
   Weaving.first.update_attribute(:list, ["init"])
   Notdance.first.update_attribute(:list, ["init"])
   Painting.first.update_attribute(:list, ["init"])
   Sign.first.update_attribute(:list, ["init"])
   Spanish.first.update_attribute(:list, ["init"])
   Talking.first.update_attribute(:list, ["init"])
   
   Un.first.update_attribute(:list, ["init"])
   
   # Everything is on by default
   Schedule.first.update_attributes(slot: 0, isArch: true, isRif: true, isCan: true, isBake: true, isCamp: true, isRock: true, 
                                    isFish: true, isHike: true, isPot: true, isArt: true, isPer: true, isCraft: true, isGame: true,
                                    isGuit: true, isChoir: true, isWrite: true, isWeave: true, isNotdance: true, isPaint: true, 
                                    isSign: true, isSpan: true, isTalk: true)
   

   @archery = Array.new
   @riflery = Array.new
   @canoeing = Array.new
   @baking = Array.new
   @camping = Array.new
   @rocks = Array.new
   @fishing = Array.new
   @hiking = Array.new
   @pottery = Array.new
   @arts = Array.new
   @percussion = Array.new
   @crafts = Array.new
   @games = Array.new
   @guitars = Array.new
   @un = Array.new
   
   @choir = Array.new
   @writing = Array.new
   @weaving = Array.new
   @notdance = Array.new
   @painting = Array.new
   @sign = Array.new
   @spanish = Array.new
   @talking = Array.new
     

   if !params[:activities] || params[:activities] == "" || params[:activities] == nil
     flash[:warning] = "Something went wrong (at line 2152), nothing was scheduled. Please try again and contact Matthew at mdbuchanan0@gmail.com about this issue"
     redirect_to admin_path and return
   elsif params[:activities][:slot] == "1"
     i = 1
      @all.each do |all|
        
        # Beginning of conditionals that determine where a camper gets put in the schedule
        if all.archery != 9 && all.archery <= i && !all.isArch && @archery.size < 8 && params[:activities][:archery] == "1"
          all.update_attribute(:isArch, true)
          @archery << all.name
          #all.isArch = true
          #next
          # instead of next, do elsif so that the end of the thing can be used
        elsif all.riflery != 9 && all.riflery <= i && !all.isRif && @riflery.size < 8 && params[:activities][:riflery] == "1"
          all.update_attribute(:isRif, true)
          @riflery << all.name
          #all.isRif = true
          #next
        elsif all.canoeing != 9 && all.canoeing <= i && !all.isCan && @canoeing.size < 8 && params[:activities][:canoeing] == "1"
          all.update_attribute(:isCan, true)
          @canoeing << all.name
          #all.isCan = true
          #next
        elsif all.baking != 9 && all.baking <= i && !all.isBake && @baking.size < 7 && params[:activities][:baking] == "1"
          all.update_attribute(:isBake, true)
          @baking << all.name
          #all.isBake = true
          #next
        elsif all.camping != 9 && all.camping <= i && !all.isCamp && @camping.size < 12 && params[:activities][:camping] == "1"
          all.update_attribute(:isCamp, true)
          @camping << all.name
          #all.isCamp = true
          #next
        elsif all.rocks != 9 && all.rocks <= i && all.grade > 4 && !all.isRock && @rocks.size < 6 && params[:activities][:rocks] == "1"
          all.update_attribute(:isRock, true)
          @rocks << all.name
          #all.isRock = true
          #next
        elsif all.fishing != 9 && all.fishing <= i && !all.isFish && @fishing.size < 5 && params[:activities][:fishing] == "1"
          all.update_attribute(:isFish, true)
          @fishing << all.name
          #all.isFish = true
          #next
        elsif all.hiking != 9 && all.hiking <= i && !all.isHike && @hiking.size < 45 && params[:activities][:hiking] == "1"
          all.update_attribute(:isHike, true)
          @hiking << all.name
          #all.isHike = true
          #next
        elsif all.pottery != 9 && all.pottery <= i && !all.isPot && @pottery.size < 12 && params[:activities][:pottery] == "1"
          all.update_attribute(:isPot, true)
          @pottery << all.name
          #all.isPot = true
          #next
        elsif all.arts != 9 && all.arts <= i && !all.isArt && @arts.size < 10 && params[:activities][:arts] == "1"
          all.update_attribute(:isArt, true)
          @arts << all.name
          #all.isArt = true
          #next
        elsif all.percussion != 9 && all.percussion <= i && !all.isPer && @percussion.size < 5 && params[:activities][:percussion] == "1"
          all.update_attribute(:isPer, true)
          @percussion << all.name
          #all.isPer = true
          #next
        elsif all.crafts != 9 && all.crafts <= i && !all.isCraft && @crafts.size < 8 && params[:activities][:crafts] == "1"
          all.update_attribute(:isCraft, true)
          @crafts << all.name
          #all.isCraft = true
          #next
        elsif all.games != 9 && all.games <= i && !all.isGame && @games.size < 45 && params[:activities][:games] == "1"
          all.update_attribute(:isGame, true)
          @games << all.name
          #all.isGame = true
          #next
        elsif all.guitars != 9 && all.guitars <= i && !all.isGuit && @guitars.size < 5 && params[:activities][:guitars] == "1"
          all.update_attribute(:isGuit, true)
          @guitars << all.name
          #next
          
        elsif all.choir != 9 && all.choir <= i && !all.isChoir && @choir.size < 45 && params[:activities][:choir] == "1"
          all.update_attribute(:isChoir, true)
          @choir << all.name
          
        elsif all.writing != 9 && all.writing <= i && !all.isWrite && @writing.size < 45 && params[:activities][:writing] == "1"
          all.update_attribute(:isWrite, true)
          @writing << all.name
          
        elsif all.weaving != 9 && all.weaving <= i && !all.isWeave && @weaving.size < 45 && params[:activities][:weaving] == "1"
          all.update_attribute(:isWeave, true)
          @weaving << all.name
          
        elsif all.notdance != 9 && all.notdance <= i && !all.isNotdance && @notdance.size < 45 && params[:activities][:notdance] == "1"
          all.update_attribute(:isNotdance, true)
          @notdance << all.name
          
        elsif all.painting != 9 && all.painting <= i && !all.isPaint && @painting.size < 7 && params[:activities][:painting] == "1"
          all.update_attribute(:isPaint, true)
          @painting << all.name
          
        elsif all.sign != 9 && all.sign <= i && !all.isSign && @sign.size < 45 && params[:activities][:sign] == "1"
          all.update_attribute(:isSign, true)
          @sign << all.name
          
        elsif all.spanish != 9 && all.spanish <= i && !all.isSpan && @spanish.size < 45 && params[:activities][:spanish] == "1"
          all.update_attribute(:isSpan, true)
          @spanish << all.name
          
        elsif all.talking != 9 && all.talking <= i && !all.isTalk && @talking.size < 45 && params[:activities][:talking] == "1"
          all.update_attribute(:isTalk, true)
          @talking << all.name
          
          # This next section will use the camper's optional activities if they could not get assigned on one of their main activities
          
        elsif all.archery != 9 && all.archery > 3 && all.archery < 6 && !all.isArch && @archery.size < 8 && params[:activities][:archery] == "1"
          all.update_attribute(:isArch, true)
          @archery << all.name
          #all.isArch = true
          #next
          # instead of next, do else if so that the end of the thing can be used
        elsif all.riflery != 9 && all.riflery > 3 && all.riflery < 6 && !all.isRif && @riflery.size < 8 && params[:activities][:riflery] == "1"
          all.update_attribute(:isRif, true)
          @riflery << all.name
          #all.isRif = true
          #next
        elsif all.canoeing != 9 && all.canoeing > 3 && all.canoeing < 6 && !all.isCan && @canoeing.size < 8 && params[:activities][:canoeing] == "1"
          all.update_attribute(:isCan, true)
          @canoeing << all.name
          #all.isCan = true
          #next
        elsif all.baking != 9 && all.baking > 3 && all.baking < 6 && !all.isBake && @baking.size < 7 && params[:activities][:baking] == "1"
          all.update_attribute(:isBake, true)
          @baking << all.name
          #all.isBake = true
          #next
        elsif all.camping != 9 && all.camping > 3 && all.camping < 6 && !all.isCamp && @camping.size < 12 && params[:activities][:camping] == "1"
          all.update_attribute(:isCamp, true)
          @camping << all.name
          #all.isCamp = true
          #next
        elsif all.rocks != 9 && all.rocks > 3 && all.grade > 4 && all.rocks < 6 && !all.isRock && @rocks.size < 6 && params[:activities][:rocks] == "1"
          all.update_attribute(:isRock, true)
          @rocks << all.name
          #all.isRock = true
          #next
        elsif all.fishing != 9 && all.fishing > 3 && all.fishing < 6 && !all.isFish && @fishing.size < 5 && params[:activities][:fishing] == "1"
          all.update_attribute(:isFish, true)
          @fishing << all.name
          #all.isFish = true
          #next
        elsif all.hiking != 9 && all.hiking > 3 && all.hiking < 6 && !all.isHike && @hiking.size < 45 && params[:activities][:hiking] == "1"
          all.update_attribute(:isHike, true)
          @hiking << all.name
          #all.isHike = true
          #next
        elsif all.pottery != 9 && all.pottery > 3 && all.pottery < 6 && !all.isPot && @pottery.size < 12 && params[:activities][:pottery] == "1"
          all.update_attribute(:isPot, true)
          @pottery << all.name
          #all.isPot = true
          #next
        elsif all.arts != 9 && all.arts > 3 && all.arts < 6 && !all.isArt && @arts.size < 10 && params[:activities][:arts] == "1"
          all.update_attribute(:isArt, true)
          @arts << all.name
          #all.isArt = true
          #next
        elsif all.percussion != 9 && all.percussion > 3 && all.percussion < 6 && !all.isPer && @percussion.size < 5 && params[:activities][:percussion] == "1"
          all.update_attribute(:isPer, true)
          @percussion << all.name
          #all.isPer = true
          #next
        elsif all.crafts != 9 && all.crafts > 3 && all.crafts < 6 && !all.isCraft && @crafts.size < 8 && params[:activities][:crafts] == "1"
          all.update_attribute(:isCraft, true)
          @crafts << all.name
          #all.isCraft = true
          #next
        elsif all.games != 9 && all.games > 3 && all.games < 6 && !all.isGame && @games.size < 45 && params[:activities][:games] == "1"
          all.update_attribute(:isGame, true)
          @games << all.name
          #all.isGame = true
          #next
        elsif all.guitars != 9 && all.guitars > 3 && all.guitars < 6 && !all.isGuit && @guitars.size < 5 && params[:activities][:guitars] == "1"
          all.update_attribute(:isGuit, true)
          @guitars << all.name
          #next
          
        elsif all.choir != 9 && all.choir > 3 && all.choir < 6 && !all.isChoir && @choir.size < 45 && params[:activities][:choir] == "1"
          all.update_attribute(:isChoir, true)
          @choir << all.name
          
        elsif all.writing != 9 && all.writing > 3 && all.writing < 6 && !all.isWrite && @writing.size < 45 && params[:activities][:writing] == "1"
          all.update_attribute(:isWrite, true)
          @writing << all.name
          
        elsif all.weaving != 9 && all.weaving > 3 && all.weaving < 6 && !all.isWeave && @weaving.size < 45 && params[:activities][:weaving] == "1"
          all.update_attribute(:isWeave, true)
          @weaving << all.name
          
        elsif all.notdance != 9 && all.notdance > 3 && all.notdance < 6 && !all.isNotdance && @notdance.size < 45 && params[:activities][:notdance] == "1"
          all.update_attribute(:isNotdance, true)
          @notdance << all.name
          
        elsif all.painting != 9 && all.painting > 3 && all.painting < 6 && !all.isPaint && @painting.size < 7 && params[:activities][:painting] == "1"
          all.update_attribute(:isPaint, true)
          @painting << all.name
          
        elsif all.sign != 9 && all.sign > 3 && all.sign < 6 && !all.isSign && @sign.size < 45 && params[:activities][:sign] == "1"
          all.update_attribute(:isSign, true)
          @sign << all.name
          
        elsif all.spanish != 9 && all.spanish > 3 && all.spanish < 6 && !all.isSpan && @spanish.size < 45 && params[:activities][:spanish] == "1"
          all.update_attribute(:isSpan, true)
          @spanish << all.name
          
        elsif all.talking != 9 && all.talking > 3 && all.talking < 6 && !all.isTalk && @talking.size < 45 && params[:activities][:talking] == "1"
          all.update_attribute(:isTalk, true)
          @talking << all.name
          
        else
          # The camper is added to the $un array, indicating an unassigned camper
          @un << all.name
        end
        
      end  
      
     
   elsif params[:activities][:slot] == "2"
    i = 2
      @all.each do |all|
        
        # Beginning of conditionals that determine where a camper gets put in the schedule
        if all.archery != 9 && all.archery <= i && !all.isArch && @archery.size < 8 && params[:activities][:archery] == "1"
          all.update_attribute(:isArch, true)
          @archery << all.name
          #all.isArch = true
          #next
          # instead of next, do else if so that the end of the thing can be used
        elsif all.riflery != 9 && all.riflery <= i && !all.isRif && @riflery.size < 8 && params[:activities][:riflery] == "1"
          all.update_attribute(:isRif, true)
          @riflery << all.name
          #all.isRif = true
          #next
        elsif all.canoeing != 9 && all.canoeing <= i && !all.isCan && @canoeing.size < 8 && params[:activities][:canoeing] == "1"
          all.update_attribute(:isCan, true)
          @canoeing << all.name
          #all.isCan = true
          #next
        elsif all.baking != 9 && all.baking <= i && !all.isBake && @baking.size < 7 && params[:activities][:baking] == "1"
          all.update_attribute(:isBake, true)
          @baking << all.name
          #all.isBake = true
          #next
        elsif all.camping != 9 && all.camping <= i && !all.isCamp && @camping.size < 12 && params[:activities][:camping] == "1"
          all.update_attribute(:isCamp, true)
          @camping << all.name
          #all.isCamp = true
          #next
        elsif all.rocks != 9 && all.rocks <= i && all.grade > 4 && !all.isRock && @rocks.size < 6 && params[:activities][:rocks] == "1"
          all.update_attribute(:isRock, true)
          @rocks << all.name
          #all.isRock = true
          #next
        elsif all.fishing != 9 && all.fishing <= i && !all.isFish && @fishing.size < 5 && params[:activities][:fishing] == "1"
          all.update_attribute(:isFish, true)
          @fishing << all.name
          #all.isFish = true
          #next
        elsif all.hiking != 9 && all.hiking <= i && !all.isHike && @hiking.size < 45 && params[:activities][:hiking] == "1"
          all.update_attribute(:isHike, true)
          @hiking << all.name
          #all.isHike = true
          #next
        elsif all.pottery != 9 && all.pottery <= i && !all.isPot && @pottery.size < 12 && params[:activities][:pottery] == "1"
          all.update_attribute(:isPot, true)
          @pottery << all.name
          #all.isPot = true
          #next
        elsif all.arts != 9 && all.arts <= i && !all.isArt && @arts.size < 10 && params[:activities][:arts] == "1"
          all.update_attribute(:isArt, true)
          @arts << all.name
          #all.isArt = true
          #next
        elsif all.percussion != 9 && all.percussion <= i && !all.isPer && @percussion.size < 5 && params[:activities][:percussion] == "1"
          all.update_attribute(:isPer, true)
          @percussion << all.name
          #all.isPer = true
          #next
        elsif all.crafts != 9 && all.crafts <= i && !all.isCraft && @crafts.size < 8 && params[:activities][:crafts] == "1"
          all.update_attribute(:isCraft, true)
          @crafts << all.name
          #all.isCraft = true
          #next
        elsif all.games != 9 && all.games <= i && !all.isGame && @games.size < 45 && params[:activities][:games] == "1"
          all.update_attribute(:isGame, true)
          @games << all.name
          #all.isGame = true
          #next
        elsif all.guitars != 9 && all.guitars <= i && !all.isGuit && @guitars.size < 5 && params[:activities][:guitars] == "1"
          all.update_attribute(:isGuit, true)
          @guitars << all.name
          #next
          
        elsif all.choir != 9 && all.choir <= i && !all.isChoir && @choir.size < 45 && params[:activities][:choir] == "1"
          all.update_attribute(:isChoir, true)
          @choir << all.name
          
        elsif all.writing != 9 && all.writing <= i && !all.isWrite && @writing.size < 45 && params[:activities][:writing] == "1"
          all.update_attribute(:isWrite, true)
          @writing << all.name
          
        elsif all.weaving != 9 && all.weaving <= i && !all.isWeave && @weaving.size < 45 && params[:activities][:weaving] == "1"
          all.update_attribute(:isWeave, true)
          @weaving << all.name
          
        elsif all.notdance != 9 && all.notdance <= i && !all.isNotdance && @notdance.size < 45 && params[:activities][:notdance] == "1"
          all.update_attribute(:isNotdance, true)
          @notdance << all.name
          
        elsif all.painting != 9 && all.painting <= i && !all.isPaint && @painting.size < 7 && params[:activities][:painting] == "1"
          all.update_attribute(:isPaint, true)
          @painting << all.name
          
        elsif all.sign != 9 && all.sign <= i && !all.isSign && @sign.size < 45 && params[:activities][:sign] == "1"
          all.update_attribute(:isSign, true)
          @sign << all.name
          
        elsif all.spanish != 9 && all.spanish <= i && !all.isSpan && @spanish.size < 45 && params[:activities][:spanish] == "1"
          all.update_attribute(:isSpan, true)
          @spanish << all.name
          
        elsif all.talking != 9 && all.talking <= i && !all.isTalk && @talking.size < 45 && params[:activities][:talking] == "1"
          all.update_attribute(:isTalk, true)
          @talking << all.name
          
          # This next section will use the camper's optional activities if they could not get assigned on one of their main activities
          
        elsif all.archery != 9 && all.archery > 3 && all.archery < 6 && !all.isArch && @archery.size < 8 && params[:activities][:archery] == "1"
          all.update_attribute(:isArch, true)
          @archery << all.name
          #all.isArch = true
          #next
          # instead of next, do else if so that the end of the thing can be used
        elsif all.riflery != 9 && all.riflery > 3 && all.riflery < 6 && !all.isRif && @riflery.size < 8 && params[:activities][:riflery] == "1"
          all.update_attribute(:isRif, true)
          @riflery << all.name
          #all.isRif = true
          #next
        elsif all.canoeing != 9 && all.canoeing > 3 && all.canoeing < 6 && !all.isCan && @canoeing.size < 8 && params[:activities][:canoeing] == "1"
          all.update_attribute(:isCan, true)
          @canoeing << all.name
          #all.isCan = true
          #next
        elsif all.baking != 9 && all.baking > 3 && all.baking < 6 && !all.isBake && @baking.size < 7 && params[:activities][:baking] == "1"
          all.update_attribute(:isBake, true)
          @baking << all.name
          #all.isBake = true
          #next
        elsif all.camping != 9 && all.camping > 3 && all.camping < 6 && !all.isCamp && @camping.size < 12 && params[:activities][:camping] == "1"
          all.update_attribute(:isCamp, true)
          @camping << all.name
          #all.isCamp = true
          #next
        elsif all.rocks != 9 && all.rocks > 3 && all.grade > 4 && all.rocks < 6 && !all.isRock && @rocks.size < 6 && params[:activities][:rocks] == "1"
          all.update_attribute(:isRock, true)
          @rocks << all.name
          #all.isRock = true
          #next
        elsif all.fishing != 9 && all.fishing > 3 && all.fishing < 6 && !all.isFish && @fishing.size < 5 && params[:activities][:fishing] == "1"
          all.update_attribute(:isFish, true)
          @fishing << all.name
          #all.isFish = true
          #next
        elsif all.hiking != 9 && all.hiking > 3 && all.hiking < 6 && !all.isHike && @hiking.size < 45 && params[:activities][:hiking] == "1"
          all.update_attribute(:isHike, true)
          @hiking << all.name
          #all.isHike = true
          #next
        elsif all.pottery != 9 && all.pottery > 3 && all.pottery < 6 && !all.isPot && @pottery.size < 12 && params[:activities][:pottery] == "1"
          all.update_attribute(:isPot, true)
          @pottery << all.name
          #all.isPot = true
          #next
        elsif all.arts != 9 && all.arts > 3 && all.arts < 6 && !all.isArt && @arts.size < 10 && params[:activities][:arts] == "1"
          all.update_attribute(:isArt, true)
          @arts << all.name
          #all.isArt = true
          #next
        elsif all.percussion != 9 && all.percussion > 3 && all.percussion < 6 && !all.isPer && @percussion.size < 5 && params[:activities][:percussion] == "1"
          all.update_attribute(:isPer, true)
          @percussion << all.name
          #all.isPer = true
          #next
        elsif all.crafts != 9 && all.crafts > 3 && all.crafts < 6 && !all.isCraft && @crafts.size < 8 && params[:activities][:crafts] == "1"
          all.update_attribute(:isCraft, true)
          @crafts << all.name
          #all.isCraft = true
          #next
        elsif all.games != 9 && all.games > 3 && all.games < 6 && !all.isGame && @games.size < 45 && params[:activities][:games] == "1"
          all.update_attribute(:isGame, true)
          @games << all.name
          #all.isGame = true
          #next
        elsif all.guitars != 9 && all.guitars > 3 && all.guitars < 6 && !all.isGuit && @guitars.size < 5 && params[:activities][:guitars] == "1"
          all.update_attribute(:isGuit, true)
          @guitars << all.name
          #next
          
        elsif all.choir != 9 && all.choir > 3 && all.choir < 6 && !all.isChoir && @choir.size < 45 && params[:activities][:choir] == "1"
          all.update_attribute(:isChoir, true)
          @choir << all.name
          
        elsif all.writing != 9 && all.writing > 3 && all.writing < 6 && !all.isWrite && @writing.size < 45 && params[:activities][:writing] == "1"
          all.update_attribute(:isWrite, true)
          @writing << all.name
          
        elsif all.weaving != 9 && all.weaving > 3 && all.weaving < 6 && !all.isWeave && @weaving.size < 45 && params[:activities][:weaving] == "1"
          all.update_attribute(:isWeave, true)
          @weaving << all.name
          
        elsif all.notdance != 9 && all.notdance > 3 && all.notdance < 6 && !all.isNotdance && @notdance.size < 45 && params[:activities][:notdance] == "1"
          all.update_attribute(:isNotdance, true)
          @notdance << all.name
          
        elsif all.painting != 9 && all.painting > 3 && all.painting < 6 && !all.isPaint && @painting.size < 7 && params[:activities][:painting] == "1"
          all.update_attribute(:isPaint, true)
          @painting << all.name
          
        elsif all.sign != 9 && all.sign > 3 && all.sign < 6 && !all.isSign && @sign.size < 45 && params[:activities][:sign] == "1"
          all.update_attribute(:isSign, true)
          @sign << all.name
          
        elsif all.spanish != 9 && all.spanish > 3 && all.spanish < 6 && !all.isSpan && @spanish.size < 45 && params[:activities][:spanish] == "1"
          all.update_attribute(:isSpan, true)
          @spanish << all.name
          
        elsif all.talking != 9 && all.talking > 3 && all.talking < 6 && !all.isTalk && @talking.size < 45 && params[:activities][:talking] == "1"
          all.update_attribute(:isTalk, true)
          @talking << all.name
          
        else
          # The camper is added to the $un array, indicating an unassigned camper
          @un << all.name
        end
        
      end  
   
   elsif params[:activities][:slot] == "3"
   
    i = 3
      @all.each do |all|
        
        # Beginning of conditionals that determine where a camper gets put in the schedule
        if all.archery != 9 && all.archery <= i && !all.isArch && @archery.size < 8 && params[:activities][:archery] == "1"
          all.update_attribute(:isArch, true)
          @archery << all.name
          #all.isArch = true
          #next
          # instead of next, do else if so that the end of the thing can be used
        elsif all.riflery != 9 && all.riflery <= i && !all.isRif && @riflery.size < 8 && params[:activities][:riflery] == "1"
          all.update_attribute(:isRif, true)
          @riflery << all.name
          #all.isRif = true
          #next
        elsif all.canoeing != 9 && all.canoeing <= i && !all.isCan && @canoeing.size < 8 && params[:activities][:canoeing] == "1"
          all.update_attribute(:isCan, true)
          @canoeing << all.name
          #all.isCan = true
          #next
        elsif all.baking != 9 && all.baking <= i && !all.isBake && @baking.size < 7 && params[:activities][:baking] == "1"
          all.update_attribute(:isBake, true)
          @baking << all.name
          #all.isBake = true
          #next
        elsif all.camping != 9 && all.camping <= i && !all.isCamp && @camping.size < 12 && params[:activities][:camping] == "1"
          all.update_attribute(:isCamp, true)
          @camping << all.name
          #all.isCamp = true
          #next
        elsif all.rocks != 9 && all.rocks <= i && all.grade > 4 && !all.isRock && @rocks.size < 6 && params[:activities][:rocks] == "1"
          all.update_attribute(:isRock, true)
          @rocks << all.name
          #all.isRock = true
          #next
        elsif all.fishing != 9 && all.fishing <= i && !all.isFish && @fishing.size < 5 && params[:activities][:fishing] == "1"
          all.update_attribute(:isFish, true)
          @fishing << all.name
          #all.isFish = true
          #next
        elsif all.hiking != 9 && all.hiking <= i && !all.isHike && @hiking.size < 45 && params[:activities][:hiking] == "1"
          all.update_attribute(:isHike, true)
          @hiking << all.name
          #all.isHike = true
          #next
        elsif all.pottery != 9 && all.pottery <= i && !all.isPot && @pottery.size < 12 && params[:activities][:pottery] == "1"
          all.update_attribute(:isPot, true)
          @pottery << all.name
          #all.isPot = true
          #next
        elsif all.arts != 9 && all.arts <= i && !all.isArt && @arts.size < 10 && params[:activities][:arts] == "1"
          all.update_attribute(:isArt, true)
          @arts << all.name
          #all.isArt = true
          #next
        elsif all.percussion != 9 && all.percussion <= i && !all.isPer && @percussion.size < 5 && params[:activities][:percussion] == "1"
          all.update_attribute(:isPer, true)
          @percussion << all.name
          #all.isPer = true
          #next
        elsif all.crafts != 9 && all.crafts <= i && !all.isCraft && @crafts.size < 8 && params[:activities][:crafts] == "1"
          all.update_attribute(:isCraft, true)
          @crafts << all.name
          #all.isCraft = true
          #next
        elsif all.games != 9 && all.games <= i && !all.isGame && @games.size < 45 && params[:activities][:games] == "1"
          all.update_attribute(:isGame, true)
          @games << all.name
          #all.isGame = true
          #next
        elsif all.guitars != 9 && all.guitars <= i && !all.isGuit && @guitars.size < 5 && params[:activities][:guitars] == "1"
          all.update_attribute(:isGuit, true)
          @guitars << all.name
          #next
          
        elsif all.choir != 9 && all.choir <= i && !all.isChoir && @choir.size < 45 && params[:activities][:choir] == "1"
          all.update_attribute(:isChoir, true)
          @choir << all.name
          
        elsif all.writing != 9 && all.writing <= i && !all.isWrite && @writing.size < 45 && params[:activities][:writing] == "1"
          all.update_attribute(:isWrite, true)
          @writing << all.name
          
        elsif all.weaving != 9 && all.weaving <= i && !all.isWeave && @weaving.size < 45 && params[:activities][:weaving] == "1"
          all.update_attribute(:isWeave, true)
          @weaving << all.name
          
        elsif all.notdance != 9 && all.notdance <= i && !all.isNotdance && @notdance.size < 45 && params[:activities][:notdance] == "1"
          all.update_attribute(:isNotdance, true)
          @notdance << all.name
          
        elsif all.painting != 9 && all.painting <= i && !all.isPaint && @painting.size < 7 && params[:activities][:painting] == "1"
          all.update_attribute(:isPaint, true)
          @painting << all.name
          
        elsif all.sign != 9 && all.sign <= i && !all.isSign && @sign.size < 45 && params[:activities][:sign] == "1"
          all.update_attribute(:isSign, true)
          @sign << all.name
          
        elsif all.spanish != 9 && all.spanish <= i && !all.isSpan && @spanish.size < 45 && params[:activities][:spanish] == "1"
          all.update_attribute(:isSpan, true)
          @spanish << all.name
          
        elsif all.talking != 9 && all.talking <= i && !all.isTalk && @talking.size < 45 && params[:activities][:talking] == "1"
          all.update_attribute(:isTalk, true)
          @talking << all.name
        
          # This next section will use the camper's optional activities if they could not get assigned on one of their main activities
          
        elsif all.archery != 9 && all.archery > 3 && all.archery < 6 && !all.isArch && @archery.size < 8 && params[:activities][:archery] == "1"
          all.update_attribute(:isArch, true)
          @archery << all.name
          #all.isArch = true
          #next
          # instead of next, do else if so that the end of the thing can be used
        elsif all.riflery != 9 && all.riflery > 3 && all.riflery < 6 && !all.isRif && @riflery.size < 8 && params[:activities][:riflery] == "1"
          all.update_attribute(:isRif, true)
          @riflery << all.name
          #all.isRif = true
          #next
        elsif all.canoeing != 9 && all.canoeing > 3 && all.canoeing < 6 && !all.isCan && @canoeing.size < 8 && params[:activities][:canoeing] == "1"
          all.update_attribute(:isCan, true)
          @canoeing << all.name
          #all.isCan = true
          #next
        elsif all.baking != 9 && all.baking > 3 && all.baking < 6 && !all.isBake && @baking.size < 7 && params[:activities][:baking] == "1"
          all.update_attribute(:isBake, true)
          @baking << all.name
          #all.isBake = true
          #next
        elsif all.camping != 9 && all.camping > 3 && all.camping < 6 && !all.isCamp && @camping.size < 12 && params[:activities][:camping] == "1"
          all.update_attribute(:isCamp, true)
          @camping << all.name
          #all.isCamp = true
          #next
        elsif all.rocks != 9 && all.rocks > 3 && all.grade > 4 && all.rocks < 6 && !all.isRock && @rocks.size < 6 && params[:activities][:rocks] == "1"
          all.update_attribute(:isRock, true)
          @rocks << all.name
          #all.isRock = true
          #next
        elsif all.fishing != 9 && all.fishing > 3 && all.fishing < 6 && !all.isFish && @fishing.size < 5 && params[:activities][:fishing] == "1"
          all.update_attribute(:isFish, true)
          @fishing << all.name
          #all.isFish = true
          #next
        elsif all.hiking != 9 && all.hiking > 3 && all.hiking < 6 && !all.isHike && @hiking.size < 45 && params[:activities][:hiking] == "1"
          all.update_attribute(:isHike, true)
          @hiking << all.name
          #all.isHike = true
          #next
        elsif all.pottery != 9 && all.pottery > 3 && all.pottery < 6 && !all.isPot && @pottery.size < 12 && params[:activities][:pottery] == "1"
          all.update_attribute(:isPot, true)
          @pottery << all.name
          #all.isPot = true
          #next
        elsif all.arts != 9 && all.arts > 3 && all.arts < 6 && !all.isArt && @arts.size < 10 && params[:activities][:arts] == "1"
          all.update_attribute(:isArt, true)
          @arts << all.name
          #all.isArt = true
          #next
        elsif all.percussion != 9 && all.percussion > 3 && all.percussion < 6 && !all.isPer && @percussion.size < 5 && params[:activities][:percussion] == "1"
          all.update_attribute(:isPer, true)
          @percussion << all.name
          #all.isPer = true
          #next
        elsif all.crafts != 9 && all.crafts > 3 && all.crafts < 6 && !all.isCraft && @crafts.size < 8 && params[:activities][:crafts] == "1"
          all.update_attribute(:isCraft, true)
          @crafts << all.name
          #all.isCraft = true
          #next
        elsif all.games != 9 && all.games > 3 && all.games < 6 && !all.isGame && @games.size < 45 && params[:activities][:games] == "1"
          all.update_attribute(:isGame, true)
          @games << all.name
          #all.isGame = true
          #next
        elsif all.guitars != 9 && all.guitars > 3 && all.guitars < 6 && !all.isGuit && @guitars.size < 5 && params[:activities][:guitars] == "1"
          all.update_attribute(:isGuit, true)
          @guitars << all.name
          #next
          
        elsif all.choir != 9 && all.choir > 3 && all.choir < 6 && !all.isChoir && @choir.size < 45 && params[:activities][:choir] == "1"
          all.update_attribute(:isChoir, true)
          @choir << all.name
          
        elsif all.writing != 9 && all.writing > 3 && all.writing < 6 && !all.isWrite && @writing.size < 45 && params[:activities][:writing] == "1"
          all.update_attribute(:isWrite, true)
          @writing << all.name
          
        elsif all.weaving != 9 && all.weaving > 3 && all.weaving < 6 && !all.isWeave && @weaving.size < 45 && params[:activities][:weaving] == "1"
          all.update_attribute(:isWeave, true)
          @weaving << all.name
          
        elsif all.notdance != 9 && all.notdance > 3 && all.notdance < 6 && !all.isNotdance && @notdance.size < 45 && params[:activities][:notdance] == "1"
          all.update_attribute(:isNotdance, true)
          @notdance << all.name
          
        elsif all.painting != 9 && all.painting > 3 && all.painting < 6 && !all.isPaint && @painting.size < 7 && params[:activities][:painting] == "1"
          all.update_attribute(:isPaint, true)
          @painting << all.name
          
        elsif all.sign != 9 && all.sign > 3 && all.sign < 6 && !all.isSign && @sign.size < 45 && params[:activities][:sign] == "1"
          all.update_attribute(:isSign, true)
          @sign << all.name
          
        elsif all.spanish != 9 && all.spanish > 3 && all.spanish < 6 && !all.isSpan && @spanish.size < 45 && params[:activities][:spanish] == "1"
          all.update_attribute(:isSpan, true)
          @spanish << all.name
          
        elsif all.talking != 9 && all.talking > 3 && all.talking < 6 && !all.isTalk && @talking.size < 45 && params[:activities][:talking] == "1"
          all.update_attribute(:isTalk, true)
          @talking << all.name
          
        else
          # The camper is added to the $un array, indicating an unassigned camper
          @un << all.name
        end
        
      end  
   
   elsif params[:activities][:slot] == "4"
   
    i = 4
      @all.each do |all|
        
        # Beginning of conditionals that determine where a camper gets put in the schedule
        if all.archery != 9 && all.archery <= i && !all.isArch && @archery.size < 8 && params[:activities][:archery] == "1"
          all.update_attribute(:isArch, true)
          @archery << all.name
          #all.isArch = true
          #next
          # instead of next, do else if so that the end of the thing can be used
        elsif all.riflery != 9 && all.riflery <= i && !all.isRif && @riflery.size < 8 && params[:activities][:riflery] == "1"
          all.update_attribute(:isRif, true)
          @riflery << all.name
          #all.isRif = true
          #next
        elsif all.canoeing != 9 && all.canoeing <= i && !all.isCan && @canoeing.size < 8 && params[:activities][:canoeing] == "1"
          all.update_attribute(:isCan, true)
          @canoeing << all.name
          #all.isCan = true
          #next
        elsif all.baking != 9 && all.baking <= i && !all.isBake && @baking.size < 7 && params[:activities][:baking] == "1"
          all.update_attribute(:isBake, true)
          @baking << all.name
          #all.isBake = true
          #next
        elsif all.camping != 9 && all.camping <= i && !all.isCamp && @camping.size < 12 && params[:activities][:camping] == "1"
          all.update_attribute(:isCamp, true)
          @camping << all.name
          #all.isCamp = true
          #next
        elsif all.rocks != 9 && all.rocks <= i && all.grade > 4 && !all.isRock && @rocks.size < 6 && params[:activities][:rocks] == "1"
          all.update_attribute(:isRock, true)
          @rocks << all.name
          #all.isRock = true
          #next
        elsif all.fishing != 9 && all.fishing <= i && !all.isFish && @fishing.size < 5 && params[:activities][:fishing] == "1"
          all.update_attribute(:isFish, true)
          @fishing << all.name
          #all.isFish = true
          #next
        elsif all.hiking != 9 && all.hiking <= i && !all.isHike && @hiking.size < 45 && params[:activities][:hiking] == "1"
          all.update_attribute(:isHike, true)
          @hiking << all.name
          #all.isHike = true
          #next
        elsif all.pottery != 9 && all.pottery <= i && !all.isPot && @pottery.size < 12 && params[:activities][:pottery] == "1"
          all.update_attribute(:isPot, true)
          @pottery << all.name
          #all.isPot = true
          #next
        elsif all.arts != 9 && all.arts <= i && !all.isArt && @arts.size < 10 && params[:activities][:arts] == "1"
          all.update_attribute(:isArt, true)
          @arts << all.name
          #all.isArt = true
          #next
        elsif all.percussion != 9 && all.percussion <= i && !all.isPer && @percussion.size < 5 && params[:activities][:percussion] == "1"
          all.update_attribute(:isPer, true)
          @percussion << all.name
          #all.isPer = true
          #next
        elsif all.crafts != 9 && all.crafts <= i && !all.isCraft && @crafts.size < 8 && params[:activities][:crafts] == "1"
          all.update_attribute(:isCraft, true)
          @crafts << all.name
          #all.isCraft = true
          #next
        elsif all.games != 9 && all.games <= i && !all.isGame && @games.size < 45 && params[:activities][:games] == "1"
          all.update_attribute(:isGame, true)
          @games << all.name
          #all.isGame = true
          #next
        elsif all.guitars != 9 && all.guitars <= i && !all.isGuit && @guitars.size < 5 && params[:activities][:guitars] == "1"
          all.update_attribute(:isGuit, true)
          @guitars << all.name
          #next
          
        elsif all.choir != 9 && all.choir <= i && !all.isChoir && @choir.size < 45 && params[:activities][:choir] == "1"
          all.update_attribute(:isChoir, true)
          @choir << all.name
          
        elsif all.writing != 9 && all.writing <= i && !all.isWrite && @writing.size < 45 && params[:activities][:writing] == "1"
          all.update_attribute(:isWrite, true)
          @writing << all.name
          
        elsif all.weaving != 9 && all.weaving <= i && !all.isWeave && @weaving.size < 45 && params[:activities][:weaving] == "1"
          all.update_attribute(:isWeave, true)
          @weaving << all.name
          
        elsif all.notdance != 9 && all.notdance <= i && !all.isNotdance && @notdance.size < 45 && params[:activities][:notdance] == "1"
          all.update_attribute(:isNotdance, true)
          @notdance << all.name
          
        elsif all.painting != 9 && all.painting <= i && !all.isPaint && @painting.size < 7 && params[:activities][:painting] == "1"
          all.update_attribute(:isPaint, true)
          @painting << all.name
          
        elsif all.sign != 9 && all.sign <= i && !all.isSign && @sign.size < 45 && params[:activities][:sign] == "1"
          all.update_attribute(:isSign, true)
          @sign << all.name
          
        elsif all.spanish != 9 && all.spanish <= i && !all.isSpan && @spanish.size < 45 && params[:activities][:spanish] == "1"
          all.update_attribute(:isSpan, true)
          @spanish << all.name
          
        elsif all.talking != 9 && all.talking <= i && !all.isTalk && @talking.size < 45 && params[:activities][:talking] == "1"
          all.update_attribute(:isTalk, true)
          @talking << all.name
        
          # This next section will use the camper's optional activities if they could not get assigned on one of their main activities
          
        elsif all.archery != 9 && all.archery <= 6 && !all.isArch && @archery.size < 8 && params[:activities][:archery] == "1"
          all.update_attribute(:isArch, true)
          @archery << all.name
          #all.isArch = true
          #next
          # instead of next, do else if so that the end of the thing can be used
        elsif all.riflery != 9 && all.riflery <= 6 && !all.isRif && @riflery.size < 8 && params[:activities][:riflery] == "1"
          all.update_attribute(:isRif, true)
          @riflery << all.name
          #all.isRif = true
          #next
        elsif all.canoeing != 9 && all.canoeing <= 6 && !all.isCan && @canoeing.size < 8 && params[:activities][:canoeing] == "1"
          all.update_attribute(:isCan, true)
          @canoeing << all.name
          #all.isCan = true
          #next
        elsif all.baking != 9 && all.baking <= 6 && !all.isBake && @baking.size < 7 && params[:activities][:baking] == "1"
          all.update_attribute(:isBake, true)
          @baking << all.name
          #all.isBake = true
          #next
        elsif all.camping != 9 && all.camping <= 6 && !all.isCamp && @camping.size < 12 && params[:activities][:camping] == "1"
          all.update_attribute(:isCamp, true)
          @camping << all.name
          #all.isCamp = true
          #next
        elsif all.rocks != 9 && all.rocks <= 6 && all.grade > 4 && !all.isRock && @rocks.size < 6 && params[:activities][:rocks] == "1"
          all.update_attribute(:isRock, true)
          @rocks << all.name
          #all.isRock = true
          #next
        elsif all.fishing != 9 && all.fishing <= 6 && !all.isFish && @fishing.size < 5 && params[:activities][:fishing] == "1"
          all.update_attribute(:isFish, true)
          @fishing << all.name
          #all.isFish = true
          #next
        elsif all.hiking != 9 && all.hiking <= 6 && !all.isHike && @hiking.size < 45 && params[:activities][:hiking] == "1"
          all.update_attribute(:isHike, true)
          @hiking << all.name
          #all.isHike = true
          #next
        elsif all.pottery != 9 && all.pottery <= 6 && !all.isPot && @pottery.size < 12 && params[:activities][:pottery] == "1"
          all.update_attribute(:isPot, true)
          @pottery << all.name
          #all.isPot = true
          #next
        elsif all.arts != 9 && all.arts <= 6 && !all.isArt && @arts.size < 10 && params[:activities][:arts] == "1"
          all.update_attribute(:isArt, true)
          @arts << all.name
          #all.isArt = true
          #next
        elsif all.percussion != 9 && all.percussion <= 6 && !all.isPer && @percussion.size < 5 && params[:activities][:percussion] == "1"
          all.update_attribute(:isPer, true)
          @percussion << all.name
          #all.isPer = true
          #next
        elsif all.crafts != 9 && all.crafts <= 6 && !all.isCraft && @crafts.size < 8 && params[:activities][:crafts] == "1"
          all.update_attribute(:isCraft, true)
          @crafts << all.name
          #all.isCraft = true
          #next
        elsif all.games != 9 && all.games <= 6 && !all.isGame && @games.size < 45 && params[:activities][:games] == "1"
          all.update_attribute(:isGame, true)
          @games << all.name
          #all.isGame = true
          #next
        elsif all.guitars != 9 && all.guitars <= 6 && !all.isGuit && @guitars.size < 5 && params[:activities][:guitars] == "1"
          all.update_attribute(:isGuit, true)
          @guitars << all.name
          #next
          
        elsif all.choir != 9 && all.choir <= 6 && !all.isChoir && @choir.size < 45 && params[:activities][:choir] == "1"
          all.update_attribute(:isChoir, true)
          @choir << all.name
          
        elsif all.writing != 9 && all.writing <= 6 && !all.isWrite && @writing.size < 45 && params[:activities][:writing] == "1"
          all.update_attribute(:isWrite, true)
          @writing << all.name
          
        elsif all.weaving != 9 && all.weaving <= 6 && !all.isWeave && @weaving.size < 45 && params[:activities][:weaving] == "1"
          all.update_attribute(:isWeave, true)
          @weaving << all.name
          
        elsif all.notdance != 9 && all.notdance <= 6 && !all.isNotdance && @notdance.size < 45 && params[:activities][:notdance] == "1"
          all.update_attribute(:isNotdance, true)
          @notdance << all.name
          
        elsif all.painting != 9 && all.painting <= 6 && !all.isPaint && @painting.size < 7 && params[:activities][:painting] == "1"
          all.update_attribute(:isPaint, true)
          @painting << all.name
          
        elsif all.sign != 9 && all.sign <= 6 && !all.isSign && @sign.size < 45 && params[:activities][:sign] == "1"
          all.update_attribute(:isSign, true)
          @sign << all.name
          
        elsif all.spanish != 9 && all.spanish <= 6 && !all.isSpan && @spanish.size < 45 && params[:activities][:spanish] == "1"
          all.update_attribute(:isSpan, true)
          @spanish << all.name
          
        elsif all.talking != 9 && all.talking <= 6 && !all.isTalk && @talking.size < 45 && params[:activities][:talking] == "1"
          all.update_attribute(:isTalk, true)
          @talking << all.name
          
        else
          # The camper is added to the $un array, indicating an unassigned camper
          @un << all.name
        end
        
      end  
   
   elsif params[:activities][:slot] == "5"
   
    i = 5
      @all.each do |all|
        
        # Beginning of conditionals that determine where a camper gets put in the schedule
        if all.archery != 9 && all.archery <= i && !all.isArch && @archery.size < 8 && params[:activities][:archery] == "1"
          all.update_attribute(:isArch, true)
          @archery << all.name
          #all.isArch = true
          #next
          # instead of next, do else if so that the end of the thing can be used
        elsif all.riflery != 9 && all.riflery <= i && !all.isRif && @riflery.size < 8 && params[:activities][:riflery] == "1"
          all.update_attribute(:isRif, true)
          @riflery << all.name
          #all.isRif = true
          #next
        elsif all.canoeing != 9 && all.canoeing <= i && !all.isCan && @canoeing.size < 8 && params[:activities][:canoeing] == "1"
          all.update_attribute(:isCan, true)
          @canoeing << all.name
          #all.isCan = true
          #next
        elsif all.baking != 9 && all.baking <= i && !all.isBake && @baking.size < 7 && params[:activities][:baking] == "1"
          all.update_attribute(:isBake, true)
          @baking << all.name
          #all.isBake = true
          #next
        elsif all.camping != 9 && all.camping <= i && !all.isCamp && @camping.size < 12 && params[:activities][:camping] == "1"
          all.update_attribute(:isCamp, true)
          @camping << all.name
          #all.isCamp = true
          #next
        elsif all.rocks != 9 && all.rocks <= i && all.grade > 4 && !all.isRock && @rocks.size < 6 && params[:activities][:rocks] == "1"
          all.update_attribute(:isRock, true)
          @rocks << all.name
          #all.isRock = true
          #next
        elsif all.fishing != 9 && all.fishing <= i && !all.isFish && @fishing.size < 5 && params[:activities][:fishing] == "1"
          all.update_attribute(:isFish, true)
          @fishing << all.name
          #all.isFish = true
          #next
        elsif all.hiking != 9 && all.hiking <= i && !all.isHike && @hiking.size < 45 && params[:activities][:hiking] == "1"
          all.update_attribute(:isHike, true)
          @hiking << all.name
          #all.isHike = true
          #next
        elsif all.pottery != 9 && all.pottery <= i && !all.isPot && @pottery.size < 12 && params[:activities][:pottery] == "1"
          all.update_attribute(:isPot, true)
          @pottery << all.name
          #all.isPot = true
          #next
        elsif all.arts != 9 && all.arts <= i && !all.isArt && @arts.size < 10 && params[:activities][:arts] == "1"
          all.update_attribute(:isArt, true)
          @arts << all.name
          #all.isArt = true
          #next
        elsif all.percussion != 9 && all.percussion <= i && !all.isPer && @percussion.size < 5 && params[:activities][:percussion] == "1"
          all.update_attribute(:isPer, true)
          @percussion << all.name
          #all.isPer = true
          #next
        elsif all.crafts != 9 && all.crafts <= i && !all.isCraft && @crafts.size < 8 && params[:activities][:crafts] == "1"
          all.update_attribute(:isCraft, true)
          @crafts << all.name
          #all.isCraft = true
          #next
        elsif all.games != 9 && all.games <= i && !all.isGame && @games.size < 45 && params[:activities][:games] == "1"
          all.update_attribute(:isGame, true)
          @games << all.name
          #all.isGame = true
          #next
        elsif all.guitars != 9 && all.guitars <= i && !all.isGuit && @guitars.size < 5 && params[:activities][:guitars] == "1"
          all.update_attribute(:isGuit, true)
          @guitars << all.name
          #next
        
        elsif all.choir != 9 && all.choir <= i && !all.isChoir && @choir.size < 45 && params[:activities][:choir] == "1"
          all.update_attribute(:isChoir, true)
          @choir << all.name
          
        elsif all.writing != 9 && all.writing <= i && !all.isWrite && @writing.size < 45 && params[:activities][:writing] == "1"
          all.update_attribute(:isWrite, true)
          @writing << all.name
          
        elsif all.weaving != 9 && all.weaving <= i && !all.isWeave && @weaving.size < 45 && params[:activities][:weaving] == "1"
          all.update_attribute(:isWeave, true)
          @weaving << all.name
          
        elsif all.notdance != 9 && all.notdance <= i && !all.isNotdance && @notdance.size < 45 && params[:activities][:notdance] == "1"
          all.update_attribute(:isNotdance, true)
          @notdance << all.name
          
        elsif all.painting != 9 && all.painting <= i && !all.isPaint && @painting.size < 7 && params[:activities][:painting] == "1"
          all.update_attribute(:isPaint, true)
          @painting << all.name
          
        elsif all.sign != 9 && all.sign <= i && !all.isSign && @sign.size < 45 && params[:activities][:sign] == "1"
          all.update_attribute(:isSign, true)
          @sign << all.name
          
        elsif all.spanish != 9 && all.spanish <= i && !all.isSpan && @spanish.size < 45 && params[:activities][:spanish] == "1"
          all.update_attribute(:isSpan, true)
          @spanish << all.name
          
        elsif all.talking != 9 && all.talking <= i && !all.isTalk && @talking.size < 45 && params[:activities][:talking] == "1"
          all.update_attribute(:isTalk, true)
          @talking << all.name
          
          # This next section will use the camper's optional activities if they could not get assigned on one of their main activities
          
        elsif all.archery != 9 && all.archery > 5 && !all.isArch && @archery.size < 8 && params[:activities][:archery] == "1"
          all.update_attribute(:isArch, true)
          @archery << all.name
          #all.isArch = true
          #next
          # instead of next, do else if so that the end of the thing can be used
        elsif all.riflery != 9 && all.riflery > 5 && !all.isRif && @riflery.size < 8 && params[:activities][:riflery] == "1"
          all.update_attribute(:isRif, true)
          @riflery << all.name
          #all.isRif = true
          #next
        elsif all.canoeing != 9 && all.canoeing > 5 && !all.isCan && @canoeing.size < 8 && params[:activities][:canoeing] == "1"
          all.update_attribute(:isCan, true)
          @canoeing << all.name
          #all.isCan = true
          #next
        elsif all.baking != 9 && all.baking > 5 && !all.isBake && @baking.size < 7 && params[:activities][:baking] == "1"
          all.update_attribute(:isBake, true)
          @baking << all.name
          #all.isBake = true
          #next
        elsif all.camping != 9 && all.camping > 5 && !all.isCamp && @camping.size < 12 && params[:activities][:camping] == "1"
          all.update_attribute(:isCamp, true)
          @camping << all.name
          #all.isCamp = true
          #next
        elsif all.rocks != 9 && all.rocks > 5 && all.grade > 4 && !all.isRock && @rocks.size < 6 && params[:activities][:rocks] == "1"
          all.update_attribute(:isRock, true)
          @rocks << all.name
          #all.isRock = true
          #next
        elsif all.fishing != 9 && all.fishing > 5 && !all.isFish && @fishing.size < 5 && params[:activities][:fishing] == "1"
          all.update_attribute(:isFish, true)
          @fishing << all.name
          #all.isFish = true
          #next
        elsif all.hiking != 9 && all.hiking > 5 && !all.isHike && @hiking.size < 45 && params[:activities][:hiking] == "1"
          all.update_attribute(:isHike, true)
          @hiking << all.name
          #all.isHike = true
          #next
        elsif all.pottery != 9 && all.pottery > 5 && !all.isPot && @pottery.size < 12 && params[:activities][:pottery] == "1"
          all.update_attribute(:isPot, true)
          @pottery << all.name
          #all.isPot = true
          #next
        elsif all.arts != 9 && all.arts > 5 && !all.isArt && @arts.size < 10 && params[:activities][:arts] == "1"
          all.update_attribute(:isArt, true)
          @arts << all.name
          #all.isArt = true
          #next
        elsif all.percussion != 9 && all.percussion > 5 && !all.isPer && @percussion.size < 5 && params[:activities][:percussion] == "1"
          all.update_attribute(:isPer, true)
          @percussion << all.name
          #all.isPer = true
          #next
        elsif all.crafts != 9 && all.crafts > 5 && !all.isCraft && @crafts.size < 8 && params[:activities][:crafts] == "1"
          all.update_attribute(:isCraft, true)
          @crafts << all.name
          #all.isCraft = true
          #next
        elsif all.games != 9 && all.games > 5 && !all.isGame && @games.size < 45 && params[:activities][:games] == "1"
          all.update_attribute(:isGame, true)
          @games << all.name
          #all.isGame = true
          #next
        elsif all.guitars != 9 && all.guitars > 5 && !all.isGuit && @guitars.size < 5 && params[:activities][:guitars] == "1"
          all.update_attribute(:isGuit, true)
          @guitars << all.name
          #next
          
        elsif all.choir != 9 && all.choir > 5 && !all.isChoir && @choir.size < 45 && params[:activities][:choir] == "1"
          all.update_attribute(:isChoir, true)
          @choir << all.name
          
        elsif all.writing != 9 && all.writing > 5 && !all.isWrite && @writing.size < 45 && params[:activities][:writing] == "1"
          all.update_attribute(:isWrite, true)
          @writing << all.name
          
        elsif all.weaving != 9 && all.weaving > 5 && !all.isWeave && @weaving.size < 45 && params[:activities][:weaving] == "1"
          all.update_attribute(:isWeave, true)
          @weaving << all.name
          
        elsif all.notdance != 9 && all.notdance > 5 && !all.isNotdance && @notdance.size < 45 && params[:activities][:notdance] == "1"
          all.update_attribute(:isNotdance, true)
          @notdance << all.name
          
        elsif all.painting != 9 && all.painting > 5 && !all.isPaint && @painting.size < 7 && params[:activities][:painting] == "1"
          all.update_attribute(:isPaint, true)
          @painting << all.name
          
        elsif all.sign != 9 && all.sign > 5 && !all.isSign && @sign.size < 45 && params[:activities][:sign] == "1"
          all.update_attribute(:isSign, true)
          @sign << all.name
          
        elsif all.spanish != 9 && all.spanish > 5 && !all.isSpan && @spanish.size < 45 && params[:activities][:spanish] == "1"
          all.update_attribute(:isSpan, true)
          @spanish << all.name
          
        elsif all.talking != 9 && all.talking > 5 && !all.isTalk && @talking.size < 45 && params[:activities][:talking] == "1"
          all.update_attribute(:isTalk, true)
          @talking << all.name
          
        else
          # The camper is added to the $un array, indicating an unassigned camper
          @un << all.name
        end
        
      end  
   
   else
     flash[:danger] = "The time slot was not 1-5, it was \"#{params[:activities][:slot]}.\" Please enter a number 1-5 for the time slot"
     redirect_to trial_path and return
   end
     
   
   Archery.first.update_attribute(:list, @archery)
   Riflery.first.update_attribute(:list, @riflery)
   Canoeing.first.update_attribute(:list, @canoeing)
   Baking.first.update_attribute(:list, @baking)
   Camping.first.update_attribute(:list, @camping)
   Rock.first.update_attribute(:list, @rocks)
   Fishing.first.update_attribute(:list, @fishing)
   Hiking.first.update_attribute(:list, @hiking)
   Pottery.first.update_attribute(:list, @pottery)
   Art.first.update_attribute(:list, @arts)
   Percussion.first.update_attribute(:list, @percussion)
   Craft.first.update_attribute(:list, @crafts)
   Game.first.update_attribute(:list, @games)
   Guitar.first.update_attribute(:list, @guitars)
   Choir.first.update_attribute(:list, @choir)
   Writing.first.update_attribute(:list, @writing)
   Weaving.first.update_attribute(:list, @weaving)
   Notdance.first.update_attribute(:list, @notdance)
   Painting.first.update_attribute(:list, @painting)
   Sign.first.update_attribute(:list, @sign)
   Spanish.first.update_attribute(:list, @spanish)
   Talking.first.update_attribute(:list, @talking)
   Un.first.update_attribute(:list, @un)
   
   if !params[:activities] || params[:activities] == "" || params[:activities] == nil
     flash[:warning] = "Something went wrong after scheduling (at line 10530), the schedule should have been made 
                        and should be viewable, regardless please contact Matthew at mdbuchanan0@gmail.com about this issue"
     redirect_to admin_path and return
   else
     Schedule.first.update_attribute(:slot, params[:activities][:slot])
     
     if params[:activities][:archery] != "1"
       Schedule.first.update_attribute(:isArch, false)
     end
     if params[:activities][:riflery] != "1"
       Schedule.first.update_attribute(:isRif, false)
     end
     if params[:activities][:canoeing] != "1"
       Schedule.first.update_attribute(:isCan, false)
     end
     if params[:activities][:baking] != "1"
       Schedule.first.update_attribute(:isBake, false)
     end
     if params[:activities][:camping] != "1"
       Schedule.first.update_attribute(:isCamp, false)
     end
     if params[:activities][:rocks] != "1"
       Schedule.first.update_attribute(:isRock, false)
     end
     if params[:activities][:fishing] != "1"
       Schedule.first.update_attribute(:isFish, false)
     end
     if params[:activities][:hiking] != "1"
       Schedule.first.update_attribute(:isHike, false)
     end
     if params[:activities][:pottery] != "1"
       Schedule.first.update_attribute(:isPot, false)
     end
     if params[:activities][:arts] != "1"
       Schedule.first.update_attribute(:isArt, false)
     end
     if params[:activities][:percussion] != "1"
       Schedule.first.update_attribute(:isPer, false)
     end
     if params[:activities][:crafts] != "1"
       Schedule.first.update_attribute(:isCraft, false)
     end
     if params[:activities][:games] != "1"
       Schedule.first.update_attribute(:isGame, false)
     end
     if params[:activities][:guitars] != "1"
       Schedule.first.update_attribute(:isGuit, false)
     end
     if params[:activities][:choir] != "1"
       Schedule.first.update_attribute(:isChoir, false)
     end
     if params[:activities][:writing] != "1"
       Schedule.first.update_attribute(:isWrite, false)
     end
     if params[:activities][:weaving] != "1"
       Schedule.first.update_attribute(:isWeave, false)
     end
     if params[:activities][:notdance] != "1"
       Schedule.first.update_attribute(:isNotdance, false)
     end
     if params[:activities][:painting] != "1"
       Schedule.first.update_attribute(:isPaint, false)
     end
     if params[:activities][:sign] != "1"
       Schedule.first.update_attribute(:isSign, false)
     end
     if params[:activities][:spanish] != "1"
       Schedule.first.update_attribute(:isSpan, false)
     end
     if params[:activities][:talking] != "1"
       Schedule.first.update_attribute(:isTalk, false)
     end
   end
    flash[:success] = "Schedule created"
    redirect_to better_path
   
  end
  
  private

    def camper_params
      params.require(:camper).permit!
    end
end

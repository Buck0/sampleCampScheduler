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
   
   flash[:success] = "The schedule has been successfully reset"
   redirect_to admin_path
 end
 
 def disintigrate
   Camper.delete_all
   if Camper.any?
     flash[:warning] = "Something went wrong please try again"
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
        elsif all.baking != 9 && all.baking <= i && !all.isBake && @baking.size < 10 && params[:activities][:baking] == "1"
          all.update_attribute(:isBake, true)
          @baking << all.name
          #all.isBake = true
          #next
        elsif all.camping != 9 && all.camping <= i && !all.isCamp && @camping.size < 24 && params[:activities][:camping] == "1"
          all.update_attribute(:isCamp, true)
          @camping << all.name
          #all.isCamp = true
          #next
        elsif all.rocks != 9 && all.rocks <= i && !all.isRock && @rocks.size < 12 && params[:activities][:rocks] == "1"
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
        elsif all.baking != 9 && all.baking > 3 && all.baking < 6 && !all.isBake && @baking.size < 10 && params[:activities][:baking] == "1"
          all.update_attribute(:isBake, true)
          @baking << all.name
          #all.isBake = true
          #next
        elsif all.camping != 9 && all.camping > 3 && all.camping < 6 && !all.isCamp && @camping.size < 24 && params[:activities][:camping] == "1"
          all.update_attribute(:isCamp, true)
          @camping << all.name
          #all.isCamp = true
          #next
        elsif all.rocks != 9 && all.rocks > 3 && all.rocks < 6 && !all.isRock && @rocks.size < 12 && params[:activities][:rocks] == "1"
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
        elsif all.baking != 9 && all.baking <= i && !all.isBake && @baking.size < 10 && params[:activities][:baking] == "1"
          all.update_attribute(:isBake, true)
          @baking << all.name
          #all.isBake = true
          #next
        elsif all.camping != 9 && all.camping <= i && !all.isCamp && @camping.size < 24 && params[:activities][:camping] == "1"
          all.update_attribute(:isCamp, true)
          @camping << all.name
          #all.isCamp = true
          #next
        elsif all.rocks != 9 && all.rocks <= i && !all.isRock && @rocks.size < 12 && params[:activities][:rocks] == "1"
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
        elsif all.baking != 9 && all.baking > 3 && all.baking < 6 && !all.isBake && @baking.size < 10 && params[:activities][:baking] == "1"
          all.update_attribute(:isBake, true)
          @baking << all.name
          #all.isBake = true
          #next
        elsif all.camping != 9 && all.camping > 3 && all.camping < 6 && !all.isCamp && @camping.size < 24 && params[:activities][:camping] == "1"
          all.update_attribute(:isCamp, true)
          @camping << all.name
          #all.isCamp = true
          #next
        elsif all.rocks != 9 && all.rocks > 3 && all.rocks < 6 && !all.isRock && @rocks.size < 12 && params[:activities][:rocks] == "1"
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
        elsif all.baking != 9 && all.baking <= i && !all.isBake && @baking.size < 10 && params[:activities][:baking] == "1"
          all.update_attribute(:isBake, true)
          @baking << all.name
          #all.isBake = true
          #next
        elsif all.camping != 9 && all.camping <= i && !all.isCamp && @camping.size < 24 && params[:activities][:camping] == "1"
          all.update_attribute(:isCamp, true)
          @camping << all.name
          #all.isCamp = true
          #next
        elsif all.rocks != 9 && all.rocks <= i && !all.isRock && @rocks.size < 12 && params[:activities][:rocks] == "1"
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
        elsif all.baking != 9 && all.baking > 3 && all.baking < 6 && !all.isBake && @baking.size < 10 && params[:activities][:baking] == "1"
          all.update_attribute(:isBake, true)
          @baking << all.name
          #all.isBake = true
          #next
        elsif all.camping != 9 && all.camping > 3 && all.camping < 6 && !all.isCamp && @camping.size < 24 && params[:activities][:camping] == "1"
          all.update_attribute(:isCamp, true)
          @camping << all.name
          #all.isCamp = true
          #next
        elsif all.rocks != 9 && all.rocks > 3 && all.rocks < 6 && !all.isRock && @rocks.size < 12 && params[:activities][:rocks] == "1"
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
        elsif all.baking != 9 && all.baking <= i && !all.isBake && @baking.size < 10 && params[:activities][:baking] == "1"
          all.update_attribute(:isBake, true)
          @baking << all.name
          #all.isBake = true
          #next
        elsif all.camping != 9 && all.camping <= i && !all.isCamp && @camping.size < 24 && params[:activities][:camping] == "1"
          all.update_attribute(:isCamp, true)
          @camping << all.name
          #all.isCamp = true
          #next
        elsif all.rocks != 9 && all.rocks <= i && !all.isRock && @rocks.size < 12 && params[:activities][:rocks] == "1"
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
        elsif all.baking != 9 && all.baking <= 6 && !all.isBake && @baking.size < 10 && params[:activities][:baking] == "1"
          all.update_attribute(:isBake, true)
          @baking << all.name
          #all.isBake = true
          #next
        elsif all.camping != 9 && all.camping <= 6 && !all.isCamp && @camping.size < 24 && params[:activities][:camping] == "1"
          all.update_attribute(:isCamp, true)
          @camping << all.name
          #all.isCamp = true
          #next
        elsif all.rocks != 9 && all.rocks <= 6 && !all.isRock && @rocks.size < 12 && params[:activities][:rocks] == "1"
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
        elsif all.baking != 9 && all.baking <= i && !all.isBake && @baking.size < 10 && params[:activities][:baking] == "1"
          all.update_attribute(:isBake, true)
          @baking << all.name
          #all.isBake = true
          #next
        elsif all.camping != 9 && all.camping <= i && !all.isCamp && @camping.size < 24 && params[:activities][:camping] == "1"
          all.update_attribute(:isCamp, true)
          @camping << all.name
          #all.isCamp = true
          #next
        elsif all.rocks != 9 && all.rocks <= i && !all.isRock && @rocks.size < 12 && params[:activities][:rocks] == "1"
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
        elsif all.baking != 9 && all.baking > 5 && !all.isBake && @baking.size < 10 && params[:activities][:baking] == "1"
          all.update_attribute(:isBake, true)
          @baking << all.name
          #all.isBake = true
          #next
        elsif all.camping != 9 && all.camping > 5 && !all.isCamp && @camping.size < 24 && params[:activities][:camping] == "1"
          all.update_attribute(:isCamp, true)
          @camping << all.name
          #all.isCamp = true
          #next
        elsif all.rocks != 9 && all.rocks > 5 && !all.isRock && @rocks.size < 12 && params[:activities][:rocks] == "1"
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
  
  private

    def camper_params
      params.require(:camper).permit!
    end
end

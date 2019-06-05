class CampersController < ApplicationController
 # MAJOR ERROR IF THE SERVER RESTARTS, THE VARIABLES ARE NO LONGER DEFINED**********
 # PLEASE FIX IF POSSIBLE BUT PROBABLY NON ISSUE ON HEROKU**************************
 
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
 
 def assign
   @camper = Camper.find(params[:id])
   
   
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
   
   @isArch = $isArch
   @isRif = $isRif
   @isCan = $isCan
   @isBake = $isBake
   @isCamp = $isCamp
   @isRock = $isRock
   @isFish = $isFish
   @isHike = $isHike
   @isPot = $isPot
   @isArt = $isArt
   @isPer = $isPer
   @isCraft = $isCraft
   @isGame = $isGame
   @isGuit = $isGuit
   
   @isChoir = $isChoir
   @isWrite = $isWrite
   @isWeave = $isWeave
   @isNotdance = $isNotdance
   @isPaint = $isPaint
   @isSign = $isSign
   @isSpan = $isSpan
   @isTalk = $isTalk
   
 end
 
 def set
   @camper = Camper.find(params[:id])

   if params[:assign][:archery] == "1"
      @camper.update_attribute(:isArch, true)
      $archery << @camper
      $un.delete_at($un.index(@camper))
      flash[:success] = "Camper assigned"
      redirect_to '/make'
      
    elsif params[:assign][:riflery] == "1"
      @camper.update_attribute(:isRif, true)
      $riflery << @camper
      $un.delete_at($un.index(@camper))
      flash[:success] = "Camper assigned"
      redirect_to '/make'
      
    elsif params[:assign][:canoeing] == "1"
      @camper.update_attribute(:isCan, true)
      $canoeing << @camper
      $un.delete_at($un.index(@camper))
      flash[:success] = "Camper assigned"
      redirect_to '/make'
      
    elsif params[:assign][:baking] == "1"
      @camper.update_attribute(:isBake, true)
      $baking << @camper
      $un.delete_at($un.index(@camper))
      flash[:success] = "Camper assigned"
      redirect_to '/make'
      
    elsif params[:assign][:camping] == "1"
      @camper.update_attribute(:isCamp, true)
      $camping << @camper
      $un.delete_at($un.index(@camper))
      flash[:success] = "Camper assigned"
      redirect_to '/make'
      
    elsif params[:assign][:rocks] == "1"
      @camper.update_attribute(:isRock, true)
      $rocks << @camper
      $un.delete_at($un.index(@camper))
      flash[:success] = "Camper assigned"
      redirect_to '/make'
      
    elsif params[:assign][:fishing] == "1"
      @camper.update_attribute(:isFish, true)
      $fishing << @camper
      $un.delete_at($un.index(@camper))
      flash[:success] = "Camper assigned"
      redirect_to '/make'
      
    elsif params[:assign][:hiking] == "1"
      @camper.update_attribute(:isHike, true)
      $hiking << @camper
      $un.delete_at($un.index(@camper))
      flash[:success] = "Camper assigned"
      redirect_to '/make'
      
    elsif params[:assign][:pottery] == "1"
      @camper.update_attribute(:isPot, true)
      $pottery << @camper
      $un.delete_at($un.index(@camper))
      flash[:success] = "Camper assigned"
      redirect_to '/make'
      
    elsif params[:assign][:arts] == "1"
      @camper.update_attribute(:isArt, true)
      $arts << @camper
      $un.delete_at($un.index(@camper))
      flash[:success] = "Camper assigned"
      redirect_to '/make'
      
    elsif params[:assign][:percussion] == "1"
      @camper.update_attribute(:isPer, true)
      $percussion << @camper
      $un.delete_at($un.index(@camper))
      flash[:success] = "Camper assigned"
      redirect_to '/make'
      
    elsif params[:assign][:crafts] == "1"
      @camper.update_attribute(:isCraft, true)
      $crafts << @camper
      $un.delete_at($un.index(@camper))
      flash[:success] = "Camper assigned"
      redirect_to '/make'
      
    elsif params[:assign][:games] == "1"
      @camper.update_attribute(:isGame, true)
      $games << @camper
      $un.delete_at($un.index(@camper))
      flash[:success] = "Camper assigned"
      redirect_to '/make'
      
    elsif params[:assign][:guitars] == "1"
      @camper.update_attribute(:isGuit, true)
      $guitars << @camper
      $un.delete_at($un.index(@camper))
      flash[:success] = "Camper assigned"
      redirect_to '/make'
      
    elsif params[:assign][:choir] == "1"
      @camper.update_attribute(:isChoir, true)
      $choir << @camper
      $un.delete_at($un.index(@camper))
      flash[:success] = "Camper assigned"
      redirect_to '/make'
      
    elsif params[:assign][:writing] == "1"
      @camper.update_attribute(:isWrite, true)
      $writing << @camper
      $un.delete_at($un.index(@camper))
      flash[:success] = "Camper assigned"
      redirect_to '/make'
      
    elsif params[:assign][:weaving] == "1"
      @camper.update_attribute(:isWeave, true)
      $weaving << @camper
      $un.delete_at($un.index(@camper))
      flash[:success] = "Camper assigned"
      redirect_to '/make'
      
    elsif params[:assign][:notdance] == "1"
      @camper.update_attribute(:isNotdance, true)
      $notdance << @camper
      $un.delete_at($un.index(@camper))
      flash[:success] = "Camper assigned"
      redirect_to '/make'
      
    elsif params[:assign][:painting] == "1"
      @camper.update_attribute(:isPaint, true)
      $painting << @camper
      $un.delete_at($un.index(@camper))
      flash[:success] = "Camper assigned"
      redirect_to '/make'
      
    elsif params[:assign][:sign] == "1"
      @camper.update_attribute(:isSign, true)
      $sign << @camper
      $un.delete_at($un.index(@camper))
      flash[:success] = "Camper assigned"
      redirect_to '/make'
      
    elsif params[:assign][:spanish] == "1"
      @camper.update_attribute(:isSpan, true)
      $spanish << @camper
      $un.delete_at($un.index(@camper))
      flash[:success] = "Camper assigned"
      redirect_to '/make'
      
    elsif params[:assign][:talking] == "1"
      @camper.update_attribute(:isTalk, true)
      $talking << @camper
      $un.delete_at($un.index(@camper))
      flash[:success] = "Camper assigned"
      redirect_to '/make'
   else
      flash[:warning] = "No activity was selected, please selecte an activity"
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
 
 def make
   # make the trial schedule here based on the :activities thing from the post
   # each section may need a unique page so that things don't get overwritten
   # this would also require unique varibles for each time slot
   # for now that isn't needed so copypasta the code from 1 down to 5
   
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
   
   if !params[:activities] || params[:activities] == nil
     
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
        
        if params[:activities]
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
   
   else
     flash[:danger] = "The time slot was not 1-5, it was \"#{params[:activities][:slot]}\""
     redirect_to trial_path
   end
   
   
 end
 
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

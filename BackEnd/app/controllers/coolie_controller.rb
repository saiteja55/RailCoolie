class CoolieController < ApplicationController


  def getCoolie
    @coolies=Coolie.all
    @coolie=@coolies.first
    render :status => 200,
           :json => {:success => true,
                     :data => @coolie}
  end

  def coolieAvailable
    @coolies=Coolie.isCoolieAvailable
    if @coolies==nil
      render :status => 200,
             :json => {
                       :info => "Busy"
             }
    else
      @availableCoolies=Coolie.availableCoolies
      @coolie=@availableCoolies.first
      render :status => 200,
             :json => {
                       :info => "Available",
                       :data=>@coolie.id
             }
    end
  end

end

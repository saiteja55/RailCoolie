class TripsController < ApplicationController


  def create

    @trip=Trip.new(trip_params)
    @trip.train_no=params[:train_no]
    @trip.berth=params[:berth]
    @trip.coach= params[:coach]
    @trip.tripType= params[:tripType]
    @trip.NumBags=params[:NumBags]
    @trip.BookingType= params[:BookingType]
    @trip.tripStatus=""
    @trip.tripAmount=params[:tripAmount]
    @trip.tripEndDate=""
    @trip.rating=""
    @trip.created_at= params[:created_at]
    @trip.updated_at= params[:updated_at]
    @trip.coolie_id=params[:coolie_id]
    @trip.user_id=params[:user_id]
    @trip.paymentType=params[:paymentType]
    @trip.tripDate= ""
    if @trip.save
      @coolie=Coolie.find_by_id(@trip.coolie_id)
      if @coolie.update_attributes(:isAssigned => 1)
        render :status => 200,
               :json => {:success => true,
                         :info => "Booking Created",
                         :coolie => @coolie,
                         :tripID => @trip.id}
      else
        render :status => 400,
               :json => {:success => false,
                         :info => "Wrong Data"}
      end
    else
      render :status => 400,
             :json => {:success => false,
                       :info => "Wrong Data"}
    end

  end


  def endTrip
    @trip=Trip.find_by_id(params[:trip_id])
    @coolie=Coolie.find_by_id(params[:coolie_id])
    @total=@coolie.NumTrips+=1

    if @trip.update_attributes(:tripStatus => 'COMPL', :tripEndDate => params[:tripEndStamp])
      if @coolie.update_attributes(:NumTrips => @total, :isAssigned => 0, :lasttripEndStamp => params[:tripEndStamp])
        render :status => 200,
               :json => {:success => true,
                         :info => "Trip Successfully completed"}
      else
        render :status => 400,
               :json => {:success => false,
                         :info => "Wrong Data"}
      end
  else
    render :status => 400,
           :json => {:success => false,
                     :info => "Wrong Data"}
  end
end


private

def trip_params
  params.permit(:train_no, :berth, :coach, :tripType, :NumBags, :BookingType, :tripStatus, :tripAmount, :tripEndDate, :rating, :created_at,
                :updated_at, :coolie_id, :user_id, :paymentType, :tripDate)
end

end

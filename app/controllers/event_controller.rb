class EventController < ApplicationController

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @friend = current_user.events.build
  end

  def create
    @event = current_user.events.build(post_params)

    respond_to do |format|
      if @event.save
        format.html do
          redirect_to event_url(@event), notice: "Event was created :)"
        end
        format.json { render :show, status: :unprocessable_entity }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def post_params
    params.require(:event).permit(:title, :description, :date, :public_event)
  end
end

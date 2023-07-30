def index
    @flags = Flag.all
    render json: @flags
  end

  def show
    @flag = Flag.find(params[:id])
    render json: @flag
  end
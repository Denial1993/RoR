class MissionsController < ApplicationController
  def index
    @missions = Mission.all.reverse_order
  end

  def new
    @mission = Mission.new
  end

  def create
    @mission = Mission.new(mission_params)
      if @mission.save
        redirect_to missions_path,notice: "新增成功"
      else
        render :new
      end
  end

  def show
#    @mission = Mission.find
  end

  def edit
    @mission = Mission.find_by(id: params[:id])
  end

  def update
    @mission = Mission.find_by(id: params[:id])
    #這邊有新增原本資料庫內沒有的新版資料,所以要用mission_params 過濾資訊
    if @mission.update(mission_params)
      redirect_to missions_path ,notice: "資料更新成功!"
    else
      render :edit
    end
    
  end

  def destroy
    @mission = Mission.find_by(id: params[:id])
  
    if @mission
      @mission.destroy
      redirect_to missions_path,notice: "任務刪除成功!"
    end
  end
  
  private
  def mission_params
    params.require(:mission).permit( :name, :description, :start, :end)
  end
end

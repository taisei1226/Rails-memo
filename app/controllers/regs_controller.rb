class RegsController < ApplicationController
  def index
    @regs = Reg.all 
  end

  def new
    @reg = Reg.new
  end

  def create
    @reg = Reg.new(params.require(:reg).permit(:title, :start_date, :finish_date, :content))
    if @reg.save
      flash[:notice] = "新規投稿をしました"
      redirect_to :regs
    else
      render "new"
    end
  end

  def show
    @reg = Reg.find(params[:id])
  end

  def edit
    @reg = Reg.find(params[:id])
  end

  def update
    @reg = Reg.find(params[:id])
    if @reg.update(params.require(:reg).permit(:title, :start_date, :finish_date, :content))
      flash[:notice] = "投稿を更新しました"
      redirect_to :regs
    else
      render "edit"
    end
  end

  def destroy
    @reg = Reg.find(params[:id])
    @reg.destroy
    flash[:notice] = "投稿を削除しました"
    redirect_to :regs
  end
end

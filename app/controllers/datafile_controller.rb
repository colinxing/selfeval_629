class DatafileController < ApplicationController
  def index
    @datafiles = Datafile.all
  end

  def new
    @datafile = Datafile.new
  end

  def create
    @datafile = Datafile.new(datafile_params)
    @datafile.name = 'data'
    if @datafile.save
      redirect_to users_path, notice: "The resume #{@datafile.name} has been uploaded."
    else
      render "new"
    end
  end

  def destroy
    @datafile = Datafile.find(params[:id])
    @datafile.destroy
    redirect_to users_path, notice:  "The resume #{@datafile.name} has been deleted."
  end
   
  private
  def datafile_params
    params.require(:datafile).permit(:name, :attachment)
  end
end

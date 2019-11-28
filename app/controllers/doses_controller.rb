class DosesController < ApplicationController
  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.create(dose_params)
    redirect_to cocktails_path
  end

  def destroy
    @dose.delete
  end

  private

  def dose_params
    params.require(:dose).permit(:description)
  end
end

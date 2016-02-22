class TimesheetsController < ApplicationController
	def index
		@ctimesheet = Mtimesheet.all
	end

	def show

	end

	def new

	end

	def create
		@timesheet = Mtimesheet.new(timesheets_param)
		#render plain: timesheets_param.inspect
		@timesheet.save
		redirect_to action: 'index'
	end

	def destroy
  		@timesheet = Mtimesheet.find(params[:id])
  		@timesheet.destroy
  		redirect_to action: 'index'
	end

    private
    def timesheets_param
    	params.require(:mtimesheet).permit(:project,:description,:hours,:status)
    end
end

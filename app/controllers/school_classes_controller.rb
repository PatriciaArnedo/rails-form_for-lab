class SchoolclassesController < ApplicationController
    
    def index
        @schoolclasses = Schoolclass.all
        
    end

    def show
        @schoolclass = Schoolclass.find(params[:id])
    end

    def new
        @schoolclass = Schoolclass.new
    end

    def create
        @schoolclass = Schoolclass.new(schoolclass_params(:title, :room_number))
        @schoolclass.save
        redirect_to schoolclass_path(@schoolclass)
    end

    def edit
        @schoolclass = Schoolclass.find(params[:id])
    end

    def update
        @schoolclass = Schoolclass.find(params[:id])
        @schoolclass.update(schoolclass_params(:title, :room_number))
        redirect_to schoolclass_path(@schoolclass)
    end

    private

	def schoolclass_params(*args)
  		params.require(:schoolclass).permit(*args)
	end 

end
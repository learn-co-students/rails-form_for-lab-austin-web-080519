class SchoolClassesController < ApplicationController
    def new 
        @School_class = SchoolClass.new
    end 
    def create 
        @School_class = SchoolClass.new(school_class_params)
        @School_class.save 
        redirect_to school_class_path(@School_class)
    end 
    def show 
        @School_class = SchoolClass.find(params[:id])
    end 
    def edit 
        @School_class = SchoolClass.find(params[:id])
    end 
    def update
        @School_class = SchoolClass.find(params[:id])
        @School_class.update(params.require(:school_class).permit(:title, :room_number))
	  redirect_to school_class_path(@School_class)
    end 
    def school_class_params
		params.require(:school_class).permit!
	end
end
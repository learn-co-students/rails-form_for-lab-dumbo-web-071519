class SchoolClassesController < ApplicationController
    def index
        @school_classes = SchoolClass.all
    end

    def show
        set_school_class
    end
    
    def new
    
    end

    def create 
        @school_class = SchoolClass.create(school_params)
        
        redirect_to @school_class
    end

    def edit
        set_school_class
    end

    def update
        set_school_class
        @school_class.update(school_params)

        redirect_to @school_class
    end

    private
    
    def set_school_class
        @school_class = SchoolClass.find(params[:id])
    end

    def school_params
        params.require(:school_class).permit(:title, :room_number)
    end
end
class CoursesController < ApplicationController
    def index
        @courses = Course.all
    end

    def new
        @course = Course.new
    end

    def create
        @course_add = Course.new(params.require(:course).permit(:course))
        if @course_add.save
            redirect_to '/courses_list'
        else
            redirect_to '/courses_add'
        end
    end

    def show 
        @course = Course.find(params[:id])
        @course.destroy
        redirect_to '/courses_list'
    end
end
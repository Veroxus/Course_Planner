class CoursesController < ApplicationController
    def index
        redirect_to '/courses_list'
    end

    def new
        redirect_to '/courses_add'
    end

    def create
        @course_add = Course.new(params.require(:course).permit(:course))
        if @course_add.save
            redirect_to '/courses_list'
        else
            redirect_to '/courses_add'
        end
    end
end
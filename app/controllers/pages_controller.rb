class PagesController < ApplicationController
    def home
    end

    def about
    end

    def courses_list
        @courses = Course.all
    end

    def courses_add
        @course = Course.new
    end

    def destroy
        @course = Course.find(params[:format])
        @course.destroy
        redirect_to '/courses_list'
    end
end

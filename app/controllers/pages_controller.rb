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
end

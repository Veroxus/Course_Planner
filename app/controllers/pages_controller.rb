class PagesController < ApplicationController
    def home
    end

    def about
    end

    def courses_list
        redirect_to '/courses'
    end

    def courses_add
        redirect_to '/courses/new'
    end
end

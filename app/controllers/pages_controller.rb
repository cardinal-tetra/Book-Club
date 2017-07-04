class PagesController < ApplicationController
    def index
    end
    
    def post
        if request.post?
            @books = GoogleBooks.search(params[:q], {count: 5})
        end
    end
    
    def explore
        @books = Book.take(5)
    end
end

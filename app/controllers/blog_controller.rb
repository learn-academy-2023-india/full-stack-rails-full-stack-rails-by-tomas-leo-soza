class BlogController < ApplicationController
    def index
        @blog_list = Blog.all 
    end
    def show
        @animal = Blog.find(params[:id])
        # if @animal.valid?
        #     redirect_to animal_path(@animal)
        # end
    end
    def new
        # @exercise = Exercise.create(exercise_params)
        # if @exercise.valid?
        #   redirect_to exercises_path
        # end
    end
      
    #   private
    #   def exercise_params
    #     params.require(:exercise).permit(:activity, :description)
    # end
    # def dogs
    
    # end

    # def cats 

    # end

    # def snakes
    
    # end

    # def racoons

    # end 
    
end

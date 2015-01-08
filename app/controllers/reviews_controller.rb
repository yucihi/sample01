class ReviewsController < ApplicationController
  def index
  end

  def new
    @book = Book.find params[:book_id]
    @review = Review.new
  end

  def create
    @book = Book.find params[:book_id]
    @review = Review.new review_params
    @review.book = @book
    if @review.save
      redirect_to book_path(@book)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def review_params
    params.require(:review).permit(:body)
  end
end

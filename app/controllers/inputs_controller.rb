# frozen_string_literal: true

class InputsController < ApplicationController

  def index
    render json:Input.all
  end

  def show
    render json: Input.find(params[:id])
  end

  def create
    @article = Input.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end

  end

  private
  def article_params
    params.require(:input).permit(:title, :body)
  end
end

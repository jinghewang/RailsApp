class HomeController < ApplicationController
  def index

    product = User.all()
    # product2 = User.where("name = ? and price = ?", "TÐô", 9.99)
    product.size

  end

  def list
    @articles = User.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml { render :xml => @articles }
    end
  end

  def edit
    @student = User.find(params[:id])

  end

  def welcome
    # User.update(1, name: "T-Shirt", price: 23)
  end

  def about
  end

  def contact
  end
end

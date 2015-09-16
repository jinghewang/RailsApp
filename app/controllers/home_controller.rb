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

  def create
    @article = Article.new(params[:article])
    respond_to do |format|
      if @article.save
        format.html {
          redirect_to(@article, :notice => 'Article was successfully created.') }
        format.xml {
          render :xml => @article, :status => :created, :location => @article }
      else
        format.html {
          render :action => "new" }
        format.xml {
          render :xml => @article.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @article = Article.find(params[:id])
    respond_to do |format|
      if @article.update_attributes(params[:article])
        format.html {
          redirect_to(
              @article, :notice => 'Article was successfully updated.') }
        format.xml { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml {
          render :xml =>
                     @article.errors, :status => :unprocessable_entity }
      end
    end
  end

  def welcome
    # User.update(1, name: "T-Shirt", price: 23)
  end

  def about
  end

  def contact
  end
end

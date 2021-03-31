class TalesController < ApplicationController
  before_action :authenticate_creatrix!
  
  def index
  end

  def show
  end

  def new
    @tale = Tale.new
  end

  def create
    hash = params['tale']
    @tale = Tale.create(creatrix: current_creatrix, title: hash['title'], description: hash['description'])

    redirect_to tales_path
  end

  def edit
    @tale = Tale.find(params['id'])
  end

  def update
    @tale = Tale.find(params['id'])
    hash = params['tale']
    @tale.update(title: hash['title'], description: hash['description'])

    redirect_to tales_path
  end
end

class WhatIfsController < ApplicationController
  def index
    @tale = Tale.find(params['tale_id'])
    @what_ifs = @tale.what_ifs
  end

  def show
  end

  def new
    @tale = Tale.find(params['tale_id'])

    @what_if = WhatIf.new
  end

  def create
    @tale = Tale.find(params['tale_id'])
    hash = params['what_if']

    @what_if = WhatIf.create(tale: @tale, title: hash['title'], description: hash['description'])

    redirect_to tale_what_ifs_path(@tale.id)
  end

  def edit
    @tale = Tale.find(params['tale_id'])
    @what_if = WhatIf.find(params['id'])
  end

  def update
    @tale = Tale.find(params['tale_id'])
    @what_if = WhatIf.find(params['id'])

    hash = params['what_if']

    @what_if.update(title: hash['title'], description: hash['description'])

    redirect_to tale_what_ifs_path(@tale.id)
  end
end

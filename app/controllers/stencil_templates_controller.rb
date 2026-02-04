class StencilTemplatesController < ApplicationController
  layout 'admin'
  before_action :require_admin

  def index
    @trackers = Tracker.sorted.all
    @templates = StencilTemplate.all.index_by(&:tracker_id)
  end

  def edit
    @tracker = Tracker.find(params[:tracker_id])
    @template = StencilTemplate.find_or_initialize_by(tracker_id: @tracker.id)
  end

  def update
    @tracker = Tracker.find(params[:tracker_id])
    @template = StencilTemplate.find_or_initialize_by(tracker_id: @tracker.id)
    @template.safe_attributes = params[:stencil_template]
    
    if @template.save
      flash[:notice] = l(:notice_successful_update)
      redirect_to action: 'index'
    else
      render action: 'edit'
    end
  end
end

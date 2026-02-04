class StencilTemplate < ActiveRecord::Base
  include Redmine::SafeAttributes
  belongs_to :tracker
  validates_presence_of :body
  validates_uniqueness_of :tracker_id
  safe_attributes 'tracker_id', 'body'
end

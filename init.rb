# encoding: utf-8
require File.expand_path('lib/redmine_stencil/hooks', __dir__)

Redmine::Plugin.register :redmine_stencil do
  name 'Redmine Stencil Plugin'
  author 'Cascade AI'
  description 'Issue description templates based on Trackers'
  version '0.0.1'
  url 'https://github.com/your-repo/redmine_stencil'
  author_url 'https://github.com/your-name'

  requires_redmine version_or_higher: '5.1.3'

  menu :admin_menu, :stencil_templates, { controller: 'stencil_templates', action: 'index' }, caption: 'Stencil 템플릿 관리'
end

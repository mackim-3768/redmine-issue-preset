module RedmineStencil
  class Hooks < Redmine::Hook::ViewListener
    def view_layouts_base_html_head(context = {})
      javascript_include_tag('issue_templates.js', plugin: 'redmine_stencil')
    end

    def view_issues_form_details_bottom(context = {})
      # Pre-load all templates as a Javascript object to avoid AJAX latency
      # This is efficient enough for a reasonable number of trackers/templates
      templates = StencilTemplate.all.pluck(:tracker_id, :body).to_h
      javascript_tag("var stencilTemplates = #{templates.to_json};")
    end
  end
end

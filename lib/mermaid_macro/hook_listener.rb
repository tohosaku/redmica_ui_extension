# frozen_string_literal: true

module MermaidMacro
  class HookListener < Redmine::Hook::ViewListener
    def view_layouts_base_html_head(context)
      stylesheet_link_tag('../mermaid_macro/stylesheets/mermaid_macro', plugin: 'redmica_ui_extension') +
        javascript_include_tag('../mermaid_macro/javascripts/mermaid.min.js', plugin: 'redmica_ui_extension') +
        javascript_include_tag('../mermaid_macro/javascripts/mermaid_macro.js', plugin: 'redmica_ui_extension')
    end
  end
end

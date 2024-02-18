class PjmailHookListener < Redmine::Hook::ViewListener
  attr_accessor :output_buffer
  def view_issues_show_details_bottom(context = {})
    issue = context[:issue]
    return content_tag(:div, class: "attribute") do
      concat(content_tag(:div, "Related Mails:", class: "label"))
      concat(
        content_tag(:div, class: "value") do
          concat(link_to(nil, Setting.plugin_pjmail['pjmail_url'] + '?pj=' + issue.project.identifier + '&num=' + issue.id.to_s, target: '_blank', rel: 'noopener noreferrer'))
          concat(' mail: ')
          concat(link_to(nil, 'mailto:' + issue.project.identifier + Setting.plugin_pjmail['pjmail_separator'] + issue.id.to_s + '@' + Setting.plugin_pjmail['settings_pjmail_domain']))
        end
      )
    end
  end
end

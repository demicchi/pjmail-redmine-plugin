require_dependency File.expand_path('../lib/pjmail_hook_listener', __FILE__)

Redmine::Plugin.register :pjmail do
  name 'PJMail plugin'
  author 'demicchi'
  description 'Shows PJMail URL for each ticket.'
  version '0.0.1'
  url 'https://demmys.jp/'
  author_url 'https://demmys.jp/'
  settings default: {'empty' => true}, partial: 'settings/pjmail_settings'
end

module ApplicationHelper
  def user_menu_items
    [{:id => 'profile', :url => users_profile_path, :name => t('user.profile')}, {:id => 'settings', :url => users_settings_path, :name => t('user.settings')}, {:id => 'divider'}, {:id => 'signout', :url => signout_path, :name => t('user.signout')}]
  end
end

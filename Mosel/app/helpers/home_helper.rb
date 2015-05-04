module HomeHelper
  def home_nav_items
    [{:id => 'index', :url => '/', :name => t('home.nav_items.index')}, {:id => 'about', :url => '/about/', :name => t('home.nav_items.about')}, {:id => 'contact', :url => '/contact/', :name => t('home.nav_items.contact')}]
  end
end

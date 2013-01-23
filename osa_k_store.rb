# -*- coding: utf-8 -*-

Plugin.create :osa_k_store do
  filter_mikustore_plugins do |plugins|
    Dir[File.expand_path(File.join(File.dirname(__FILE__), "plugins", "*"))].each{ |package_file|
      plugins << YAML.load_file(package_file).symbolize
    }
    [plugins]
  end
end

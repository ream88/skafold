class Skafold::Assets < Thor::Group
  include Skafold::Thor

  def name_with_underscore
    name_without_underscore.underscore
  end
  alias_method_chain :name, :underscore
  remove_task :name_with_underscore

  def create_assets_paths
    directory('app')
  end

  def insert_assets
    invoke('skafold:base:create_index_file')
    
    insert_into_file('public/index.html', %Q(  <link href="assets/#{name}.css" rel="stylesheet" type="text/css" />\n), before: '</head>')
    insert_into_file('public/index.html', %Q(  <script href="assets/#{name}.js" type="text/javascript"></script>\n), before: '</body>')
  end

  def create_gemfile
    copy_file('Gemfile')
  end

  def create_rakefile
    template('Rakefile.tt')
  end
end
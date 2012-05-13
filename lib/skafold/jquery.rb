class Skafold::Jquery < Thor::Group
  include Skafold::Thor

  def name_with_underscore
    name_without_underscore.underscore
  end
  alias_method_chain :name, :underscore
  remove_task :name_with_underscore

  def get_jquery
    invoke('skafold:assets:create_assets_paths')
    
    get('http://code.jquery.com/jquery-latest.min.js', 'app/assets/javascripts/jquery.js')
  end

  def insert_jquery
    invoke('skafold:jquery:get_jquery')
    
    prepend_to_file("app/assets/javascripts/#{name}.js.coffee", <<-JS.strip_heredoc)
      /*
       *= require jquery
       */
    JS
  end
end
class Skafold::Base < Thor::Group
  include Skafold::Thor

  def create_index_file
    template('public/index.html.tt')
  end
end
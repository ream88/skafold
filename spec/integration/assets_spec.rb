require File.expand_path('../../spec_helper', __FILE__)

describe Skafold::Assets do
  let(:thor) { Skafold::Assets.new(%w[SkafoldApp]) }


  describe :create_assets_paths do
    it 'creates assests paths' do
      %w[fonts images javascripts stylesheets].each do |dir|
        File.exist?(File.join('app', 'assets', dir)).must_equal(true)
      end
    end


    it 'creates camelcased skafold_app.css.scss and skafold_app.js.coffee' do
      File.exists?('app/assets/javascripts/skafold_app.js.coffee').must_equal(true)
      File.exists?('app/assets/stylesheets/skafold_app.css.scss').must_equal(true)
    end
  end


  describe :insert_assets do
    subject { File.new('public/index.html') }


    it 'inserts skafold_app.css into head of public/index.html' do
      link = %Q(<link href="assets/skafold_app.css" rel="stylesheet" type="text/css" />)
      content = subject.read
      
      content.must_include(link)
      content.index(link).must_be(:<, content.index('</head>'))
    end


    it 'inserts skafold_app.js into body of public/index.html' do
      script = %Q(<script href="assets/skafold_app.js" type="text/javascript"></script>)
      content = subject.read
      
      content.must_include(script)
      content.index(script).must_be(:<, content.index('</body>'))
    end
  end


  describe :create_gemfile do
    subject { File.new('Gemfile') }


    it 'generates Gemfile' do
      subject.exist?.must_equal(true)
    end
  end


  describe :create_rakefile do
    subject { File.new('Rakefile') }


    it 'generates Rakefile' do
      subject.exist?.must_equal(true)
    end


    it 'includes camelcased skafold_app.css and skafold_app.js' do
      subject.read.must_include(%Q(bundles = %w[skafold_app.css skafold_app.js]))
    end
  end
end

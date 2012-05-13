require File.expand_path('../../spec_helper', __FILE__)

describe Skafold::Jquery do
  let(:thor) { Skafold::Jquery.new(%w[SkafoldApp]) }


  describe :get_jquery do
    subject { File.new('app/assets/javascripts/jquery.js') }


    it 'downloads the latest jQuery version' do
      subject.exist?.must_equal(true)
      subject.read.must_include('jquery')
    end
  end


  describe :insert_jquery do
    subject { File.new('app/assets/javascripts/skafold_app.js.coffee') }


    it 'includes jQuery into skafold_app.js.coffee' do
      subject.read.must_include(<<-JS.strip_heredoc)
        /*
         *= require jquery
         */
      JS
    end
  end
end

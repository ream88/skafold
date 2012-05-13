require File.expand_path('../../spec_helper', __FILE__)

describe Skafold::Base do
  let(:thor) { Skafold::Base.new(%w[SkafoldApp]) }


  describe :create_index_file do
    subject { File.new('public/index.html') }


    it 'creates index file in public' do
      subject.exist?.must_equal(true)
    end


    it 'inserts title into public/index.html' do
      subject.read.must_include('<title>SkafoldApp</title>')
    end
  end
end

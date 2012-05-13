$:.unshift(File.join(File.expand_path('../lib', __FILE__)))

require 'minitest/autorun'
require 'minitest/spec'
require 'purdytest'
require 'skafold'
require 'tmpdir'

class Minitest::Spec
  # Create tmpdir before each spec and delete it again afterwards.
  # The tmpdir is available as :tmpdir:.
  def run(*args)
    Dir.mktmpdir do |tmpdir|
      Dir.chdir(tmpdir)
      
      self.class.send(:define_method, :tmpdir) do
        tmpdir
      end
      
      super
    end
  end

  # Write shorter specs.
  # :describe: auto-invokes the corresponding task.
  class << self
    def describe(*args)
      before { capture_io { thor.invoke(args.first) } } if args.first.is_a?(Symbol)

      super
    end
  end
end

class File
  # Allow something like File.new('bla').must(:exist?)
  def exist?
    File.exist?(path)
  end
end
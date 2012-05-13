require 'active_support/all'
require 'thor/group'

module Skafold
  module Thor
    extend ActiveSupport::Concern
    include ::Thor::Actions

    included do
      argument :name
      source_root File.expand_path('../templates', File.dirname(__FILE__))
    end
  end

  require 'skafold/base'
  require 'skafold/assets'
  require 'skafold/jquery'
end
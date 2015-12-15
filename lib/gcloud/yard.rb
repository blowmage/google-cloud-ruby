require "gcloud/yard/version"
require "yard"
require "redcarpet"

module Gcloud
  ##
  # Gcloud YARD Template!
  module YARD
    ##
    # Says hello to you!
    def hello world = "Mike"
      puts "Hello #{world}!"
    end
  end
end

YARD::Templates::Engine.register_template_path File.dirname(__FILE__) + "/../../templates"

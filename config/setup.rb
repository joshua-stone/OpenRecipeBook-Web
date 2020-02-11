# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH << lib unless $LOAD_PATH.include?(lib)

ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __dir__)

require 'bundler/setup'
Bundler.require(:default)

# Define global application.
require_relative 'application'
$app = Application

# Load configuration initializers.
Dir[File.expand_path('initializers/*.rb', __dir__)].sort.each do |filename|
  require filename
end

# Install application routes.
require_relative 'routes'

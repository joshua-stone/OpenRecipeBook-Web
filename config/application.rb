# frozen_string_literal: true

class Application < Sinatra::Base
  private_class_method :new

  # @return [Zeitwerk::Loader]
  def self.loader
    @loader ||= Zeitwerk::Loader.new
  end

  loader.enable_reloading
  loader.push_dir(File.expand_path('../lib', __dir__))
  loader.setup
end

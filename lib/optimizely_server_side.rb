require 'active_support'
require 'json'
require 'net/http'
require 'singleton'
require 'optimizely'
require 'optimizely_server_side/cache'
require 'optimizely_server_side/configuration'
require 'optimizely_server_side/datafile_fetcher'
require 'optimizely_server_side/experiment'
require 'optimizely_server_side/optimizely_sdk'
require 'optimizely_server_side/variation'
require 'optimizely_server_side/helpers/support'

module OptimizelyServerSide

  class << self
    attr_writer :configuration

    def configuration
      @configuration ||= Configuration.new
    end

    def configure
      yield(configuration)
    end
  end

end

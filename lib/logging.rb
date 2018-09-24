require 'logger'

class Logging
  attr_reader :logger

  def self.log
    if @logger.nil?
      @logger = Logger.new('register.log')
      @logger.level = Logger::DEBUG
      @logger.datetime_format = '%Y-%m-%d %H:%M:%S '
    end
    @logger
  end
end

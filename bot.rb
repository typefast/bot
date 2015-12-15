require 'yaml'
require 'wordplay'

class Bot
  attr_reader :name
  
  def initialize(options)
    @name = options[:name] || "Unnamed bot"
    begin
      @data = YAML.load(File.read(options[:data_file]))
    rescue
      raise "Can't load bot data"
    end
  end
end
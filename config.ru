require 'Bundler'
Bundler.require

require File.join(File.dirname(_FILE_),'lib','racket')
require File.join(File.dirname(_FILE_),'lib','request_controller')
require File.join(File.dirname(__FILE__),'lib','racket')

RacketApplication = racket.new

require File.join(File.dirname(_FILE_),'config','routes')

run RequestController.new





require "skyline/version"

require 'eventmachine'
require 'active_support'
require 'active_support/core_ext/class/attribute'
require 'active_support/core_ext/class/attribute_accessors'
require 'active_support/core_ext/module/aliasing'
require 'active_support/core_ext/module/attribute_accessors'
require 'active_support/core_ext/kernel/reporting'
require 'active_support/concern'
require 'active_support/core_ext/hash/indifferent_access'
require 'active_support/core_ext/hash/except'
require 'rack'
require 'faye/websocket'

EM.epoll

begin
  require 'fiber'
  require File.join(File.dirname(__FILE__), 'fiber_pool')
rescue LoadError
  # No fibers available!
end

module Skyline
  mattr_accessor :logger

  autoload :AbstractAction, 'skyline/action'
  autoload :Body, 'skyline/body'
  autoload :Callbacks, 'skyline/callbacks'
  autoload :FiberPool, 'skyline/fiber_pool'
  autoload :ExceptionHandler, 'skyline/exception_handler'
end

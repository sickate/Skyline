module Skyline
  class ExceptionHandler

    attr_reader :env, :exception

    def initialize(env, exception)
      @env = env
      @exception = exception
    end

    def dump_exception
      string = "#{exception.class}: #{exception.message}\n"
      string << exception.backtrace.map { |l| "\t#{l}" }.join("\n")
      string
    end

    def pretty
      dump_exception
    end

    def h
      dump_exception
    end
  end
end

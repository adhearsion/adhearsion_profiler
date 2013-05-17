require "adhearsion_profiler/version"

module AdhearsionProfiler
  class Plugin < Adhearsion::Plugin
    init :adhearsion_profiler do
      if config.enabled
        logger.info "Loading AdhearsionProfiler"
        require 'ruby-prof'

        Adhearsion::Events.after_initialized do
          logger.info "Starting RubyProf"
          RubyProf.start
        end

        Adhearsion::Events.shutdown do
          logger.info "Printing RubyProf results to profiles/#{Process.pid}.*"

          result = RubyProf.stop

          printer = RubyProf::MultiPrinter.new(result)
          printer.print path: "profiles", profile: Process.pid
        end
      end
    end

    config :adhearsion_profiler do
      enabled true, desc: 'Enable or disable profiling tools'
    end
  end
end

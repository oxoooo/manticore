module Manticore
  class Status
    attr_reader :code

    def initialize(code)
      @code = code
    end

    def success?
      200 <= code && code < 300
    end

    def server_error?
      500 <= code && code < 600
    end

    def redirect?
      300 <= code && code < 400
    end

    def client_error?
      400 <= code && code < 500
    end

    def informational?
      100 <= code && code < 200
    end
  end
end
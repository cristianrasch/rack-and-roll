run lambda { |env|
  headers = { "Content-Type" => "text/plain" }
  environment = env.map { |k, v| "#{k}: #{v}" }.join("\n")

  [200, headers, ["#{environment}\n"]]
}

# curl http://localhost:9292/

# GATEWAY_INTERFACE: CGI/1.1
# PATH_INFO: /
# QUERY_STRING:
# REMOTE_ADDR: 127.0.0.1
# REMOTE_HOST: localhost
# REQUEST_METHOD: GET
# REQUEST_URI: http://localhost:9292/
# SCRIPT_NAME:
# SERVER_NAME: localhost
# SERVER_PORT: 9292
# SERVER_PROTOCOL: HTTP/1.1
# SERVER_SOFTWARE: WEBrick/1.3.1 (Ruby/2.0.0/2013-06-27)
# HTTP_USER_AGENT: curl/7.26.0
# HTTP_HOST: localhost:9292
# HTTP_ACCEPT: */*
# rack.version: [1, 2]
# rack.input: #<Rack::Lint::InputWrapper:0x007f1fe27b8b18>
# rack.errors: #<Rack::Lint::ErrorWrapper:0x007f1fe27b8aa0>
# rack.multithread: true
# rack.multiprocess: false
# rack.run_once: false
# rack.url_scheme: http
# HTTP_VERSION: HTTP/1.1
# REQUEST_PATH: /

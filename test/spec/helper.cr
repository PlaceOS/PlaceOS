require "openssl"
require "placeos"
require "placeos-models"

require "spec"

# Ignore self-signed certificate errors
class OpenSSL::SSL::Context::Client
  def initialize(method : LibSSL::SSLMethod = Context.default_method)
    super(method)

    self.verify_mode = OpenSSL::SSL::VerifyMode::NONE
    {% if compare_versions(LibSSL::OPENSSL_VERSION, "1.0.2") >= 0 %}
      self.default_verify_param = "ssl_server"
    {% end %}
  end
end

CLIENT_ID   = "b52e653071c45353dbff4e8f47d51cdf"
PLACEOS_URI = URI.parse("https://localhost:8443")

def client
  PlaceOS::Client.new(
    base_uri: PLACEOS_URI,
    email: "support@place.tech",
    password: "development",
    client_id: CLIENT_ID,
    client_secret: "",
  )
end

def with_client(& : PlaceOS::Client ->)
  yield client
end

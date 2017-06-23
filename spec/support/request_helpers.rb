module Requests
  module JsonHelpers
    def json
      JSON.parse(response.body)
    end

    def login_headers
      login_params = { email: "test_user@example.com", password: "asd123asd" }

      post api_v1_user_session_path, params: login_params

      headers_params = {
        "Access-Token": headers['access-token'],
        "Client": headers['client'],
        "Uid": headers['uid']
      }
    end
  end
end

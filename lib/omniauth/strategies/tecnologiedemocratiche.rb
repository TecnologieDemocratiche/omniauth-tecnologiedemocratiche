require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Tecnologiedemocratiche < OmniAuth::Strategies::OAuth2
      option :name, :tecnologiedemocratiche

      option :client_options, {
                                site: 'https://tecnologiedemocratiche.herokuapp.com',
                                authorize_path: '/oauth/authorize'
                            }

      uid do
        raw_info['id']
      end

      info do
        {
            email: raw_info['email'],
            name: raw_info['name'],
            last_name: raw_info['last_name'],
            tax_code: raw_info['tax_code']
        }
      end

      def raw_info
        @raw_info ||= access_token.get('/api/v1/me.json').parsed
      end
    end
  end
end


module Mutations
  class SignOut< BaseMutation
    # null true

    # argument :credentials, Types::AuthProviderCredentialsInput, required: false
    # argument :id, ID, required: True


    # field :token, String, null: true
    # field :employe, Types::EmployeType, null: true

    def resolve( context: )
      # return unless credentials

      # employe = current_employe
      # session = employe.context[:session]
      context[:current_employe] = nil

      # return unless employe
      # return unless employe.authenticate(credentials[:password])

      # token = AuthToken.token_for_employe(employe)
   #    crypt = ActiveSupport::MessageEncryptor.new(Rails.application.credentials.secret_key_base.byteslice(0..31))
			# token = crypt.encrypt_and_sign("employe-id:#{ employe.id }")

   #    context[:session][:token] = token

      # { employe: employe, token: token }
    end
  end
end
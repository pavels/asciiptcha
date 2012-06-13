module Asciiptcha
	module ControllerHelpers
		
		def asciiptcha_verify(field_id = nil)
			if Asciiptcha.config.encryption_key.nil?
				raise EncryptionKeyNotSet, "Encryption key is not set"
			end
			field_id ||= 'asciiptcha_input'
			code_field_id = field_id+"_code"
			if params[field_id].nil? || params[field_id].length < 1 || params[code_field_id].nil? || params[code_field_id].length < 1
				return false
			end

			begin
				decrypted_code = Asciiptcha::aes_decrypt(params[code_field_id],Asciiptcha.config.encryption_key)
			rescue
				return false
			end
			if decrypted_code == params[field_id]
				return true
			end
			return false
		end
		
	end
end

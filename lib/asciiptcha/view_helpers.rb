module Asciiptcha
	module ViewHelpers

		def asciiptcha_generate(field_id = nil)
			if Asciiptcha.config.encryption_key.nil?
				raise EncryptionKeyNotSet, "Encryption key is not set"
			end

			font = Asciiptcha.config.available_fonts[Kernel.rand(Asciiptcha.config.available_fonts.length)]
			a = Artii::Base.new :font => font
			code = Asciiptcha::generate_random_code(Asciiptcha.config.captcha_length)

			field_id ||= 'asciiptcha_input'

			encrypted_code = Asciiptcha::aes_encrypt(code,Asciiptcha.config.encryption_key)
			
			html_output = ""
			html_output << "<div class=\"asciiptcha-block\">"
			html_output << "<pre>"
			html_output << a.asciify(code)
			html_output << "</pre>"
			html_output << (hidden_field_tag field_id+"_code", encrypted_code)
			html_output << (text_field_tag field_id, nil, :placeholder => I18n.t(".asciiptcha_input_placeholder"))
			html_output << "</div>"

			return raw html_output
		end
		
	end
end

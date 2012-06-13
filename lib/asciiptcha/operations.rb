module Asciiptcha

	protected
	
	def self.generate_random_code(length)
		s = ""
		length.times { s << (i = Kernel.rand(35); i += ((i < 10) ? 48 : 87 )).chr }
		return s
	end

	def self.aes_decrypt(encrypted_data, key)
		aes = OpenSSL::Cipher::Cipher.new('AES-256-ECB')
		aes.decrypt
		aes.key = Array(key).pack('H*')
		aes.update(Array(encrypted_data).pack('H*')) + aes.final  
	end

	def self.aes_encrypt(data, key)
		aes = OpenSSL::Cipher::Cipher.new('AES-256-ECB')
		aes.encrypt
		aes.key = Array(key).pack('H*')
		(aes.update(data) + aes.final).unpack('H*')
	end
	
end

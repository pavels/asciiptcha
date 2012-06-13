class Asciiptcha::Configuration

	#Encryption key - used for encrypting captcha key in forms
	# !!! MUST BE VALID RANDOM AES 256 KEY !!!
	attr_accessor :encryption_key

	#Captcha length - number of characters in captcha
	attr_accessor :captcha_length

	#Available fonts - allowed fonts for captcha
	#For list see artii -l command for list of available fonts
	#or http://www.figlet.org/examples.html
	attr_accessor :available_fonts

	def initialize
		@encryption_key = nil
		@captcha_length = 8
		@available_fonts = [ 'basic', 'banner4','colossal' ]
	end
	
end

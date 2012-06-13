Asciiptcha.configure do |config|
	#Encryption key - used for encrypting captcha key in forms
	config.encryption_key = '%encryption_key%'

	#Captcha length - number of characters in captcha
	# config.captcha_length = 8

	#Available fonts - allowed fonts for captcha
	#For list see artii -l command for list of available fonts
	#or http://www.figlet.org/examples.html
	# config.available_fonts = [ 'alligator2', 'banner4','colossal' ]

end

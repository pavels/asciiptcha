require "ftools"
namespace :asciiptcha do
	task :init => :environment do
		init_dst = Rails.root.join('config/initializers/asciiptcha.rb')
		init_src = File.dirname(__FILE__) + "/../initializers/asciiptcha.rb"

		cipher = OpenSSL::Cipher::Cipher.new('aes-256-ecb')
		cipher_password = cipher.random_key.unpack('H*').to_s

		init_file = File.read(init_src)
		init_file.gsub!("%encryption_key%",cipher_password)
		if !File.exists?(init_dst)
			File.open(init_dst, 'w') {|f| f.write(init_file) }
		else
			puts "Initializer file exists. Not overwriting."
		end
		puts File.read(File.dirname(__FILE__) + "/INIT.readme")
	end

end

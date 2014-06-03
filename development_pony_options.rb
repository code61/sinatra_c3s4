# Gmail options
Pony.options = {
  :via => 'smtp',
  :via_options => {
    :address              => 'smtp.gmail.com',
    :port                 => '587',
    :enable_starttls_auto => true,
    :user_name            => 'dummy.georgeknee',
    :password             => 'development_password',
    :authentication       => :plain, # :plain, :login, :cram_md5, no auth by default
    :domain               => "localhost.localdomain" # the HELO domain provided by the client to the server
  }
}


# Oxford Nexus email options

# Pony.options = {
#   :via => 'smtp',
#   :from => 'Your Name <your.name@college.ox.ac.uk>',
#   :via_options => {
#     :address              => 'smtp.ox.ac.uk',
#     :port                 => '587',
#     :enable_starttls_auto => true,
#     :user_name            => 'xxxx1234',
#     :password             => 'password12345',
#     :authentication       => :plain, # :plain, :login, :cram_md5, no auth by default
#     :domain               => "localhost.localdomain" # the HELO domain provided by the client to the server
#   }
# }

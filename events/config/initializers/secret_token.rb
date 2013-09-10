# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Events::Application.config.secret_key_base = 'ca8b52148c068b29c34261661d43ed28ff85eaea54e02c488a039540924df79549af6a0868391055d9ff2713ef2eee0d12d908df494a3002cfa323e0745328e7'

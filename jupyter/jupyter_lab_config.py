from oauthenticator.generic import GenericOAuthenticator

c.JupyterHub.authenticator_class = GenericOAuthenticator

# These should get picked up by env var
#c.OAuthenticator.oauth_callback_url = "https://kubeflow.babylon2.beyond.ai/oauth2/callback" 

c.OAuthenticator.client_id = "r8v72ivs9unbno3tgg3t0c2ki"
c.OAuthenticator.client_secret = "m7nhrqvqqhlapip72584l07cq137qmac4mu61o9for24evlihf8"

c.GenericOAuthenticator.login_service = "AWSCognito"
c.GenericOAuthenticator.username_key = "login"
c.GenericOAuthenticator.authorize_url = "https://auth.babylon2.beyond.ai/oauth2/authorize"
c.GenericOAuthenticator.token_url = "https://auth.babylon2.beyond.ai/oauth2/token"
c.GenericOAuthenticator.userdata_url = "https://auth.babylon2.beyond.ai/oauth2/userInfo"
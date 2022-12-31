c = get_config()
c.JupyterHub.authenticator_class = "dummyauthenticator.DummyAuthenticator"
c.DummyAuthenticator.password = "admin"
c.DummyAuthenticator.allowed_users = {"admin"}
c.DummyAuthenticator.username_map = {"admin": "admin"}
c.DummyAuthenticator.admin_users = {"admin"}
from wsgi import application

import cherrypy
if __name__ == '__main__':
	# Mount the application
	cherrypy.tree.graft(application, "/")
	# Unsubscribe the default server
	cherrypy.server.unsubscribe()
	# Instantiate a new server object
	server = cherrypy._cpserver.Server()
	# Configure the server object
	server.socket_host = "0.0.0.0"
	server.socket_port = 8000
	server.thread_pool = 30
	# For SSL Support
	server.ssl_module            = 'pyopenssl'
	server.ssl_certificate       = '/etc/letsencrypt/live/yufo.cf/fullchain.pem'
	server.ssl_private_key       = '/etc/letsencrypt/live/yufo.cf/privkey.pem'
	server.ssl_certificate_chain = '/etc/letsencrypt/live/yufo.cf/chain.pem'
	# Subscribe this server
	server.subscribe()
	# Example for a 2nd server (same steps as above):
	# Remember to use a different port
	server2             = cherrypy._cpserver.Server()
	server2.socket_host = "0.0.0.0"
	server2.socket_port = 8001
	server2.thread_pool = 30
	
	server.ssl_module            = 'pyopenssl'
	server.ssl_certificate       = '/etc/letsencrypt/live/yufo.cf/fullchain.pem'
	server.ssl_private_key       = '/etc/letsencrypt/live/yufo.cf/privkey.pem'
	server.ssl_certificate_chain = '/etc/letsencrypt/live/yufo.cf/chain.pem'
	server2.subscribe()
	# Start the server engine (Option 1 *and* 2)
	cherrypy.engine.start()
	cherrypy.engine.block()
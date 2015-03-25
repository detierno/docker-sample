#require 'sidekiq'

#redis_domain = ENV['RDF_REDIS_1_PORT_6379_TCP_ADDR']
#redis_port   = ENV['RDF_REDIS_1_PORT_6379_TCP_PORT']

#if redis_domain && redis_port
  #redis_url = "redis://#{redis_domain}:#{redis_port}"

  #Sidekiq.configure_server do |config|
    #config.redis = {
      #namespace: "sidekiq",
      #url: redis_url
    #}
  #end

  #Sidekiq.configure_client do |config|
    #config.redis = {
      #namespace: "sidekiq",
      #url: redis_url
    #}
  #end
#end

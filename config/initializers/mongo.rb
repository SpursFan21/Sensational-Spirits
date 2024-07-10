require 'mongo'

uri = "mongodb+srv://duncanfrederic:1234Wombat$$@sensationalspiritsclust.dvzwepi.mongodb.net/?retryWrites=true&w=majority&appName=SensationalSpiritsCluster0"

# Set the server_api field of the options object to set the version of the Stable API on the client
options = { server_api: { version: "1" } }

# Create a new client and connect to the server
$mongo_client = Mongo::Client.new(uri, options)

# Send a ping to confirm a successful connection
begin
  admin_client = $mongo_client.use('admin')
  result = admin_client.database.command(ping: 1)
  puts "Pinged your deployment. You successfully connected to MongoDB!"
rescue Mongo::Error::OperationFailure => ex
  puts ex
end

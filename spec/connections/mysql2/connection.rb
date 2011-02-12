print "Using MySQL2\n"
require 'logger'

ActiveRecord::Base.logger = Logger.new(File.open("mysql2.log", "w"))

ActiveRecord::Base.configurations = {
  'active_schema' => {
    :adapter => 'mysql2',
    :database => 'active_schema_unittest',
    :username => 'active_schema',
    :encoding => 'utf8',
    :socket => '/tmp/mysql.sock',
    :min_messages => 'warning'
  }

}

ActiveRecord::Base.establish_connection 'active_schema'

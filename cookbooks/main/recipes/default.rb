#execute "testing" do
#  command %Q{
#    echo "i ran at #{Time.now}" >> /root/cheftime
#  }
#end

# uncomment to deny access to /log, /config, and .git directories as well as any .yml files
# include_recipe "deny-directories"

# uncomment to turn on thinking sphinx 2/ultra sphinx. Remember to edit cookbooks/sphinx/recipes/default.rb first!
# include_recipe "sphinx"

# uncomment to turn on thinking sphinx 3. See cookbooks/thinking-sphinx-3/readme.md for documentation.
# include_recipe "thinking-sphinx-3"

# uncomment to use the collectd recipe. See cookbooks/collectd/readme.md for documentation.
# include_recipe "collectd"

# uncomment to use the block recipe. See cookbooks/block/readme.md for documentation.
# include_recipe "ban"

# uncomment to use the sidekiq recipe. See cookbooks/sidekiq/readme.md for documentation.
include_recipe "sidekiq"

#uncomment to turn on memcached
include_recipe "memcached"

#uncomment ot run the riak recipe
# include_recipe "riak"

#uncomment to run the authorized_keys recipe
#include_recipe "authorized_keys"

#uncomment to run the eybackup_slave recipe
# include_recipe "eybackup_slave"

#uncomment to run the ssmtp recipe
#include_recipe "ssmtp"

#uncomment to run the sunspot recipe
# include_recipe "sunspot"

#uncomment to run the exim recipe
#exim_auth "auth" do
#  my_hostname "my_hostname.com"
#  smtp_host "smtp.sendgrid.net"
#  username "username"
#  password "password"
#end

#uncomment to install specified packages
# You must add your packages to packages/attributes/packages.rb
#require_recipe "packages"

#uncomment to add specified cron jobs for application user (deploy)
# You must add your cron jobs to cron/attributes/cron.rb
#require_recipe "cron"

#uncomment to run the exim::auth recipe
#include_recipe "exim::auth"
#include_recipe "mongodb"

#uncomment to run the resque recipe
# include_recipe "resque"

#uncomment to run redis.yml recipe
include_recipe "redis-yml"

#uncomment to run the resque-scheduler recipe
# include_recipe "resque-scheduler"

#uncomment to run the redis recipe
include_recipe "redis"

#uncomment to run the env-yaml recipe
#include_recipe "env-yaml"

#uncomment to run the api-keys-yml recipe
# include_recipe "api-keys-yml"

#include_recipe "logrotate"
#
#uncomment to use the solr recipe
#include_recipe "solr"

#include_recipe "varnish_frontend"

#uncomment to set environment variables in passenger or unicorn
# Set environment variables as specified in cookbooks/env_vars/attributes/env_vars.rb
#include_recipe "env_vars"


#uncomment to include the mysql_replication_check recipe
#include_recipe "mysql_replication_check"

#uncomment to include the mysql_administrative_tools recipe
# additional configuration of this recipe is required
#include_recipe "mysql_administrative_tools"

#uncomment to include the Elasticsearch recipe
#include_recipe "elasticsearch"

#uncomment to include the Elasticsearch recipe on solos and app masters
#include_recipe "elasticsearch::non_util"

# To install specific plugins to Elasticsearch see below as an example
#es_plugin "cloud-aws" do
#  action :install
#end

#es_plugin "transport-memcached" do
#  action :install
#end

# To install a Jenkins environment, uncomment below
# include_recipe "jenkins"

# include_recipe "eventmachine"

#uncomment to include the Magento recipe
#include_recipe "magento"

# uncomment to include the Postgres Maintenance recipe
#include_recipe "postgresql_maintenance"

# enable Extension modules for a given Postgresql database
if ['solo','db_master', 'db_slave'].include?(node[:instance_role])
#   Extensions that support Postgres >= 9.0
#   postgresql9_autoexplain "activeadvocacytools"
  postgresql9_btree_gin "activeadvocacytools"
  postgresql9_btree_gist "activeadvocacytools"
  postgresql9_chkpass "activeadvocacytools"
  postgresql9_citext "activeadvocacytools"
  postgresql9_cube "activeadvocacytools"
#   postgresql9_dblink "activeadvocacytools"
#   postgresql9_dict_int "activeadvocacytools"
  postgresql9_dict_xsyn "activeadvocacytools"
  postgresql9_earthdistance "activeadvocacytools"
  postgresql9_fuzzystrmatch "activeadvocacytools"
  postgresql9_hstore "activeadvocacytools"
#   postgresql9_intarray "activeadvocacytools"
#   postgresql9_isn "activeadvocacytools"
#   postgresql9_lo "activeadvocacytools"
  postgresql9_ltree "activeadvocacytools"
  postgresql9_pg_trgm "activeadvocacytools"
  postgresql9_pgcrypto "activeadvocacytools"
  postgresql9_pgrowlocks "activeadvocacytools"

#   # PostGis 1.5 (use with versions 9.0, 9.1, 9.2 on 2009a/stable-v2)
#   # postgresql9_postgis "activeadvocacytools"

#   PostGis 2.1 (use with version 9.2 on 2009a/stable-v2 and all versions on 12.11/stable-v4)
  postgresql9_postgis2 "activeadvocacytools"

#   # postgresql9_seg "activeadvocacytools"
#   # postgresql9_sslinfo "activeadvocacytools"
#   # postgresql9_tablefunc "activeadvocacytools"
#   # postgresql9_test_parser "activeadvocacytools"
#   # postgresql9_unaccent "activeadvocacytools"
  postgresql9_uuid_ossp "activeadvocacytools"

#   9.1 and 9.2 Extensions
#   postgresql9_file_fdw "activeadvocacytools"
  postgresql9_xml2 "activeadvocacytools"

#   9.2 Extensions
#   Note: pg_stat_statements requires a server restart to complete installation
#   postgresql9_pg_stat_statements "activeadvocacytools"

#   Admin-Level Contribs
#   postgresql9_pg_buffercache "postgres"
#   postgresql9_pg_freespacemap "postgres"
end

#uncomment to include the motd customization related to the environment
#include_recipe "env_motd"


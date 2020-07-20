# Policyfile.rb - Describe how you want Chef Infra Client to build your system.
#
# For more information on the Policyfile feature, visit
# https://docs.chef.io/policyfile.html

# A name that describes what the system you're building with Chef does.
name 'WebPolicy'

# Where to find external cookbooks:
default_source :chef_server, 'https://192.168.33.110/organizations/ncr'

# run_list: chef-client will run these recipes in the order specified.
run_list %w(
  apahce_cookbook::apache_install
)

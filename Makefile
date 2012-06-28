all: gen-membase-1.7.0-packs-32bit gen-membase-1.7.0-packs-64bit \
     gen-membase-1.7.1-packs-32bit gen-membase-1.7.1-packs-64bit \
     gen-membase-1.7.2-packs-32bit gen-membase-1.7.2-packs-64bit \
     gen-couchbase-1.8.0-packs-32bit gen-couchbase-1.8.0-packs-64bit \
     gen-couchbase-1.8.1-enterprise-packs-64bit

gen-couchbase-1.8.1-enterprise-packs-64bit:
	./gen-pack template.erb 1 http://packages.couchbase.com/releases/1.8.1/couchbase-server-enterprise_x86_64_1.8.1.rpm > packs/couchbase-1.8.1-enterprise-64bit/1-pack-couchbase
	./gen-pack template.erb 2 http://packages.couchbase.com/releases/1.8.1/couchbase-server-enterprise_x86_64_1.8.1.rpm > packs/couchbase-1.8.1-enterprise-64bit/2-pack-couchbase
	./gen-pack template.erb 3 http://packages.couchbase.com/releases/1.8.1/couchbase-server-enterprise_x86_64_1.8.1.rpm > packs/couchbase-1.8.1-enterprise-64bit/3-pack-couchbase
	./gen-pack template.erb 4 http://packages.couchbase.com/releases/1.8.1/couchbase-server-enterprise_x86_64_1.8.1.rpm > packs/couchbase-1.8.1-enterprise-64bit/4-pack-couchbase
	./gen-pack template.erb 5 http://packages.couchbase.com/releases/1.8.1/couchbase-server-enterprise_x86_64_1.8.1.rpm > packs/couchbase-1.8.1-enterprise-64bit/5-pack-couchbase
	./gen-pack template.erb 6 http://packages.couchbase.com/releases/1.8.1/couchbase-server-enterprise_x86_64_1.8.1.rpm > packs/couchbase-1.8.1-enterprise-64bit/6-pack-couchbase
	./gen-pack template.erb 10 http://packages.couchbase.com/releases/1.8.1/couchbase-server-enterprise_x86_64_1.8.1.rpm > packs/couchbase-1.8.1-enterprise-64bit/10-pack-couchbase
	./gen-pack template.erb 20 http://packages.couchbase.com/releases/1.8.1/couchbase-server-enterprise_x86_64_1.8.1.rpm > packs/couchbase-1.8.1-enterprise-64bit/20-pack-couchbase
	./gen-pack template.erb 50 http://packages.couchbase.com/releases/1.8.1/couchbase-server-enterprise_x86_64_1.8.1.rpm > packs/couchbase-1.8.1-enterprise-64bit/50-pack-couchbase
	./gen-pack template.erb 100 http://packages.couchbase.com/releases/1.8.1/couchbase-server-enterprise_x86_64_1.8.1.rpm > packs/couchbase-1.8.1-enterprise-64bit/100-pack-couchbase

gen-couchbase-1.8.0-packs-32bit:
	./gen-pack template.erb 1 http://packages.couchbase.com/releases/1.8.0/couchbase-server-community_x86_1.8.0.rpm > packs/couchbase-1.8.0-32bit/1-pack-couchbase
	./gen-pack template.erb 2 http://packages.couchbase.com/releases/1.8.0/couchbase-server-community_x86_1.8.0.rpm > packs/couchbase-1.8.0-32bit/2-pack-couchbase
	./gen-pack template.erb 3 http://packages.couchbase.com/releases/1.8.0/couchbase-server-community_x86_1.8.0.rpm > packs/couchbase-1.8.0-32bit/3-pack-couchbase
	./gen-pack template.erb 4 http://packages.couchbase.com/releases/1.8.0/couchbase-server-community_x86_1.8.0.rpm > packs/couchbase-1.8.0-32bit/4-pack-couchbase
	./gen-pack template.erb 5 http://packages.couchbase.com/releases/1.8.0/couchbase-server-community_x86_1.8.0.rpm > packs/couchbase-1.8.0-32bit/5-pack-couchbase
	./gen-pack template.erb 6 http://packages.couchbase.com/releases/1.8.0/couchbase-server-community_x86_1.8.0.rpm > packs/couchbase-1.8.0-32bit/6-pack-couchbase
	./gen-pack template.erb 10 http://packages.couchbase.com/releases/1.8.0/couchbase-server-community_x86_1.8.0.rpm > packs/couchbase-1.8.0-32bit/10-pack-couchbase
	./gen-pack template.erb 20 http://packages.couchbase.com/releases/1.8.0/couchbase-server-community_x86_1.8.0.rpm > packs/couchbase-1.8.0-32bit/20-pack-couchbase
	./gen-pack template.erb 50 http://packages.couchbase.com/releases/1.8.0/couchbase-server-community_x86_1.8.0.rpm > packs/couchbase-1.8.0-32bit/50-pack-couchbase
	./gen-pack template.erb 100 http://packages.couchbase.com/releases/1.8.0/couchbase-server-community_x86_1.8.0.rpm > packs/couchbase-1.8.0-32bit/100-pack-couchbase

gen-couchbase-1.8.0-packs-64bit:
	./gen-pack template.erb 1 http://packages.couchbase.com/releases/1.8.0/couchbase-server-community_x86_64_1.8.0.rpm > packs/couchbase-1.8.0-64bit/1-pack-couchbase
	./gen-pack template.erb 2 http://packages.couchbase.com/releases/1.8.0/couchbase-server-community_x86_64_1.8.0.rpm > packs/couchbase-1.8.0-64bit/2-pack-couchbase
	./gen-pack template.erb 3 http://packages.couchbase.com/releases/1.8.0/couchbase-server-community_x86_64_1.8.0.rpm > packs/couchbase-1.8.0-64bit/3-pack-couchbase
	./gen-pack template.erb 4 http://packages.couchbase.com/releases/1.8.0/couchbase-server-community_x86_64_1.8.0.rpm > packs/couchbase-1.8.0-64bit/4-pack-couchbase
	./gen-pack template.erb 5 http://packages.couchbase.com/releases/1.8.0/couchbase-server-community_x86_64_1.8.0.rpm > packs/couchbase-1.8.0-64bit/5-pack-couchbase
	./gen-pack template.erb 6 http://packages.couchbase.com/releases/1.8.0/couchbase-server-community_x86_64_1.8.0.rpm > packs/couchbase-1.8.0-64bit/6-pack-couchbase
	./gen-pack template.erb 10 http://packages.couchbase.com/releases/1.8.0/couchbase-server-community_x86_64_1.8.0.rpm > packs/couchbase-1.8.0-64bit/10-pack-couchbase
	./gen-pack template.erb 20 http://packages.couchbase.com/releases/1.8.0/couchbase-server-community_x86_64_1.8.0.rpm > packs/couchbase-1.8.0-64bit/20-pack-couchbase
	./gen-pack template.erb 50 http://packages.couchbase.com/releases/1.8.0/couchbase-server-community_x86_64_1.8.0.rpm > packs/couchbase-1.8.0-64bit/50-pack-couchbase
	./gen-pack template.erb 100 http://packages.couchbase.com/releases/1.8.0/couchbase-server-community_x86_64_1.8.0.rpm > packs/couchbase-1.8.0-64bit/100-pack-couchbase

gen-membase-1.7.2-packs-32bit:
	./gen-pack template.erb 1 http://packages.couchbase.com/releases/1.7.2/membase-server-community_x86_1.7.2.rpm > packs/membase-1.7.2-32bit/1-pack-membase
	./gen-pack template.erb 2 http://packages.couchbase.com/releases/1.7.2/membase-server-community_x86_1.7.2.rpm > packs/membase-1.7.2-32bit/2-pack-membase
	./gen-pack template.erb 3 http://packages.couchbase.com/releases/1.7.2/membase-server-community_x86_1.7.2.rpm > packs/membase-1.7.2-32bit/3-pack-membase
	./gen-pack template.erb 4 http://packages.couchbase.com/releases/1.7.2/membase-server-community_x86_1.7.2.rpm > packs/membase-1.7.2-32bit/4-pack-membase
	./gen-pack template.erb 5 http://packages.couchbase.com/releases/1.7.2/membase-server-community_x86_1.7.2.rpm > packs/membase-1.7.2-32bit/5-pack-membase
	./gen-pack template.erb 6 http://packages.couchbase.com/releases/1.7.2/membase-server-community_x86_1.7.2.rpm > packs/membase-1.7.2-32bit/6-pack-membase
	./gen-pack template.erb 10 http://packages.couchbase.com/releases/1.7.2/membase-server-community_x86_1.7.2.rpm > packs/membase-1.7.2-32bit/10-pack-membase
	./gen-pack template.erb 20 http://packages.couchbase.com/releases/1.7.2/membase-server-community_x86_1.7.2.rpm > packs/membase-1.7.2-32bit/20-pack-membase
	./gen-pack template.erb 50 http://packages.couchbase.com/releases/1.7.2/membase-server-community_x86_1.7.2.rpm > packs/membase-1.7.2-32bit/50-pack-membase
	./gen-pack template.erb 100 http://packages.couchbase.com/releases/1.7.2/membase-server-community_x86_1.7.2.rpm > packs/membase-1.7.2-32bit/100-pack-membase

gen-membase-1.7.2-packs-64bit:
	./gen-pack template.erb 1 http://packages.couchbase.com/releases/1.7.2/membase-server-community_x86_64_1.7.2.rpm > packs/membase-1.7.2-64bit/1-pack-membase
	./gen-pack template.erb 2 http://packages.couchbase.com/releases/1.7.2/membase-server-community_x86_64_1.7.2.rpm > packs/membase-1.7.2-64bit/2-pack-membase
	./gen-pack template.erb 3 http://packages.couchbase.com/releases/1.7.2/membase-server-community_x86_64_1.7.2.rpm > packs/membase-1.7.2-64bit/3-pack-membase
	./gen-pack template.erb 4 http://packages.couchbase.com/releases/1.7.2/membase-server-community_x86_64_1.7.2.rpm > packs/membase-1.7.2-64bit/4-pack-membase
	./gen-pack template.erb 5 http://packages.couchbase.com/releases/1.7.2/membase-server-community_x86_64_1.7.2.rpm > packs/membase-1.7.2-64bit/5-pack-membase
	./gen-pack template.erb 6 http://packages.couchbase.com/releases/1.7.2/membase-server-community_x86_64_1.7.2.rpm > packs/membase-1.7.2-64bit/6-pack-membase
	./gen-pack template.erb 10 http://packages.couchbase.com/releases/1.7.2/membase-server-community_x86_64_1.7.2.rpm > packs/membase-1.7.2-64bit/10-pack-membase
	./gen-pack template.erb 20 http://packages.couchbase.com/releases/1.7.2/membase-server-community_x86_64_1.7.2.rpm > packs/membase-1.7.2-64bit/20-pack-membase
	./gen-pack template.erb 50 http://packages.couchbase.com/releases/1.7.2/membase-server-community_x86_64_1.7.2.rpm > packs/membase-1.7.2-64bit/50-pack-membase
	./gen-pack template.erb 100 http://packages.couchbase.com/releases/1.7.2/membase-server-community_x86_64_1.7.2.rpm > packs/membase-1.7.2-64bit/100-pack-membase

gen-membase-1.7.1-packs-32bit:
	./gen-pack template.erb 1 http://packages.couchbase.com/releases/1.7.1/membase-server-community_x86_1.7.1.rpm > packs/membase-1.7.1-32bit/1-pack-membase
	./gen-pack template.erb 2 http://packages.couchbase.com/releases/1.7.1/membase-server-community_x86_1.7.1.rpm > packs/membase-1.7.1-32bit/2-pack-membase
	./gen-pack template.erb 3 http://packages.couchbase.com/releases/1.7.1/membase-server-community_x86_1.7.1.rpm > packs/membase-1.7.1-32bit/3-pack-membase
	./gen-pack template.erb 4 http://packages.couchbase.com/releases/1.7.1/membase-server-community_x86_1.7.1.rpm > packs/membase-1.7.1-32bit/4-pack-membase
	./gen-pack template.erb 5 http://packages.couchbase.com/releases/1.7.1/membase-server-community_x86_1.7.1.rpm > packs/membase-1.7.1-32bit/5-pack-membase
	./gen-pack template.erb 6 http://packages.couchbase.com/releases/1.7.1/membase-server-community_x86_1.7.1.rpm > packs/membase-1.7.1-32bit/6-pack-membase
	./gen-pack template.erb 10 http://packages.couchbase.com/releases/1.7.1/membase-server-community_x86_1.7.1.rpm > packs/membase-1.7.1-32bit/10-pack-membase
	./gen-pack template.erb 20 http://packages.couchbase.com/releases/1.7.1/membase-server-community_x86_1.7.1.rpm > packs/membase-1.7.1-32bit/20-pack-membase
	./gen-pack template.erb 50 http://packages.couchbase.com/releases/1.7.1/membase-server-community_x86_1.7.1.rpm > packs/membase-1.7.1-32bit/50-pack-membase
	./gen-pack template.erb 100 http://packages.couchbase.com/releases/1.7.1/membase-server-community_x86_1.7.1.rpm > packs/membase-1.7.1-32bit/100-pack-membase

gen-membase-1.7.1-packs-64bit:
	./gen-pack template.erb 1 http://packages.couchbase.com/releases/1.7.1/membase-server-community_x86_64_1.7.1.rpm > packs/membase-1.7.1-64bit/1-pack-membase
	./gen-pack template.erb 2 http://packages.couchbase.com/releases/1.7.1/membase-server-community_x86_64_1.7.1.rpm > packs/membase-1.7.1-64bit/2-pack-membase
	./gen-pack template.erb 3 http://packages.couchbase.com/releases/1.7.1/membase-server-community_x86_64_1.7.1.rpm > packs/membase-1.7.1-64bit/3-pack-membase
	./gen-pack template.erb 4 http://packages.couchbase.com/releases/1.7.1/membase-server-community_x86_64_1.7.1.rpm > packs/membase-1.7.1-64bit/4-pack-membase
	./gen-pack template.erb 5 http://packages.couchbase.com/releases/1.7.1/membase-server-community_x86_64_1.7.1.rpm > packs/membase-1.7.1-64bit/5-pack-membase
	./gen-pack template.erb 6 http://packages.couchbase.com/releases/1.7.1/membase-server-community_x86_64_1.7.1.rpm > packs/membase-1.7.1-64bit/6-pack-membase
	./gen-pack template.erb 10 http://packages.couchbase.com/releases/1.7.1/membase-server-community_x86_64_1.7.1.rpm > packs/membase-1.7.1-64bit/10-pack-membase
	./gen-pack template.erb 20 http://packages.couchbase.com/releases/1.7.1/membase-server-community_x86_64_1.7.1.rpm > packs/membase-1.7.1-64bit/20-pack-membase
	./gen-pack template.erb 50 http://packages.couchbase.com/releases/1.7.1/membase-server-community_x86_64_1.7.1.rpm > packs/membase-1.7.1-64bit/50-pack-membase
	./gen-pack template.erb 100 http://packages.couchbase.com/releases/1.7.1/membase-server-community_x86_64_1.7.1.rpm > packs/membase-1.7.1-64bit/100-pack-membase

gen-membase-1.7.0-packs-32bit:
	./gen-pack template.erb 1 http://packages.couchbase.com/releases/1.7.0/membase-server-community_x86_1.7.0.rpm > packs/membase-1.7.0-32bit/1-pack-membase
	./gen-pack template.erb 2 http://packages.couchbase.com/releases/1.7.0/membase-server-community_x86_1.7.0.rpm > packs/membase-1.7.0-32bit/2-pack-membase
	./gen-pack template.erb 3 http://packages.couchbase.com/releases/1.7.0/membase-server-community_x86_1.7.0.rpm > packs/membase-1.7.0-32bit/3-pack-membase
	./gen-pack template.erb 4 http://packages.couchbase.com/releases/1.7.0/membase-server-community_x86_1.7.0.rpm > packs/membase-1.7.0-32bit/4-pack-membase
	./gen-pack template.erb 5 http://packages.couchbase.com/releases/1.7.0/membase-server-community_x86_1.7.0.rpm > packs/membase-1.7.0-32bit/5-pack-membase
	./gen-pack template.erb 6 http://packages.couchbase.com/releases/1.7.0/membase-server-community_x86_1.7.0.rpm > packs/membase-1.7.0-32bit/6-pack-membase
	./gen-pack template.erb 10 http://packages.couchbase.com/releases/1.7.0/membase-server-community_x86_1.7.0.rpm > packs/membase-1.7.0-32bit/10-pack-membase
	./gen-pack template.erb 20 http://packages.couchbase.com/releases/1.7.0/membase-server-community_x86_1.7.0.rpm > packs/membase-1.7.0-32bit/20-pack-membase
	./gen-pack template.erb 50 http://packages.couchbase.com/releases/1.7.0/membase-server-community_x86_1.7.0.rpm > packs/membase-1.7.0-32bit/50-pack-membase
	./gen-pack template.erb 100 http://packages.couchbase.com/releases/1.7.0/membase-server-community_x86_1.7.0.rpm > packs/membase-1.7.0-32bit/100-pack-membase

gen-membase-1.7.0-packs-64bit:
	./gen-pack template.erb 1 http://packages.couchbase.com/releases/1.7.0/membase-server-community_x86_64_1.7.0.rpm > packs/membase-1.7.0-64bit/1-pack-membase
	./gen-pack template.erb 2 http://packages.couchbase.com/releases/1.7.0/membase-server-community_x86_64_1.7.0.rpm > packs/membase-1.7.0-64bit/2-pack-membase
	./gen-pack template.erb 3 http://packages.couchbase.com/releases/1.7.0/membase-server-community_x86_64_1.7.0.rpm > packs/membase-1.7.0-64bit/3-pack-membase
	./gen-pack template.erb 4 http://packages.couchbase.com/releases/1.7.0/membase-server-community_x86_64_1.7.0.rpm > packs/membase-1.7.0-64bit/4-pack-membase
	./gen-pack template.erb 5 http://packages.couchbase.com/releases/1.7.0/membase-server-community_x86_64_1.7.0.rpm > packs/membase-1.7.0-64bit/5-pack-membase
	./gen-pack template.erb 6 http://packages.couchbase.com/releases/1.7.0/membase-server-community_x86_64_1.7.0.rpm > packs/membase-1.7.0-64bit/6-pack-membase
	./gen-pack template.erb 10 http://packages.couchbase.com/releases/1.7.0/membase-server-community_x86_64_1.7.0.rpm > packs/membase-1.7.0-64bit/10-pack-membase
	./gen-pack template.erb 20 http://packages.couchbase.com/releases/1.7.0/membase-server-community_x86_64_1.7.0.rpm > packs/membase-1.7.0-64bit/20-pack-membase
	./gen-pack template.erb 50 http://packages.couchbase.com/releases/1.7.0/membase-server-community_x86_64_1.7.0.rpm > packs/membase-1.7.0-64bit/50-pack-membase
	./gen-pack template.erb 100 http://packages.couchbase.com/releases/1.7.0/membase-server-community_x86_64_1.7.0.rpm > packs/membase-1.7.0-64bit/100-pack-membase


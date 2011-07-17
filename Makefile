all: gen-membase-packs-32bit gen-membase-packs-64bit

gen-membase-packs-32bit:
	./gen-pack membase.erb 1 http://packages.couchbase.com/releases/1.7.0/membase-server-community_x86_1.7.0.rpm > packs/membase-1.7.0-32bit/1-pack-membase
	./gen-pack membase.erb 2 http://packages.couchbase.com/releases/1.7.0/membase-server-community_x86_1.7.0.rpm > packs/membase-1.7.0-32bit/2-pack-membase
	./gen-pack membase.erb 3 http://packages.couchbase.com/releases/1.7.0/membase-server-community_x86_1.7.0.rpm > packs/membase-1.7.0-32bit/3-pack-membase
	./gen-pack membase.erb 4 http://packages.couchbase.com/releases/1.7.0/membase-server-community_x86_1.7.0.rpm > packs/membase-1.7.0-32bit/4-pack-membase
	./gen-pack membase.erb 5 http://packages.couchbase.com/releases/1.7.0/membase-server-community_x86_1.7.0.rpm > packs/membase-1.7.0-32bit/5-pack-membase
	./gen-pack membase.erb 6 http://packages.couchbase.com/releases/1.7.0/membase-server-community_x86_1.7.0.rpm > packs/membase-1.7.0-32bit/6-pack-membase
	./gen-pack membase.erb 10 http://packages.couchbase.com/releases/1.7.0/membase-server-community_x86_1.7.0.rpm > packs/membase-1.7.0-32bit/10-pack-membase
	./gen-pack membase.erb 20 http://packages.couchbase.com/releases/1.7.0/membase-server-community_x86_1.7.0.rpm > packs/membase-1.7.0-32bit/20-pack-membase
	./gen-pack membase.erb 50 http://packages.couchbase.com/releases/1.7.0/membase-server-community_x86_1.7.0.rpm > packs/membase-1.7.0-32bit/50-pack-membase
	./gen-pack membase.erb 100 http://packages.couchbase.com/releases/1.7.0/membase-server-community_x86_1.7.0.rpm > packs/membase-1.7.0-32bit/100-pack-membase

gen-membase-packs-64bit:
	./gen-pack membase.erb 1 http://packages.couchbase.com/releases/1.7.0/membase-server-community_x86_64_1.7.0.rpm > packs/membase-1.7.0-64bit/1-pack-membase
	./gen-pack membase.erb 2 http://packages.couchbase.com/releases/1.7.0/membase-server-community_x86_64_1.7.0.rpm > packs/membase-1.7.0-64bit/2-pack-membase
	./gen-pack membase.erb 3 http://packages.couchbase.com/releases/1.7.0/membase-server-community_x86_64_1.7.0.rpm > packs/membase-1.7.0-64bit/3-pack-membase
	./gen-pack membase.erb 4 http://packages.couchbase.com/releases/1.7.0/membase-server-community_x86_64_1.7.0.rpm > packs/membase-1.7.0-64bit/4-pack-membase
	./gen-pack membase.erb 5 http://packages.couchbase.com/releases/1.7.0/membase-server-community_x86_64_1.7.0.rpm > packs/membase-1.7.0-64bit/5-pack-membase
	./gen-pack membase.erb 6 http://packages.couchbase.com/releases/1.7.0/membase-server-community_x86_64_1.7.0.rpm > packs/membase-1.7.0-64bit/6-pack-membase
	./gen-pack membase.erb 10 http://packages.couchbase.com/releases/1.7.0/membase-server-community_x86_64_1.7.0.rpm > packs/membase-1.7.0-64bit/10-pack-membase
	./gen-pack membase.erb 20 http://packages.couchbase.com/releases/1.7.0/membase-server-community_x86_64_1.7.0.rpm > packs/membase-1.7.0-64bit/20-pack-membase
	./gen-pack membase.erb 50 http://packages.couchbase.com/releases/1.7.0/membase-server-community_x86_64_1.7.0.rpm > packs/membase-1.7.0-64bit/50-pack-membase
	./gen-pack membase.erb 100 http://packages.couchbase.com/releases/1.7.0/membase-server-community_x86_64_1.7.0.rpm > packs/membase-1.7.0-64bit/100-pack-membase


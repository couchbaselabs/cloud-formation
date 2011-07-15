all: gen-membase-packs

gen-membase-packs:
	./gen-pack membase.erb 1 > packs/1-pack-membase
	./gen-pack membase.erb 2 > packs/2-pack-membase
	./gen-pack membase.erb 3 > packs/3-pack-membase
	./gen-pack membase.erb 4 > packs/4-pack-membase
	./gen-pack membase.erb 5 > packs/5-pack-membase
	./gen-pack membase.erb 6 > packs/6-pack-membase
	./gen-pack membase.erb 10 > packs/10-pack-membase
	./gen-pack membase.erb 20 > packs/20-pack-membase
	./gen-pack membase.erb 50 > packs/50-pack-membase
	./gen-pack membase.erb 100 > packs/100-pack-membase


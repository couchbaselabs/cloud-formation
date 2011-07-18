CloudFormation templates for Couchbase software

= Usage

When launching an Amazon CloudFormation stack, choose one of the
pre-generated "N-pack" templates in the ./packs subdirectory tree.

For example, if you chose the packs/membase-1.7.0-32bit/6-pack-membase
template, then you would be launching a six machine, auto-joined
cluster of Membase Server nodes.

== Template inputs

Many of the input parameters for the templates have default values.

=== Membase server template inputs

Some of the more important launch input values that you'll have to
supply or will want to override when launching a Membase N-pack...

* REST password - for the Administrator user and REST API.

* SSH key name - allows you to remotely ssh onto each launched server
  node.  To get a named SSH key pair, please pre-create/register one
  using the AWS/EC2 web management console.

* RAM quota per server node - maximum amount of RAM (in MB) that
  Membase server processes are allowed to use on a server.  Be sure to
  leave enough extra RAM "unused" headroom for O/S requirements and to
  avoid swap.

* RAM quota per server node for the default bucket.  A default bucket
  on port 11211, with no password, will be automatically created by
  the Membase CloudFormation templates with this given RAM quota (in
  MB) per server node.  You can delete this bucket later if you want.

* InstanceType - for example, "m1.small".  You'll need to choose an
  AWS EC2 instance type that's appropriately 32-bit or 64-bit
  compatible, depending on what pack template that you choose.  Also,
  your RAM quota input values should be less than the instance type's
  actual RAM.

= Growing a cluster

For example, you might already have launched and be running a 3-pack
cluster of Membase server nodes, and it's finally time to add more
capacity (more nodes) to the cluster.

To grow that cluster, you could launch another N-pack of Membase, such
as a 2-pack.  When launching the next pack, provide the HOST:PORT of
some public IP/network address of the original pack (eg, the 3-pack)
as input via the ExistingClusterHostPort parameter.  For example, this
might be something like "10.50.22.21:8091".  The Membase server
template will then auto-join its newly launched nodes (in the 2-pack)
to the existing cluster, but will not auto-Rebalance the newly
expanded 5-node cluster.  You can use the Membase web management
console UI to kick off the Rebalance operation yourself, when
you're ready to do so.

= More info

* http://couchbase.com
* http://docs.amazonwebservices.com/FeaturedArticles/latest/index.html?cloudformation-waitcondition-article.html

= License

MIT - this was made for you.

= TODO

* EBS configuration - highest priority
* Alerts configuration - nice to have
* Elastic Load Balancer - nice to have

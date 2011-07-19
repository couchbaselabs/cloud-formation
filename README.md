Amazon AWS CloudFormation templates for Couchbase software

# Using the Membase server templates

When launching an Amazon CloudFormation stack, please choose one of
the pre-generated "N-pack" templates in the ./packs subdirectory tree.

For example, if you chose the packs/membase-1.7.0-32bit/6-pack-membase
template, then you would be launching a six machine ("six pack"),
auto-joined cluster of Membase Server nodes.

## Membase server template inputs

Some of the more important launch input values that you'll have to
specify or will want to override when launching an N-pack of Membase
servers...

* REST password - for the Administrator user for the Membase web
  management console UI and REST API.

* SSH key name - allows you to remotely ssh onto each launched server
  node.  To get a named SSH key pair, please pre-create/register one
  using the AWS/EC2 web management console.

* RAM quota per server node - maximum amount of RAM (in MB) that
  Membase server processes are allowed to use on a server.  Be sure to
  leave enough extra RAM "unused" headroom for O/S requirements and to
  avoid swap.

* RAM quota per server node for the default bucket.  A default
  membase-type bucket on port 11211, with no password, will be created
  by the Membase CloudFormation templates with this given RAM quota
  amount (in MB) per server node.  You can specify 0 to not have this
  default bucket created.

* InstanceType - for example, "m1.small".  You'll need to choose an
  AWS EC2 instance type that's appropriately 32-bit or 64-bit
  compatible, depending on what pack template that you choose.  Also,
  your RAM quota input values should be less than the instance type's
  actual RAM.

For production deployments, proper sizing of your Membase cluster is
very important.  Please see http://couchbase.org for more technical
information.

## Growing a Membase cluster

For example, you might already have launched and be running a 3-pack
cluster of Membase server nodes, and it's finally time to add more
capacity (more nodes) to the cluster.

To grow that cluster, you could launch another N-pack of Membase, such
as an additional 2-pack.  When launching the next pack, provide the
HOST:REST_PORT of some public DNS or public IP address of some node in
the original pack (eg, the 3-pack) as input via the
ExistingClusterHostPort parameter.

For example, this might be something like "10.50.22.21:8091".  The
Membase server template will then auto-join its newly launched nodes
(from the 2-pack) to the existing cluster, but will not auto-Rebalance
the newly expanded 5-node cluster.  You can use the Membase web
management console UI to kick off the Rebalance operation yourself,
when you're ready to do so.

Or, if you change your mind, you can also easily remove the added
server nodes (using the "Remove Server" feature) in the Membase web
management console UI.

If you specify an ExistingClusterHostPort, then newly launched
nodes will inherit the configuration of the existing cluster,
and the RAM quota input parameters will be ignored.

# Tutorial - Your First Membase Cluster

The following is a step-by-step tutorial of launching your first
Membase cluster on EC2 using these CloudFormation templates.

## Step 1

First, get the templates...

    git clone git://github.com/couchbaselabs/cloud-formation.git

## Specifying A New Stack

Point your web browser to the AWS Management Console, click on the
'AWS CloudFormation' tab, and click 'Create New Stack'...

<div>
    <img src="https://github.com/couchbaselabs/cloud-formation/raw/master/docs/aws_create-new-stack.png"/>
</div>

Fill in a Stack Name (for example: 'my-membase').

Then, choose to Upload a Template File.

Then, specify an N-pack template file from the cloud-formation/packs
subdirectory tree.

Here, I've chosen a 3-pack of 32-bit Membase 1.7.0.  That means this
template will launch 3 EC2 nodes and auto-join them into a 3-node
cluster...

<div>
    <img src="https://github.com/couchbaselabs/cloud-formation/raw/master/docs/aws_upload-pack.png"/>
</div>

Click Continue, and next specify input parameters...

<div>
    <img src="https://github.com/couchbaselabs/cloud-formation/raw/master/docs/aws_specify-parameters.png"/>
</div>

At this point, just provide a RESTPassword and a KeyName.

You can leave the InstanceType as 'm1.small' and other parameters also
as their default values in this example.

The KeyName is the name of an SSH Key Pair.

If you don't have a SSH Key Pair registered in AWS yet, please see...

    http://docs.amazonwebservices.com/AWSEC2/latest/UserGuide/index.html?generating-a-keypair.html

Next, continuing the tutorial, click Continue and then 'Create
Stack'...

<div>
    <img src="https://github.com/couchbaselabs/cloud-formation/raw/master/docs/aws_confirm-stack.png"/>
</div>

## Stack Creation Progress

While your 3-pack of Membase is launching, you can enjoy a 6-pack of
beer.  You can also track the launching of your Membase nodes in the
Events tab for your 'my-membase' stack...

<div>
    <img src="https://github.com/couchbaselabs/cloud-formation/raw/master/docs/aws_create-in-progress.png"/>
</div>

## Membase Is Ready

Once it's done, the Outputs tab for 'my-membase' will have the
URL for the Membase management REST/web console UI...

<div>
    <img src="https://github.com/couchbaselabs/cloud-formation/raw/master/docs/aws_stack-output.png"/>
</div>

Clicking on that RESTWebConsoleURL will take you to the Membase
login page.

Use the Username of 'Administrator' and a Password of the RESTPassword
that you specified earlier...

<div>
    <img src="https://github.com/couchbaselabs/cloud-formation/raw/master/docs/aws_membase-login.png"/>
</div>

Logging in will take you to Membase's Cluster Overview page...

<div>
    <img src="https://github.com/couchbaselabs/cloud-formation/raw/master/docs/aws_membase-overview.png"/>
</div>

You can see that 1 server is active and that 2 servers are Pending
Rebalance, which means the shards have not yet been rebalanced across
all 3 nodes in the cluster.

If you don't see 3 servers yet, the other 2 are still launching and
auto-joining, and please just wait a little bit.

To rebalance your cluster, click on MANAGE -> Server Nodes.

Then click on the Rebalance button...

<div>
    <img src="https://github.com/couchbaselabs/cloud-formation/raw/master/docs/aws_rebalance-needed.png"/>
</div>

While your cluster is rebalancing, you'll see live rebalance status...

<div>
    <img src="https://github.com/couchbaselabs/cloud-formation/raw/master/docs/aws_rebalance-progress.png"/>
</div>

## Make The Graphs Dance

You can also ssh onto one of those nodes...

    $ ssh -i ~/.ssh/aws.pem ec2-user@50.16.69.108
    Last login: Tue Jul 19 19:56:29 2011 from 208.185.212.98

       __|  __|_  )  Amazon Linux AMI
       _|  (     /     Beta
      ___|\___|___|

    See /usr/share/doc/system-release-2011.02 for latest release notes. :-)
    [ec2-user@domU-12-31-39-02-D9-78 ~]$

And then you can use memcachetest to drive some basic, synthetic test
load onto your Membase cluster, on the default bucket...

    [ec2-user@domU-12-31-39-02-D9-78 ~]$ /opt/membase/bin/memcachetest -l

In your web browser, navigate to MONITOR -> Data Buckets -> default to
see live, charted statistics.

<div>
    <img src="https://github.com/couchbaselabs/cloud-formation/raw/master/docs/aws-monitor.png"/>
</div>

Be sure to drill around -- the graphs can be very helpful to diagnose
issues.

Finally, in your EC2 tab in the AWS Management Console, your new EC2
instances will be named with the prefix of 'my-membase' (the name of
your stack), for easy tracking...

<div>
    <img src="https://github.com/couchbaselabs/cloud-formation/raw/master/docs/aws-instances.png"/>
</div>

# More info

* http://couchbase.com
* http://aws.amazon.com/cloudformation/
* http://docs.amazonwebservices.com/FeaturedArticles/latest/index.html?cloudformation-waitcondition-article.html

# License

MIT - these templates were made for you.

# TODO

* EBS configuration
* Publish the templates on S3 somewhere
* Alerts configuration - nice to have
* Elastic Load Balancer - nice to have

# Release History

### 0.7.2 / 2016-04-01

#### Changes

* Pub/Sub
  * Fixed issue with unnecessary acknowledge requests in autoack (maxstudener)

### 0.7.1 / 2016-04-01

#### Changes

* Pub/Sub
  * Fixed issue with unnecessary base-64 encoding of message data (ptinsley)

### 0.7.0 / 2016-03-31

#### Changes

* Add support for Logging service
* gRPC
  * Add dependency on gRPC gem
  * Pub/Sub transport layer now uses gRPC
  * New Logging transport layer uses gRPC
  * Future releases will migrate more services to gRPC

### 0.6.2 / 2016-03-02

#### Changes

* BigQuery
  * Fix error accessing a job's data before the job is complete (yhirano55)
  * Fix undefined local variable in Dataset's access rules (yhirano55)
  * Optionally specify location when creating a Dataset (gramos74)
* Datastore
  * Fix bug in calculating an Entity's `exclude_from_indexes` (bmclean)
* Pub/Sub
  * Correctly raise error when accessing a policy without permissions
  * Update policy permissions documentation

### 0.6.1 / 2015-12-29

#### Changes

* Add delimiter parameter for listing Storage files
* Add support for Ruby 2.3

### 0.6.0 / 2015-12-11

#### Changes

* Add support for Search service
* Drop support for Ruby 1.9.3
  * Replace options hash parameter with named parameters

### 0.5.0 / 2015-10-29

#### Changes

* Add support for Release Manager service
* Pub/Sub Additions
  * Fix issue getting and setting policies (jeffmendoza)
  * Modified `autocreate` default value and behavior
  * Add `skip_lookup` option on resource lookup methods
  * Add `Project#publish` method
  * Add `Project#subscribe` method
* Datastore Additions
  * Add `namespace` option on running queries (jondot)
  * Add `query`, `entity`, and `key` helpers to Dataset

### 0.4.1 / 2015-10-20

#### Changes

* Add support for Bucket attributes, including:
  * CORS
  * logging
  * versioning
  * location
  * website
  * storage class
* Add support for File attributes, including:
  * cache_control
  * content_dispostion
  * content_encoding
  * content_language
  * content_type
* Add support for File upload validation with MD5 or CRC32c
* Add File#public_url
* Improve stability and error reporting of Storage ACL helpers

### 0.4.0 / 2015-10-12

#### Major changes

* Add DNS Service

#### Minor changes

* Improved BigQuery table recognition from a string (vitaliel)
* Add missing options from BigQuery `Table#load` (gramos74)
* Add missing options from BigQuery `Table#extract`

### 0.3.1 / 2015-09-08

#### Changes

* Auto-discovery of project-id on Google Compute Engine
* Support getting project id from GCE auth compute
* New dataset access DSL for BigQuery
* New table schema DSL for BigQuery
* Add Code of Conduct

#### Minor changes

* Load data to BigQuery from Datastore backup
* Add `Job#wait_until_complete` convenience method to BigQuery
* Add String representation of tables in BigQuery
* Add `refresh!` methods to Storage and BigQuery
* Support `DATASTORE_DATASET` environment variable
* Update Storage and BigQuery documentation for possible errors during large file uploads
* Fix missing Pathname require
* Truncate object representation in interactive output

### 0.3.0 / 2015-08-21

#### Major changes

Add BigQuery service

#### Minor changes

* Improve error messaging when uploading files to Storage
* Add `GCLOUD_PROJECT` and `GCLOUD_KEYFILE` environment variables
* Specify OAuth 2.0 scopes when connecting to services

### 0.2.0 / 2015-07-22

#### Major changes

Add Pub/Sub service

#### Minor changes

* Add top-level `Gcloud` object with instance methods to initialize connections
  with individual services (e.g. `Gcloud#storage`)
* Add credential options to `Gcloud::Storage::File#signed_url`
* Add method aliases to improve usability of Storage API
* Improve documentation

### 0.1.1 / 2015-06-16

* Storage downloads files in binary mode (premist).
* Updated documentation.

### 0.1.0 / 2015-03-31

Initial release supporting Datastore and Storage services.

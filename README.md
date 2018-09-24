

Dependencies
============

Host deps
---------

* `make`
* `docker`

App deps
--------
* based on ruby alpine container
* bundler packaged in base container image
* find ruby gem deps in Gemfile

How to run the tests
====================

Make sure you have the host-level dependencies installed.  (see above)

```
make test
```


How to run the Farmer's Market
==============================

Make sure you have the host-level dependencies installed.  (see above)

```
make run-examples
```

Swagger UI Demo
===============

This repo includes the backend, links, and slides for Swagger UI presentation at the Ruby User Group meeting hosted at DCS-Fürth on April 2, 2014.

#### Backend

The demo uses a rails backend. As a consumer of REST Apis, however, swagger is naturally backend-agnostic.


#### Swagger Docs

The swagger documention is located under `public/docs` in this project. It is, however, very loosely coupled with the backend. Moving it to another project is very easy - simply update the links at the following locations:

* public/docs/index.html:26 - update the `url` key

* public/docs/definitions/*.json - update `basePath` and `path` keys

And start writing your swagger docs with `public/docs/definitions/*.json` files

#### <i class="icon-share"></i> Links

* [Swagger UI Repo][1] - note that if you are only going to use Swagger (without modifying the build code), you will only need the `swaggger-ui/dist` directory.  This is the distribution from which this demo's `public/docs` directory is based.

* [Swagger Spec Documentation Home][2] - Here you can find the link to the current specs.  At the time of writing the the swagger spec is at [version 1.2][3]

[1]: https://github.com/wordnik/swagger-ui
[2]: https://github.com/wordnik/swagger-spec
[3]: https://github.com/wordnik/swagger-spec/blob/master/versions/1.2.md
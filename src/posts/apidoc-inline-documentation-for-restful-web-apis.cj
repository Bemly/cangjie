package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getApidocInlineDocumentationForRestfulWebApisPost(): Post {
    return Post(
        "apidoc-inline-documentation-for-restful-web-apis",
        "apiDoc - Inline Documentation for RESTful web APIs",
        "2024-01-22",
        "apiDoc creates a documentation from API annotations in your source code, supporting Java, JavaScript, PHP, Python, Ruby and more.",
        { b =>
            h2(b, "apiDoc - Inline Documentation for RESTful web APIs")
            p(b, "apiDoc creates a documentation from API annotations in your source code. It supports Java, JavaScript, PHP, CoffeeScript, Elixir, Erlang, Perl, Python, Ruby, Lua and more.")
            p(b, "apiDoc gives you the ability to attach a version number to an API, so that you can easily track changes between versions.")
            h3(b, "Getting Started")
            p(b, "Install via npm: npm install apidoc -g")
            p(b, "Run: apidoc -i src -o apidoc")
            p(b, "This creates an apiDoc of all files within dir src, using the default template, and puts all output to the apidoc directory. Without any parameter, apiDoc generates documentation from all .cs .dart .erl .go .java .js .php .py .rb .ts files in the current directory (incl. subdirs) and writes the output to ./doc/.")
            h3(b, "Command Line Interface")
            p(b, "Key parameters include: -c/--config for specifying config file path, -e/--exclude-filters for excluding files/dirs, -f/--file-filters for selecting files to parse (default: .cs .dart .erl .go .java .js .php .py .rb .ts), -i/--input for input directory, -o/--output for output directory, and -t/--template for custom templates.")
            h3(b, "Configuration (apidoc.json)")
            p(b, "The optional apidoc.json in your project root includes common information about your project like title, short description, version, and configuration options like header/footer settings. If you use a package.json, all apidoc.json settings can be done under the \"apidoc\": { } parameter.")
            h3(b, "GRUNT Module")
            p(b, "A separate grunt module is supported. Install via: npm install grunt-apidoc --save-dev")
            h3(b, "Template")
            p(b, "apiDoc includes a default template which supports versioning (view different versions of your API), comparing (view changes between two versions), and viewing the default demo. You can also create your own template.")
            h3(b, "Examples")
            p(b, "The basic example uses annotations like @api, @apiName, @apiGroup, @apiParam, @apiSuccess, @apiSuccessExample, @apiParamExample, @apiHeader, @apiError, @apiErrorExample, @apiVersion, @apiDeprecated, @apiDescription, @apiPermission, @apiPrivate, @apiSampleRequest and more.")
            a(b, attrs("href", "https://apidocjs.com/"), "阅读原文")
        }
    )
}

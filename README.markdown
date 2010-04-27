# StaticMatic

*For information on Haml & Sass please see [haml.hamptoncatlin.com](http://haml.hamptoncatlin.com)*.

## What's it all about?

CMS is overrated.  A lot of the time, clients want us to do what we do 
best - well designed pages with structured, accessible and maintainable markup & styling.

CMSs are often perfect for this, but sometimes they can be restrictive and more cumbersome
than just working with good ol' source code.  At the same time we want our code to be
structured, DRY and flexible.

Enter **StaticMatic**.

## Usage

StaticMatic will set up a basic site structure for you with this command:

    staticmatic setup <directory>

After this command you'll have the following files:

    <directory>/
      site/
        images/
        stylesheets/
        javascripts/
      src/
        helpers/
        layouts/
          application.haml
        pages/
          index.haml
        stylesheets/
          application.sass

StaticMatic sets you up with a sample layout, stylesheet and page file.  Once you've
edited the pages and stylesheets, you can generate the static site:

    staticmatic build <directory>
    
All of the pages are parsed and wrapped up in application.haml and put into the site directory.

## Additional mime types

You can add additional file types (other than HTML or CSS) in your `src/configuration.rb`:

    configuration.mime_types[:rss] = 'application/rss+xml'
    configuration.mime_types[:xml] = 'application/xml'
    
Files named `filename.rss.haml` will be previewed with the right mime type and build with the right extention as `filename.rss`.

## Templates

StaticMatic adds a few helpers to the core Haml helpers:

    = link 'Title', 'url'
    = img 'my_image.jpg'
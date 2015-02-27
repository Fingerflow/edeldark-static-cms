axis         = require 'axis'
rupture      = require 'rupture'
autoprefixer = require 'autoprefixer-stylus'
contentful   = require 'roots-contentful'
jeet         = require 'jeet'
slug         = require 'slug'

module.exports =
  ignores: ['readme.md', '**/layout.*', '**/_*', '.gitignore']

  stylus:
    use: [axis(), rupture(), autoprefixer(), jeet()]

  extensions: [
    contentful
      access_token: '776c20d69d3be00afa31bb8b68ac7cedd708b2eed29c96f4c3e6631a0df10d3a'
      space_id: 'ycv4nyz4t75i'
      content_types: [
        {
          id: '5cL6VMuPzikYK8SsawEYA4'
          name: 'posts'
          filters: {}
          template: 'views/_project.jade'
          path: (e) -> "/post/#{slug(e.name).toLowerCase()}"
        }
      ]
  ]

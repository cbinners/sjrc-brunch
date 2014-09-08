exports.config =
  paths:
    watched: ["client", "vendor", "shared"]

  files:
    javascripts:
      defaultExtension: "coffee"
      joinTo:
        'application.js': /^(client|shared)/
        'vendor.js': /^(bower_components|vendor)/

    stylesheets:
      defaultExtension: 'scss'
      joinTo:
        'app.css': /^client\/styles\/app.scss/
        'vendor.css': /^bower_components/

  plugins:
    sass:
      debug: 'comments'
    react:
      autoIncludeCommentBlock: yes

  modules:
    nameCleaner: (path) ->
      path
        # Strip the client/ prefix from module names
        .replace(/^client\//, '')
        # Strip the .jsx extension from module names
        .replace(/\.jsx/, '')
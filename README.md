# Javascript loading
  - the javascripts that gets loaded will be loaded in the application.js by means of requiring

# Adding the custom javascript
  - the custom javascript could be installed by the app/javascript/ folder
  - here under the packs folder there exists the custom javascript folders and files to be loaded 
  - these custom_javascripts can be required by using require("packs/custom-js.js")
 
 
# Adding the momentjs front end react package through yarn
```
  yarn add moment 
```

removing the momentjs fron end react package through yarn

```
  yarn remove moment
```
# adding the bootstrap to the rails 6

```
  yarn add bootstrap@4.3.1 jquery popper.js
```


adding in the application.js

// app/javascript/application.js
```
  import $ from 'jquery';
  import "bootstrap"
  window.$ = $;
  import("../stylesheets/application")
```

- window.$ is required for the global loading of the jquery in the window .

- now we can add stylesheets through wit hthe help of the webpacker by creating the app/javascript/stylesheets/application.scss 


and in this particular file we can add the bootstrap as follows
//app/javascript/stylesheets/application.scss
```
@import "bootstrap/scss/bootstrap";
```

In the process of the 

in the config/webpack/environment.js

```

const webpack = require('webpack')
environment.plugins.append('Provide', new webpack.ProvidePlugin({
  $: 'jquery',
  jQuery: 'jquery',
  Popper: ['popper.js', 'default']
}))
    

```
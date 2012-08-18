# plugclub.org

[![dependency status](https://gemnasium.com/KenanY/plugclub.org.png)](https://gemnasium.com/KenanY/plugclub.org)

## Initial setup

The P.L.U.G. site is a static site generated by [Jekyll], a Ruby blog generator.

1. The [guard] gem that you'll use later requires Growl. If you're using Linux, that means you'll need Growl for Linux:
```bash
$ sudo add-apt-repository ppa:mattn/growl-for-linux
$ sudo apt-get update
$ sudo apt-get install growl-for-linux
```

2. If you don't have [RVM], it's time to get it. It'll let you install Ruby easily and switch versions smoothly
```bash
$ curl -L https://get.rvm.io | bash -s stable --ruby
```

3. Close your current shell and open a new one

4. Run this. The output should be `rvm is a function`
```bash
$ type rvm | head -n 1
```

5. To finish the RVM installation, run this and do whatever it requires of you
```bash
$ rvm requirements
```

6. Now install Ruby
```bash
$ rvm install 1.9.3
$ rvm use 1.9.3
```

7. Get the repository
```bash
$ git clone git://github.com/KenanY/plugclub.org.git
$ cd octopress
```

8. When cd-ing into the folder, RVM will ask if you trust the .rvmrc file. Say yes.

9. Install dependencies (using the bundler gem)
```bash
$ gem install bundler
$ bundle install
```

## Changelog

### 1.1.0 / 2012-08-18 / [browse](/KenanY/plugclub.org/tree/1.1.0) / [zip](/KenanY/plugclub.org/zipball/1.1.0) / [tar](/KenanY/plugclub.org/tarball/1.1.0)

   * Front page redesign, complete with a cool tagline, random stats, columns of features, and a GitHub column tracking site updates
   * Add `feed_entry.xml`
   * Add async GA snippet
   * Remove address bar on mobile devices
   * Add Foundation jQuery plugins:
     * Alets
     * Buttons
     * Accordian
     * Navigation
     * mediaQueryToggle
     * Tabs
   * Remove copyright hyphen
   * Fix awkward wording in Officer bios
   * Minify Foundation plugins

### 1.0.3 / 2012-08-12 / [browse](/KenanY/plugclub.org/tree/1.0.3) / [zip](/KenanY/plugclub.org/zipball/1.0.3) / [tar](/KenanY/plugclub.org/tarball/1.0.3)

   * Update jQuery to 1.8.0
   * Include local copy of jQuery if Google's CDN is offline
   * Two-space indent `plugins.js` and `Modernizr.load` snippet

### 1.0.2 / 2012-08-05 / [browse](/KenanY/plugclub.org/tree/1.0.2) / [zip](/KenanY/plugclub.org/zipball/1.0.2) / [tar](/KenanY/plugclub.org/tarball/1.0.2)

   * Fix canonical link and description capturing
   * Fix officer avatars pointing to incorrect directory
   * Put `Modernizr.load` snippet at bottom of page instead of within a JavaScript file
   * Put treasurer above secretary on about page

### 1.0.1 / 2012-08-05 / [browse](/KenanY/plugclub.org/tree/1.0.1) / [zip](/KenanY/plugclub.org/zipball/1.0.1) / [tar](/KenanY/plugclub.org/tarball/1.0.1)

   * Add favicon to head
   * Cachebust `main.css`
   * Stop navigation from disappearing on small screens (see #4)
   * Remove duplicate header div
   * Add blog styles

### 1.0.0 / 2012-08-04 / [browse](/KenanY/plugclub.org/tree/1.0.0) / [zip](/KenanY/plugclub.org/zipball/1.0.0) / [tar](/KenanY/plugclub.org/tarball/1.0.0)

   * Beginning of using version numbering


   [guard]: https://github.com/guard/guard
   [Jekyll]: http://jekyllrb.com/
   [RVM]: https://rvm.io/
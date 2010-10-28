This is a fork of the original dotfiles promoted by [holman](http://github.com/holman). This README is based on it aswell.
It has now diverged a lot, since I've customized everything as I've seen fit, and discarded zsh in favour of bash.

## dotfiles

I have different machines that I use to work. iMac/MacBook at work, iMac at home, MacBookAir when travelling. But my development environment should be the same everywhere.
This repo helps me keep everything up to date everywhere, and also setup new environments very fast.

In my environment I work with these things:

* OSX
* Terminal.app
* vim
* bash
* git

I liked the original project's focus on modularity, so I used it as a starting point for my own dotfiles.
Everything topic related is in the same folder, making it easier to organize and know where everything is.

You can [read the oroginal holman's post on the subject](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/).

## install

    git clone git://github.com/mrsimo/dotfiles
    cd dotfiles
    bundle
    rake install

You can put it anywhere. I like to have in my Dropbox folder, so that if I ever change something it will be replicated on all my other machines without having to pull the repository.

The main file you'll want to change right off the bat is `bash/bashrc.symlink`, which sets up a few paths that'll be different on your particular machine.

## Terminal.app

There's one thing I don't like from Terminal.app, and it's that I can't switch tabs with `⌘+num`. For that there are some SIMBL plugins that can be used.

When you rake install it will execute `.rb` files, and I've included the `terminal/simbl.rb` which uses my library [geoffrey](http://github.com/mrsimo/geoffrey) to install SIMBL and the plugins I use.

## vim

As with everyone else, my vim configuration is probably only suited to me, but you can use it as a starting point if you want. I love the colorscheme, [`molokai`](http://www.vim.org/scripts/script.php?script_id=2340) here's a screenshot.

![My colorscheme](http://dl.dropbox.com/u/31054/vim-ui.png)

I use pathogen to organize them, so you can find them all in the `.vim/bundle` directory. You can easily remove them and/or install new ones.

I recommend you check the documentation of every one of them, it's usually in the docs folder.

### File browsing

* [ `NERD_tree` ](http://www.vim.org/scripts/script.php?script_id=1658): Tree view of the file structure. Bound to `<C-t>`.
* [ `CommandT` ](http://www.vim.org/scripts/script.php?script_id=3025): TextMate-like file finding inside your project. Bound to `<C-f>`.
* [ `bufexplorer` ](http://www.vim.org/scripts/script.php?script_id=42): Rapidly list your open buffers. Bound to `<C-b>`.
* [ `ack.vim` ](http://github.com/mileszs/ack.vim): Superfast find in all your projects. Bound to `<D-F>`.

### Enhaced editing

* [ `delimitMate` ](http://github.com/Raimondi/delimitMate): TextMate-like automatic closing of things like quotes, parenthesis, etc. The best I've found.
* [ `vim-tcomment` ](http://github.com/tsaleh/vim-tcomment): TextMate-like automatic commenting. In my opinion, heaps better than `NERD_Commenter`. Bound to `<D-/>`
* [ `vim-rails` ](http://github.com/tpope/vim-rails): All the love you need for your Rails needs.
* [ `vim-surround` ](http://github.com/tpope/vim-surround): Handy extra syntactic sugar to have "surroundings", so you can change quotes by double quotes and things like that.
* [ `sparkup` ](http://github.com/rstacruz/sparkup/tree/master/vim/): Write html a lot faster (like zencoding).
* [ `snipmate.vim` ](http://github.com/msanders/snipmate.vim): TextMate-like snippets.
* [ `vim-repeat` ](http://github.com/tpope/vim-repeat): Helpful to use repeat `.` with plugins.
* [ `vim-endwise` ](http://github.com/tpope/vim-endwise): Adds `end` smartly in your ruby code.
* [ `vim-fugitive` ](http://github.com/tpope/vim-fugitive): Awesome plugin if you work with git. See diff's and stuff without leaving your editor.

### Syntax Highlighting

Vim understands a lot of formats already, but there's also improvements. There's also plugins to improve syntax highlighting in any language.

* [ `rainbow_parenthesis` ](http://www.vim.org/scripts/script.php?script_id=1561): Colorizes your parenthesis differently to help you in complex situations.
* [ `syntastic` ](http://github.com/scrooloose/syntastic): Checks your syntax and tells you when there's syntax errors in your code.
* [ `vim-javascript` ](http://github.com/pangloss/vim-javascript): Improved support for js files.
* [ `vim-markdown` ](http://github.com/plasticboy/vim-markdown): Improved support for markdown files.
* [ `vim-coffee-script` ](http://github.com/kchmck/vim-coffee-script): Support for coffee-script files.
* [ `vim-cucumber` ](http://github.com/tpope/vim-cucumber): Support for cucumber files.
* [ `vim-haml` ](http://github.com/tpope/vim-haml): Kick ass support for haml files.



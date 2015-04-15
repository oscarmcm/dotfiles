
1.0.0 / 2015-04-14
==================

  * update readme.me
  * Add `nom` alias
  * Merge pull request #4 from wyze/syntax-error
  * fixing syntax error
  * Improve gi/gp/yi based on feedback from alrra
  * Add commonly used npm deps to deps script
  * Drop Yeoman build file
  * Finally add github-email by Sindre
  * Add open all changes files in the editor
  * Open last commit in the browser
  * GitHub URL for current repo
  * Add the gifify from SlexAxton
  * Add Gulp plugin and Yeoman generator aliases
  * Add npm offline
  * Add in QuickLook plugins
  * Add in Caskfile
  * Update .osx defaults to account for latest advice.
  * Add in bootstrap.sh from Mathias
  * Add simple git log for releases
  * Add faster npm if you're in Europe
  * Add kill all the tabs in chrome
  * Make Grunt print stack traces by default
  * Update empty trash alias
  * Drop ST version number, update directory listing
  * Enable bash4 features when possible
  * Merge pull request #1 from Kikobeats/patch-1
  * update z reference
  * add merge pdf, spotlight aliases
  * add timer, update
  * adds histappend, cdspell
  * adds m->o
  * adds gi
  * adds note()
  * adds dataurl, gitio
  * adds cdf
  * adds calc
  * Adds a better git clone
  * Adding lazyclone
  * Minor readme tweaks.
  * Adding Ben's GitHub Pull Request Helper, eachdir, alias.
  * oops.
  * Browserstack refactoring thanks to input from their team. Some more additions. Minor updates to readme.
  * Adding one more browserstack example.
  * Adds shortcut for Dropbox uploader, updates to installer, sublime build files.
  * Minor tweaks, browsers convenience function
  * Adding missing Opera alias.
  * Adding quick example of shortcuts added.
  * Updating readme.
  * Adding some BrowserStack shortcuts.
  * Adding bash dropbox uploader
  * adding npm shortcuts
  * adjusting readme accordingly
  * customizing gitconfig
  * adding prune directory
  * adding common app aliases
  * spotifycontrol
  * sound tweaks in .osx. no translucent dock icons.
  * official cli tools ftw
  * Merge pull request #4 from quicksnap/patch-1
  * =)
  * Any GitHub repo with my username should be checked out r/w by default. thx @jamiew
  * kill mathias terminal edits.
  * thx for educationg me on .inputrc, mathias.
  * readme refix
  * .
  * edited down the .osx file to my liking.
  * ...
  * you should do jshintrc and editorconfig.
  * updating readme with overview of dotfiles.
  * syntax highlighting for these dotfiles in st2.
  * hot copy w/ progress from gf3.
  * some docs on my PATH setup.
  * updating .aliases against mathias'.
  * ack configuration courtesy of @gf3. thx
  * updating gitignore with .pyc
  * my edits to .brew.
  * file from mathia's repo. .brew to setup homebrew install. initial import.
  * update .osx to be mathias's latest. sry i didnt pull git history or anything rad like that.
  * new file : install-deps. Setup of environmenty things I need.
  * the term bootstrap these days means sumpthin else. soooooo lets change this filename.
  * update hostname
  * whitespace
  * symlink for subl
  * Merge pull request #3 from veence01/patch-1
  * Update master
  * subl
  * thanks steve streza. :)
  * git log with per-commit cmd-clickable GitHub URLs via @cowboy
  * more git alias fun.
  * lg for log, paul.
  * pretty git log
  * bunyip shortcut. thx ryan. :)
  * start up rvm
  * gitexport function for clean folder copy.
  * add gz() function for gzipped size
  * pygmentize alias from @gf3 . love so hard.
  * no hub alias.
  * f find shorthand
  * init z
  * i have determined that i do not like pulling with rebase. no more rebase for me. merge commits ftw
  * nerfing .vimrc's setrelativenumber and undodir options in case of older vim version
  * .bash_profile: Be sure to source `.bash_prompt` first, in case it sets the PATH and subsequent dotfiles rely on it
  * add url
  * iterm title tab stuff almost working
  * iterm title bar attempt #2
  * lets try to get iterm tab happiness.
  * adding my aliases to git
  * bringing in my aliases/function to these dotfiles.
  * renaming
  * readme update for meee
  * .osx: Enable iTunes track notifications in the Dock
  * `server` function: Serve everything as UTF-8
  * .gitignore: Add more OS-specific hidden files
  * Merge pull request #37 from kitcambridge/patch-1
  * `.osx`: Restart the `SystemUIServer` and suppress `kill` output.
  * Better `json` function
  * README: List files while untarring
  * Include .vim directory and subdirectories
  * Serve unknown file types as UTF-8, as suggested by @janmoesen
  * Use `tar -z` explicitly
  * README: Add Git-less installation instructions
  * `server` function: Set the default Content-Type to `text/plain` instead of `application/octet-stream`
  * README: Document the -f/--force option for bootstrap.sh
  * `server`: Use parameter expansion instead of a fake ternary
  * Remove old `server` alias
  * Replace the `server` alias with a function that optionally takes an argument specifying the port number
  * Allow running bootstrap.sh with a --force or -f option
  * Create .vim/{backups,swaps,undo} directories if they don’t exist
  * Make `emptytrash` empty the trash for mounted external volumes too
  * Allow piping to the `json` function
  * Use tabs instead of double-space indents
  * Add `unidecode` function
  * Add `escape` function which escapes UTF-8 characters into their 3-byte format
  * Move disabled QuickLook fix to the bottom
  * .vimrc: Centralize backups, swapfiles and undo history
  * Add a link to cowboy/dotfiles
  * Add some more commands to `$HISTIGNORE`.
  * Merge pull request #29 from danawoodman/patch-1
  * Removing duplicate `set mark-symlinked-directories on` settings.
  * .vimrc: add `set wildmenu` for better command-line completion. Thanks, @alrra!
  * Make `cleanup` list the files it deletes. Kind of like how `rm -v` works.
  * Add `cleanup` alias, which recursively deletes `.DS_Store` files. Useful for cleaning up external HDDs after copying over some folders.
  * Clarify Dropbox icon comment.
  * Remove the green checkmark icons in Dropbox.
  * Use double quotes more consistently.
  * Prefer US English and use UTF-8.
  * Steal some nifty aliases from @janmoesen/tilde.
  * Steal some `.inputrc` goodies from @janmoesen/tilde.
  * Use `hd` alias for canonical hex dump. Thanks, @janmoesen!
  * Don’t source .bash_profile when PS1 is not set (for non-interactive shells).
  * Looks like `IncludeDebugMenu` was replaced by `IncludeInternalDebugMenu` recently.
  * .vimrc: Make tabs as wide as two spaces.
  * Merge branch 'master' of github.com:mathiasbynens/dotfiles
  * Add .vimrc, heavily based on the one @gf3 uses. Fixes #4.
  * Link to the issue tracker for suggestions.
  * Sexier file sourcing.
  * Add a link to @janmoesen’s tilde repository.
  * Make the `json()` function more generic by allowing any JSON string instead of just JSON URLs.
  * Add a more convenient `whois` alias.
  * Typo.
  * Merge pull request #26 from matijs/master
  * Add `json` function. Example usage: `json http://fronteers.nl/congres/2011/attendees.json`
  * Undid some silly mistakes and made the script more simplerder
  * make it possible for bootstap.sh to be executed from wherever
  * Typo.
  * Fix .gitconfig formatting (use tabs instead of spaces).
  * Minor tweaks.
  * Merge pull request #25 from jrk/master
  * Enable subpixel font rendering on non-Apple LCDs
  * The fix for the UTF-8 bug in QuickLook causes problems when saving files in Adobe Illustrator CS5, so comment it out.
  * Only reset Launchpad when it’s actually available. Fixes #24.
  * Check if `tmutil` is available before using it. (It’s not available on Snow Leopard.)
  * Use full PlistBuddy path instead of the alias, so `.osx` can be used stand-alone.
  * Disable Ping entirely.
  * Disable the Ping sidebar in iTunes.
  * Show item info below desktop icons.
  * Add PlistBuddy alias, because sometimes `defaults` just doesn’t cut it.
  * Disable the warning before emptying the Trash.
  * Disable the warning when changing a file extension.
  * Empty Trash securely by default.
  * Only use UTF-8 in Terminal.app.
  * Automatically hide and show the Dock.
  * Show remaining battery time; hide percentage.
  * Set a blazingly fast keyboard repeat rate.
  * Typo.
  * Enable tap to click (Trackpad).
  * Allow quitting Finder via ⌘ + Q; doing so will also hide desktop icons.
  * Show all filename extensions in Finder. (Can be set via Finder → Preferences too.)
  * Add `emptytrash` alias.
  * Map bottom right Trackpad corner to secondary click (right-click).
  * Require password immediately after sleep or screen saver begins. (Can also be set via System Preferences → Security & Privacy → General.)
  * Use `NSGlobalDomain` instead of `-g`.
  * Always show scrollbars.
  * Disable the “Are you sure you want to open this application?” dialog.
  * Show indicator lights for open applications in the Dock, and don’t animate opening applications from the Dock. (These can be set through System Preferences → Dock as well.)
  * Merge pull request #20 from matijs/master
  * Added HISTIGNORE to ignore certain commands in history
  * Enable AirDrop over Ethernet and on unsupported Macs running OS X Lion.
  * Add aliases to hide/show all desktop icons.
  * Check if ~/.ssh/config exists before grepping it.
  * Reload dotfiles after updating through the bootstrapper.
  * Add tab completion for `defaults read|write NSGlobalDomain`. Useful when looking for new ~/.osx additions.
  * Fix typo.
  * Minor cleanup.
  * Merge pull request #16 from iloveitaly/patch-1
  * Add aliases to show/hide hidden files in Finder. Closes #15.
  * Better tab completion for SSH hostnames based on ~/.ssh/config.
  * Merge pull request #19 from jhirbour/master
  * added stuff for ssh tab completion
  * Posix path in finder title, sheet speed, hidden application's icons are transparent
  * Make sure rsync output starts on a new line.
  * Comment tweak.
  * Ignore duplicate history entries.
  * Merge pull request #10 from gburtini/patch-1
  * Added enable-spring-load-actions-on-all-items -bool true
  * Show a warning and ask for user confirmation before running the bootstrapper. Fixes #8.
  * Enable full keyboard access for all controls (e.g. enable Tab in modal dialogs).
  * Disable Resume system-wide.
  * Tweak README.
  * Merge pull request #7 from kridolfo/patch-1
  * Added "lsd" to list only directories
  * Enable Safari’s debug menu.
  * Avoid creating .DS_Store files on network volumes.
  * Add some more goodies to .osx.
  * Merge pull request #3 from jpsirois/patch-1
  * Remove the disturbing ".dmg" Mounting Verification
  * Fix a typo in the fix for the ancient UTF-8 bug in QuickLook.
  * Add `undopush` alias.
  * Add a note about the `.osx` file.
  * Add TRACE and OPTIONS aliases.
  * Typo.
  * Add update instructions.
  * Add installation instructions.
  * Whitespace cleanup.
  * Initial commit.

# maclock
macOS screen lock from CLI

Lots of folks have an alias in their shell setup like this:
```
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"
```
One problem I found with this - it uses the "switch user" feature of macOS, which for whatever reason, forces me to type my username & password, and my Apple Watch wouldn't unlock the Mac.

I found someone wrote this bit of [Objective-C code on stackexchange](http://apple.stackexchange.com/questions/80058/lock-screen-command-one-liner) that seems to do the trick, so I figured I'd write this up and preserve it for posterity.

My "afk" alias has now been updated to /usr/local/bin/maclock, so I don't need to rewire my thought process on triggering AFK screen lock before walking away from my Mac.

For laughs, I also made an [Alfred](https://www.alfredapp.com) Workflow that takes the keyword "lock" and runs the same thing. I had to uncheck Alfred's "lock" feature, as it uses the "switch user" feature, as above.

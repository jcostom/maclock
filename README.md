# maclock
macOS screen lock from CLI

Lots of folks have an alias in their shell setup like this:
```
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"
```
One problem I found with this - it forced me to type my username & password, and my Apple Watch wouldn't unlock the Mac.

I found someone wrote this bit of Objective-C code that seems to do the trick, so I figured I'd write this up and preserve it for posterity.

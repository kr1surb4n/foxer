# Foxer

Create(organize a bit) and use diferent Firefox or Chrome profiles.
 
To start a Firefox instance with profile `work` : 
```foxer work```

If this is first time you run it then this will create a profile `work`, under the 
`$HOME/profiles/browers` path. Then start the browser.

Next time, browser will start using this profile.


Firefox adds `-ff` sufix.
Chrome adds `-gc` suffix.
Path to the profile `$HOME/profiles/browers/work-ff`.

For Chrome use `chromer`

Sweet one-liner to choose the profiles with `fzf` 
```
foxer "$(ls $HOME/profiles/browsers | while read folder ; do echo "${folder%-ff}" ; done | while read folder; do ech
o "${folder%-gc}" ; done | fzf)"
```


## Path to browser profiles

Default path to folder with profiles: `~/profiles/browsers`
You can change that with setting `FOXER_PROFILES` ENV variables

```
FOXER_PROFILES=~/profiles/browsers
```

# Why?

How to organize many tabs, logins, extensions, and bookmarks
for different use contexts and have little mess? 

I have checked many browser plugins, they are ok. In the end,
they don't do the job. Some of them don't work well with
other plugins I use (i.e. OneTab breaks TabGroups completely).
Some have strange glitches. Simply things are not so
smooth. 

When I work, I don't want to mix private logins with work logins. A similar thing is with bookmarks or used tabs.
It would be awesome to have, like a browser for work, a browser
for project X, for fun, and reading news.

Also, it would be cool, if I could all the profiling that is done by the ad companies could be limited. The best option would be if it could mess up with their profiling algorithms. 
At least it's a nice dream. 

There is already something like that. It's called a profile.
Each browser has profiles. The only problem is the switching.
The switch is always the problem. So why even switch?
We can start many browser instances, each with a different
profile. I created a simple script [Foxer](https://github.com/kr1surb4n/foxer) for that.

Say, I want to start work-related browser:
```foxer work```

News?
```foxer news```

With Bash alias, you can make a command `work_browser` and
bam! One command to start the work.

Also, you gain a bit of control over the profiles. 
By default, they go to `~/profiles/browsers`. 

So there are problems too.
You have to back up your profiles. Periodically the best.

A profile is connected to the browser version. 
To read it, you need a browser with the proper version. 
Sometimes, newer versions of browsers will
change a profile into a total mess. There are no
undo buttons.

So, it is advised to keep an archive with the 
browser, with the same version, you are using.

Some things need attention.
It would be sweet to have plugins installed
from some folder, bundle, or list. It would be sweet to have plugins installed from some folder, bundle, or list. The icons could also be different for different profile (I don't think it's possible).

# TODO
1. Periodic cookie cleaning.
2. Loading sets of plugins.
2. How to deal with evercookie? ( https://github.com/przor3n/evercookie )

This repository contains is a collaborative attempt at sketching out the third
version of the MusicBrainz web service, `/ws/3`.

# Building HTML

If you want to build readable HTML yourself, you need:

* GHC
* Pandoc
* Shake

If you use Ubuntu, this should do it:

```
sudo apt-get install ghc
cabal update
cabal install pandoc shake
```

Then just `./Make.hs`. I have a commit hook keeping the generated HTML up to
date, so if you're also interested in reading then v3.html should be fine.

# YOU'RE DOING IT WRONG

I'm sure we are. So tell us. Open an issue in this repository for points that
need discussion, or just go ahead and fork.

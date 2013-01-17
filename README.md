From Ruby to Haskell:  An Introduction
======================================

This repository contains support materials for the presentation/tutorial
_From Ruby to Haskell: An Introduction_, to be given in Tokyo on
2013-01-22. See the [event page][event] for details:

[event]: http://www.tokyorubyistmeetup.org/events/2323

The presentation slides and notes will be added in the next few days.

You will need the following software installed on your computer:

* Git
* A text editor
* A Ruby implementation including an interpreter (version 1.8 or 1.9
  of the original "Matz" ruby is fine)
* The Glasgow Haskell Compiler (and interpreter)

You will also need to be familiar with using Git and and your editor.

Familiarity with Ruby is not strictly required, but will be quite
useful. If you don't know Ruby, consider teaming up with someone else in
the tutorial who does and can help you out with code and concepts you
don't understand.

The examples and code given here were developed and tested under Ubuntu
Linux, but should work just fine under other versions of Linux, MacOS
and Windows (though under MacOS and Windows you will need to have a
little bit of familarity with the command line interface).

Software Sources
----------------

#### Git

Git is typically available through the packging system used with your
OS (except Windows); for example, the command `sudo apt-get install
git-core` will install it on Ubuntu Linux systems. If it is not, you can
download a client from [here][git-clients]. If you typically use a GUI
for file manipulation, you may also wish to download a GUI interface,
such as [TortoiseGit for Windows][tortoisegit].

[git-clients]: http://git-scm.com/downloads
[tortoisegit]: https://code.google.com/p/tortoisegit/

#### Ruby

Being a Rubyist, you should have Ruby already installed on your system.
We use the Matz interpreter, which is the original Ruby implementation,
but if you're more comfortable with another one, that will do as well.
You will probably want the interactive ruby interpreter, irb, available
as we use that in many of the early examples.

#### GHC

GHC (the Glasgow Haskell Compiler, which includes an interpreter) is
also typically available as a package; `sudo apt-get install ghc` will
install it under Ubuntu Linux. Though it's often an older version,
that's fine for this tutorial. Under OSX, if you are using brew, you can
use `brew install haskell-platform`.

If not available as a package, you can download the [Haskell
Platform][haskplat] from [5], which will give you both GHC and a wide
set of commonly used libraries. GHC binaries are also available from the
[GHC home page][ghc] if for some reason the Haskell Platform doesn't
work for you.

[haskplat]: http://www.haskell.org/platform/
[ghc]: http://www.haskell.org/ghc/

Testing Your Installation
-------------------------

To test that the interpreter is working, type `ghci` at the command line
prompt. You should see something resembling the following output:

    GHCi, version 7.4.1: http://www.haskell.org/ghc/  :? for help
    Loading package ghc-prim ... linking ... done.
    Loading package integer-gmp ... linking ... done.
    Loading package base ... linking ... done.
    Prelude>

Typing `:q` at the GHCI prompt will quit back to the command line:

    Prelude> :q
    Leaving GHCi.

To test that the load-and-go compiler is properly installed, change to
the directory containing this README file and type `runghc Main.hs`.
(This command compiles the given soruce code file and then runs it.) It
should print "Hello, world." and return you to the command line prompt.
Feel free to change the string to something else and re-run the program
to verify that you're comfortable with your edit/run cycle.

Tutorial Activities and Exercises
---------------------------------

During the tutorial I will be presenting snippets of code on the
projector. During the earlier examples I expect you to type these in to
a GHC intperpreter prompt as you did above; in later examples we'll be
editing and running files, again as you did above. During the course
of this, and especially when we get to the small programming exercises
after the presentation, people are encouraged to work in groups of two
or three if they feel comfortable doing that. You may want to make
appropriate tweaks to your development environment, if you feel you
need any, to support working with two or three people in front of your
computer.

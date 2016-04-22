# reflex-starter [![Build Status](https://travis-ci.org/yamafaktory/reflex-starter.svg?branch=master)](https://travis-ci.org/yamafaktory/reflex-starter)

> A simple starter project for building Reflex applications with [Stack](https://github.com/commercialhaskell/stack).

If you don't know what Reflex is, please refer to [the main repository](https://github.com/reflex-frp/reflex) in order to get an overview of the framework and then to the awesome [Reflex Platform tutorial](https://github.com/reflex-frp/reflex-platform) to get your hands dirty right away.

Reflex is built on top of [GHCJS](https://github.com/ghcjs/ghcjs) which is a Haskell to JavaScript compiler. A lot of modern Haskell features are available through GHCJS which makes it a really good contestant against Elm or PureScript (especially if you want to stick with Haskell).

## Prerequisite

### Stack

Install Stack as described in the [how-to-install section of the FAQ](http://docs.haskellstack.org/en/stable/README/#how-to-install).

### NodeJS

GHCJS needs [NodeJS](https://nodejs.org) to be installed, and a [recent version](https://github.com/commercialhaskell/stack/issues/1496).

The easiest way to go is to use [nvm](https://github.com/creationix/nvm) and to install one of the 5.x.x versions.

## Installation

Clone this repository.

```bash
git clone https://github.com/yamafaktory/reflex-starter
```

Install GHCJS from source and boot it (go grab a coffee, a long one).

```bash
stack setup
```

## Usage

Build the default project.

```bash
stack build
```
Go to the `.stack-work` directory and search for the `reflex-starter.jsexe` subdirectory, e.g.:

```bash
.stack-work/dist/x86_64-linux/Cabal-1.22.4.0_ghcjs/build/reflex-starter/reflex-starter.jsexe/index.html
```
Open the `index.html` in your browser and enjoy!

## Updating the GHCJS version

Open the `stack.yml` file and replace the compiler version and the GHCJS source to match a newer released version of [Luite's builds](http://ghcjs.luite.com/). You just have to change the date (*20160416*) three times.

```yaml
compiler: ghcjs-0.2.0.20160416_ghc-7.10.2
compiler-check: match-exact
setup-info:
  ghcjs:
    source:
      ghcjs-0.2.0.20160416_ghc-7.10.2:
        url: "http://ghcjs.luite.com/master-20160416.tar.gz"
```

## GHCJSi bonus

With the recent GHCJS builds, the GHCJSi REPL is now available!

```bash
stack ghci
```

## Stack issues

Please check both the [Stack's issue tracker](https://github.com/commercialhaskell/stack/issues) and the [Stack's FAQ](https://github.com/commercialhaskell/stack/blob/master/doc/faq.md) first before creating an issue.

Be sure to be have an up-to-date Stack version, this could be easily achieved by running the following command:

```bash
stack upgrade --git
```

### Setup command

If the following error message is thrown during the `stack setup` step:

```bash
The program 'ghc' is required but it could not be found
```

You probably need to check your **$PATH** variable (see this [issue](https://github.com/yamafaktory/reflex-starter/issues/2)).

### Build command

If you get issues during the `stack build` step, please try to remove your `~/.stack` directory and also the `.stack-work` directory within the project's directory as explained in the [Stack's FAQ](https://github.com/commercialhaskell/stack/blob/master/doc/faq.md#how-do-i-reset--remove-stack-such-as-to-to-do-a-completely-fresh-build).

## License

Released under the [BSD-3 license](https://opensource.org/licenses/BSD-3-Clause).

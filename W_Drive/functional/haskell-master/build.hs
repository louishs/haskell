-- Initial spam.cabal generated by cabal init. For further documentation,
-- see http://haskell.org/cabal/users-guide/
name: spamfilter
version: 0.1.0.0
synopsis: A Haskell port of Peter Seibel's Common Lisp spam filter
-- description:
license: MIT
license-file: LICENSE
author: Louis Heriz-Smith
maintainer: L.Heriz-Smith1@uni.brighton.ac.uk
-- copyright:
category: Email
build-type: Simple
extra-source-files: README.md
cabal-version: >=1.10
executable 
main-is: json.hs
-- other-modules:
Ghc-Options: -Wall
other-extensions: OverloadedStrings
build-depends: base, bytestring, Aeson, blaze-html, Happstack, html
hs-source-dirs: src
default-language: Haskell2010


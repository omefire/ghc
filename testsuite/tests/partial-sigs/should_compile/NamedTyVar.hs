{-# LANGUAGE PartialTypeSignatures, NamedWildcards #-}
module NamedTyVar where

foo :: (_a, b) -> (a, _b)
foo (x, y) = (x, y)

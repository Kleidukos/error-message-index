{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE TypeFamilies #-}

module Example1 where

data X = A | B

data F x where
  FA :: F A
  FB :: F B

-- Results in error GHC-25897
foo1 = \case
  FA -> True
  FB -> False

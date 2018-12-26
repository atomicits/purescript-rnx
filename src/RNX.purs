-- | Themite provides a simple model-view-action abstraction on top of `purescript-react`:
-- |
-- | - A `Spec` defines a `state` type which acts as the _model_.
-- | - The `Spec` also defines an `action` type which acts as the set of _actions_.
-- | - The `view` is a `Render` function which produces a React element for the current state.
-- | - The `PerformAction` function can be used to update the state based on an action.
-- |
-- | A `Spec` can be created using `simpleSpec`, and turned into a React component class using
-- | `createClass`.
-- |
-- | Thermite also provides type class instances and lens combinators for composing `Spec`s.

module RNX
  ( registerComponent
  ) where

import Prelude

import Effect (Effect)

foreign import registerComponent :: forall component. String -> component -> Effect Unit

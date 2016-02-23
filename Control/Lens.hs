module Control.Lens
    ( module Lens.Micro
    , module Lens.Micro.Extras
    , module Lens.Micro.Mtl
    , module Lens.Micro.TH
    ) where

import Lens.Micro
import Lens.Micro.Extras hiding (preview, view)
import Lens.Micro.Mtl
import Lens.Micro.TH

iso :: Functor f => (s -> a) -> (b -> t) -> (a -> f b) -> s -> f t
iso f g = lens f (\_ b -> g b)

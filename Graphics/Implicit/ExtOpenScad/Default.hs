-- Implicit CAD. Copyright (C) 2011, Christopher Olah (chris@colah.ca)
-- Released under the GNU GPL, see LICENSE

-- We'd like to parse openscad code, with some improvements, for backwards compatability.

module Graphics.Implicit.ExtOpenScad.Default where

import Graphics.Implicit.Definitions
import Graphics.Implicit.ExtOpenScad.Definitions

numericOFunc f = OFunc $ \oObj -> case oObj of
	ONum n -> ONum $ f n
	_ -> OUndefined

module Text.Blaze.Html.Renderer.Pretty
    ( renderHtml
    ) where

import Text.Blaze.Html (Html)
import Text.Blaze.Renderer.Pretty (renderMarkup)

renderHtml :: Monad m => Html m a -> m String
renderHtml = renderMarkup

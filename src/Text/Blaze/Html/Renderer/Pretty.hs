module Text.Blaze.Html.Renderer.Pretty
    ( renderHtml
    , renderHtmlT
    ) where

import Data.Functor.Identity (runIdentity)
import Text.Blaze.Html (Html, HtmlT)
import Text.Blaze.Renderer.Pretty (renderMarkup)

renderHtml :: Html -> String
renderHtml = runIdentity . renderMarkup

renderHtmlT :: Monad m => HtmlT m a -> m String
renderHtmlT = renderMarkup

module Text.Blaze.Html.Renderer.Text
    ( renderHtmlBuilder
    , renderHtmlBuilderWith
    , renderHtml
    , renderHtmlWith
    ) where

import Data.ByteString (ByteString)
import Data.Text (Text)
import Data.Text.Lazy.Builder (Builder)
import Text.Blaze.Html (Html)
import qualified Data.Text.Lazy as TL
import qualified Text.Blaze.Renderer.Text as R

renderHtmlBuilder :: Monad m => Html m a -> m Builder
renderHtmlBuilder = R.renderMarkupBuilder

renderHtmlBuilderWith :: Monad m => (ByteString -> Text) -> Html m a -> m Builder
renderHtmlBuilderWith = R.renderMarkupBuilderWith

renderHtml :: Monad m => Html m a -> m TL.Text
renderHtml = R.renderMarkup

renderHtmlWith :: Monad m => (ByteString -> Text) -> Html m a -> m TL.Text
renderHtmlWith = R.renderMarkupWith

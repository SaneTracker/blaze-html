module Text.Blaze.Html.Renderer.Utf8
    ( renderHtmlBuilder
    , renderHtml
    , renderHtmlToByteStringIO
    ) where

import Blaze.ByteString.Builder (Builder)
import Data.ByteString (ByteString)
import Text.Blaze.Html (Html)
import qualified Data.ByteString.Lazy as BL
import qualified Text.Blaze.Renderer.Utf8 as R

renderHtmlBuilder :: Monad m => Html m a -> m Builder
renderHtmlBuilder = R.renderMarkupBuilder

renderHtml :: Monad m => Html m a -> m BL.ByteString
renderHtml = R.renderMarkup

renderHtmlToByteStringIO :: (ByteString -> IO ()) -> Html IO a -> IO ()
renderHtmlToByteStringIO = R.renderMarkupToByteStringIO

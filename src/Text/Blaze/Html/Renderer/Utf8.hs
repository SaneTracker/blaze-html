module Text.Blaze.Html.Renderer.Utf8
    ( renderHtmlBuilder
    , renderHtmlTBuilder
    , renderHtml
    , renderHtmlT
    , renderHtmlToByteStringIO
    ) where

import Blaze.ByteString.Builder (Builder)
import Data.ByteString (ByteString)
import Data.Functor.Identity (runIdentity)
import Text.Blaze.Html (Html, HtmlT)
import qualified Data.ByteString.Lazy as BL
import qualified Text.Blaze.Renderer.Utf8 as R

renderHtmlBuilder :: Html -> Builder
renderHtmlBuilder = runIdentity . R.renderMarkupBuilder

renderHtmlTBuilder :: Monad m => HtmlT m a -> m Builder
renderHtmlTBuilder = R.renderMarkupBuilder

renderHtml :: Html -> BL.ByteString
renderHtml = runIdentity . R.renderMarkup

renderHtmlT :: Monad m => HtmlT m a -> m BL.ByteString 
renderHtmlT = R.renderMarkup

renderHtmlToByteStringIO :: (ByteString -> IO ()) -> HtmlT IO a -> IO ()
renderHtmlToByteStringIO = R.renderMarkupToByteStringIO

module Text.Blaze.Html.Renderer.Text
    ( renderHtmlBuilder
    , renderHtmlTBuilder
    , renderHtmlBuilderWith
    , renderHtmlTBuilderWith
    , renderHtml
    , renderHtmlT
    , renderHtmlWith
    , renderHtmlTWith
    ) where

import Data.ByteString (ByteString)
import Data.Functor.Identity (runIdentity)
import Data.Text (Text)
import Data.Text.Lazy.Builder (Builder)
import Text.Blaze.Html (Html, HtmlT)
import qualified Data.Text.Lazy as TL
import qualified Text.Blaze.Renderer.Text as R

renderHtmlBuilder :: Html -> Builder
renderHtmlBuilder = runIdentity . R.renderMarkupBuilder

renderHtmlTBuilder :: Monad m => HtmlT m a -> m Builder
renderHtmlTBuilder = R.renderMarkupBuilder

renderHtmlBuilderWith :: (ByteString -> Text) -> Html -> Builder
renderHtmlBuilderWith f = runIdentity . R.renderMarkupBuilderWith f

renderHtmlTBuilderWith :: Monad m => (ByteString -> Text) -> HtmlT m a -> m Builder
renderHtmlTBuilderWith = R.renderMarkupBuilderWith

renderHtml :: Html -> TL.Text
renderHtml = runIdentity . R.renderMarkup

renderHtmlT :: Monad m => HtmlT m a -> m TL.Text
renderHtmlT = R.renderMarkup

renderHtmlWith :: (ByteString -> Text) -> Html -> TL.Text
renderHtmlWith f = runIdentity . R.renderMarkupWith f

renderHtmlTWith :: Monad m => (ByteString -> Text) -> HtmlT m a -> m TL.Text
renderHtmlTWith = R.renderMarkupWith
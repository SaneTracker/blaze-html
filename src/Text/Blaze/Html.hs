module Text.Blaze.Html
    ( module Text.Blaze
    , Html
    , toHtml
    , preEscapedToHtml
    ) where

import Text.Blaze
import Text.Blaze.Internal

type Html = MarkupM

toHtml :: (Monad m, ToMarkup m a) => a -> Html m ()
toHtml = toMarkup

preEscapedToHtml :: (Monad m, ToMarkup m a) => a -> Html m ()
preEscapedToHtml = preEscapedToMarkup

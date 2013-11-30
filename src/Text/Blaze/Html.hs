{-# LANGUAGE MultiParamTypeClasses, FlexibleContexts #-}
module Text.Blaze.Html
    ( module Text.Blaze
    , Html
    , HtmlM
    , HtmlT
    , toHtml
    , preEscapedToHtml
    ) where

import Data.Functor.Identity
import Text.Blaze
import Text.Blaze.Internal

type HtmlT = MarkupM
type HtmlM = MarkupM Identity
type Html = HtmlM ()

toHtml :: (Monad m, ToMarkup a) => a -> HtmlT m ()
toHtml = toMarkup

preEscapedToHtml :: (Monad m, ToMarkup a) => a -> HtmlT m ()
preEscapedToHtml = preEscapedToMarkup

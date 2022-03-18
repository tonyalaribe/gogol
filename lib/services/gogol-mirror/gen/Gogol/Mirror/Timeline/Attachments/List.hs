{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Mirror.Timeline.Attachments.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of attachments for a timeline item.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @mirror.timeline.attachments.list@.
module Gogol.Mirror.Timeline.Attachments.List
    (
    -- * Resource
      MirrorTimelineAttachmentsListResource

    -- ** Constructing a Request
    , newMirrorTimelineAttachmentsList
    , MirrorTimelineAttachmentsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Mirror.Types

-- | A resource alias for @mirror.timeline.attachments.list@ method which the
-- 'MirrorTimelineAttachmentsList' request conforms to.
type MirrorTimelineAttachmentsListResource =
     "mirror" Core.:>
       "v1" Core.:>
         "timeline" Core.:>
           Core.Capture "itemId" Core.Text Core.:>
             "attachments" Core.:>
               Core.QueryParam "alt" Core.AltJSON Core.:>
                 Core.Get '[Core.JSON] AttachmentsListResponse

-- | Returns a list of attachments for a timeline item.
--
-- /See:/ 'newMirrorTimelineAttachmentsList' smart constructor.
newtype MirrorTimelineAttachmentsList = MirrorTimelineAttachmentsList
    {
      -- | The ID of the timeline item whose attachments should be listed.
      itemId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MirrorTimelineAttachmentsList' with the minimum fields required to make a request.
newMirrorTimelineAttachmentsList 
    ::  Core.Text
       -- ^  The ID of the timeline item whose attachments should be listed. See 'itemId'.
    -> MirrorTimelineAttachmentsList
newMirrorTimelineAttachmentsList itemId =
  MirrorTimelineAttachmentsList {itemId = itemId}

instance Core.GoogleRequest
           MirrorTimelineAttachmentsList
         where
        type Rs MirrorTimelineAttachmentsList =
             AttachmentsListResponse
        type Scopes MirrorTimelineAttachmentsList =
             '["https://www.googleapis.com/auth/glass.timeline"]
        requestClient MirrorTimelineAttachmentsList{..}
          = go itemId (Core.Just Core.AltJSON) mirrorService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy MirrorTimelineAttachmentsListResource)
                      Core.mempty


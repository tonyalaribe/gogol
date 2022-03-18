{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AppsTasks.Tasks.Tasklists.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new task list and adds it to the authenticated user\'s task lists.
--
-- /See:/ <https://developers.google.com/tasks/ Tasks API Reference> for @tasks.tasklists.insert@.
module Gogol.AppsTasks.Tasks.Tasklists.Insert
  ( -- * Resource
    TasksTasklistsInsertResource,

    -- ** Constructing a Request
    newTasksTasklistsInsert,
    TasksTasklistsInsert,
  )
where

import Gogol.AppsTasks.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @tasks.tasklists.insert@ method which the
-- 'TasksTasklistsInsert' request conforms to.
type TasksTasklistsInsertResource =
  "tasks"
    Core.:> "v1"
    Core.:> "users"
    Core.:> "@me"
    Core.:> "lists"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] TaskList
    Core.:> Core.Post '[Core.JSON] TaskList

-- | Creates a new task list and adds it to the authenticated user\'s task lists.
--
-- /See:/ 'newTasksTasklistsInsert' smart constructor.
data TasksTasklistsInsert = TasksTasklistsInsert
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: TaskList,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TasksTasklistsInsert' with the minimum fields required to make a request.
newTasksTasklistsInsert ::
  -- |  Multipart request metadata. See 'payload'.
  TaskList ->
  TasksTasklistsInsert
newTasksTasklistsInsert payload =
  TasksTasklistsInsert
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest TasksTasklistsInsert where
  type Rs TasksTasklistsInsert = TaskList
  type
    Scopes TasksTasklistsInsert =
      '["https://www.googleapis.com/auth/tasks"]
  requestClient TasksTasklistsInsert {..} =
    go
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      appsTasksService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy TasksTasklistsInsertResource
          )
          Core.mempty

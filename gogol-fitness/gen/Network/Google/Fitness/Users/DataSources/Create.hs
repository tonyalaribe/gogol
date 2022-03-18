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
-- Module      : Network.Google.Fitness.Users.DataSources.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new data source that is unique across all data sources belonging to this user. A data source is a unique source of sensor data. Data sources can expose raw data coming from hardware sensors on local or companion devices. They can also expose derived data, created by transforming or merging other data sources. Multiple data sources can exist for the same data type. Every data point in every dataset inserted into or read from the Fitness API has an associated data source. Each data source produces a unique stream of dataset updates, with a unique data source identifier. Not all changes to data source affect the data stream ID, so that data collected by updated versions of the same application\/device can still be considered to belong to the same data source. Data sources are identified using a string generated by the server, based on the contents of the source being created. The dataStreamId field should not be set when invoking this method. It will be automatically generated by the server with the
-- correct format. If a dataStreamId is set, it must match the format that the server would generate. This format is a combination of some fields from the data source, and has a specific order. If it doesn\'t match, the request will fail with an error. Specifying a DataType which is not a known type (beginning with \"com.google.\") will create a DataSource with a /custom data type/. Custom data types are only readable by the application that created them. Custom data types are /deprecated/; use standard data types instead. In addition to the data source fields included in the data source ID, the developer project number that is authenticated when creating the data source is included. This developer project number is obfuscated when read by any other developer reading public data types.
--
-- /See:/ <https://developers.google.com/fit/rest/v1/get-started Fitness API Reference> for @fitness.users.dataSources.create@.
module Network.Google.Fitness.Users.DataSources.Create
  ( -- * Resource
    FitnessUsersDataSourcesCreateResource,

    -- ** Constructing a Request
    newFitnessUsersDataSourcesCreate,
    FitnessUsersDataSourcesCreate,
  )
where

import Network.Google.Fitness.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @fitness.users.dataSources.create@ method which the
-- 'FitnessUsersDataSourcesCreate' request conforms to.
type FitnessUsersDataSourcesCreateResource =
  "fitness"
    Core.:> "v1"
    Core.:> "users"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> "dataSources"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] DataSource
    Core.:> Core.Post '[Core.JSON] DataSource

-- | Creates a new data source that is unique across all data sources belonging to this user. A data source is a unique source of sensor data. Data sources can expose raw data coming from hardware sensors on local or companion devices. They can also expose derived data, created by transforming or merging other data sources. Multiple data sources can exist for the same data type. Every data point in every dataset inserted into or read from the Fitness API has an associated data source. Each data source produces a unique stream of dataset updates, with a unique data source identifier. Not all changes to data source affect the data stream ID, so that data collected by updated versions of the same application\/device can still be considered to belong to the same data source. Data sources are identified using a string generated by the server, based on the contents of the source being created. The dataStreamId field should not be set when invoking this method. It will be automatically generated by the server with the
-- correct format. If a dataStreamId is set, it must match the format that the server would generate. This format is a combination of some fields from the data source, and has a specific order. If it doesn\'t match, the request will fail with an error. Specifying a DataType which is not a known type (beginning with \"com.google.\") will create a DataSource with a /custom data type/. Custom data types are only readable by the application that created them. Custom data types are /deprecated/; use standard data types instead. In addition to the data source fields included in the data source ID, the developer project number that is authenticated when creating the data source is included. This developer project number is obfuscated when read by any other developer reading public data types.
--
-- /See:/ 'newFitnessUsersDataSourcesCreate' smart constructor.
data FitnessUsersDataSourcesCreate = FitnessUsersDataSourcesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: DataSource,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Create the data source for the person identified. Use me to indicate the authenticated user. Only me is supported at this time.
    userId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FitnessUsersDataSourcesCreate' with the minimum fields required to make a request.
newFitnessUsersDataSourcesCreate ::
  -- |  Multipart request metadata. See 'payload'.
  DataSource ->
  -- |  Create the data source for the person identified. Use me to indicate the authenticated user. Only me is supported at this time. See 'userId'.
  Core.Text ->
  FitnessUsersDataSourcesCreate
newFitnessUsersDataSourcesCreate payload userId =
  FitnessUsersDataSourcesCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userId = userId
    }

instance
  Core.GoogleRequest
    FitnessUsersDataSourcesCreate
  where
  type Rs FitnessUsersDataSourcesCreate = DataSource
  type
    Scopes FitnessUsersDataSourcesCreate =
      '[ "https://www.googleapis.com/auth/fitness.activity.write",
         "https://www.googleapis.com/auth/fitness.blood_glucose.write",
         "https://www.googleapis.com/auth/fitness.blood_pressure.write",
         "https://www.googleapis.com/auth/fitness.body.write",
         "https://www.googleapis.com/auth/fitness.body_temperature.write",
         "https://www.googleapis.com/auth/fitness.heart_rate.write",
         "https://www.googleapis.com/auth/fitness.location.write",
         "https://www.googleapis.com/auth/fitness.nutrition.write",
         "https://www.googleapis.com/auth/fitness.oxygen_saturation.write",
         "https://www.googleapis.com/auth/fitness.reproductive_health.write",
         "https://www.googleapis.com/auth/fitness.sleep.write"
       ]
  requestClient FitnessUsersDataSourcesCreate {..} =
    go
      userId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      fitnessService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy FitnessUsersDataSourcesCreateResource
          )
          Core.mempty

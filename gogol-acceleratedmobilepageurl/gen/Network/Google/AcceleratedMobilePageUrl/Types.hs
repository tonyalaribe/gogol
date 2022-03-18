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
-- Module      : Network.Google.AcceleratedMobilePageUrl.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.AcceleratedMobilePageUrl.Types
  ( -- * Configuration
    acceleratedMobilePageUrlService,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AmpUrl
    AmpUrl (..),
    newAmpUrl,

    -- ** AmpUrlError
    AmpUrlError (..),
    newAmpUrlError,

    -- ** AmpUrlError_ErrorCode
    AmpUrlError_ErrorCode (..),

    -- ** BatchGetAmpUrlsRequest
    BatchGetAmpUrlsRequest (..),
    newBatchGetAmpUrlsRequest,

    -- ** BatchGetAmpUrlsRequest_LookupStrategy
    BatchGetAmpUrlsRequest_LookupStrategy (..),

    -- ** BatchGetAmpUrlsResponse
    BatchGetAmpUrlsResponse (..),
    newBatchGetAmpUrlsResponse,
  )
where

import Network.Google.AcceleratedMobilePageUrl.Internal.Product
import Network.Google.AcceleratedMobilePageUrl.Internal.Sum
import qualified Network.Google.Prelude as Core

-- | Default request referring to version @v1@ of the Accelerated Mobile Pages (AMP) URL API. This contains the host and root path used as a starting point for constructing service requests.
acceleratedMobilePageUrlService :: Core.ServiceConfig
acceleratedMobilePageUrlService =
  Core.defaultService
    (Core.ServiceId "acceleratedmobilepageurl:v1")
    "acceleratedmobilepageurl.googleapis.com"

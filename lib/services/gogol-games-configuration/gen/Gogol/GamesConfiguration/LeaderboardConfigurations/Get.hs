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
-- Module      : Gogol.GamesConfiguration.LeaderboardConfigurations.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the metadata of the leaderboard configuration with the given ID.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Publishing API Reference> for @gamesConfiguration.leaderboardConfigurations.get@.
module Gogol.GamesConfiguration.LeaderboardConfigurations.Get
    (
    -- * Resource
      GamesConfigurationLeaderboardConfigurationsGetResource

    -- ** Constructing a Request
    , newGamesConfigurationLeaderboardConfigurationsGet
    , GamesConfigurationLeaderboardConfigurationsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.GamesConfiguration.Types

-- | A resource alias for @gamesConfiguration.leaderboardConfigurations.get@ method which the
-- 'GamesConfigurationLeaderboardConfigurationsGet' request conforms to.
type GamesConfigurationLeaderboardConfigurationsGetResource
     =
     "games" Core.:>
       "v1configuration" Core.:>
         "leaderboards" Core.:>
           Core.Capture "leaderboardId" Core.Text Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.Get '[Core.JSON] LeaderboardConfiguration

-- | Retrieves the metadata of the leaderboard configuration with the given ID.
--
-- /See:/ 'newGamesConfigurationLeaderboardConfigurationsGet' smart constructor.
data GamesConfigurationLeaderboardConfigurationsGet = GamesConfigurationLeaderboardConfigurationsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The ID of the leaderboard.
    , leaderboardId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GamesConfigurationLeaderboardConfigurationsGet' with the minimum fields required to make a request.
newGamesConfigurationLeaderboardConfigurationsGet 
    ::  Core.Text
       -- ^  The ID of the leaderboard. See 'leaderboardId'.
    -> GamesConfigurationLeaderboardConfigurationsGet
newGamesConfigurationLeaderboardConfigurationsGet leaderboardId =
  GamesConfigurationLeaderboardConfigurationsGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , leaderboardId = leaderboardId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           GamesConfigurationLeaderboardConfigurationsGet
         where
        type Rs
               GamesConfigurationLeaderboardConfigurationsGet
             = LeaderboardConfiguration
        type Scopes
               GamesConfigurationLeaderboardConfigurationsGet
             =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient
          GamesConfigurationLeaderboardConfigurationsGet{..}
          = go leaderboardId xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              gamesConfigurationService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           GamesConfigurationLeaderboardConfigurationsGetResource)
                      Core.mempty


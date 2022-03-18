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
-- Module      : Network.Google.ShoppingContent.Content.Liasettings.Listposdataproviders
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of POS data providers that have active settings for the all eiligible countries.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.liasettings.listposdataproviders@.
module Network.Google.ShoppingContent.Content.Liasettings.Listposdataproviders
  ( -- * Resource
    ContentLiasettingsListposdataprovidersResource,

    -- ** Constructing a Request
    newContentLiasettingsListposdataproviders,
    ContentLiasettingsListposdataproviders,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.liasettings.listposdataproviders@ method which the
-- 'ContentLiasettingsListposdataproviders' request conforms to.
type ContentLiasettingsListposdataprovidersResource =
  "content"
    Core.:> "v2.1"
    Core.:> "liasettings"
    Core.:> "posdataproviders"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              LiasettingsListPosDataProvidersResponse

-- | Retrieves the list of POS data providers that have active settings for the all eiligible countries.
--
-- /See:/ 'newContentLiasettingsListposdataproviders' smart constructor.
data ContentLiasettingsListposdataproviders = ContentLiasettingsListposdataproviders
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentLiasettingsListposdataproviders' with the minimum fields required to make a request.
newContentLiasettingsListposdataproviders ::
  ContentLiasettingsListposdataproviders
newContentLiasettingsListposdataproviders =
  ContentLiasettingsListposdataproviders
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ContentLiasettingsListposdataproviders
  where
  type
    Rs ContentLiasettingsListposdataproviders =
      LiasettingsListPosDataProvidersResponse
  type
    Scopes ContentLiasettingsListposdataproviders =
      '["https://www.googleapis.com/auth/content"]
  requestClient
    ContentLiasettingsListposdataproviders {..} =
      go
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        shoppingContentService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  ContentLiasettingsListposdataprovidersResource
            )
            Core.mempty
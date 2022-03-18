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
-- Module      : Network.Google.ServiceConsumerManagement.Operations.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn\'t support this method, it returns @google.rpc.Code.UNIMPLEMENTED@.
--
-- /See:/ <https://cloud.google.com/service-consumer-management/docs/overview Service Consumer Management API Reference> for @serviceconsumermanagement.operations.delete@.
module Network.Google.ServiceConsumerManagement.Operations.Delete
  ( -- * Resource
    ServiceConsumerManagementOperationsDeleteResource,

    -- ** Constructing a Request
    newServiceConsumerManagementOperationsDelete,
    ServiceConsumerManagementOperationsDelete,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.ServiceConsumerManagement.Types

-- | A resource alias for @serviceconsumermanagement.operations.delete@ method which the
-- 'ServiceConsumerManagementOperationsDelete' request conforms to.
type ServiceConsumerManagementOperationsDeleteResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn\'t support this method, it returns @google.rpc.Code.UNIMPLEMENTED@.
--
-- /See:/ 'newServiceConsumerManagementOperationsDelete' smart constructor.
data ServiceConsumerManagementOperationsDelete = ServiceConsumerManagementOperationsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name of the operation resource to be deleted.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceConsumerManagementOperationsDelete' with the minimum fields required to make a request.
newServiceConsumerManagementOperationsDelete ::
  -- |  The name of the operation resource to be deleted. See 'name'.
  Core.Text ->
  ServiceConsumerManagementOperationsDelete
newServiceConsumerManagementOperationsDelete name =
  ServiceConsumerManagementOperationsDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ServiceConsumerManagementOperationsDelete
  where
  type
    Rs ServiceConsumerManagementOperationsDelete =
      Empty
  type
    Scopes ServiceConsumerManagementOperationsDelete =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    ServiceConsumerManagementOperationsDelete {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        serviceConsumerManagementService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  ServiceConsumerManagementOperationsDeleteResource
            )
            Core.mempty
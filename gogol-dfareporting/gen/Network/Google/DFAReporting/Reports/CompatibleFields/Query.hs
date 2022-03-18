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
-- Module      : Network.Google.DFAReporting.Reports.CompatibleFields.Query
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the fields that are compatible to be selected in the respective sections of a report criteria, given the fields already selected in the input report and user permissions.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.reports.compatibleFields.query@.
module Network.Google.DFAReporting.Reports.CompatibleFields.Query
  ( -- * Resource
    DFAReportingReportsCompatibleFieldsQueryResource,

    -- ** Constructing a Request
    newDFAReportingReportsCompatibleFieldsQuery,
    DFAReportingReportsCompatibleFieldsQuery,
  )
where

import Network.Google.DFAReporting.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @dfareporting.reports.compatibleFields.query@ method which the
-- 'DFAReportingReportsCompatibleFieldsQuery' request conforms to.
type DFAReportingReportsCompatibleFieldsQueryResource =
  "dfareporting"
    Core.:> "v3.5"
    Core.:> "userprofiles"
    Core.:> Core.Capture "profileId" Core.Int64
    Core.:> "reports"
    Core.:> "compatiblefields"
    Core.:> "query"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Report
    Core.:> Core.Post '[Core.JSON] CompatibleFields

-- | Returns the fields that are compatible to be selected in the respective sections of a report criteria, given the fields already selected in the input report and user permissions.
--
-- /See:/ 'newDFAReportingReportsCompatibleFieldsQuery' smart constructor.
data DFAReportingReportsCompatibleFieldsQuery = DFAReportingReportsCompatibleFieldsQuery
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: Report,
    -- | The Campaign Manager 360 user profile ID.
    profileId :: Core.Int64,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingReportsCompatibleFieldsQuery' with the minimum fields required to make a request.
newDFAReportingReportsCompatibleFieldsQuery ::
  -- |  Multipart request metadata. See 'payload'.
  Report ->
  -- |  The Campaign Manager 360 user profile ID. See 'profileId'.
  Core.Int64 ->
  DFAReportingReportsCompatibleFieldsQuery
newDFAReportingReportsCompatibleFieldsQuery payload profileId =
  DFAReportingReportsCompatibleFieldsQuery
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      profileId = profileId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DFAReportingReportsCompatibleFieldsQuery
  where
  type
    Rs DFAReportingReportsCompatibleFieldsQuery =
      CompatibleFields
  type
    Scopes DFAReportingReportsCompatibleFieldsQuery =
      '["https://www.googleapis.com/auth/dfareporting"]
  requestClient
    DFAReportingReportsCompatibleFieldsQuery {..} =
      go
        profileId
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        dFAReportingService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  DFAReportingReportsCompatibleFieldsQueryResource
            )
            Core.mempty
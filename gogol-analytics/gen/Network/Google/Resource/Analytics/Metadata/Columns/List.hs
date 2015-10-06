{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Analytics.Metadata.Columns.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all columns for a report type
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsMetadataColumnsList@.
module Network.Google.Resource.Analytics.Metadata.Columns.List
    (
    -- * REST Resource
      MetadataColumnsListResource

    -- * Creating a Request
    , metadataColumnsList'
    , MetadataColumnsList'

    -- * Request Lenses
    , mclQuotaUser
    , mclPrettyPrint
    , mclUserIP
    , mclKey
    , mclOAuthToken
    , mclReportType
    , mclFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsMetadataColumnsList@ which the
-- 'MetadataColumnsList'' request conforms to.
type MetadataColumnsListResource =
     "metadata" :>
       Capture "reportType" Text :>
         "columns" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Columns

-- | Lists all columns for a report type
--
-- /See:/ 'metadataColumnsList'' smart constructor.
data MetadataColumnsList' = MetadataColumnsList'
    { _mclQuotaUser   :: !(Maybe Text)
    , _mclPrettyPrint :: !Bool
    , _mclUserIP      :: !(Maybe Text)
    , _mclKey         :: !(Maybe AuthKey)
    , _mclOAuthToken  :: !(Maybe OAuthToken)
    , _mclReportType  :: !Text
    , _mclFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MetadataColumnsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mclQuotaUser'
--
-- * 'mclPrettyPrint'
--
-- * 'mclUserIP'
--
-- * 'mclKey'
--
-- * 'mclOAuthToken'
--
-- * 'mclReportType'
--
-- * 'mclFields'
metadataColumnsList'
    :: Text -- ^ 'reportType'
    -> MetadataColumnsList'
metadataColumnsList' pMclReportType_ =
    MetadataColumnsList'
    { _mclQuotaUser = Nothing
    , _mclPrettyPrint = False
    , _mclUserIP = Nothing
    , _mclKey = Nothing
    , _mclOAuthToken = Nothing
    , _mclReportType = pMclReportType_
    , _mclFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mclQuotaUser :: Lens' MetadataColumnsList' (Maybe Text)
mclQuotaUser
  = lens _mclQuotaUser (\ s a -> s{_mclQuotaUser = a})

-- | Returns response with indentations and line breaks.
mclPrettyPrint :: Lens' MetadataColumnsList' Bool
mclPrettyPrint
  = lens _mclPrettyPrint
      (\ s a -> s{_mclPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mclUserIP :: Lens' MetadataColumnsList' (Maybe Text)
mclUserIP
  = lens _mclUserIP (\ s a -> s{_mclUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mclKey :: Lens' MetadataColumnsList' (Maybe AuthKey)
mclKey = lens _mclKey (\ s a -> s{_mclKey = a})

-- | OAuth 2.0 token for the current user.
mclOAuthToken :: Lens' MetadataColumnsList' (Maybe OAuthToken)
mclOAuthToken
  = lens _mclOAuthToken
      (\ s a -> s{_mclOAuthToken = a})

-- | Report type. Allowed Values: \'ga\'. Where \'ga\' corresponds to the
-- Core Reporting API
mclReportType :: Lens' MetadataColumnsList' Text
mclReportType
  = lens _mclReportType
      (\ s a -> s{_mclReportType = a})

-- | Selector specifying which fields to include in a partial response.
mclFields :: Lens' MetadataColumnsList' (Maybe Text)
mclFields
  = lens _mclFields (\ s a -> s{_mclFields = a})

instance GoogleAuth MetadataColumnsList' where
        authKey = mclKey . _Just
        authToken = mclOAuthToken . _Just

instance GoogleRequest MetadataColumnsList' where
        type Rs MetadataColumnsList' = Columns
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u MetadataColumnsList'{..}
          = go _mclReportType _mclQuotaUser
              (Just _mclPrettyPrint)
              _mclUserIP
              _mclFields
              _mclKey
              _mclOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MetadataColumnsListResource)
                      r
                      u
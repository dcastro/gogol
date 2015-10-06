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
-- Module      : Network.Google.Resource.DFAReporting.ChangeLogs.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of change logs.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingChangeLogsList@.
module Network.Google.Resource.DFAReporting.ChangeLogs.List
    (
    -- * REST Resource
      ChangeLogsListResource

    -- * Creating a Request
    , changeLogsList'
    , ChangeLogsList'

    -- * Request Lenses
    , cllUserProFileIds
    , cllQuotaUser
    , cllPrettyPrint
    , cllObjectType
    , cllUserIP
    , cllSearchString
    , cllIds
    , cllProFileId
    , cllAction
    , cllMinChangeTime
    , cllKey
    , cllMaxChangeTime
    , cllPageToken
    , cllOAuthToken
    , cllObjectIds
    , cllMaxResults
    , cllFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingChangeLogsList@ which the
-- 'ChangeLogsList'' request conforms to.
type ChangeLogsListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "changeLogs" :>
           QueryParams "userProfileIds" Int64 :>
             QueryParam "objectType" ChangeLogsListObjectType :>
               QueryParam "searchString" Text :>
                 QueryParams "ids" Int64 :>
                   QueryParam "action" ChangeLogsListAction :>
                     QueryParam "minChangeTime" Text :>
                       QueryParam "maxChangeTime" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParams "objectIds" Int64 :>
                             QueryParam "maxResults" Int32 :>
                               QueryParam "quotaUser" Text :>
                                 QueryParam "prettyPrint" Bool :>
                                   QueryParam "userIp" Text :>
                                     QueryParam "fields" Text :>
                                       QueryParam "key" AuthKey :>
                                         QueryParam "oauth_token" OAuthToken :>
                                           QueryParam "alt" AltJSON :>
                                             Get '[JSON] ChangeLogsListResponse

-- | Retrieves a list of change logs.
--
-- /See:/ 'changeLogsList'' smart constructor.
data ChangeLogsList' = ChangeLogsList'
    { _cllUserProFileIds :: !(Maybe [Int64])
    , _cllQuotaUser      :: !(Maybe Text)
    , _cllPrettyPrint    :: !Bool
    , _cllObjectType     :: !(Maybe ChangeLogsListObjectType)
    , _cllUserIP         :: !(Maybe Text)
    , _cllSearchString   :: !(Maybe Text)
    , _cllIds            :: !(Maybe [Int64])
    , _cllProFileId      :: !Int64
    , _cllAction         :: !(Maybe ChangeLogsListAction)
    , _cllMinChangeTime  :: !(Maybe Text)
    , _cllKey            :: !(Maybe AuthKey)
    , _cllMaxChangeTime  :: !(Maybe Text)
    , _cllPageToken      :: !(Maybe Text)
    , _cllOAuthToken     :: !(Maybe OAuthToken)
    , _cllObjectIds      :: !(Maybe [Int64])
    , _cllMaxResults     :: !(Maybe Int32)
    , _cllFields         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChangeLogsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cllUserProFileIds'
--
-- * 'cllQuotaUser'
--
-- * 'cllPrettyPrint'
--
-- * 'cllObjectType'
--
-- * 'cllUserIP'
--
-- * 'cllSearchString'
--
-- * 'cllIds'
--
-- * 'cllProFileId'
--
-- * 'cllAction'
--
-- * 'cllMinChangeTime'
--
-- * 'cllKey'
--
-- * 'cllMaxChangeTime'
--
-- * 'cllPageToken'
--
-- * 'cllOAuthToken'
--
-- * 'cllObjectIds'
--
-- * 'cllMaxResults'
--
-- * 'cllFields'
changeLogsList'
    :: Int64 -- ^ 'profileId'
    -> ChangeLogsList'
changeLogsList' pCllProFileId_ =
    ChangeLogsList'
    { _cllUserProFileIds = Nothing
    , _cllQuotaUser = Nothing
    , _cllPrettyPrint = True
    , _cllObjectType = Nothing
    , _cllUserIP = Nothing
    , _cllSearchString = Nothing
    , _cllIds = Nothing
    , _cllProFileId = pCllProFileId_
    , _cllAction = Nothing
    , _cllMinChangeTime = Nothing
    , _cllKey = Nothing
    , _cllMaxChangeTime = Nothing
    , _cllPageToken = Nothing
    , _cllOAuthToken = Nothing
    , _cllObjectIds = Nothing
    , _cllMaxResults = Nothing
    , _cllFields = Nothing
    }

-- | Select only change logs with these user profile IDs.
cllUserProFileIds :: Lens' ChangeLogsList' [Int64]
cllUserProFileIds
  = lens _cllUserProFileIds
      (\ s a -> s{_cllUserProFileIds = a})
      . _Default
      . _Coerce

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cllQuotaUser :: Lens' ChangeLogsList' (Maybe Text)
cllQuotaUser
  = lens _cllQuotaUser (\ s a -> s{_cllQuotaUser = a})

-- | Returns response with indentations and line breaks.
cllPrettyPrint :: Lens' ChangeLogsList' Bool
cllPrettyPrint
  = lens _cllPrettyPrint
      (\ s a -> s{_cllPrettyPrint = a})

-- | Select only change logs with the specified object type.
cllObjectType :: Lens' ChangeLogsList' (Maybe ChangeLogsListObjectType)
cllObjectType
  = lens _cllObjectType
      (\ s a -> s{_cllObjectType = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cllUserIP :: Lens' ChangeLogsList' (Maybe Text)
cllUserIP
  = lens _cllUserIP (\ s a -> s{_cllUserIP = a})

-- | Select only change logs whose object ID, user name, old or new values
-- match the search string.
cllSearchString :: Lens' ChangeLogsList' (Maybe Text)
cllSearchString
  = lens _cllSearchString
      (\ s a -> s{_cllSearchString = a})

-- | Select only change logs with these IDs.
cllIds :: Lens' ChangeLogsList' [Int64]
cllIds
  = lens _cllIds (\ s a -> s{_cllIds = a}) . _Default .
      _Coerce

-- | User profile ID associated with this request.
cllProFileId :: Lens' ChangeLogsList' Int64
cllProFileId
  = lens _cllProFileId (\ s a -> s{_cllProFileId = a})

-- | Select only change logs with the specified action.
cllAction :: Lens' ChangeLogsList' (Maybe ChangeLogsListAction)
cllAction
  = lens _cllAction (\ s a -> s{_cllAction = a})

-- | Select only change logs whose change time is before the specified
-- minChangeTime.The time should be formatted as an RFC3339 date\/time
-- string. For example, for 10:54 PM on July 18th, 2015, in the
-- America\/New York time zone, the format is
-- \"2015-07-18T22:54:00-04:00\". In other words, the year, month, day, the
-- letter T, the hour (24-hour clock system), minute, second, and then the
-- time zone offset.
cllMinChangeTime :: Lens' ChangeLogsList' (Maybe Text)
cllMinChangeTime
  = lens _cllMinChangeTime
      (\ s a -> s{_cllMinChangeTime = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cllKey :: Lens' ChangeLogsList' (Maybe AuthKey)
cllKey = lens _cllKey (\ s a -> s{_cllKey = a})

-- | Select only change logs whose change time is before the specified
-- maxChangeTime.The time should be formatted as an RFC3339 date\/time
-- string. For example, for 10:54 PM on July 18th, 2015, in the
-- America\/New York time zone, the format is
-- \"2015-07-18T22:54:00-04:00\". In other words, the year, month, day, the
-- letter T, the hour (24-hour clock system), minute, second, and then the
-- time zone offset.
cllMaxChangeTime :: Lens' ChangeLogsList' (Maybe Text)
cllMaxChangeTime
  = lens _cllMaxChangeTime
      (\ s a -> s{_cllMaxChangeTime = a})

-- | Value of the nextPageToken from the previous result page.
cllPageToken :: Lens' ChangeLogsList' (Maybe Text)
cllPageToken
  = lens _cllPageToken (\ s a -> s{_cllPageToken = a})

-- | OAuth 2.0 token for the current user.
cllOAuthToken :: Lens' ChangeLogsList' (Maybe OAuthToken)
cllOAuthToken
  = lens _cllOAuthToken
      (\ s a -> s{_cllOAuthToken = a})

-- | Select only change logs with these object IDs.
cllObjectIds :: Lens' ChangeLogsList' [Int64]
cllObjectIds
  = lens _cllObjectIds (\ s a -> s{_cllObjectIds = a})
      . _Default
      . _Coerce

-- | Maximum number of results to return.
cllMaxResults :: Lens' ChangeLogsList' (Maybe Int32)
cllMaxResults
  = lens _cllMaxResults
      (\ s a -> s{_cllMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
cllFields :: Lens' ChangeLogsList' (Maybe Text)
cllFields
  = lens _cllFields (\ s a -> s{_cllFields = a})

instance GoogleAuth ChangeLogsList' where
        authKey = cllKey . _Just
        authToken = cllOAuthToken . _Just

instance GoogleRequest ChangeLogsList' where
        type Rs ChangeLogsList' = ChangeLogsListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u ChangeLogsList'{..}
          = go _cllProFileId (_cllUserProFileIds ^. _Default)
              _cllObjectType
              _cllSearchString
              (_cllIds ^. _Default)
              _cllAction
              _cllMinChangeTime
              _cllMaxChangeTime
              _cllPageToken
              (_cllObjectIds ^. _Default)
              _cllMaxResults
              _cllQuotaUser
              (Just _cllPrettyPrint)
              _cllUserIP
              _cllFields
              _cllKey
              _cllOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ChangeLogsListResource)
                      r
                      u
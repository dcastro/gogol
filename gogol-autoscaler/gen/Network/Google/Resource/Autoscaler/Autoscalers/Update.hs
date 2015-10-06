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
-- Module      : Network.Google.Resource.Autoscaler.Autoscalers.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update the entire content of the Autoscaler resource.
--
-- /See:/ <http://developers.google.com/compute/docs/autoscaler Google Compute Engine Autoscaler API Reference> for @AutoscalerAutoscalersUpdate@.
module Network.Google.Resource.Autoscaler.Autoscalers.Update
    (
    -- * REST Resource
      AutoscalersUpdateResource

    -- * Creating a Request
    , autoscalersUpdate'
    , AutoscalersUpdate'

    -- * Request Lenses
    , auQuotaUser
    , auPrettyPrint
    , auProject
    , auUserIP
    , auZone
    , auPayload
    , auKey
    , auAutoscaler
    , auOAuthToken
    , auFields
    ) where

import           Network.Google.Autoscaler.Types
import           Network.Google.Prelude

-- | A resource alias for @AutoscalerAutoscalersUpdate@ which the
-- 'AutoscalersUpdate'' request conforms to.
type AutoscalersUpdateResource =
     "projects" :>
       Capture "project" Text :>
         "zones" :>
           Capture "zone" Text :>
             "autoscalers" :>
               Capture "autoscaler" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] Autoscaler :>
                                 Put '[JSON] Operation

-- | Update the entire content of the Autoscaler resource.
--
-- /See:/ 'autoscalersUpdate'' smart constructor.
data AutoscalersUpdate' = AutoscalersUpdate'
    { _auQuotaUser   :: !(Maybe Text)
    , _auPrettyPrint :: !Bool
    , _auProject     :: !Text
    , _auUserIP      :: !(Maybe Text)
    , _auZone        :: !Text
    , _auPayload     :: !Autoscaler
    , _auKey         :: !(Maybe AuthKey)
    , _auAutoscaler  :: !Text
    , _auOAuthToken  :: !(Maybe OAuthToken)
    , _auFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AutoscalersUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'auQuotaUser'
--
-- * 'auPrettyPrint'
--
-- * 'auProject'
--
-- * 'auUserIP'
--
-- * 'auZone'
--
-- * 'auPayload'
--
-- * 'auKey'
--
-- * 'auAutoscaler'
--
-- * 'auOAuthToken'
--
-- * 'auFields'
autoscalersUpdate'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> Autoscaler -- ^ 'payload'
    -> Text -- ^ 'autoscaler'
    -> AutoscalersUpdate'
autoscalersUpdate' pAuProject_ pAuZone_ pAuPayload_ pAuAutoscaler_ =
    AutoscalersUpdate'
    { _auQuotaUser = Nothing
    , _auPrettyPrint = True
    , _auProject = pAuProject_
    , _auUserIP = Nothing
    , _auZone = pAuZone_
    , _auPayload = pAuPayload_
    , _auKey = Nothing
    , _auAutoscaler = pAuAutoscaler_
    , _auOAuthToken = Nothing
    , _auFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
auQuotaUser :: Lens' AutoscalersUpdate' (Maybe Text)
auQuotaUser
  = lens _auQuotaUser (\ s a -> s{_auQuotaUser = a})

-- | Returns response with indentations and line breaks.
auPrettyPrint :: Lens' AutoscalersUpdate' Bool
auPrettyPrint
  = lens _auPrettyPrint
      (\ s a -> s{_auPrettyPrint = a})

-- | Project ID of Autoscaler resource.
auProject :: Lens' AutoscalersUpdate' Text
auProject
  = lens _auProject (\ s a -> s{_auProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
auUserIP :: Lens' AutoscalersUpdate' (Maybe Text)
auUserIP = lens _auUserIP (\ s a -> s{_auUserIP = a})

-- | Zone name of Autoscaler resource.
auZone :: Lens' AutoscalersUpdate' Text
auZone = lens _auZone (\ s a -> s{_auZone = a})

-- | Multipart request metadata.
auPayload :: Lens' AutoscalersUpdate' Autoscaler
auPayload
  = lens _auPayload (\ s a -> s{_auPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
auKey :: Lens' AutoscalersUpdate' (Maybe AuthKey)
auKey = lens _auKey (\ s a -> s{_auKey = a})

-- | Name of the Autoscaler resource.
auAutoscaler :: Lens' AutoscalersUpdate' Text
auAutoscaler
  = lens _auAutoscaler (\ s a -> s{_auAutoscaler = a})

-- | OAuth 2.0 token for the current user.
auOAuthToken :: Lens' AutoscalersUpdate' (Maybe OAuthToken)
auOAuthToken
  = lens _auOAuthToken (\ s a -> s{_auOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
auFields :: Lens' AutoscalersUpdate' (Maybe Text)
auFields = lens _auFields (\ s a -> s{_auFields = a})

instance GoogleAuth AutoscalersUpdate' where
        authKey = auKey . _Just
        authToken = auOAuthToken . _Just

instance GoogleRequest AutoscalersUpdate' where
        type Rs AutoscalersUpdate' = Operation
        request = requestWithRoute defReq autoscalerURL
        requestWithRoute r u AutoscalersUpdate'{..}
          = go _auProject _auZone _auAutoscaler _auQuotaUser
              (Just _auPrettyPrint)
              _auUserIP
              _auFields
              _auKey
              _auOAuthToken
              (Just AltJSON)
              _auPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AutoscalersUpdateResource)
                      r
                      u
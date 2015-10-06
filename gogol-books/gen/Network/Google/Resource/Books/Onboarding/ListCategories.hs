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
-- Module      : Network.Google.Resource.Books.Onboarding.ListCategories
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List categories for onboarding experience.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksOnboardingListCategories@.
module Network.Google.Resource.Books.Onboarding.ListCategories
    (
    -- * REST Resource
      OnboardingListCategoriesResource

    -- * Creating a Request
    , onboardingListCategories'
    , OnboardingListCategories'

    -- * Request Lenses
    , olcQuotaUser
    , olcPrettyPrint
    , olcUserIP
    , olcLocale
    , olcKey
    , olcOAuthToken
    , olcFields
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksOnboardingListCategories@ which the
-- 'OnboardingListCategories'' request conforms to.
type OnboardingListCategoriesResource =
     "onboarding" :>
       "listCategories" :>
         QueryParam "locale" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Category

-- | List categories for onboarding experience.
--
-- /See:/ 'onboardingListCategories'' smart constructor.
data OnboardingListCategories' = OnboardingListCategories'
    { _olcQuotaUser   :: !(Maybe Text)
    , _olcPrettyPrint :: !Bool
    , _olcUserIP      :: !(Maybe Text)
    , _olcLocale      :: !(Maybe Text)
    , _olcKey         :: !(Maybe AuthKey)
    , _olcOAuthToken  :: !(Maybe OAuthToken)
    , _olcFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OnboardingListCategories'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olcQuotaUser'
--
-- * 'olcPrettyPrint'
--
-- * 'olcUserIP'
--
-- * 'olcLocale'
--
-- * 'olcKey'
--
-- * 'olcOAuthToken'
--
-- * 'olcFields'
onboardingListCategories'
    :: OnboardingListCategories'
onboardingListCategories' =
    OnboardingListCategories'
    { _olcQuotaUser = Nothing
    , _olcPrettyPrint = True
    , _olcUserIP = Nothing
    , _olcLocale = Nothing
    , _olcKey = Nothing
    , _olcOAuthToken = Nothing
    , _olcFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
olcQuotaUser :: Lens' OnboardingListCategories' (Maybe Text)
olcQuotaUser
  = lens _olcQuotaUser (\ s a -> s{_olcQuotaUser = a})

-- | Returns response with indentations and line breaks.
olcPrettyPrint :: Lens' OnboardingListCategories' Bool
olcPrettyPrint
  = lens _olcPrettyPrint
      (\ s a -> s{_olcPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
olcUserIP :: Lens' OnboardingListCategories' (Maybe Text)
olcUserIP
  = lens _olcUserIP (\ s a -> s{_olcUserIP = a})

-- | ISO-639-1 language and ISO-3166-1 country code. Default is en-US if
-- unset.
olcLocale :: Lens' OnboardingListCategories' (Maybe Text)
olcLocale
  = lens _olcLocale (\ s a -> s{_olcLocale = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
olcKey :: Lens' OnboardingListCategories' (Maybe AuthKey)
olcKey = lens _olcKey (\ s a -> s{_olcKey = a})

-- | OAuth 2.0 token for the current user.
olcOAuthToken :: Lens' OnboardingListCategories' (Maybe OAuthToken)
olcOAuthToken
  = lens _olcOAuthToken
      (\ s a -> s{_olcOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
olcFields :: Lens' OnboardingListCategories' (Maybe Text)
olcFields
  = lens _olcFields (\ s a -> s{_olcFields = a})

instance GoogleAuth OnboardingListCategories' where
        authKey = olcKey . _Just
        authToken = olcOAuthToken . _Just

instance GoogleRequest OnboardingListCategories'
         where
        type Rs OnboardingListCategories' = Category
        request = requestWithRoute defReq booksURL
        requestWithRoute r u OnboardingListCategories'{..}
          = go _olcLocale _olcQuotaUser (Just _olcPrettyPrint)
              _olcUserIP
              _olcFields
              _olcKey
              _olcOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy OnboardingListCategoriesResource)
                      r
                      u
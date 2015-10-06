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
-- Module      : Network.Google.Resource.Calendar.Events.Watch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Watch for changes to Events resources.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @CalendarEventsWatch@.
module Network.Google.Resource.Calendar.Events.Watch
    (
    -- * REST Resource
      EventsWatchResource

    -- * Creating a Request
    , eventsWatch'
    , EventsWatch'

    -- * Request Lenses
    , ewSyncToken
    , ewQuotaUser
    , ewCalendarId
    , ewPrettyPrint
    , ewTimeMin
    , ewOrderBy
    , ewSingleEvents
    , ewPrivateExtendedProperty
    , ewUserIP
    , ewShowDeleted
    , ewPayload
    , ewQ
    , ewSharedExtendedProperty
    , ewMaxAttendees
    , ewKey
    , ewICalUId
    , ewUpdatedMin
    , ewPageToken
    , ewTimeZone
    , ewOAuthToken
    , ewShowHiddenInvitations
    , ewMaxResults
    , ewAlwaysIncludeEmail
    , ewTimeMax
    , ewFields
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @CalendarEventsWatch@ which the
-- 'EventsWatch'' request conforms to.
type EventsWatchResource =
     "calendars" :>
       Capture "calendarId" Text :>
         "events" :>
           "watch" :>
             QueryParam "syncToken" Text :>
               QueryParam "timeMin" DateTime' :>
                 QueryParam "orderBy" EventsWatchOrderBy :>
                   QueryParam "singleEvents" Bool :>
                     QueryParams "privateExtendedProperty" Text :>
                       QueryParam "showDeleted" Bool :>
                         QueryParam "q" Text :>
                           QueryParams "sharedExtendedProperty" Text :>
                             QueryParam "maxAttendees" Int32 :>
                               QueryParam "iCalUID" Text :>
                                 QueryParam "updatedMin" DateTime' :>
                                   QueryParam "pageToken" Text :>
                                     QueryParam "timeZone" Text :>
                                       QueryParam "showHiddenInvitations" Bool
                                         :>
                                         QueryParam "maxResults" Int32 :>
                                           QueryParam "alwaysIncludeEmail" Bool
                                             :>
                                             QueryParam "timeMax" DateTime' :>
                                               QueryParam "quotaUser" Text :>
                                                 QueryParam "prettyPrint" Bool
                                                   :>
                                                   QueryParam "userIp" Text :>
                                                     QueryParam "fields" Text :>
                                                       QueryParam "key" AuthKey
                                                         :>
                                                         QueryParam
                                                           "oauth_token"
                                                           OAuthToken
                                                           :>
                                                           QueryParam "alt"
                                                             AltJSON
                                                             :>
                                                             ReqBody '[JSON]
                                                               Channel
                                                               :>
                                                               Post '[JSON]
                                                                 Channel

-- | Watch for changes to Events resources.
--
-- /See:/ 'eventsWatch'' smart constructor.
data EventsWatch' = EventsWatch'
    { _ewSyncToken               :: !(Maybe Text)
    , _ewQuotaUser               :: !(Maybe Text)
    , _ewCalendarId              :: !Text
    , _ewPrettyPrint             :: !Bool
    , _ewTimeMin                 :: !(Maybe DateTime')
    , _ewOrderBy                 :: !(Maybe EventsWatchOrderBy)
    , _ewSingleEvents            :: !(Maybe Bool)
    , _ewPrivateExtendedProperty :: !(Maybe [Text])
    , _ewUserIP                  :: !(Maybe Text)
    , _ewShowDeleted             :: !(Maybe Bool)
    , _ewPayload                 :: !Channel
    , _ewQ                       :: !(Maybe Text)
    , _ewSharedExtendedProperty  :: !(Maybe [Text])
    , _ewMaxAttendees            :: !(Maybe Int32)
    , _ewKey                     :: !(Maybe AuthKey)
    , _ewICalUId                 :: !(Maybe Text)
    , _ewUpdatedMin              :: !(Maybe DateTime')
    , _ewPageToken               :: !(Maybe Text)
    , _ewTimeZone                :: !(Maybe Text)
    , _ewOAuthToken              :: !(Maybe OAuthToken)
    , _ewShowHiddenInvitations   :: !(Maybe Bool)
    , _ewMaxResults              :: !(Maybe Int32)
    , _ewAlwaysIncludeEmail      :: !(Maybe Bool)
    , _ewTimeMax                 :: !(Maybe DateTime')
    , _ewFields                  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventsWatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ewSyncToken'
--
-- * 'ewQuotaUser'
--
-- * 'ewCalendarId'
--
-- * 'ewPrettyPrint'
--
-- * 'ewTimeMin'
--
-- * 'ewOrderBy'
--
-- * 'ewSingleEvents'
--
-- * 'ewPrivateExtendedProperty'
--
-- * 'ewUserIP'
--
-- * 'ewShowDeleted'
--
-- * 'ewPayload'
--
-- * 'ewQ'
--
-- * 'ewSharedExtendedProperty'
--
-- * 'ewMaxAttendees'
--
-- * 'ewKey'
--
-- * 'ewICalUId'
--
-- * 'ewUpdatedMin'
--
-- * 'ewPageToken'
--
-- * 'ewTimeZone'
--
-- * 'ewOAuthToken'
--
-- * 'ewShowHiddenInvitations'
--
-- * 'ewMaxResults'
--
-- * 'ewAlwaysIncludeEmail'
--
-- * 'ewTimeMax'
--
-- * 'ewFields'
eventsWatch'
    :: Text -- ^ 'calendarId'
    -> Channel -- ^ 'payload'
    -> EventsWatch'
eventsWatch' pEwCalendarId_ pEwPayload_ =
    EventsWatch'
    { _ewSyncToken = Nothing
    , _ewQuotaUser = Nothing
    , _ewCalendarId = pEwCalendarId_
    , _ewPrettyPrint = True
    , _ewTimeMin = Nothing
    , _ewOrderBy = Nothing
    , _ewSingleEvents = Nothing
    , _ewPrivateExtendedProperty = Nothing
    , _ewUserIP = Nothing
    , _ewShowDeleted = Nothing
    , _ewPayload = pEwPayload_
    , _ewQ = Nothing
    , _ewSharedExtendedProperty = Nothing
    , _ewMaxAttendees = Nothing
    , _ewKey = Nothing
    , _ewICalUId = Nothing
    , _ewUpdatedMin = Nothing
    , _ewPageToken = Nothing
    , _ewTimeZone = Nothing
    , _ewOAuthToken = Nothing
    , _ewShowHiddenInvitations = Nothing
    , _ewMaxResults = Nothing
    , _ewAlwaysIncludeEmail = Nothing
    , _ewTimeMax = Nothing
    , _ewFields = Nothing
    }

-- | Token obtained from the nextSyncToken field returned on the last page of
-- results from the previous list request. It makes the result of this list
-- request contain only entries that have changed since then. All events
-- deleted since the previous list request will always be in the result set
-- and it is not allowed to set showDeleted to False. There are several
-- query parameters that cannot be specified together with nextSyncToken to
-- ensure consistency of the client state. These are: - iCalUID - orderBy -
-- privateExtendedProperty - q - sharedExtendedProperty - timeMin - timeMax
-- - updatedMin If the syncToken expires, the server will respond with a
-- 410 GONE response code and the client should clear its storage and
-- perform a full synchronization without any syncToken. Learn more about
-- incremental synchronization. Optional. The default is to return all
-- entries.
ewSyncToken :: Lens' EventsWatch' (Maybe Text)
ewSyncToken
  = lens _ewSyncToken (\ s a -> s{_ewSyncToken = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ewQuotaUser :: Lens' EventsWatch' (Maybe Text)
ewQuotaUser
  = lens _ewQuotaUser (\ s a -> s{_ewQuotaUser = a})

-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
ewCalendarId :: Lens' EventsWatch' Text
ewCalendarId
  = lens _ewCalendarId (\ s a -> s{_ewCalendarId = a})

-- | Returns response with indentations and line breaks.
ewPrettyPrint :: Lens' EventsWatch' Bool
ewPrettyPrint
  = lens _ewPrettyPrint
      (\ s a -> s{_ewPrettyPrint = a})

-- | Lower bound (inclusive) for an event\'s end time to filter by. Optional.
-- The default is not to filter by end time. Must be an RFC3339 timestamp
-- with mandatory time zone offset, e.g., 2011-06-03T10:00:00-07:00,
-- 2011-06-03T10:00:00Z. Milliseconds may be provided but will be ignored.
ewTimeMin :: Lens' EventsWatch' (Maybe UTCTime)
ewTimeMin
  = lens _ewTimeMin (\ s a -> s{_ewTimeMin = a}) .
      mapping _DateTime

-- | The order of the events returned in the result. Optional. The default is
-- an unspecified, stable order.
ewOrderBy :: Lens' EventsWatch' (Maybe EventsWatchOrderBy)
ewOrderBy
  = lens _ewOrderBy (\ s a -> s{_ewOrderBy = a})

-- | Whether to expand recurring events into instances and only return single
-- one-off events and instances of recurring events, but not the underlying
-- recurring events themselves. Optional. The default is False.
ewSingleEvents :: Lens' EventsWatch' (Maybe Bool)
ewSingleEvents
  = lens _ewSingleEvents
      (\ s a -> s{_ewSingleEvents = a})

-- | Extended properties constraint specified as propertyName=value. Matches
-- only private properties. This parameter might be repeated multiple times
-- to return events that match all given constraints.
ewPrivateExtendedProperty :: Lens' EventsWatch' [Text]
ewPrivateExtendedProperty
  = lens _ewPrivateExtendedProperty
      (\ s a -> s{_ewPrivateExtendedProperty = a})
      . _Default
      . _Coerce

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ewUserIP :: Lens' EventsWatch' (Maybe Text)
ewUserIP = lens _ewUserIP (\ s a -> s{_ewUserIP = a})

-- | Whether to include deleted events (with status equals \"cancelled\") in
-- the result. Cancelled instances of recurring events (but not the
-- underlying recurring event) will still be included if showDeleted and
-- singleEvents are both False. If showDeleted and singleEvents are both
-- True, only single instances of deleted events (but not the underlying
-- recurring events) are returned. Optional. The default is False.
ewShowDeleted :: Lens' EventsWatch' (Maybe Bool)
ewShowDeleted
  = lens _ewShowDeleted
      (\ s a -> s{_ewShowDeleted = a})

-- | Multipart request metadata.
ewPayload :: Lens' EventsWatch' Channel
ewPayload
  = lens _ewPayload (\ s a -> s{_ewPayload = a})

-- | Free text search terms to find events that match these terms in any
-- field, except for extended properties. Optional.
ewQ :: Lens' EventsWatch' (Maybe Text)
ewQ = lens _ewQ (\ s a -> s{_ewQ = a})

-- | Extended properties constraint specified as propertyName=value. Matches
-- only shared properties. This parameter might be repeated multiple times
-- to return events that match all given constraints.
ewSharedExtendedProperty :: Lens' EventsWatch' [Text]
ewSharedExtendedProperty
  = lens _ewSharedExtendedProperty
      (\ s a -> s{_ewSharedExtendedProperty = a})
      . _Default
      . _Coerce

-- | The maximum number of attendees to include in the response. If there are
-- more than the specified number of attendees, only the participant is
-- returned. Optional.
ewMaxAttendees :: Lens' EventsWatch' (Maybe Int32)
ewMaxAttendees
  = lens _ewMaxAttendees
      (\ s a -> s{_ewMaxAttendees = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ewKey :: Lens' EventsWatch' (Maybe AuthKey)
ewKey = lens _ewKey (\ s a -> s{_ewKey = a})

-- | Specifies event ID in the iCalendar format to be included in the
-- response. Optional.
ewICalUId :: Lens' EventsWatch' (Maybe Text)
ewICalUId
  = lens _ewICalUId (\ s a -> s{_ewICalUId = a})

-- | Lower bound for an event\'s last modification time (as a RFC3339
-- timestamp) to filter by. When specified, entries deleted since this time
-- will always be included regardless of showDeleted. Optional. The default
-- is not to filter by last modification time.
ewUpdatedMin :: Lens' EventsWatch' (Maybe UTCTime)
ewUpdatedMin
  = lens _ewUpdatedMin (\ s a -> s{_ewUpdatedMin = a})
      . mapping _DateTime

-- | Token specifying which result page to return. Optional.
ewPageToken :: Lens' EventsWatch' (Maybe Text)
ewPageToken
  = lens _ewPageToken (\ s a -> s{_ewPageToken = a})

-- | Time zone used in the response. Optional. The default is the time zone
-- of the calendar.
ewTimeZone :: Lens' EventsWatch' (Maybe Text)
ewTimeZone
  = lens _ewTimeZone (\ s a -> s{_ewTimeZone = a})

-- | OAuth 2.0 token for the current user.
ewOAuthToken :: Lens' EventsWatch' (Maybe OAuthToken)
ewOAuthToken
  = lens _ewOAuthToken (\ s a -> s{_ewOAuthToken = a})

-- | Whether to include hidden invitations in the result. Optional. The
-- default is False.
ewShowHiddenInvitations :: Lens' EventsWatch' (Maybe Bool)
ewShowHiddenInvitations
  = lens _ewShowHiddenInvitations
      (\ s a -> s{_ewShowHiddenInvitations = a})

-- | Maximum number of events returned on one result page. By default the
-- value is 250 events. The page size can never be larger than 2500 events.
-- Optional.
ewMaxResults :: Lens' EventsWatch' (Maybe Int32)
ewMaxResults
  = lens _ewMaxResults (\ s a -> s{_ewMaxResults = a})

-- | Whether to always include a value in the email field for the organizer,
-- creator and attendees, even if no real email is available (i.e. a
-- generated, non-working value will be provided). The use of this option
-- is discouraged and should only be used by clients which cannot handle
-- the absence of an email address value in the mentioned places. Optional.
-- The default is False.
ewAlwaysIncludeEmail :: Lens' EventsWatch' (Maybe Bool)
ewAlwaysIncludeEmail
  = lens _ewAlwaysIncludeEmail
      (\ s a -> s{_ewAlwaysIncludeEmail = a})

-- | Upper bound (exclusive) for an event\'s start time to filter by.
-- Optional. The default is not to filter by start time. Must be an RFC3339
-- timestamp with mandatory time zone offset, e.g.,
-- 2011-06-03T10:00:00-07:00, 2011-06-03T10:00:00Z. Milliseconds may be
-- provided but will be ignored.
ewTimeMax :: Lens' EventsWatch' (Maybe UTCTime)
ewTimeMax
  = lens _ewTimeMax (\ s a -> s{_ewTimeMax = a}) .
      mapping _DateTime

-- | Selector specifying which fields to include in a partial response.
ewFields :: Lens' EventsWatch' (Maybe Text)
ewFields = lens _ewFields (\ s a -> s{_ewFields = a})

instance GoogleAuth EventsWatch' where
        authKey = ewKey . _Just
        authToken = ewOAuthToken . _Just

instance GoogleRequest EventsWatch' where
        type Rs EventsWatch' = Channel
        request = requestWithRoute defReq appsCalendarURL
        requestWithRoute r u EventsWatch'{..}
          = go _ewCalendarId _ewSyncToken _ewTimeMin _ewOrderBy
              _ewSingleEvents
              (_ewPrivateExtendedProperty ^. _Default)
              _ewShowDeleted
              _ewQ
              (_ewSharedExtendedProperty ^. _Default)
              _ewMaxAttendees
              _ewICalUId
              _ewUpdatedMin
              _ewPageToken
              _ewTimeZone
              _ewShowHiddenInvitations
              _ewMaxResults
              _ewAlwaysIncludeEmail
              _ewTimeMax
              _ewQuotaUser
              (Just _ewPrettyPrint)
              _ewUserIP
              _ewFields
              _ewKey
              _ewOAuthToken
              (Just AltJSON)
              _ewPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EventsWatchResource)
                      r
                      u
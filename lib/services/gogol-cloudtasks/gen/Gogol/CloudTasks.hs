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
-- Module      : Gogol.CloudTasks
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Manages the execution of large numbers of distributed requests.
--
-- /See:/ <https://cloud.google.com/tasks/ Cloud Tasks API Reference>
module Gogol.CloudTasks
  ( -- * Configuration
    cloudTasksService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,

    -- * Resources

    -- ** cloudtasks.projects.locations.get
    CloudTasksProjectsLocationsGetResource,
    CloudTasksProjectsLocationsGet (..),
    newCloudTasksProjectsLocationsGet,

    -- ** cloudtasks.projects.locations.list
    CloudTasksProjectsLocationsListResource,
    CloudTasksProjectsLocationsList (..),
    newCloudTasksProjectsLocationsList,

    -- ** cloudtasks.projects.locations.queues.create
    CloudTasksProjectsLocationsQueuesCreateResource,
    CloudTasksProjectsLocationsQueuesCreate (..),
    newCloudTasksProjectsLocationsQueuesCreate,

    -- ** cloudtasks.projects.locations.queues.delete
    CloudTasksProjectsLocationsQueuesDeleteResource,
    CloudTasksProjectsLocationsQueuesDelete (..),
    newCloudTasksProjectsLocationsQueuesDelete,

    -- ** cloudtasks.projects.locations.queues.get
    CloudTasksProjectsLocationsQueuesGetResource,
    CloudTasksProjectsLocationsQueuesGet (..),
    newCloudTasksProjectsLocationsQueuesGet,

    -- ** cloudtasks.projects.locations.queues.getIamPolicy
    CloudTasksProjectsLocationsQueuesGetIamPolicyResource,
    CloudTasksProjectsLocationsQueuesGetIamPolicy (..),
    newCloudTasksProjectsLocationsQueuesGetIamPolicy,

    -- ** cloudtasks.projects.locations.queues.list
    CloudTasksProjectsLocationsQueuesListResource,
    CloudTasksProjectsLocationsQueuesList (..),
    newCloudTasksProjectsLocationsQueuesList,

    -- ** cloudtasks.projects.locations.queues.patch
    CloudTasksProjectsLocationsQueuesPatchResource,
    CloudTasksProjectsLocationsQueuesPatch (..),
    newCloudTasksProjectsLocationsQueuesPatch,

    -- ** cloudtasks.projects.locations.queues.pause
    CloudTasksProjectsLocationsQueuesPauseResource,
    CloudTasksProjectsLocationsQueuesPause (..),
    newCloudTasksProjectsLocationsQueuesPause,

    -- ** cloudtasks.projects.locations.queues.purge
    CloudTasksProjectsLocationsQueuesPurgeResource,
    CloudTasksProjectsLocationsQueuesPurge (..),
    newCloudTasksProjectsLocationsQueuesPurge,

    -- ** cloudtasks.projects.locations.queues.resume
    CloudTasksProjectsLocationsQueuesResumeResource,
    CloudTasksProjectsLocationsQueuesResume (..),
    newCloudTasksProjectsLocationsQueuesResume,

    -- ** cloudtasks.projects.locations.queues.setIamPolicy
    CloudTasksProjectsLocationsQueuesSetIamPolicyResource,
    CloudTasksProjectsLocationsQueuesSetIamPolicy (..),
    newCloudTasksProjectsLocationsQueuesSetIamPolicy,

    -- ** cloudtasks.projects.locations.queues.tasks.create
    CloudTasksProjectsLocationsQueuesTasksCreateResource,
    CloudTasksProjectsLocationsQueuesTasksCreate (..),
    newCloudTasksProjectsLocationsQueuesTasksCreate,

    -- ** cloudtasks.projects.locations.queues.tasks.delete
    CloudTasksProjectsLocationsQueuesTasksDeleteResource,
    CloudTasksProjectsLocationsQueuesTasksDelete (..),
    newCloudTasksProjectsLocationsQueuesTasksDelete,

    -- ** cloudtasks.projects.locations.queues.tasks.get
    CloudTasksProjectsLocationsQueuesTasksGetResource,
    CloudTasksProjectsLocationsQueuesTasksGet (..),
    newCloudTasksProjectsLocationsQueuesTasksGet,

    -- ** cloudtasks.projects.locations.queues.tasks.list
    CloudTasksProjectsLocationsQueuesTasksListResource,
    CloudTasksProjectsLocationsQueuesTasksList (..),
    newCloudTasksProjectsLocationsQueuesTasksList,

    -- ** cloudtasks.projects.locations.queues.tasks.run
    CloudTasksProjectsLocationsQueuesTasksRunResource,
    CloudTasksProjectsLocationsQueuesTasksRun (..),
    newCloudTasksProjectsLocationsQueuesTasksRun,

    -- ** cloudtasks.projects.locations.queues.testIamPermissions
    CloudTasksProjectsLocationsQueuesTestIamPermissionsResource,
    CloudTasksProjectsLocationsQueuesTestIamPermissions (..),
    newCloudTasksProjectsLocationsQueuesTestIamPermissions,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AppEngineHttpRequest
    AppEngineHttpRequest (..),
    newAppEngineHttpRequest,

    -- ** AppEngineHttpRequest_Headers
    AppEngineHttpRequest_Headers (..),
    newAppEngineHttpRequest_Headers,

    -- ** AppEngineHttpRequest_HttpMethod
    AppEngineHttpRequest_HttpMethod (..),

    -- ** AppEngineRouting
    AppEngineRouting (..),
    newAppEngineRouting,

    -- ** Attempt
    Attempt (..),
    newAttempt,

    -- ** Binding
    Binding (..),
    newBinding,

    -- ** CreateTaskRequest
    CreateTaskRequest (..),
    newCreateTaskRequest,

    -- ** CreateTaskRequest_ResponseView
    CreateTaskRequest_ResponseView (..),

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** Expr
    Expr (..),
    newExpr,

    -- ** GetIamPolicyRequest
    GetIamPolicyRequest (..),
    newGetIamPolicyRequest,

    -- ** GetPolicyOptions
    GetPolicyOptions (..),
    newGetPolicyOptions,

    -- ** HttpRequest
    HttpRequest (..),
    newHttpRequest,

    -- ** HttpRequest_Headers
    HttpRequest_Headers (..),
    newHttpRequest_Headers,

    -- ** HttpRequest_HttpMethod
    HttpRequest_HttpMethod (..),

    -- ** ListLocationsResponse
    ListLocationsResponse (..),
    newListLocationsResponse,

    -- ** ListQueuesResponse
    ListQueuesResponse (..),
    newListQueuesResponse,

    -- ** ListTasksResponse
    ListTasksResponse (..),
    newListTasksResponse,

    -- ** Location
    Location (..),
    newLocation,

    -- ** Location_Labels
    Location_Labels (..),
    newLocation_Labels,

    -- ** Location_Metadata
    Location_Metadata (..),
    newLocation_Metadata,

    -- ** OAuthToken
    OAuthToken (..),
    newOAuthToken,

    -- ** OidcToken
    OidcToken (..),
    newOidcToken,

    -- ** PauseQueueRequest
    PauseQueueRequest (..),
    newPauseQueueRequest,

    -- ** Policy
    Policy (..),
    newPolicy,

    -- ** PurgeQueueRequest
    PurgeQueueRequest (..),
    newPurgeQueueRequest,

    -- ** Queue
    Queue (..),
    newQueue,

    -- ** Queue_State
    Queue_State (..),

    -- ** RateLimits
    RateLimits (..),
    newRateLimits,

    -- ** ResumeQueueRequest
    ResumeQueueRequest (..),
    newResumeQueueRequest,

    -- ** RetryConfig
    RetryConfig (..),
    newRetryConfig,

    -- ** RunTaskRequest
    RunTaskRequest (..),
    newRunTaskRequest,

    -- ** RunTaskRequest_ResponseView
    RunTaskRequest_ResponseView (..),

    -- ** SetIamPolicyRequest
    SetIamPolicyRequest (..),
    newSetIamPolicyRequest,

    -- ** StackdriverLoggingConfig
    StackdriverLoggingConfig (..),
    newStackdriverLoggingConfig,

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- ** Task
    Task (..),
    newTask,

    -- ** Task_View
    Task_View (..),

    -- ** TestIamPermissionsRequest
    TestIamPermissionsRequest (..),
    newTestIamPermissionsRequest,

    -- ** TestIamPermissionsResponse
    TestIamPermissionsResponse (..),
    newTestIamPermissionsResponse,

    -- ** ProjectsLocationsQueuesTasksGetResponseView
    ProjectsLocationsQueuesTasksGetResponseView (..),

    -- ** ProjectsLocationsQueuesTasksListResponseView
    ProjectsLocationsQueuesTasksListResponseView (..),
  )
where

import Gogol.CloudTasks.Projects.Locations.Get
import Gogol.CloudTasks.Projects.Locations.List
import Gogol.CloudTasks.Projects.Locations.Queues.Create
import Gogol.CloudTasks.Projects.Locations.Queues.Delete
import Gogol.CloudTasks.Projects.Locations.Queues.Get
import Gogol.CloudTasks.Projects.Locations.Queues.GetIamPolicy
import Gogol.CloudTasks.Projects.Locations.Queues.List
import Gogol.CloudTasks.Projects.Locations.Queues.Patch
import Gogol.CloudTasks.Projects.Locations.Queues.Pause
import Gogol.CloudTasks.Projects.Locations.Queues.Purge
import Gogol.CloudTasks.Projects.Locations.Queues.Resume
import Gogol.CloudTasks.Projects.Locations.Queues.SetIamPolicy
import Gogol.CloudTasks.Projects.Locations.Queues.Tasks.Create
import Gogol.CloudTasks.Projects.Locations.Queues.Tasks.Delete
import Gogol.CloudTasks.Projects.Locations.Queues.Tasks.Get
import Gogol.CloudTasks.Projects.Locations.Queues.Tasks.List
import Gogol.CloudTasks.Projects.Locations.Queues.Tasks.Run
import Gogol.CloudTasks.Projects.Locations.Queues.TestIamPermissions
import Gogol.CloudTasks.Types

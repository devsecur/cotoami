module App.I18n.Keys exposing (TextKey(..))


type TextKey
    = Coto
    | Cotonoma
    | MyHome
    | Post
    | Posting
    | Save
    | Saving
    | Confirm
    | ConfirmDeleteCoto
    | ConfirmUnpinCoto
    | ConfirmDisconnect
    | ConfirmCotonomatize String
    | UnexpectedErrorOccurred
    | SigninModal_WelcomeTitle
    | SigninModal_SignupEnabled
    | SigninModal_OnlyForSignin
    | SigninModal_SendLink
    | SigninModal_Sending
    | SigninModal_EmailNotFound
    | SigninModal_SentTitle
    | SigninModal_SentMessage
    | Navigation_Current
    | Navigation_Recent
    | Navigation_Watchlist
    | Flow_EditorPlaceholder
    | Flow_ShortcutToOpenEditor
    | Flow_HideFlow
    | Flow_OpenFlow
    | Flow_Filter
    | Flow_StreamView
    | Flow_TileView
    | Flow_NewPosts
    | Stock_DocumentView
    | Stock_GraphView
    | EditorModal_Summary
    | EditorModal_Content
    | EditorModal_CotonomaName
    | EditorModal_Preview
    | EditorModal_Edit
    | EditorModal_CotonomaHelp
    | EditorModal_ShareCotonoma
    | EditorModal_ShareCotonomaNote
    | EditorModal_DuplicateCotonomaName
    | EditorModal_TooLongForCotonomaName Int
    | ProfileModal_Title
    | ProfileModal_Name
    | ProfileModal_EmailAddress
    | ProfileModal_Signout
    | ProfileModal_Invite
    | ProfileModal_Export
    | ProfileModal_Import
    | InviteModal_Title
    | InviteModal_Message
    | InviteModal_SentMessage
    | InviteModal_InviteeAlreadyExists
    | InviteModal_SendInvite
    | InviteModal_Sending
    | InviteModal_InvitesRemaining Int
    | CotoToolbar_Connect
    | CotoToolbar_Pin
    | CotoToolbar_Edit
    | CotoToolbar_AddSubCoto
    | CotoToolbar_Select
    | CotoToolbar_More
    | CotoToolbar_Disconnect
    | CotoToolbar_EditConnection
    | CotoToolbar_Reorder
    | CotoMenuModal_Info
    | CotoMenuModal_ExploreConnections
    | CotoMenuModal_PinToMyHome
    | CotoMenuModal_UnpinFromMyHome
    | CotoMenuModal_PinToCotonoma
    | CotoMenuModal_UnpinFromCotonoma
    | CotoMenuModal_Edit
    | CotoMenuModal_AddSubCoto
    | CotoMenuModal_Cotonomatize
    | CotoMenuModal_Delete
    | CotoMenuModal_Watch
    | CotoMenuModal_Unwatch
    | TimelineFilterModal_Title
    | TimelineFilterModal_ExcludePinnedGraph
    | TimelineFilterModal_ExcludePostsInCotonoma
    | ConnectModal_Title
    | ConnectModal_Connect
    | ConnectModal_PostAndConnect
    | ConnectModal_Reverse
    | ConnectModal_LinkingPhrase
    | ConnectionModal_Title
    | CotoSelection_CotosSelected Int
    | Reorder_CloseReorderMode

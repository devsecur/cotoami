module Components.Pinned.View exposing (..)

import Dict
import Html exposing (..)
import Html.Keyed
import Html.Attributes exposing (..)
import Utils exposing (onClickWithoutPropagation)
import App.Types exposing (Coto, CotoId, Cotonoma, CotoSelection, Context)
import App.Graph exposing (..)
import App.Markdown
import App.Messages exposing (..)
import Components.Coto


view : Context -> Graph -> Html Msg
view context graph =
    div [ id "pinned-cotos" ]
        [ div 
            [ class "column-header" ] 
            [ i [ class "pinned fa fa-thumb-tack", (attribute "aria-hidden" "true") ] []
            ]
        , div 
            [ class "column-body" ]
            [ pinnedCotos context graph ]
        ]


pinnedCotos : Context -> Graph -> Html Msg
pinnedCotos context graph =
    connectionsDiv "root-connections" graph.rootConnections context graph


connectionsDiv : String -> List Connection -> Context -> Graph -> Html Msg
connectionsDiv divClass connections context graph =
    Html.Keyed.node
        "div"
        [ class divClass ]
        (List.filterMap 
            (\conn ->
                case Dict.get conn.end graph.cotos of
                    Nothing -> Nothing  -- Missing the end node
                    Just coto -> Just 
                        ( conn.key
                        , connectionDiv context graph coto
                        ) 
            ) 
            connections
        )
        
        
connectionDiv : Context -> Graph -> Coto -> Html Msg
connectionDiv context graph coto =
    div [ class "outbound-conn" ]
        [ cotoDiv context graph coto ]
        
  
cotoDiv : Context -> Graph -> Coto -> Html Msg
cotoDiv context graph coto =
    div 
        [ classList 
            [ ( "coto", True )
            , ( "selectable", True )
            , ( "selected", List.member coto.id context.selection )
            , ( "animated", True )
            , ( "fadeIn", True )
            ]
        , onClickWithoutPropagation (CotoClick coto.id)
        ]
        [ div 
            [ class "coto-inner" ]
            [ Components.Coto.headerDiv CotonomaClick context.cotonoma graph coto
            , bodyDiv graph coto
            , Components.Coto.openTraversalButtonDiv OpenTraversal (Just coto.id) graph 
            ]
        ]


bodyDiv : Graph -> Coto -> Html Msg
bodyDiv graph coto =
    Components.Coto.bodyDiv
        graph 
        { openCoto = Just (OpenCoto coto)
        , openTraversal = Just OpenTraversal
        , cotonomaClick = CotonomaClick
        , deleteConnection = Just (ConfirmUnpinCoto coto.id)
        , markdown = App.Markdown.markdown
        }
        { cotoId = Just coto.id
        , content = coto.content 
        , asCotonoma = coto.asCotonoma
        , cotonomaKey = coto.cotonomaKey
        }

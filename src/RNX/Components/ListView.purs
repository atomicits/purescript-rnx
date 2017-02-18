module ListView where


import ScrollView (ScrollViewPropsEx)
import RNX.PropTypes (Prop, UnKnownType)
import Data.Nullable (Nullable)
import RNX.Events (EventHandler, ScrollEvent)
import Data.StrMap (StrMap)
import Prelude
import RNX.ComponentClasses (RowRenderer, SectionRenderer, listViewClass)
import React (ReactElement, createElement)
import Unsafe.Coerce (unsafeCoerce)
import Data.Function.Eff (EffFn2)
import Data.Function.Uncurried (Fn3, mkFn2, mkFn4)


type SectionIndex = String


type RowIndex = String


type ListViewProps a section blob eff = ScrollViewPropsEx eff
  ( dataSource :: UnKnownType -- ListViewDataSource' blob a section
  , enableEmptySections :: Boolean
  , initialListSize :: Int
  , onChangeVisibleRows :: UnKnownType --EventHandler2 eff RowMap RowMap
  , onEndReached :: EventHandler eff (Nullable ScrollEvent)
  , onEndReachedThreshold :: Int
  , pageSize :: Int
  , renderFooter :: Unit -> ReactElement
  , renderHeader :: Unit -> ReactElement
  , renderRow :: UnKnownType  --RowRenderer a
  , renderScrollComponent :: forall props. props -> ReactElement
  , renderSectionHeader :: SectionRenderer section
  , renderSeparator :: Fn3 SectionIndex RowIndex Boolean ReactElement
  , scrollRenderAheadDistance :: Int
  )


type RowMap = StrMap (StrMap Boolean)


rowRenderer :: forall a. (a -> ReactElement) -> RowRenderer a
rowRenderer = unsafeCoerce


rowRenderer' :: forall a eff. (a -> SectionIndex -> RowIndex -> EffFn2 eff SectionIndex RowIndex Unit -> ReactElement) -> RowRenderer a
rowRenderer' = unsafeCoerce <<< mkFn4


sectionRenderer :: forall section. (section -> ReactElement) -> SectionRenderer section
sectionRenderer = unsafeCoerce


sectionRenderer' :: forall section. (section -> SectionIndex -> ReactElement) -> SectionRenderer section
sectionRenderer' = unsafeCoerce <<< mkFn2


listView :: forall a section blob eff. Prop (ListViewProps a section blob eff ) -> Array (ReactElement) -> ReactElement
listView = createElement listViewClass

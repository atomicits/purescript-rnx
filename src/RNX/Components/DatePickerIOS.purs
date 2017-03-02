module DatePickerIOS where

import Data.Date (Date)
import RNX.ComponentClasses (createElementOneChild, datePickerIOSClass)
import RNX.PropTypes (Prop, UnKnownType)
import React (ReactElement)
import View (ViewPropsEx)

newtype Mode = Mode String

date :: Mode
date = Mode "date"

time :: Mode
time = Mode "time"

dateTime :: Mode
dateTime = Mode "datetime"

newtype MinuteInterval = MinuteInterval Int

m1 :: MinuteInterval
m1 = MinuteInterval 1

m2 :: MinuteInterval
m2 = MinuteInterval 2

m3 :: MinuteInterval
m3 = MinuteInterval 3

m4 :: MinuteInterval
m4 = MinuteInterval 4

m5 :: MinuteInterval
m5 = MinuteInterval 5

m6 :: MinuteInterval
m6 = MinuteInterval 6

m10 :: MinuteInterval
m10 = MinuteInterval 10

m12 :: MinuteInterval
m12 = MinuteInterval 12

m15 :: MinuteInterval
m15 = MinuteInterval 15

m20 :: MinuteInterval
m20 = MinuteInterval 20

m30 :: MinuteInterval
m30 = MinuteInterval 30

type DatePickerIOSProps eff = ViewPropsEx eff
  ()
  ()
  ( date :: Date
  , maximumDate :: Date
  , minimumDate :: Date
  , timeZoneOffsetInMinutes :: Number
  , onDateChange :: UnKnownType
  , mode :: Mode
  , minuteInterval :: MinuteInterval
  )


datePickerIOS :: forall eff. Prop (DatePickerIOSProps eff) -> ReactElement -> ReactElement
datePickerIOS = createElementOneChild datePickerIOSClass

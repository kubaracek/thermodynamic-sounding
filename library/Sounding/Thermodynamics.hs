module Sounding.Thermodynamics where

data Temp =
    Celsius Double
  | Kelvin Double
  | Fahrenheit Double

lclTemp :: Temp -> Temp -> Temp
lclTemp parcelTemp dewpointParcelTemp =
  undefined

toCelsius :: Temp -> Temp
toCelsius t =
  case t of
    Celsius _ ->
      t
    Kelvin temp ->
      Celsius $ temp - 273.15
    Fahrenheit temp ->
       Celsius $ (5/9) * (temp + (-32))


toKelvin :: Temp -> Temp
toKelvin t =
  let
    open :: Temp -> Double
    open (Celsius temp) = temp
    open (Kelvin temp) = temp
    open (Fahrenheit temp) = temp
  in
  case t of
    Kelvin _ ->
      t
    _ ->
      Kelvin (open (toCelsius t) + 273.15)

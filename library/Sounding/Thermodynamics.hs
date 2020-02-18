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
  case t of
    Kelvin _ ->
      t
    _ ->
      Kelvin $ toCelsius t

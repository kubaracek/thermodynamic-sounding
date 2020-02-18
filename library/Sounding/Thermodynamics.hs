module Sounding.Thermodynamics where

data DewpointTemp = DewpointTemp Celsius
data ParcelTemp = ParcelTemp Celsius
data ParcelTempLCL = ParcelTempLCL Celsius

type Celsius = Double

lclTemp :: ParcelTemp -> DewpointTemp -> ParcelTempLCL
lclTemp (ParcelTemp parcelTemp) (DewpointTemp dewpointParcelTemp) =
  let
    diff = parcelTemp - dewpointParcelTemp
    dlt = diff * (1.2185 + 0.001278 * parcelTemp + diff * (-0.00219 + 1.173e-5 * diff - 0.0000052 * parcelTemp))
  in
    ParcelTempLCL (parcelTemp - dlt)

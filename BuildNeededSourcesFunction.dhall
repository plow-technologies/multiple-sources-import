let VpidSource = https://raw.githubusercontent.com/plow-technologies/virtual-parameter-templates/master/VpidSource.dhall

in let NeededSources = https://raw.githubusercontent.com/plow-technologies/virtual-parameter-templates/master/NeededSources.dhall	
in let VirtualParameter = https://raw.githubusercontent.com/plow-technologies/virtual-parameter-templates/master/VirtualParameter.dhall
					 
in let buildWapitiSet = \(neededSources:NeededSources) -> [ 
    { vpids =
      [] : List Integer
  , vparameterInfo =
      { sources =
          [ neededSources.yesterdaysVolume
          ] : List VpidSource
              
      , name =
          "30 Day Avg Yest Vol"
      , desc =
          "30 Day Avg Yest Vol"
      , script =
          +235
      }
    },
    { vpids =
      [] : List Integer
  , vparameterInfo =
      { sources =
          [ neededSources.yesterdaysVolume
          ] : List VpidSource
              
      , name =
          "Percent of Target"
      , desc =
          "Percent of Target"
      , script =
          +203
      }
    },
        { vpids =
      [] : List Integer
  , vparameterInfo =
      { sources =
          [ neededSources.rateMscfpd
          ] : List VpidSource
              
      , name =
          "Plunger Metric - 6 Hour Scaled"
      , desc =
          "Plunger Metric - 6 Hour Scaled"
      , script =
          +256
      }
    },
    { vpids =
      [] : List Integer
  , vparameterInfo =
      { sources =
          [ neededSources.historicFastArrivalsCount
          , neededSources.historicGoodArrivalsCount
          , neededSources.historicSlowArrivalsCount
          , neededSources.historicNoArrivalsCount
          , neededSources.historicCyclesCount
          ] : List VpidSource
              
      , name =
          "Yesterday Arrivals"
      , desc =
          "Yesterday Arrivals"
      , script =
          +196
      }
  },
    { vpids =
      [] : List Integer
  , vparameterInfo =
      { sources =
          [ neededSources.historicFastArrivalsCount
          , neededSources.historicGoodArrivalsCount
          , neededSources.historicSlowArrivalsCount
          , neededSources.historicNoArrivalsCount
          , neededSources.historicCyclesCount
          ] : List VpidSource
      , name =
          "Yest No Arr Script"
      , desc =
          "Yest No Arr Script"
      , script =
          +165
      }
  },
  { vpids =
      [] : List Integer
  , vparameterInfo =
      { sources =
	      [ neededSources.historicFastArrivalsCount
          , neededSources.historicGoodArrivalsCount
          , neededSources.historicSlowArrivalsCount
          , neededSources.historicNoArrivalsCount
          , neededSources.historicCyclesCount
          ] : List VpidSource
          
      , name =
          "Today Arrivals"
      , desc =
          "Today Arrivals"
      , script =
          +139
      }
  },
  { vpids =
      [] : List Integer
  , vparameterInfo =
      { sources =
          [ neededSources.historicFastArrivalsCount
          , neededSources.historicGoodArrivalsCount
          , neededSources.historicSlowArrivalsCount
          , neededSources.historicNoArrivalsCount
          , neededSources.historicCyclesCount
          ] : List VpidSource
      , name =
          "Today Fails"
      , desc =
          "Today Fails"
      , script =
          +140
      }
  },
   { vpids =
      [] : List Integer
  , vparameterInfo =
      { sources =
          [ neededSources.wellDepth
          , neededSources.plungerArrivalOneTimeSec
          ] : List VpidSource
              
      , name =
          "Plunger Velocity - Generic FBC - 1"
      , desc =
          "Plunger Velocity - Generic FBC - 1"
      , script =
          +236
      }
  },
     { vpids =
      [] : List Integer
  , vparameterInfo =
      { sources =
          [ neededSources.wellDepth
          , neededSources.historicCyclesCount
          ] : List VpidSource
              
      , name =
          "Plunger Miles"
      , desc =
          "Plunger Miles"
      , script =
          +255
      }
  },
  { vpids =
      [] : List Integer
  , vparameterInfo =
      { sources =
          [ neededSources.currentModeCountdownSec
          ] : List VpidSource
              
      , name =
          "Current Timer Countdown H.MM"
      , desc =
          "Current Timer Countdown H.MM"
      , script =
          +199
      }
  },
  { vpids =
      [] : List Integer
  , vparameterInfo =
      { sources =
          [ neededSources.tubingPressurePSIG
          ] : List VpidSource
              
      , name =
          "Critical Rate"
      , desc =
          "Critical Rate"
      , script =
          +220
      }
  },
  { vpids =
      [] : List Integer
  , vparameterInfo =
      { sources =
          [ neededSources.casingPressurePSIG 
          , neededSources.tubingPressurePSIG 
          , neededSources.linePressurePSIG 
          ] : List VpidSource
              
      , name =
          "Load Factor Setting"
      , desc =
          "Load Factor Setting"
      , script =
          +200
      }
  },
    { vpids =
      [] : List Integer
  , vparameterInfo =
      { sources =
          [ neededSources.yesterdaysVolume
          ] : List VpidSource
              
      , name =
          "Yest Vol - Rate Overlay"
      , desc =
          "Yest Vol - Rate Overlay"
      , script =
          +201
      }
  },
      { vpids =
      [] : List Integer
  , vparameterInfo =
      { sources =
          [ neededSources.offTimeSetpoint
          ] : List VpidSource
              
      , name =
          "Current Off H.MM"
      , desc =
          "Current Off H.MM"
      , script =
          +204
      }
  },
        { vpids =
      [] : List Integer
  , vparameterInfo =
      { sources =
          [ neededSources.afterflowTimeSetpoint
          ] : List VpidSource
              
      , name =
          "Current Afterflow H.MM"
      , desc =
          "Current Afterflow H.MM"
      , script =
          +211
      }
  },
        { vpids =
      [] : List Integer
  , vparameterInfo =
      { sources =
          [ neededSources.minOffTime
          ] : List VpidSource
              
      , name =
          "Min Off Time H.MM"
      , desc =
          "Min Off Time H.MM"
      , script =
          +206
      }
  },
        { vpids =
      [] : List Integer
  , vparameterInfo =
      { sources =
          [ neededSources.wellDepth
          , neededSources.fastArrivalTimeSetpoint
          ] : List VpidSource
              
      , name =
          "Fast Arrival Velocity Setting (FT/MIN)"
      , desc =
          "Fast Arrival Velocity Setting (FT/MIN)"
      , script =
          +249
      }
  },
        { vpids =
      [] : List Integer
  , vparameterInfo =
      { sources =
          [ neededSources.wellDepth
          , neededSources.slowArrivalTimeSetpoint
          ] : List VpidSource
              
      , name =
          "Slow Arrival Velocity Setting (FT/MIN)"
      , desc =
          "Slow Arrival Velocity Setting (FT/MIN)"
      , script =
          +250
      }
  },
        { vpids =
      [] : List Integer
  , vparameterInfo =
      { sources =
          [ neededSources.historicFastArrivalsCount
          , neededSources.historicGoodArrivalsCount
          , neededSources.historicSlowArrivalsCount
          , neededSources.historicNoArrivalsCount
          , neededSources.historicCyclesCount
          ] : List VpidSource     
      , name =
          "Today Fast Arrivals Script"
      , desc =
          "Today Fast Arrivals Script"
      , script =
          +158
      }
  },
        { vpids =
      [] : List Integer
  , vparameterInfo =
      { sources =
          [ neededSources.historicFastArrivalsCount
          , neededSources.historicGoodArrivalsCount
          , neededSources.historicSlowArrivalsCount
          , neededSources.historicNoArrivalsCount
          , neededSources.historicCyclesCount
          ] : List VpidSource
              
      , name =
          "Yest Fast Arrivals Script"
      , desc =
          "Yest Fast Arrivals Script"
      , script =
          +162
      }
  },
        { vpids =
      [] : List Integer
  , vparameterInfo =
      { sources =
          [ neededSources.historicFastArrivalsCount
          , neededSources.historicGoodArrivalsCount
          , neededSources.historicSlowArrivalsCount
          , neededSources.historicNoArrivalsCount
          , neededSources.historicCyclesCount
          ] : List VpidSource
              
      , name =
          "Today Good Arrivals Script"
      , desc =
          "Today Good Arrivals Script"
      , script =
          +159
      }
  },
        { vpids =
      [] : List Integer
  , vparameterInfo =
      { sources =
          [ neededSources.historicFastArrivalsCount
          , neededSources.historicGoodArrivalsCount
          , neededSources.historicSlowArrivalsCount
          , neededSources.historicNoArrivalsCount
          , neededSources.historicCyclesCount
          ] : List VpidSource
              
      , name =
          "Yest Good Arrivals Script"
      , desc =
          "Yest Good Arrivals Script"
      , script =
          +163
      }
  },
        { vpids =
      [] : List Integer
  , vparameterInfo =
      { sources =
          [ neededSources.historicFastArrivalsCount
          , neededSources.historicGoodArrivalsCount
          , neededSources.historicSlowArrivalsCount
          , neededSources.historicNoArrivalsCount
          , neededSources.historicCyclesCount
          ] : List VpidSource
              
      , name =
          "Today Slow Arrivals Script"
      , desc =
          "Today Slow Arrivals Script"
      , script =
          +160
      }
  },
        { vpids =
      [] : List Integer
  , vparameterInfo =
      { sources =
          [ neededSources.historicFastArrivalsCount
          , neededSources.historicGoodArrivalsCount
          , neededSources.historicSlowArrivalsCount
          , neededSources.historicNoArrivalsCount
          , neededSources.historicCyclesCount
          ] : List VpidSource
              
      , name =
          "Yest Slow Arrivals Script"
      , desc =
          "Yest Slow Arrivals Script"
      , script =
          +164
      }
  },
        { vpids =
      [] : List Integer
  , vparameterInfo =
      { sources =
          [ neededSources.historicFastArrivalsCount
          , neededSources.historicGoodArrivalsCount
          , neededSources.historicSlowArrivalsCount
          , neededSources.historicNoArrivalsCount
          , neededSources.historicCyclesCount
          ] : List VpidSource
              
      , name =
          "Today No Arrivals Script"
      , desc =
          "Today No Arrivals Script"
      , script =
          +161
      }
  },
        { vpids =
      [] : List Integer
  , vparameterInfo =
      { sources =
          [ neededSources.historicFastArrivalsCount
          , neededSources.historicGoodArrivalsCount
          , neededSources.historicSlowArrivalsCount
          , neededSources.historicNoArrivalsCount
          , neededSources.historicCyclesCount
          ] : List VpidSource
              
      , name =
          "Today Total Cycles Script"
      , desc =
          "Today Total Cycles Script"
      , script =
          +167
      }
  },
        { vpids =
      [] : List Integer
  , vparameterInfo =
      { sources =
          [ neededSources.historicFastArrivalsCount
          , neededSources.historicGoodArrivalsCount
          , neededSources.historicSlowArrivalsCount
          , neededSources.historicNoArrivalsCount
          , neededSources.historicCyclesCount
          ] : List VpidSource
              
      , name =
          "Yest Total Cycles Script"
      , desc =
          "Yest Total Cycles Script"
      , script =
          +166
      }
  },
        { vpids =
      [] : List Integer
  , vparameterInfo =
      { sources =
          [ neededSources.historicFastArrivalsCount
          , neededSources.historicGoodArrivalsCount
          , neededSources.historicSlowArrivalsCount
          ] : List VpidSource
              
      , name =
          "Historic Plunger Arrivals Script"
      , desc =
          "Historic Plunger Arrivals Script"
      , script =
          +168
      }
  },
        { vpids =
      [] : List Integer
  , vparameterInfo =
      { sources =
          [ neededSources.historicOnTime
          ] : List VpidSource
              
      , name =
          "Today On Time Hours Script"
      , desc =
          "Today On Time Hours Script"
      , script =
          +171
      }
  },
        { vpids =
      [] : List Integer
  , vparameterInfo =
      { sources =
          [ neededSources.historicOnTime
          ] : List VpidSource
              
      , name =
          "Yest On Time Hours Script"
      , desc =
          "Yest On Time Hours Script"
      , script =
          +173
      }
  },
        { vpids =
      [] : List Integer
  , vparameterInfo =
      { sources =
          [ neededSources.historicOnTime
          ] : List VpidSource
              
      , name =
          "Historic On Time Hours Script"
      , desc =
          "Historic On Time Hours Script"
      , script =
          +169
      }
  },
        { vpids =
      [] : List Integer
  , vparameterInfo =
      { sources =
          [ neededSources.historicOffTime
          ] : List VpidSource
              
      , name =
          "Today Off Time Hours Script"
      , desc =
          "Today Off Time Hours Script"
      , script =
          +172
      }
  },
        { vpids =
      [] : List Integer
  , vparameterInfo =
      { sources =
          [ neededSources.historicOffTime
          ] : List VpidSource
              
      , name =
          "Yest Off Time Hours Script"
      , desc =
          "Yest Off Time Hours Script"
      , script =
          +174
      }
  },
        { vpids =
      [] : List Integer
  , vparameterInfo =
      { sources =
          [ neededSources.historicOffTime
          ] : List VpidSource
              
      , name =
          "Historic Off Time Hours Script"
      , desc =
          "Historic Off Time Hours Script"
      , script =
          +170
      }
  }
  ]:List VirtualParameter

in let UnrolledSource = https://raw.githubusercontent.com/plow-technologies/virtual-parameter-templates/master/UnrolledSource.dhall
				   
in let buildNeededSources = \(unrolled:UnrolledSource) -> let
  buildVpid = \(p:Integer) -> { company = unrolled.companyId,
                                site    = unrolled.siteId,
					            location = unrolled.locationId,
					            pid = p}: VpidSource
								
  in { yesterdaysVolume          = buildVpid unrolled.yesterdaysVolume ,
       rateMscfpd                = buildVpid unrolled.rateMscfpd,
	   historicOnTime            = buildVpid unrolled.historicOnTime,
	   historicOffTime           = buildVpid unrolled.historicOffTime,
	   offTimeSetpoint           = buildVpid unrolled.offTimeSetpoint,
	   afterflowTimeSetpoint     = buildVpid unrolled.afterflowTimeSetpoint,
	   minOffTime                = buildVpid unrolled.minOffTime,
	   fastArrivalTimeSetpoint   = buildVpid unrolled.fastArrivalTimeSetpoint,
	   slowArrivalTimeSetpoint   = buildVpid unrolled.slowArrivalTimeSetpoint,
       historicFastArrivalsCount = buildVpid unrolled.historicFastArrivalsCount,
	   historicGoodArrivalsCount = buildVpid unrolled.historicGoodArrivalsCount,
	   historicSlowArrivalsCount = buildVpid unrolled.historicSlowArrivalsCount,
	   historicNoArrivalsCount   = buildVpid unrolled.historicNoArrivalsCount ,
	   historicCyclesCount       = buildVpid unrolled.historicCyclesCount,
	   currentModeCountdownSec   = buildVpid unrolled.currentModeCountdownSec,
	   tubingPressurePSIG        = buildVpid unrolled.tubingPressurePSIG,
	   casingPressurePSIG        = buildVpid unrolled.casingPressurePSIG,
	   linePressurePSIG          = buildVpid unrolled.linePressurePSIG,
	   plungerArrivalOneTimeSec  = buildVpid unrolled.plungerArrivalOneTimeSec,
	   locationName              = unrolled.locationName,
	   wellDepth                 = (buildVpid unrolled.wellDepth) //{location = unrolled.scadaDataLocationId }
	   }: NeededSources
	   

in \(unrolled:UnrolledSource) -> buildWapitiSet (buildNeededSources  unrolled)

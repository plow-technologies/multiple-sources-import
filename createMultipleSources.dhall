let concatMap = https://raw.githubusercontent.com/dhall-lang/Prelude/35deff0d41f2bf86c42089c6ca16665537f54d75/List/concatMap
in
let map = https://raw.githubusercontent.com/dhall-lang/dhall-lang/0a7f596d03b3ea760a96a8e03935f4baa64274e1/Prelude/List/map
in
let sourceFunction = ./BuildNeededSourcesFunction.dhall  -- https://raw.githubusercontent.com/plow-technologies/virtual-parameter-templates/master/BuildNeededSourcesFunction.dhall
in
let UnrolledSource = ./UnrolledSource.dhall -- https://raw.githubusercontent.com/plow-technologies/virtual-parameter-templates/master/UnrolledSource.dhall
in
let NeededSources = ./NeededSources.dhall -- https://raw.githubusercontent.com/plow-technologies/virtual-parameter-templates/master/NeededSources.dhall
in
let VirtualParameter =  https://raw.githubusercontent.com/plow-technologies/virtual-parameter-templates/master/VirtualParameter.dhall
in let sources = [
    {
        companyId = +42,
        siteId = +261,
        locationId = +1997,
        locationName = "Federal 023-30-09-19",
        scadaDataLocationId = +3856,
        yesterdaysVolume = +168479,
        rateMscfpd = +168477,
        historicOnTime = +178329,
        historicOffTime = +178330,
        offTimeSetpoint = +168455,
        afterflowTimeSetpoint = +168456,
        minOffTime = +168458,
        fastArrivalTimeSetpoint = +168452,
        slowArrivalTimeSetpoint = +168453,
        historicFastArrivalsCount = +178320,
        historicGoodArrivalsCount = +178321,
        historicSlowArrivalsCount = +178322,
        historicNoArrivalsCount = +178323,
        historicCyclesCount = +178324,
        currentModeCountdownSec = +177622,
        tubingPressurePSIG = +168472,
        casingPressurePSIG = +168471,
        linePressurePSIG = +168475,
        plungerArrivalOneTimeSec = +168465,
        wellDepth = +352556
    }: UnrolledSource
] : List UnrolledSource	
in concatMap UnrolledSource VirtualParameter sourceFunction sources

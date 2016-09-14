MODULE var_lookup

 ! Define index arrays for named variables

 use nrtype
 use public_var

 implicit none

 private

! ***********************************************************************************************************
!  Define indices for attribute variables for Model HRU - geographic/topographic/climatic properties
! ***********************************************************************************************************
 type, public  ::  iLook_VarHru
  integer(i4b)     :: lat           = imiss         ! latitude of center of model hru
  integer(i4b)     :: lon           = imiss         ! longitude of center of model hru 
  integer(i4b)     :: ele           = imiss         ! mean elevation of model hru 
  integer(i4b)     :: ann_P         = imiss         ! Annual precipitation of model hru 
  integer(i4b)     :: avg_T         = imiss         ! Average annual air temperature of model hru
  integer(i4b)     :: july_T        = imiss         ! Average July air temperature of model hru 
 endtype iLook_VarHru

! ***********************************************************************************************************
!  Define indices for variables for mapping data
! ***********************************************************************************************************
 type, public  ::  iLook_VarMapData
  integer(i4b)     :: hru_id         = imiss        ! hru id 
  integer(i4b)     :: weight         = imiss        ! Areal weight of overlapping polygon for hru 
  integer(i4b)     :: overlapPolyId  = imiss        ! Id of overlapping polygon for hru 
 endtype iLook_varMapData

! ***********************************************************************************************************
!  Define index for variables in Veg data 
! ***********************************************************************************************************
 type, public  ::  iLook_VarVegData
  integer(i4b)     :: polyid          = imiss       ! veg polygon id
  integer(i4b)     :: grnfrc          = imiss       ! greeness fraction 
  integer(i4b)     :: lai             = imiss       ! lai 
  integer(i4b)     :: vegclass        = imiss       ! veg class 
 endtype iLook_VarVegData

! ***********************************************************************************************************
!  Define index for variables in soil data 
! ***********************************************************************************************************
 type, public  ::  iLook_VarSoilData
  integer(i4b)     :: polyid     = imiss      ! soil polygon id
  integer(i4b)     :: h          = imiss      ! soil layer thickness 
  integer(i4b)     :: soilclass  = imiss      ! soil polygon id
  integer(i4b)     :: sand       = imiss      ! sand fraction in soil polygon and layer
  integer(i4b)     :: silt       = imiss      ! silt fraction in soil polygon and layer
  integer(i4b)     :: clay       = imiss      ! clay fraction in soil polygon and layer
  integer(i4b)     :: bd         = imiss      ! bulk density in soil polygon and layer 
  integer(i4b)     :: ele_mean   = imiss      ! mean elevation over a soil polygon 
  integer(i4b)     :: ele_std    = imiss      ! standard deviation of elevation over a soil polygon 
  integer(i4b)     :: slp_mean   = imiss      ! mean slope over a soil polygon 
 endtype iLook_VarSoilData

! ***********************************************************************************************************
!  Define indices for soil properties
! ***********************************************************************************************************
 type, public  ::  iLook_PrpSoil
  integer(i4b)     :: bd    = imiss      ! bulk density [g/cm3]
  integer(i4b)     :: ks    = imiss      ! Saturated hydraulic conductivity [cm/hr]
  integer(i4b)     :: phi   = imiss      ! porosity [Frac]
  integer(i4b)     :: b     = imiss      ! slope of retention curve in log space (see Cosby et al., 1984 WRR)
  integer(i4b)     :: psis  = imiss      ! saturation matric potential [kPa] 
  integer(i4b)     :: fc    = imiss      ! Field capacity (= water content held in soil after excess water drained)
  integer(i4b)     :: wp    = imiss      ! Wilting point [vol/vol]
  integer(i4b)     :: myu   = imiss      ! specific yield [-] 
  integer(i4b)     :: z     = imiss      ! Layer interface depth [m]
  integer(i4b)     :: h     = imiss      ! Layer thickness [m]
 endtype iLook_PrpSoil

! ***********************************************************************************************************
!  Define indices for Veg properties
! ***********************************************************************************************************
 type, public  ::  iLook_PrpVeg
  integer(i4b)     :: lai01          = imiss       ! Jan LAI  m^2/m^2
  integer(i4b)     :: lai02          = imiss       ! Feb LAI
  integer(i4b)     :: lai03          = imiss       ! Mar LAI
  integer(i4b)     :: lai04          = imiss       ! Apr LAI
  integer(i4b)     :: lai05          = imiss       ! May LAI
  integer(i4b)     :: lai06          = imiss       ! Jun LAI
  integer(i4b)     :: lai07          = imiss       ! Jul LAI
  integer(i4b)     :: lai08          = imiss       ! Aug LAI
  integer(i4b)     :: lai09          = imiss       ! Sep LAI
  integer(i4b)     :: lai10          = imiss       ! Oct LAI
  integer(i4b)     :: lai11          = imiss       ! Nov LAI
  integer(i4b)     :: lai12          = imiss       ! Dec LAI
  integer(i4b)     :: vegtype        = imiss       ! vege type
  integer(i4b)     :: nroot          = imiss       ! rooitng depth m 
  integer(i4b)     :: snup           = imiss       ! threshold SWE depth that implies 100% snow cover 
  integer(i4b)     :: rs             = imiss       ! stomatal resistance
  integer(i4b)     :: mrs            = imiss       ! minimum stomatal resistance
  integer(i4b)     :: leafDim        = imiss       ! characteristic leaf dimension
  integer(i4b)     :: can_top_h      = imiss       ! height of top of vegetation canopy above ground
  integer(i4b)     :: can_bot_h      = imiss       ! height of bottom of vegetation canopy above ground
  integer(i4b)     :: c_veg          = imiss       ! specific heat of vegetation J kg-1 K-1 
  integer(i4b)     :: maxMassVeg     = imiss       ! max. mass of vegetation with full foliage km m-2 
 endtype iLook_PrpVeg

! ***********************************************************************************************************
!  Define indices for topo variable in soil data  (MAY REMOVED)
! ***********************************************************************************************************
 type, public  ::  iLook_VarTopo
  integer(i4b)     :: ele_mean       = imiss      ! mean elevation over polygon [m] 
  integer(i4b)     :: ele_std        = imiss      ! std of elevation over polygon [m] 
  integer(i4b)     :: slp_mean       = imiss      ! mean slope over polygon [-]
 endtype iLook_VarTopo
! ***********************************************************************************************************
!  Define indices for soil variable in Soil data (MAY REMOVED)
! ***********************************************************************************************************
 type, public  ::  iLook_VarSoil
  integer(i4b)     :: h               = imiss      ! soil layer thickness 
  integer(i4b)     :: sand            = imiss      ! sand fraction in soil polygon and layer
  integer(i4b)     :: silt            = imiss      ! silt fraction in soil polygon and layer
  integer(i4b)     :: clay            = imiss      ! clay fraction in soil polygon and layer
  integer(i4b)     :: bd              = imiss      ! bulk density  in soil polygon and layer
 endtype iLook_VarSoil

! ***********************************************************************************************************
! define size of data vectors
! ***********************************************************************************************************
! Number of vairables defined
 integer(i4b),parameter,public    :: nVarHru=6
 integer(i4b),parameter,public    :: nVarMapData=3
 integer(i4b),parameter,public    :: nVarSoilData=10
 integer(i4b),parameter,public    :: nPrpSoil=10 
 integer(i4b),parameter,public    :: nVarVegData=4
 integer(i4b),parameter,public    :: nPrpVeg=22

 integer(i4b),parameter,public    :: nVarTopo=3 
 integer(i4b),parameter,public    :: nVarSoil=5 

! ***********************************************************************************************************
! define data vectors
! ***********************************************************************************************************
 type(iLook_VarHru),      public,parameter :: ixVarHru       = iLook_VarHru      (1,2,3,4,5,6)
 type(iLook_VarMapData),  public,parameter :: ixVarMapData   = iLook_VarMapData  (1,2,3)
 type(iLook_VarSoilData), public,parameter :: ixVarSoilData  = iLook_VarSoilData (1,2,3,4,5,6,7,8,9,10)
 type(iLook_PrpSoil),     public,parameter :: ixPrpSoil      = iLook_PrpSoil     (1,2,3,4,5,6,7,8,9,10)
 type(iLook_VarVegData),  public,parameter :: ixVarVegData   = iLook_VarVegData  (1,2,3,4)
 type(iLook_PrpVeg),      public,parameter :: ixPrpVeg       = iLook_PrpVeg      (1,2,3,4,5,6,7,8,9,10,&
                                                                                  11,12,13,14,15,16,17,18,19,20,&
                                                                                  21,22)
 type(iLook_VarTopo),     public,parameter :: ixVarTopo      = iLook_VarTopo     (1,2,3)
 type(iLook_VarSoil),     public,parameter :: ixVarSoil      = iLook_VarSoil     (1,2,3,4,5)

END MODULE var_lookup
MODULE var_lookup

 ! Define index arrays for named variables
 ! 1. list of models 
 ! 2. list of gamma parameters 

 USE nrtype
 USE public_var

 implicit none

 private

! ***********************************************************************************************************
! 1.Define indices for gamma (global) parameters
! ***********************************************************************************************************
 type, public  ::  iLook_gamma
   integer(i4b)     :: ks1gamma1       = imiss  ! 
   integer(i4b)     :: ks1gamma2       = imiss  ! 
   integer(i4b)     :: ks1gamma3       = imiss  ! 
   integer(i4b)     :: ks2gamma1       = imiss  ! 
   integer(i4b)     :: ks2gamma2       = imiss  ! 
   integer(i4b)     :: ks2gamma3       = imiss  ! 
   integer(i4b)     :: phi1gamma1      = imiss  ! 
   integer(i4b)     :: phi1gamma2      = imiss  ! 
   integer(i4b)     :: phi1gamma3      = imiss  ! 
   integer(i4b)     :: phi2gamma1      = imiss  !
   integer(i4b)     :: phi2gamma2      = imiss  ! 
   integer(i4b)     :: phi2gamma3      = imiss  ! 
   integer(i4b)     :: phi2gamma4      = imiss  ! 
   integer(i4b)     :: phi2gamma5      = imiss  ! 
   integer(i4b)     :: phi2gamma6      = imiss  ! 
   integer(i4b)     :: fc1gamma1       = imiss  ! 
   integer(i4b)     :: wp1gamma1       = imiss  ! 
   integer(i4b)     :: b1gamma1        = imiss  ! 
   integer(i4b)     :: b1gamma2        = imiss  ! 
   integer(i4b)     :: b1gamma3        = imiss  ! 
   integer(i4b)     :: psis1gamma1     = imiss  ! 
   integer(i4b)     :: psis1gamma2     = imiss  ! 
   integer(i4b)     :: psis1gamma3     = imiss  ! 
   integer(i4b)     :: myu1gamma1      = imiss  ! 
   integer(i4b)     :: myu1gamma2      = imiss  ! 
   integer(i4b)     :: z1gamma1        = imiss  ! total depth mulitplier 
   integer(i4b)     :: h1gamma1        = imiss  ! fraction of top layer to total depth  
   integer(i4b)     :: h1gamma2        = imiss  ! fraction of 2nd layer to total depth
   integer(i4b)     :: binfilt1gamma1  = imiss  ! 
   integer(i4b)     :: binfilt1gamma2  = imiss  ! 
   integer(i4b)     :: D11gamma1       = imiss  ! 
   integer(i4b)     :: D21gamma1       = imiss  ! 
   integer(i4b)     :: D31gamma1       = imiss  ! 
   integer(i4b)     :: D41gamma1       = imiss  ! 
   integer(i4b)     :: exp1gamma1      = imiss  ! 
   integer(i4b)     :: exp1gamma2      = imiss  ! 
   integer(i4b)     :: ksat1gamma1     = imiss  ! 
   integer(i4b)     :: bbl1gamma1      = imiss  ! 
   integer(i4b)     :: bbl1gamma2      = imiss  ! 
   integer(i4b)     :: BD1gamma1       = imiss  ! 
   integer(i4b)     :: SD1gamma1       = imiss  ! 
   integer(i4b)     :: WcrFrac1gamma1  = imiss  ! 
   integer(i4b)     :: WpwpFrac1gamma1 = imiss  ! 
 endtype iLook_gamma

! ***********************************************************************************************************
! 1.Define indices for beta (model) parameters
! ***********************************************************************************************************
 type, public  ::  iLook_beta
   integer(i4b)     :: binfilt  = imiss  ! 
   integer(i4b)     :: D1       = imiss  ! 
   integer(i4b)     :: D2       = imiss  ! 
   integer(i4b)     :: D3       = imiss  ! 
   integer(i4b)     :: D4       = imiss  ! 
   integer(i4b)     :: expt     = imiss  ! 
   integer(i4b)     :: ks       = imiss  ! 
   integer(i4b)     :: h1       = imiss  ! 
   integer(i4b)     :: h2       = imiss  ! 
   integer(i4b)     :: h3       = imiss  !
   integer(i4b)     :: h4       = imiss  ! 
   integer(i4b)     :: h5       = imiss  ! 
   integer(i4b)     :: bbl      = imiss  ! 
   integer(i4b)     :: BD       = imiss  ! 
   integer(i4b)     :: SD       = imiss  ! 
   integer(i4b)     :: WcrFrac  = imiss  ! 
   integer(i4b)     :: WpwpFrac = imiss  ! 
   integer(i4b)     :: rmin     = imiss
   integer(i4b)     :: lai      = imiss
 endtype iLook_beta

! ***********************************************************************************************************
! define data vectors
! ***********************************************************************************************************
 type(iLook_gamma),public,parameter  :: ixGamma = iLook_gamma(1,2,3,4,5,6,7,8,9,10,&
                                                             11,12,13,14,15,16,17,18,19,20,&
                                                             21,22,23,24,25,26,27,28,29,30,&
                                                             31,32,33,34,35,36,37,38,39,40,&
                                                             41,42,43)

 type(iLook_beta),public,parameter  :: ixBeta = iLook_beta(1,2,3,4,5,6,7,8,9,10,&
                                                          11,12,13,14,15,16,17,18,19)

! ***********************************************************************************************************
! define size of data vectors
! ***********************************************************************************************************
! Number of vairables defined
 integer(i4b),parameter,public    :: nGamma = 43
 integer(i4b),parameter,public    :: nBeta  = 19

END MODULE var_lookup
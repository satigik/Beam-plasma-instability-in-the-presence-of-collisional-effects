#!/bin/bash
# ### ifort for serial code running at home (i7-4790k Haswell) ###
# ifort -c  -xHASWELL -mtune=haswell -fma zetaFunc_m.f90
# ifort -c  -xHASWELL -mtune=haswell -fma DQsimp_m.f90
# ifort -xHASWELL -mtune=haswell -fma wt_lst_cdbk_wp.f90 -o bp DQsimp_m.o zetaFunc_m.o
# rm *.mod
# time ./bp &&
# # time ./stp5k &
# # rm WARNING*
# echo 'Finished' &&

### ifort for serial code running at UFRGS (i7-3770 Ivy Bridge) ###
ifort -c -xIVYBRIDGE -mtune=ivybridge -fma zetaFunc_m.f90
ifort -c -xIVYBRIDGE -mtune=ivybridge -fma DQsimp_m.f90
ifort -xIVYBRIDGE -mtune=ivybridge -fma wt_lst_cdbk_wp.f90 -o bp DQsimp_m.o zetaFunc_m.o
rm *.mod
# time ./bp &
time ./stp5k.sh &

# ### ifort for serial code running at MSI laptop (i7-8750H Coffeelake) ###
# ifort -c -double-size 64 -xCOFFEELAKE -mtune=coffeelake -fma zetaFunc_m.f90
# ifort -c -double-size 64 -xCOFFEELAKE -mtune=coffeelake -fma DQsimp_m.f90
# ifort -double-size 64 -xCOFFEELAKE -mtune=coffeelake -fma wt_lst_cdbk_wp.f90 -o bpnew DQsimp_m.o zetaFunc_m.o
# rm *.mod
# time ./bpnew &
# time ./stp5k &

# ### ifort for serial code running at MSI laptop (i7-8750H Coffeelake) ###
# ifort -c -double-size 64 -xCOFFEELAKE -mtune=coffeelake -fma zetaFunc_m.f90
# ifort -c -double-size 64 -xCOFFEELAKE -mtune=coffeelake -fma Qsimp_m.f90
# ifort -double-size 64  -xCOFFEELAKE -mtune=coffeelake -fma wt_lst_cdbk.f90 -o tevol Qsimp_m.o zetaFunc_m.o
# rm *.mod
# # time ./tevol & 
# # rm WARNING*
# # echo 'Finished' &
# time ./stp5k.sh
# # rm WARNING*
# echo 'Finished' &
# ## -xCOFFEELAKE -mtune=coffeelake -traceback
# ## -double-size 64 -fma -fprotect-parens -fp-model precise

# ### ifort for serial code running at MSI laptop (i7-8750H Coffeelake) ###
# ifort -c -double-size 64 -xCOFFEELAKE -mtune=coffeelake -fma zetaFunc_m.f90
# # ifort -c -double-size 64 -xCOFFEELAKE -mtune=coffeelake -fma DQsimp_m.f90
# ifort -double-size 64  -xCOFFEELAKE -mtune=coffeelake -fma steady_state.f90 -o int zetaFunc_m.o
# rm *.mod
# time ./int &
# # time ./stp5k &

# ### Gfortran for serial code running at MSI laptop (i7-8750H Coffeelake) ###
# gfortran -c -frounding-math -fcx-fortran-rules zetaFunc_m.f90
# gfortran -c -frounding-math DQsimp_m.f90
# gfortran -frounding-math -fcx-fortran-rules steady_state.f90 -o dnew DQsimp_m.o zetaFunc_m.o
# rm *.mod
# time ./dnew &
# # time ./stp5k &

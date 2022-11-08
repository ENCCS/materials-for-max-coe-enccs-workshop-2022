DAY-2, EXERCISE - PHONON MODES OF CnSnI3 AT GAMMA 
=================================================

# PHONON CALCULATION, STEP 2 #
 
Perform a phonon calculation at Gamma for CnSnI3 using the ph.x program.

1. Copy ../inputs/ph.CnSnI3.in in the current folder and modify the &inputph namelist ; add coordinates of the Gamma point

   	&inputph
		prefix=''
		amass(1)=
		amass(2)=
		amass(3)=
	/
	X	Y	Z

2. Check the number of k points

	awk '/number of k/' ph.CnSnI3.out

3. Check the number of irreducible representations

	awk '/irreducible/' ph.CnSnI3.out

4. Check the dynamical matrix in dynmat.out

	tail -n 97 harmdyn_support



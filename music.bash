#!/bin/bash
#************************
#*    MUSICIAN STAFF    *
#************************    
c=500;   f=650;  es=600;  g=750; d=550; 
C=1000;                                 CIS=1090;
CI=2000; 
CII=4100;
#---------
D=1160;  
ais=900;
DIS=1210;  E=1285;   F=1350;   FIS=1425;  G=1500;
GIS=1599;  A=1700;   AIS=900; H=1900;    CC=2000;
a=855;  h=955;

IN=4.0;    HD=3.0;   HA=2.0;    QD=1.5; 
QU=1.0;    SE=0.5;   SX=0.25;

play()
{
  (speaker-test -t sine -f $1 )& pid=$! ; sleep $2 ; kill -9 $pid;
}


gimn_c()
{
  play $E $QD; play $E $SE; play $E $SE; play $D $SE;
  play $E $SE; play $F $SE; play $G $QD; play $F $SE;
  play $E $QU; play $D $QU; play $C $QU; play $E $QU;
  play $h $QU; play $E $QU;

}

gimn_i()
{
  play $h $QD;  play $h $SE;  play $E  $SE; play $D  $SE;
  play $C  $SE; play $h $SE;  play $a $SE;  play $h $SE;
  play $C  $SE; play $a $SE;  play $h $QU;  play $h $QU;
  play $C  $QU; play $C  $QU; play $D  $QU; play $D  $QU;
  play $E  $HA; play $E  $HA; play $h $QD;  play $h $SE;
  play $E  $SE; play $D  $SE; play $C  $SE; play $h $SE;
  play $a $SE;  play $h $SE;  play $C  $SE; play $a $SE;
  play $h $QU;  play $h $QU;  play $C  $QU; play $E  $QU;
  play $h $QU;  play $E  $QU; play $a $HA;  play $a $HA;     
}

end()
{
  play $G $QD;  play $FIS $SE; play $G  $QU; play $E  $QU;
  play $D  $QU; play $D  $QU;  play $G  $SE; play $F  $SE;
  play $E  $SE; play $D  $SE;  play $C  $QU; play $E  $QU;
  play $h $QU;  play $E  $QU;  play $A  $HA; play $A  $HA;
}

gimn()
{
  gimn_c;
  play $a $QD; play $h $SE; play $C $QU;
  play $D $QU; gimn_c;      play $a $HA;
  play $a $HA; gimn_i;      end;
};

#************************
#*  Example of writing  *
#************************   


 #declare -a names
 #names=( $C $D $E $C $D $C ); 
 #for i in "${names[@]}"; do play $i 0.5 ; done


#************************
#*      Funny sound     *
#************************   
#declare -a names
#for sound in {100..3000..20}; do play $sound 0.1; done
#for sound in {3000..100..-20}; do play $sound 0.1; done



#########################################################astronomia
astro_intro(){
play $c 0.25  ;play $c 0.25  ;play $c 0.25  ;play $c 0.25  ;play $c 0.25  ;play $c 0.25  ;play $c 0.25  ;play $c 0.25;
play $f 0.25  ;play $f 0.25  ;play $f 0.25  ;play $f 0.25  ;play $f 0.25  ;play $f 0.25  ;play $f 0.25  ;play $f 0.25;
play $es 0.25 ;play $es 0.25 ;play $es 0.25 ;play $es 0.25 ;play $es 0.25 ;play $es 0.25 ;play $es 0.25 ;play $es 0.25;
play $AIS 0.25;play $AIS 0.25;play $AIS 0.25;play $AIS 0.25;play $AIS 0.25;play $AIS 0.25;play $AIS 0.25;play $AIS 0.25;
play $C 0.25  ;play $C 0.25  ;play $C 0.25  ;play $C 0.25  ;play $C 0.25  ;play $C 0.25  ;play $C 0.25  ;play $C 0.25;play $C 2.25;
}
astro(){
play $c $SE  ;play $c 0.25  ;play $g 0.25;
play $f $SE  ;play $es $SE  ;play $d $SE;
play $d 0.25 ;play $es 0.25 ;play $f $SE;
play $es 0.25;play $d 0.25  ;play $c $SE; 
play $c 0.25 ;play $D 0.25  ;play $CIS 0.25 ;play $D 0.25 ;play $CIS 0.25 ;play $D 0.25;
play $c $SE  ;
play $c 0.25 ;play $D 0.25  ;play $CIS 0.25;play $D 0.25  ;play $CIS 0.25;play $D 0.25;
play $es 0.25;play $es 0.25 ;play $es 0.25;play $es 0.25 ;play $es 0.25 ;play $es 0.25;play $es 0.25;play $es 0.25;
play $g 0.25 ;play $g 0.25  ;play $g 0.25 ;play $g 0.25  ;play $g 0.25  ;play $g 0.25;play $g 0.25;play $g 0.25;
play $f 0.25 ;play $f 0.25  ;play $f 0.25 ;play $f 0.25  ;play $f 0.25  ;play $f 0.25;play $f 0.25;play $f 0.25;
play $AIS 0.25;play $AIS 0.25;play $AIS 0.25;play $AIS 0.25;play $AIS 0.25;play $AIS 0.25;play $AIS 0.25;play $AIS 0.25;
play $C 0.25;  play $C 0.25  ;play $C 0.25;play $C 0.25;play $C 0.25;play $C 0.25;play $C 0.25;play $C 0.25;play $C 2.25;
}
###########################################################
astronomia(){
astro_intro;
astro;
}
astronomia;

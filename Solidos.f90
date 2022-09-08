program Solidos
implicit none
real::c(8,3),d(8,8),octa(6,3),ico(12,3),a,dh(220),med(220,3),dode(20,3),dc,c60(100,3)
integer::i,z,y,x,k,l,j,m,rot,sig,rt(18,1)

!Marco Zuniga

open(unit=10,file='Cubo.xyz',status='replace')
open(unit=30,file='Tetraedro.xyz',status='replace')
open(unit=40,file='Octaedro.xyz',status='replace')
open(unit=50,file='Icosaedro.xyz',status='replace')
open(unit=70,file='Dodecaedro.xyz',status='replace')
open(unit=80,file='C-60.xyz',status='replace')

!write(10,*)' 8 '
!write(10,*) ''

!==============FIRST WE BUILD HEXAHEDRON==========================
i=1
do z=-1,1,2
do y=-1,1,2
do x=-1,1,2
c(i,1)=x
c(i,2)=y
c(i,3)=z
write(10,*)'<',c(i,1),',',c(i,2),',',c(i,3),'>,'
i=i+1
end do
end do
end do

!==================TETRAHEDRON====================================
!write(30,*)'4'
!write(30,*)''
!write(30,*)'H',c(1,1),c(1,2),c(1,3)
write(30,*)'<',c(1,1),c(1,2),c(1,3),'>,'
do l=2,8
d(1,l)=((c(1,1)-c(l,1))**2.0+(c(1,2)-c(l,2))**2.0+(c(1,3)-c(l,3))**2.0)**0.5
if (d(1,l)==2.0*(sqrt(2.0)))then
write(30,*) '<',c(l,1),c(l,2),c(l,3),'>,'
!write(30,*)c(1,1),',',c(1,2),',',c(1,3),','
end if
write(20,*) d(1,l)
end do

!======================OCTAHEDRON===============================
rot=1
do j=1,3
octa(1,j)=(c(1,j)+c(2,j)+c(3,j)+c(4,j))*(0.25)
octa(2,j)=-1.0*octa(1,j)
end do

do j=3,5,2
do i=1,3
if (j==3)then
rot=i+1
else
rot=i+2
end if
if(rot.GT.3) then
rot=1
end if
octa(j,i)=octa(1,rot)
octa(j+1,i)=octa(2,rot)
end do
end do

!write(40,*) '6'
!write(40,*) ''
do i=1,6
write(40,*)'<',octa(i,1),octa(i,2),octa(i,3),'>,'
end do

!========================ICOSAHEDRON=============================
l=1
a=sqrt(5.0)-1.0
rot=1

do i=1,18
if (rot.GT.3) then
rot=1
end if
rt(i,1)=rot
rot=rot+1
end do

!write(50,*) '12'
!write(50,*) ''

do j=1,3
do k=-1,1,2
do sig=-1,1,2
ico(l,rt(j,1))=sig*a/2.0
ico(l,rt(j+1,1))=0
ico(l,rt(j+2,1))=k
write(50,*)'<',ico(l,1),ico(l,2),ico(l,3),'>,'
l=l+1
end do
end do
end do

!==========================DODECAHEDROM===================================
m=1
l=1
!write(70,*)'20'
!write(70,*)''
do i=1,10
do j=i+1,11
do k=j+1,12
med(l,1)=(ico(i,1)+ico(j,1)+ico(k,1))/3.0
med(l,2)=(ico(i,2)+ico(j,2)+ico(k,2))/3.0
med(l,3)=(ico(i,3)+ico(j,3)+ico(k,3))/3.0
dh(l)=(med(l,1)**2.0+med(l,2)**2.0+med(l,3)**2.0)**(0.5)

if (abs(dh(l)-(a/12.0)*sqrt(3.0)*(3.0+sqrt(5.0))).LT.0.0001) then
dode(m,1)=med(l,1)
dode(m,2)=med(l,2)
dode(m,3)=med(l,3)
write(70,*)'<',dode(m,1),',',dode(m,2),',',dode(m,3),'>,'
m=m+1
end if

l=l+1
end do
end do
end do


!==========================SE FABRICA EL C-60=================================
k=1
!write(80,*)'60'
!write(80,*)''
do i=1,11
do j=i+1,12
dc=((ico(i,1)-ico(j,1))**2.0+(ico(i,2)-ico(j,2))**2.0+(ico(i,3)-ico(j,3))**2.0)**(0.5)
if (dc==a) then
c60(k,1)=ico(i,1)+(ico(j,1)-ico(i,1))*(1.0/3.0)
c60(k+1,1)=ico(i,1)+(ico(j,1)-ico(i,1))*(2.0/3.0)
c60(k,2)=ico(i,2)+(ico(j,2)-ico(i,2))*(1.0/3.0)
c60(k+1,2)=ico(i,2)+(ico(j,2)-ico(i,2))*(2.0/3.0)
c60(k,3)=ico(i,3)+(ico(j,3)-ico(i,3))*(1.0/3.0)
c60(k+1,3)=ico(i,3)+(ico(j,3)-ico(i,3))*(2.0/3.0)
write(80,*)'<',c60(k,1),c60(k,2),c60(k,3),'>,'
write(80,*)'<',c60(k+1,1),c60(k+1,2),c60(k+1,3),'>,'
k=k+2
end if
end do
end do



pause
end program


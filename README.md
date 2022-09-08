# Platonic-solids
Obtaining the vertice's coordinates of the five Platonic Solids, with a cube as a starting point. Using Fortran for calcules and data generation, and Pov-Ray as visualization tool.

Platonic solid, any of the five geometric solids whose faces are all identical, regular polygons meeting at the same three-dimensional angles. Also known as the five regular polyhedra, they consist of the tetrahedron (or pyramid), cube, octahedron, dodecahedron, and icosahedron.

![solids](https://user-images.githubusercontent.com/66703976/188541502-e91d768d-d4bf-4a7e-ae90-4fc9130b4011.jpg)

As part of the project, we also obtain the coordinates of the Fullerene(C-60), Carbon 60 is a molecule made up of 60 carbon atoms. The layout of the atoms forms a molecule shaped like a soccer ball. Carbon 60 was first used in nanotechnology and electronics.

![fullerene](https://user-images.githubusercontent.com/66703976/188542837-3e31430e-bf86-4ff7-ab93-abe2163de0fe.PNG)


In the same Fortran code we build the five solids and C-60 as output we get six .xyz files (useful format for dinamic molecular simulations and atom visualization), one for each solid and one for the fullerene.

HEXAHEDRON:

As description says, we start with a simple cube, or hexahedron, in order to generate it I did a nested statement conformed by three DOs cicles, each of them related to a dimension of the cube, so we start with a line, then a plane, and finaly, a solid. As you can see the cube is 2 units long per edge, this is only for simplicity so we have a symmetric figure touching the unit in every single direction, whoever the code can be escalable at the desired size.

![hexa](https://user-images.githubusercontent.com/66703976/188544800-81b81d81-2ce5-4d3f-98e4-afd3b15ec38d.PNG)

Visualization in POV-Ray:

![hexafig](https://user-images.githubusercontent.com/66703976/188545488-94e805a3-9798-421f-8dc7-2eb14c0af67f.PNG)

TETRAHEDRON:

Once we've got the Hexahedron, we can go with this one, first we pick a vertice (it doesn't matter witch one) and obtain every posible distance between it and the rest of the points, we only are interested in the distances equals to 2*sqrt(2), which is the length of one face's diagonal of the cube.

![tetra](https://user-images.githubusercontent.com/66703976/188547368-d3d262df-d6f6-4f80-a05b-37f27e562287.PNG)

Visualization in POV-Ray:

![tetrafig](https://user-images.githubusercontent.com/66703976/188547601-00aff8ba-b0de-40d7-be4f-a0b3a8e5e31f.PNG)

OCTAHEDRON:

Again, we start from the hexahedron, here we just need to obtain a point that is equidistant to the vertice of each face, the code does it for one axis:

![octa](https://user-images.githubusercontent.com/66703976/189026136-488311c4-5069-4ea1-ba7e-e7cf363dea6a.PNG)

Then we apply the results in the restant axis (knowing that the center of our hexahedron is in the origin):

![2](https://user-images.githubusercontent.com/66703976/189026500-e9e35d1c-0682-4131-936f-90f74b4225a4.PNG)

Visualization in Pov-Ray:

![octafig](https://user-images.githubusercontent.com/66703976/189026648-c7fa193e-de96-4508-8174-be1aed7abb60.PNG)

ICOSAHEDRON:

This is a good one, doing some calculus using the Pytaghoras Theorem you can obtain the length needed for a line traced at the center of one Hexahedrons to be the edge of a equilateral triangle, whose opposite corner would be the start for another edge in the following face.

![icosa01](https://user-images.githubusercontent.com/66703976/189029347-df5a33be-bb76-45df-8ca9-dbabd9840b1d.gif)

This gives a length of sqrt(5)-1, for a cube having edges of 2 units (as ours has).

First, we create our constants and an array that is only taking values from 1 to 3, this will be helpful for changing between axes:

![ico1](https://user-images.githubusercontent.com/66703976/189029835-40bbe7fd-4b94-4d44-91a1-a4624fa45695.PNG)

Then, we assign our vertices into one cube's face, the loops with help of the array will do the rest of the work:

![ico2](https://user-images.githubusercontent.com/66703976/189030238-61f44874-904d-4e48-b25c-cc17f76495dc.PNG)

Visualization in Pov-Ray:

![ico](https://user-images.githubusercontent.com/66703976/189030325-604fae92-6bf7-41e2-b19f-4017e622eb31.PNG)

DODECAHEDRON:

This is a nice one also, how many faces icosahedron has? 20 of them... what if we take take advantage of the icosahedron's symmetry and make a figure whose vertices are the center of each face? Then we have a dodecahedron, a figure of 20 vertices and 12 faces, so let's start with it. Again, after some simular calcules we obtain a relationship between one edge of icosahedron and the radius of an embeded sphere tangent to its faces (in consecuent, the dodecahedron's vertices will be spreaded on this sphere's surface):

![form](https://user-images.githubusercontent.com/66703976/189032195-9610ea2e-ff21-4685-8100-b40fa6a9f35b.PNG)

Great, now, a simple way to obtain the center of a triangle is adding its vertices coordinates (as vectors) and divide the result into three. So we make this for all posible mix of coordinates (icosahedron's vertices):

![dode1](https://user-images.githubusercontent.com/66703976/189032551-ab729e30-7aeb-4eca-b588-92c4dde08d12.PNG)

We obtain lots of points, but, knowing the last relationship, we only keep those who are at the required distance from the origin:
![dode2](https://user-images.githubusercontent.com/66703976/189032864-631f71f1-f100-4b8a-8357-f31205053804.PNG)

Visualization in POV-Ray:

![dodefig](https://user-images.githubusercontent.com/66703976/189033012-1179cc1f-3ea4-404a-8863-d236c773cef4.PNG)

C-60:

Great news! You can obtain the C-60 structure from dodecahedron, just have to divide into three every edge and keep only the in between points.

![c60](https://user-images.githubusercontent.com/66703976/189033449-5d33062f-4e6f-4e25-9927-08a8a48f42ae.PNG)

Visualization in POV-Ray:

![c60fig](https://user-images.githubusercontent.com/66703976/189033541-34186bea-a0b3-496c-b183-e72b7c8f9745.PNG)

Now we're done. Fortran file and .pov for povray visualization are added to the repository.

-Marco Zúñiga

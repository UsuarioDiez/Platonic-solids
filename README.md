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
One we've got the Hexahedron, we can go with this one, first we pick a vertice (it doesn't matter witch one) and obtain every posible distance between it and the rest of the points, we only are interted in the distances equals to 2*sqrt(2), which is the length of one face's diagonal of the cube.

![tetra](https://user-images.githubusercontent.com/66703976/188547368-d3d262df-d6f6-4f80-a05b-37f27e562287.PNG)

Visualization in POV-Ray:

![tetrafig](https://user-images.githubusercontent.com/66703976/188547601-00aff8ba-b0de-40d7-be4f-a0b3a8e5e31f.PNG)





//Maya ASCII 2017 scene
//Name: Props_RB.ma
//Last modified: Mon, Apr 24, 2017 08:42:10 PM
//Codeset: 1252
requires maya "2017";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2017";
fileInfo "version" "2017";
fileInfo "cutIdentifier" "201606150345-997974";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "29A1A513-4105-6063-E13E-8DBE7BEB984D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -15.848733715962464 0.52498589462858369 92.553824180073619 ;
	setAttr ".r" -type "double3" 3.2616472686113855 -2166.9999999992556 -5.0069376437164338e-017 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "4AB97E77-4776-AEDC-B1DB-AE8642DCF83A";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 99.735522539417076;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "28324D95-4D90-36AA-45D9-DA9438FE1D3E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "3131E956-41C0-BD34-4B3C-48B818180D8C";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "23B0A8A6-4E96-E42C-66F9-17A004EDD7C0";
	setAttr ".t" -type "double3" 11.591256167384998 13.822964246896719 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "E1EB3554-4506-76A8-6138-3488D7A01EA3";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 105.78946186639104;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "8C82A704-4233-6D45-3BEC-A7BFEA6501A0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "F1513C14-4B9F-EB00-DCA6-E58D862D096A";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "imagePlane1";
	rename -uid "0FFEFF8E-4DC5-1F5C-F2B3-5BB49C0604C8";
	setAttr ".t" -type "double3" 0 5.5031166518254686 0 ;
	setAttr ".s" -type "double3" 2.0870968443261164 2.0870968443261164 2.0870968443261164 ;
createNode imagePlane -n "imagePlaneShape1" -p "imagePlane1";
	rename -uid "985211E3-4E09-9D1E-3DAD-8CBFDAFAE659";
	setAttr -k off ".v";
	setAttr ".fc" 50;
	setAttr ".imn" -type "string" "C:/Users/burro/Desktop/prop2.jpg";
	setAttr ".cov" -type "short2" 564 555 ;
	setAttr ".dlc" no;
	setAttr ".w" 5.64;
	setAttr ".h" 5.55;
	setAttr ".cs" -type "string" "sRGB";
createNode transform -n "pCube1";
	rename -uid "5CAA5F0A-45D1-8B62-9C15-16A23931E063";
	setAttr ".t" -type "double3" 11.267130068852197 6.1347718880227244 0 ;
	setAttr ".s" -type "double3" 5.0154164883536883 8.770575700242091 4.1387760330647936 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "3706598D-4471-50BA-B1CE-488C4FF7935B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.37499997764825821 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "imagePlane2";
	rename -uid "07467092-409F-1B07-0E8B-9298E2E54F80";
	setAttr ".t" -type "double3" 22.729779072842433 2.1593290119200299 0 ;
createNode imagePlane -n "imagePlaneShape2" -p "imagePlane2";
	rename -uid "6D6F8197-45E8-F15E-1261-41B6D02A0C0A";
	setAttr -k off ".v";
	setAttr ".fc" 50;
	setAttr ".imn" -type "string" "C:/Users/burro/Desktop/prop3.jpg";
	setAttr ".cov" -type "short2" 600 600 ;
	setAttr ".dlc" no;
	setAttr ".w" 6;
	setAttr ".h" 6;
	setAttr ".cs" -type "string" "sRGB";
createNode transform -n "imagePlane3";
	rename -uid "64BC5FA4-46FA-1FFD-49B1-5F890816BA24";
	setAttr ".t" -type "double3" -18.013349915227629 2.2729779072842415 0 ;
	setAttr ".s" -type "double3" 1.7197681625930052 1.7197681625930052 1.7197681625930052 ;
createNode imagePlane -n "imagePlaneShape3" -p "imagePlane3";
	rename -uid "1AE8849F-4233-8DC0-96D5-CDA530F1AA2E";
	setAttr -k off ".v";
	setAttr ".fc" 50;
	setAttr ".imn" -type "string" "C:/Users/burro/Desktop/prop1.jpg";
	setAttr ".cov" -type "short2" 564 378 ;
	setAttr ".dlc" no;
	setAttr ".w" 5.64;
	setAttr ".h" 3.78;
	setAttr ".cs" -type "string" "sRGB";
createNode transform -n "imagePlane4";
	rename -uid "A9D91B6B-45C0-3275-0E88-2A97F57BC35E";
	setAttr ".t" -type "double3" 43.982122505950116 4.7732536052969099 0 ;
	setAttr ".s" -type "double3" 2.2573920338168159 2.2573920338168159 2.2573920338168159 ;
createNode imagePlane -n "imagePlaneShape4" -p "imagePlane4";
	rename -uid "304B6BDC-46AA-83CC-7259-4EAE48CAA013";
	setAttr -k off ".v";
	setAttr ".fc" 50;
	setAttr ".imn" -type "string" "C:/Users/burro/Desktop/prop4.jpg";
	setAttr ".cov" -type "short2" 564 423 ;
	setAttr ".dlc" no;
	setAttr ".w" 5.64;
	setAttr ".h" 4.2299999999999995;
	setAttr ".cs" -type "string" "sRGB";
createNode transform -n "pCube2";
	rename -uid "56F90381-4CBE-3B8D-DC68-35946823A2E2";
	setAttr ".t" -type "double3" 28.677180284905518 1.9984881111164796 0 ;
	setAttr ".s" -type "double3" 3.0148571149052334 3.0148571149052334 3.0148571149052334 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	rename -uid "079DBA3C-493C-2699-D283-51A3E5F69459";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.86041140556335449 0.035281636752188206 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube3";
	rename -uid "CFC2D50F-4C99-AF5E-F4C4-2FB4D8BBE920";
	setAttr ".t" -type "double3" 11.253871026597812 9.229832515585823 -1.8168113242718409 ;
	setAttr ".s" -type "double3" 2.482708678925905 0.64759659024789296 2.193642301924875 ;
createNode mesh -n "pCubeShape3" -p "pCube3";
	rename -uid "BEB1BAFD-4928-8BBD-15B0-7296CA9A7988";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube4";
	rename -uid "A6FECC16-472F-1BAB-72CD-CB82319FBC8A";
	setAttr ".t" -type "double3" 13.047724198804222 7.0434659075862562 -1.9907883988841171 ;
	setAttr ".s" -type "double3" 0.47706531326319757 1 0.60084959946472705 ;
createNode mesh -n "pCubeShape4" -p "pCube4";
	rename -uid "AC45579F-45C0-0B2D-D69D-FAB2EA808E99";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.375 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[0]" -type "float3" -0.95143634 0 0 ;
	setAttr ".pt[2]" -type "float3" -0.95143634 0 0 ;
	setAttr ".pt[4]" -type "float3" -0.95143634 0 0 ;
	setAttr ".pt[6]" -type "float3" -0.95143634 0 0 ;
createNode transform -n "pCube5";
	rename -uid "2F8A100D-4724-EFB7-3EC9-669820A45BAE";
	setAttr ".t" -type "double3" 13.047724198804222 8.640996719528804 -1.9907883988841171 ;
	setAttr ".s" -type "double3" 0.47706531326319757 1 0.60084959946472705 ;
createNode mesh -n "pCubeShape5" -p "pCube5";
	rename -uid "4086D213-4777-4063-1105-E3AA9581E0DC";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.47396192920859903 0.50000002083834261 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape1" -p "pCube5";
	rename -uid "4FE871AE-4DE9-9038-D2D3-2BB70F68BD8A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 68 ".uvst[0].uvsp[0:67]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0 1 0 0
		 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1
		 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0
		 1 1 0 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[0]" -type "float3" -0.95143634 0 0 ;
	setAttr ".pt[2]" -type "float3" -0.95143634 0 0 ;
	setAttr ".pt[4]" -type "float3" -0.95143634 0 0 ;
	setAttr ".pt[6]" -type "float3" -0.95143634 0 0 ;
	setAttr -s 24 ".vt[0:23]"  -0.50000572 -0.5 0.50000119 0.5 -0.49999905 0.5545733
		 -0.50000572 0.5 0.50000119 0.5 0.50000095 0.5545733 -0.50000572 0.5 -0.49999881 0.5 0.5 -0.49999881
		 -0.50000572 -0.5 -0.49999881 0.5 -0.5 -0.49999881 1.42071915 -0.49999905 0.5545733
		 1.42071915 0.50000095 0.5545733 1.42071915 0.5 -0.49999881 1.42071915 -0.5 -0.49999881
		 0.5 -5.31001568 4.91041565 0.5 -4.31001568 4.91041565 1.42071915 -5.31001568 4.91041565
		 1.42071915 -4.31001568 4.91041565 -3.35715675 -5.31553698 6.079547882 -3.35715675 -4.31553698 6.079547882
		 1.42071915 -5.31553698 6.079547882 1.42071915 -4.31553698 6.079547882 -3.35715675 -5.31757975 6.94466877
		 -3.35715675 -4.31757975 6.94466877 1.42071915 -5.31757975 6.94466877 1.42071915 -4.31757975 6.94466877;
	setAttr -s 44 ".ed[0:43]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 1 4 6 0 5 7 1 6 0 0 7 1 1 1 8 0 3 9 0 8 9 0 5 10 0 9 10 0 7 11 0 10 11 0 11 8 0
		 1 12 0 3 13 0 12 13 1 8 14 0 12 14 0 9 15 0 13 15 0 14 15 1 12 16 0 13 17 0 16 17 1
		 14 18 0 16 18 1 15 19 0 17 19 1 18 19 1 16 20 0 17 21 0 20 21 0 18 22 0 20 22 0 19 23 0
		 21 23 0 22 23 0;
	setAttr -s 20 -ch 80 ".fc[0:19]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -8 13 16 -16
		mu 0 4 11 12 13 14
		f 4 -10 15 18 -18
		mu 0 4 15 16 17 18
		f 4 -12 17 19 -13
		mu 0 4 19 20 21 22
		f 4 -15 -20 -19 -17
		mu 0 4 10 22 18 14
		f 4 -6 20 22 -22
		mu 0 4 23 24 25 26
		f 4 12 23 -25 -21
		mu 0 4 27 28 29 30
		f 4 -14 21 26 -26
		mu 0 4 31 32 33 34
		f 4 14 25 -28 -24
		mu 0 4 35 36 37 38
		f 4 -23 28 30 -30
		mu 0 4 39 40 41 42
		f 4 24 31 -33 -29
		mu 0 4 43 44 45 46
		f 4 -27 29 34 -34
		mu 0 4 47 48 49 50
		f 4 27 33 -36 -32
		mu 0 4 51 52 53 54
		f 4 32 39 -41 -37
		mu 0 4 56 57 58 59
		f 4 -35 37 42 -42
		mu 0 4 60 61 62 63
		f 4 35 41 -44 -40
		mu 0 4 64 65 66 67
		f 4 -39 40 43 -43
		mu 0 4 55 59 67 63;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder1";
	rename -uid "535AD646-4B5F-1D40-C0D4-1BAC0C884CFA";
	setAttr ".t" -type "double3" 30.165718341862384 1.7027245180485542 0.05304550598688218 ;
	setAttr ".r" -type "double3" 90 0 90 ;
	setAttr ".s" -type "double3" 0.22829922995561028 0.95798803836691937 0.22829922995561028 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	rename -uid "8FB763C6-4257-2BD5-EA2A-EB83C800487C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.42500001192092896 0.50046992301940918 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 2 ".pt";
	setAttr ".pt[2]" -type "float3" 0 -9.5367432e-007 0 ;
	setAttr ".pt[12]" -type "float3" 0 -9.5367432e-007 0 ;
createNode transform -n "pCube6";
	rename -uid "2A087B14-4F63-CADB-9A1B-D19CBCF3AB55";
	setAttr ".t" -type "double3" 11.257328922195022 5.8361262483423992 -1.5602196114036315 ;
	setAttr ".s" -type "double3" 1.4550077776030388 1.4550077776030388 1.50376663338082 ;
createNode mesh -n "pCubeShape6" -p "pCube6";
	rename -uid "9BC43F29-4B01-7A8D-39C6-E391B98828DF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".pt";
	setAttr ".pt[12]" -type "float3" -0.34659183 0 0 ;
	setAttr ".pt[15]" -type "float3" 0.36410317 0 0 ;
	setAttr ".pt[16]" -type "float3" -0.34659183 0 -0.15411586 ;
	setAttr ".pt[19]" -type "float3" 0.36410317 0 0 ;
	setAttr ".pt[20]" -type "float3" -0.34659183 0 -0.3252449 ;
	setAttr ".pt[23]" -type "float3" 0.36410317 0 -0.35783234 ;
	setAttr ".pt[24]" -type "float3" -0.34743899 -1.110223e-016 -0.33679882 ;
	setAttr ".pt[25]" -type "float3" -0.098077312 -1.110223e-016 -0.33679882 ;
	setAttr ".pt[26]" -type "float3" 0.098077312 -1.110223e-016 -0.33679882 ;
	setAttr ".pt[27]" -type "float3" 0.35100818 -1.110223e-016 -0.33679882 ;
createNode transform -n "pCube7";
	rename -uid "781713CC-4B79-321D-E6F6-63B6F0E8F405";
	setAttr ".t" -type "double3" 13.047724198804222 8.640996719528804 -1.9907883988841171 ;
	setAttr ".s" -type "double3" 0.47706531326319757 1 0.60084959946472705 ;
createNode mesh -n "polySurfaceShape1" -p "pCube7";
	rename -uid "B649CB7C-495D-9BDD-82FE-048094404E62";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 68 ".uvst[0].uvsp[0:67]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0 1 0 0
		 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1
		 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0
		 1 1 0 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[0]" -type "float3" -0.95143634 0 0 ;
	setAttr ".pt[2]" -type "float3" -0.95143634 0 0 ;
	setAttr ".pt[4]" -type "float3" -0.95143634 0 0 ;
	setAttr ".pt[6]" -type "float3" -0.95143634 0 0 ;
	setAttr -s 24 ".vt[0:23]"  -0.50000572 -0.5 0.50000119 0.5 -0.49999905 0.5545733
		 -0.50000572 0.5 0.50000119 0.5 0.50000095 0.5545733 -0.50000572 0.5 -0.49999881 0.5 0.5 -0.49999881
		 -0.50000572 -0.5 -0.49999881 0.5 -0.5 -0.49999881 1.42071915 -0.49999905 0.5545733
		 1.42071915 0.50000095 0.5545733 1.42071915 0.5 -0.49999881 1.42071915 -0.5 -0.49999881
		 0.5 -5.31001568 4.91041565 0.5 -4.31001568 4.91041565 1.42071915 -5.31001568 4.91041565
		 1.42071915 -4.31001568 4.91041565 -3.35715675 -5.31553698 6.079547882 -3.35715675 -4.31553698 6.079547882
		 1.42071915 -5.31553698 6.079547882 1.42071915 -4.31553698 6.079547882 -3.35715675 -5.31757975 6.94466877
		 -3.35715675 -4.31757975 6.94466877 1.42071915 -5.31757975 6.94466877 1.42071915 -4.31757975 6.94466877;
	setAttr -s 44 ".ed[0:43]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 1 4 6 0 5 7 1 6 0 0 7 1 1 1 8 0 3 9 0 8 9 0 5 10 0 9 10 0 7 11 0 10 11 0 11 8 0
		 1 12 0 3 13 0 12 13 1 8 14 0 12 14 0 9 15 0 13 15 0 14 15 1 12 16 0 13 17 0 16 17 1
		 14 18 0 16 18 1 15 19 0 17 19 1 18 19 1 16 20 0 17 21 0 20 21 0 18 22 0 20 22 0 19 23 0
		 21 23 0 22 23 0;
	setAttr -s 20 -ch 80 ".fc[0:19]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -8 13 16 -16
		mu 0 4 11 12 13 14
		f 4 -10 15 18 -18
		mu 0 4 15 16 17 18
		f 4 -12 17 19 -13
		mu 0 4 19 20 21 22
		f 4 -15 -20 -19 -17
		mu 0 4 10 22 18 14
		f 4 -6 20 22 -22
		mu 0 4 23 24 25 26
		f 4 12 23 -25 -21
		mu 0 4 27 28 29 30
		f 4 -14 21 26 -26
		mu 0 4 31 32 33 34
		f 4 14 25 -28 -24
		mu 0 4 35 36 37 38
		f 4 -23 28 30 -30
		mu 0 4 39 40 41 42
		f 4 24 31 -33 -29
		mu 0 4 43 44 45 46
		f 4 -27 29 34 -34
		mu 0 4 47 48 49 50
		f 4 27 33 -36 -32
		mu 0 4 51 52 53 54
		f 4 32 39 -41 -37
		mu 0 4 56 57 58 59
		f 4 -35 37 42 -42
		mu 0 4 60 61 62 63
		f 4 35 41 -44 -40
		mu 0 4 64 65 66 67
		f 4 -39 40 43 -43
		mu 0 4 55 59 67 63;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape2" -p "pCube7";
	rename -uid "F7D8F75F-4142-E842-3404-D587A64E0271";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.47396192920859903 0.50000002083834261 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 56 ".uvst[0].uvsp[0:55]" -type "float2" 0.94603556 0.57216901
		 0.87939501 0.57216901 0.87939495 0.50189179 0.94603544 0.50189179 0.62549376 0.86244446
		 0.55885327 0.86244446 0.62512577 0.94035602 0.55848533 0.94035602 0.62498969 0.99800801
		 0.55834919 0.99800801 0.26225799 0.88907421 0.26225799 0.82243365 0.55253339 0.50189185
		 0.55253339 0.56853235 0.12888603 0.43146777 0.25893104 0.42783105 0.25893104 0.49810824
		 0.12888603 0.49810824 0.32028821 0.42783105 0.32028821 0.49810824 0.25893104 0.13755564
		 0.32028821 0.13755564 0.0018882945 0.059644088 0.32028821 0.059644088 0.0018882945
		 0.0019920289 0.32028821 0.0019920289 0.45422345 0.0019920403 0.58426851 0.0019920403
		 0.58426851 0.072269224 0.45422345 0.068632513 0.64562565 0.0019920403 0.64562565
		 0.072269224 0.64562565 0.36254463 0.58426851 0.36254463 0.64562565 0.44045615 0.32722571
		 0.44045615 0.64562565 0.49810824 0.32722571 0.49810824 0.0018882974 0.82712275 0.0018883668
		 0.69707769 0.068528846 0.69707769 0.068528779 0.82712275 0.04452128 0.69329411 0.04452128
		 0.56324905 0.11116172 0.56324905 0.11116172 0.69329411 0.04452128 0.50189185 0.11116172
		 0.50189185 0.11697751 0.50189185 0.18361795 0.50189185 0.18398592 0.75893462 0.11734539
		 0.75893462 0.25644219 0.82029164 0.18980172 0.82029164 0.18980172 0.50189173 0.25644219
		 0.50189173;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -1.451442 -0.5 0.50000119 0.5 -0.49999905 0.5545733
		 -1.451442 0.5 0.50000119 0.5 0.50000095 0.5545733 -1.451442 0.5 -0.49999881 0.5 0.5 -0.49999881
		 -1.451442 -0.5 -0.49999881 0.5 -0.5 -0.49999881 1.42071915 -0.49999905 0.5545733
		 1.42071915 0.50000095 0.5545733 1.42071915 0.5 -0.49999881 1.42071915 -0.5 -0.49999881
		 0.5 -5.31001568 4.91041565 0.5 -4.31001568 4.91041565 1.42071915 -5.31001568 4.91041565
		 1.42071915 -4.31001568 4.91041565 -3.35715675 -5.31553698 6.079547882 -3.35715675 -4.31553698 6.079547882
		 1.42071915 -5.31553698 6.079547882 1.42071915 -4.31553698 6.079547882 -3.35715675 -5.31757975 6.94466877
		 -3.35715675 -4.31757975 6.94466877 1.42071915 -5.31757975 6.94466877 1.42071915 -4.31757975 6.94466877;
	setAttr -s 44 ".ed[0:43]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 1 4 6 0 5 7 1 6 0 0 7 1 1 1 8 0 3 9 0 8 9 0 5 10 0 9 10 0 7 11 0 10 11 0 11 8 0
		 1 12 0 3 13 0 12 13 1 8 14 0 12 14 0 9 15 0 13 15 0 14 15 1 12 16 0 13 17 0 16 17 0
		 14 18 0 16 18 1 15 19 0 17 19 1 18 19 1 16 20 0 17 21 0 20 21 0 18 22 0 20 22 0 19 23 0
		 21 23 0 22 23 0;
	setAttr -s 20 -ch 80 ".fc[0:19]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 38 39 40 41
		f 4 1 7 -3 -7
		mu 0 4 14 15 16 17
		f 4 2 9 -4 -9
		mu 0 4 42 43 44 45
		f 4 3 11 -1 -11
		mu 0 4 26 27 28 29
		f 4 -8 13 16 -16
		mu 0 4 16 15 18 19
		f 4 -10 15 18 -18
		mu 0 4 44 43 46 47
		f 4 -12 17 19 -13
		mu 0 4 28 27 30 31
		f 4 -15 -20 -19 -17
		mu 0 4 0 1 2 3
		f 4 -6 20 22 -22
		mu 0 4 10 11 12 13
		f 4 12 23 -25 -21
		mu 0 4 28 31 32 33
		f 4 -14 21 26 -26
		mu 0 4 18 15 20 21
		f 4 14 25 -28 -24
		mu 0 4 1 0 4 5
		f 4 -23 28 30 -30
		mu 0 4 48 49 50 51
		f 4 24 31 -33 -29
		mu 0 4 33 32 34 35
		f 4 -27 29 34 -34
		mu 0 4 21 20 22 23
		f 4 27 33 -36 -32
		mu 0 4 5 4 6 7
		f 4 32 39 -41 -37
		mu 0 4 35 34 36 37
		f 4 -35 37 42 -42
		mu 0 4 23 22 24 25
		f 4 35 41 -44 -40
		mu 0 4 7 6 8 9
		f 4 -39 40 43 -43
		mu 0 4 52 53 54 55;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface1" -p "pCube7";
	rename -uid "2E7D1471-4EC1-DCE1-D251-8AB984FA7FFD";
createNode mesh -n "polySurfaceShape4" -p "polySurface1";
	rename -uid "91BE16CE-4219-6BBE-BD69-1A85A23DC1AA";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface2" -p "pCube7";
	rename -uid "E6566B74-4FCF-33DA-87D7-3992D1AFDD5E";
	setAttr ".t" -type "double3" 47.184624624462415 0 0 ;
	setAttr ".rp" -type "double3" -57.813495993572268 -2.7802478172773606 -3.1488924626657413 ;
	setAttr ".sp" -type "double3" -57.813495993572268 -2.7802478172773606 -3.1488924626657413 ;
createNode mesh -n "polySurfaceShape5" -p "polySurface2";
	rename -uid "AA659E8D-40F4-8885-6AF9-B19D88B77317";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform1" -p "pCube7";
	rename -uid "8C3FB472-4560-A32E-AAE1-92B5A1E61649";
	setAttr ".v" no;
createNode mesh -n "pCubeShape7" -p "transform1";
	rename -uid "788948FD-4BCA-B20D-1627-BF8DB4319D89";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.47396192920859903 0.50000002083834261 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube8";
	rename -uid "3F1BEA06-4E6C-D1B3-A273-7B9BF6EB6DA5";
	setAttr ".t" -type "double3" 13.047724198804222 7.0434659075862562 -1.9907883988841171 ;
	setAttr ".s" -type "double3" 0.47706531326319757 1 0.60084959946472705 ;
createNode mesh -n "polySurfaceShape3" -p "pCube8";
	rename -uid "D7DB3B5B-4C1C-83EB-10DA-1FBCCABED726";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.375 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 68 ".uvst[0].uvsp[0:67]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0 1 0 0
		 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1
		 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0
		 1 1 0 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[0]" -type "float3" -0.95143634 0 0 ;
	setAttr ".pt[2]" -type "float3" -0.95143634 0 0 ;
	setAttr ".pt[4]" -type "float3" -0.95143634 0 0 ;
	setAttr ".pt[6]" -type "float3" -0.95143634 0 0 ;
	setAttr -s 24 ".vt[0:23]"  -0.50000572 -0.5 0.50000119 0.5 -0.49999905 0.5545733
		 -0.50000572 0.5 0.50000119 0.5 0.50000095 0.5545733 -0.50000572 0.5 -0.49999881 0.5 0.5 -0.49999881
		 -0.50000572 -0.5 -0.49999881 0.5 -0.5 -0.49999881 1.42071915 -0.49999905 0.5545733
		 1.42071915 0.50000095 0.5545733 1.42071915 0.5 -0.49999881 1.42071915 -0.5 -0.49999881
		 0.5 -5.31001568 4.91041565 0.5 -4.31001568 4.91041565 1.42071915 -5.31001568 4.91041565
		 1.42071915 -4.31001568 4.91041565 -3.35715675 -5.31553698 6.079547882 -3.35715675 -4.31553698 6.079547882
		 1.42071915 -5.31553698 6.079547882 1.42071915 -4.31553698 6.079547882 -3.35715675 -5.31757975 6.94466877
		 -3.35715675 -4.31757975 6.94466877 1.42071915 -5.31757975 6.94466877 1.42071915 -4.31757975 6.94466877;
	setAttr -s 44 ".ed[0:43]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 1 4 6 0 5 7 1 6 0 0 7 1 1 1 8 0 3 9 0 8 9 0 5 10 0 9 10 0 7 11 0 10 11 0 11 8 0
		 1 12 0 3 13 0 12 13 1 8 14 0 12 14 0 9 15 0 13 15 0 14 15 1 12 16 0 13 17 0 16 17 1
		 14 18 0 16 18 1 15 19 0 17 19 1 18 19 1 16 20 0 17 21 0 20 21 0 18 22 0 20 22 0 19 23 0
		 21 23 0 22 23 0;
	setAttr -s 20 -ch 80 ".fc[0:19]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -8 13 16 -16
		mu 0 4 11 12 13 14
		f 4 -10 15 18 -18
		mu 0 4 15 16 17 18
		f 4 -12 17 19 -13
		mu 0 4 19 20 21 22
		f 4 -15 -20 -19 -17
		mu 0 4 10 22 18 14
		f 4 -6 20 22 -22
		mu 0 4 23 24 25 26
		f 4 12 23 -25 -21
		mu 0 4 27 28 29 30
		f 4 -14 21 26 -26
		mu 0 4 31 32 33 34
		f 4 14 25 -28 -24
		mu 0 4 35 36 37 38
		f 4 -23 28 30 -30
		mu 0 4 39 40 41 42
		f 4 24 31 -33 -29
		mu 0 4 43 44 45 46
		f 4 -27 29 34 -34
		mu 0 4 47 48 49 50
		f 4 27 33 -36 -32
		mu 0 4 51 52 53 54
		f 4 32 39 -41 -37
		mu 0 4 56 57 58 59
		f 4 -35 37 42 -42
		mu 0 4 60 61 62 63
		f 4 35 41 -44 -40
		mu 0 4 64 65 66 67
		f 4 -39 40 43 -43
		mu 0 4 55 59 67 63;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface3" -p "pCube8";
	rename -uid "C9FF9914-4230-71FF-27A8-39AA11DFFFC4";
createNode mesh -n "polySurfaceShape6" -p "polySurface3";
	rename -uid "B156142E-4432-9900-B692-728233AD13E1";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface4" -p "pCube8";
	rename -uid "47163FF3-4C47-1670-5EEE-0EBEC5562DAA";
	setAttr ".t" -type "double3" 47.184624624462415 0 0 ;
	setAttr ".rp" -type "double3" -57.813495993572268 -2.7802478172773606 -3.1488924626657413 ;
	setAttr ".sp" -type "double3" -57.813495993572268 -2.7802478172773606 -3.1488924626657413 ;
createNode mesh -n "polySurfaceShape7" -p "polySurface4";
	rename -uid "EA055387-40E4-91BB-D4FA-42B74EC72A2C";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform2" -p "pCube8";
	rename -uid "155BFDE0-4C7C-9253-5A60-8397CCC8FF64";
	setAttr ".v" no;
createNode mesh -n "pCubeShape8" -p "transform2";
	rename -uid "466E0720-41F6-DC7B-DAC0-749338F770B2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.375 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pPipe1";
	rename -uid "C3EC6256-4A1E-38F7-9E1D-378E50F1724C";
	setAttr ".t" -type "double3" 11.300605386838541 5.7220418100880792 -2.4727542347620304 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 0.24719755761038559 0.24719755761038559 0.24719755761038559 ;
createNode mesh -n "pPipeShape1" -p "pPipe1";
	rename -uid "D79E4538-4253-6B90-2D60-2692643EA45A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".pt[100:109]" -type "float3"  0 -1.3795638 0 0 -1.3795638 
		0 0 -1.3795638 -1.110223e-016 0 -1.3795638 -1.110223e-016 0 -1.3795638 0 0 -1.3795638 
		0 0 -1.3795638 0 0 -1.3795638 0 0 -1.3795638 0 0 -1.3795638 0;
createNode transform -n "pCube9";
	rename -uid "D0CDA8F5-4257-1477-A0B5-2389B1958E64";
	setAttr ".t" -type "double3" 11.257328922195022 4.4518363765951214 -1.5602196114036315 ;
	setAttr ".r" -type "double3" 0 0 180 ;
	setAttr ".s" -type "double3" 1.4550077776030388 1.4550077776030388 1.50376663338082 ;
createNode mesh -n "pCubeShape9" -p "pCube9";
	rename -uid "79944607-4E8A-82C9-D9A0-1C92A66D85AE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 76 ".uvst[0].uvsp[0:75]" -type "float2" 0.375 0 0.45833334
		 0 0.54166669 0 0.625 0 0.375 0.083333336 0.45833334 0.083333336 0.54166669 0.083333336
		 0.625 0.083333336 0.375 0.16666667 0.45833334 0.16666667 0.54166669 0.16666667 0.625
		 0.16666667 0.375 0.25 0.45833334 0.25 0.54166669 0.25 0.625 0.25 0.375 0.33333334
		 0.45833334 0.33333334 0.54166669 0.33333334 0.625 0.33333334 0.375 0.41666669 0.45833334
		 0.41666669 0.54166669 0.41666669 0.625 0.41666669 0.375 0.5 0.45833334 0.5 0.54166669
		 0.5 0.625 0.5 0.375 0.58333331 0.45833334 0.58333331 0.54166669 0.58333331 0.625
		 0.58333331 0.375 0.66666663 0.45833334 0.66666663 0.54166669 0.66666663 0.625 0.66666663
		 0.375 0.74999994 0.45833334 0.74999994 0.54166669 0.74999994 0.625 0.74999994 0.375
		 0.83333325 0.45833334 0.83333325 0.54166669 0.83333325 0.625 0.83333325 0.375 0.91666657
		 0.45833334 0.91666657 0.54166669 0.91666657 0.625 0.91666657 0.375 0.99999988 0.45833334
		 0.99999988 0.54166669 0.99999988 0.625 0.99999988 0.875 0 0.79166669 0 0.70833337
		 0 0.875 0.083333336 0.79166669 0.083333336 0.70833337 0.083333336 0.875 0.16666667
		 0.79166669 0.16666667 0.70833337 0.16666667 0.875 0.25 0.79166669 0.25 0.70833337
		 0.25 0.125 0 0.20833334 0 0.29166669 0 0.125 0.083333336 0.20833334 0.083333336 0.29166669
		 0.083333336 0.125 0.16666667 0.20833334 0.16666667 0.29166669 0.16666667 0.125 0.25
		 0.20833334 0.25 0.29166669 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".pt";
	setAttr ".pt[12]" -type "float3" -0.34659183 0 0 ;
	setAttr ".pt[15]" -type "float3" 0.36410317 0 0 ;
	setAttr ".pt[16]" -type "float3" -0.34659183 0 -0.15411586 ;
	setAttr ".pt[19]" -type "float3" 0.36410317 0 0 ;
	setAttr ".pt[20]" -type "float3" -0.34659183 0 -0.3252449 ;
	setAttr ".pt[23]" -type "float3" 0.36410317 0 -0.35783234 ;
	setAttr ".pt[24]" -type "float3" -0.34743899 -1.110223e-016 -0.33679882 ;
	setAttr ".pt[25]" -type "float3" -0.098077312 -1.110223e-016 -0.33679882 ;
	setAttr ".pt[26]" -type "float3" 0.098077312 -1.110223e-016 -0.33679882 ;
	setAttr ".pt[27]" -type "float3" 0.35100818 -1.110223e-016 -0.33679882 ;
	setAttr -s 56 ".vt[0:55]"  -0.5 -0.5 0.5 -0.16666666 -0.5 0.5 0.16666669 -0.5 0.5
		 0.5 -0.5 0.5 -0.5 -0.16666666 0.5 -0.16666666 -0.16666666 0.5 0.16666669 -0.16666666 0.5
		 0.5 -0.16666666 0.5 -0.5 0.16666669 0.5 -0.16666666 0.16666669 0.5 0.16666669 0.16666669 0.5
		 0.5 0.16666669 0.5 -0.5 0.5 0.5 -0.16666666 0.5 0.5 0.16666669 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 0.16666666 -0.16666666 0.5 0.16666666 0.16666669 0.5 0.16666666 0.5 0.5 0.16666666
		 -0.5 0.5 -0.16666669 -0.16666666 0.5 -0.16666669 0.16666669 0.5 -0.16666669 0.5 0.5 -0.16666669
		 -0.5 0.5 -0.5 -0.16666666 0.5 -0.5 0.16666669 0.5 -0.5 0.5 0.5 -0.5 -0.5 0.16666666 -0.5
		 -0.16666666 0.16666666 -0.5 0.16666669 0.16666666 -0.5 0.5 0.16666666 -0.5 -0.5 -0.16666669 -0.5
		 -0.16666666 -0.16666669 -0.5 0.16666669 -0.16666669 -0.5 0.5 -0.16666669 -0.5 -0.5 -0.5 -0.5
		 -0.16666666 -0.5 -0.5 0.16666669 -0.5 -0.5 0.5 -0.5 -0.5 -0.5 -0.5 -0.16666666 -0.16666666 -0.5 -0.16666666
		 0.16666669 -0.5 -0.16666666 0.5 -0.5 -0.16666666 -0.5 -0.5 0.16666669 -0.16666666 -0.5 0.16666669
		 0.16666669 -0.5 0.16666669 0.5 -0.5 0.16666669 0.5 -0.16666666 -0.16666666 0.5 -0.16666666 0.16666669
		 0.5 0.16666669 -0.16666666 0.5 0.16666669 0.16666669 -0.5 -0.16666666 -0.16666666
		 -0.5 -0.16666666 0.16666669 -0.5 0.16666669 -0.16666666 -0.5 0.16666669 0.16666669;
	setAttr -s 108 ".ed[0:107]"  0 1 0 1 2 0 2 3 0 4 5 1 5 6 1 6 7 1 8 9 1
		 9 10 1 10 11 1 12 13 0 13 14 0 14 15 0 16 17 1 17 18 1 18 19 1 20 21 1 21 22 1 22 23 1
		 24 25 0 25 26 0 26 27 0 28 29 1 29 30 1 30 31 1 32 33 1 33 34 1 34 35 1 36 37 0 37 38 0
		 38 39 0 40 41 1 41 42 1 42 43 1 44 45 1 45 46 1 46 47 1 0 4 0 1 5 1 2 6 1 3 7 0 4 8 0
		 5 9 1 6 10 1 7 11 0 8 12 0 9 13 1 10 14 1 11 15 0 12 16 0 13 17 1 14 18 1 15 19 0
		 16 20 0 17 21 1 18 22 1 19 23 0 20 24 0 21 25 1 22 26 1 23 27 0 24 28 0 25 29 1 26 30 1
		 27 31 0 28 32 0 29 33 1 30 34 1 31 35 0 32 36 0 33 37 1 34 38 1 35 39 0 36 40 0 37 41 1
		 38 42 1 39 43 0 40 44 0 41 45 1 42 46 1 43 47 0 44 0 0 45 1 1 46 2 1 47 3 0 35 48 1
		 48 49 1 49 7 1 31 50 1 50 51 1 51 11 1 43 48 1 47 49 1 48 50 1 49 51 1 50 23 1 51 19 1
		 32 52 1 52 53 1 53 4 1 28 54 1 54 55 1 55 8 1 40 52 1 44 53 1 52 54 1 53 55 1 54 20 1
		 55 16 1;
	setAttr -s 54 -ch 216 ".fc[0:53]" -type "polyFaces" 
		f 4 0 37 -4 -37
		mu 0 4 0 1 5 4
		f 4 1 38 -5 -38
		mu 0 4 1 2 6 5
		f 4 2 39 -6 -39
		mu 0 4 2 3 7 6
		f 4 3 41 -7 -41
		mu 0 4 4 5 9 8
		f 4 4 42 -8 -42
		mu 0 4 5 6 10 9
		f 4 5 43 -9 -43
		mu 0 4 6 7 11 10
		f 4 6 45 -10 -45
		mu 0 4 8 9 13 12
		f 4 7 46 -11 -46
		mu 0 4 9 10 14 13
		f 4 8 47 -12 -47
		mu 0 4 10 11 15 14
		f 4 9 49 -13 -49
		mu 0 4 12 13 17 16
		f 4 10 50 -14 -50
		mu 0 4 13 14 18 17
		f 4 11 51 -15 -51
		mu 0 4 14 15 19 18
		f 4 12 53 -16 -53
		mu 0 4 16 17 21 20
		f 4 13 54 -17 -54
		mu 0 4 17 18 22 21
		f 4 14 55 -18 -55
		mu 0 4 18 19 23 22
		f 4 15 57 -19 -57
		mu 0 4 20 21 25 24
		f 4 16 58 -20 -58
		mu 0 4 21 22 26 25
		f 4 17 59 -21 -59
		mu 0 4 22 23 27 26
		f 4 18 61 -22 -61
		mu 0 4 24 25 29 28
		f 4 19 62 -23 -62
		mu 0 4 25 26 30 29
		f 4 20 63 -24 -63
		mu 0 4 26 27 31 30
		f 4 21 65 -25 -65
		mu 0 4 28 29 33 32
		f 4 22 66 -26 -66
		mu 0 4 29 30 34 33
		f 4 23 67 -27 -67
		mu 0 4 30 31 35 34
		f 4 24 69 -28 -69
		mu 0 4 32 33 37 36
		f 4 25 70 -29 -70
		mu 0 4 33 34 38 37
		f 4 26 71 -30 -71
		mu 0 4 34 35 39 38
		f 4 27 73 -31 -73
		mu 0 4 36 37 41 40
		f 4 28 74 -32 -74
		mu 0 4 37 38 42 41
		f 4 29 75 -33 -75
		mu 0 4 38 39 43 42
		f 4 30 77 -34 -77
		mu 0 4 40 41 45 44
		f 4 31 78 -35 -78
		mu 0 4 41 42 46 45
		f 4 32 79 -36 -79
		mu 0 4 42 43 47 46
		f 4 33 81 -1 -81
		mu 0 4 44 45 49 48
		f 4 34 82 -2 -82
		mu 0 4 45 46 50 49
		f 4 35 83 -3 -83
		mu 0 4 46 47 51 50
		f 4 -76 -72 84 -91
		mu 0 4 53 52 55 56
		f 4 -80 90 85 -92
		mu 0 4 54 53 56 57
		f 4 -84 91 86 -40
		mu 0 4 3 54 57 7
		f 4 -85 -68 87 -93
		mu 0 4 56 55 58 59
		f 4 -86 92 88 -94
		mu 0 4 57 56 59 60
		f 4 -87 93 89 -44
		mu 0 4 7 57 60 11
		f 4 -88 -64 -60 -95
		mu 0 4 59 58 61 62
		f 4 -89 94 -56 -96
		mu 0 4 60 59 62 63
		f 4 -90 95 -52 -48
		mu 0 4 11 60 63 15
		f 4 72 102 -97 68
		mu 0 4 64 65 68 67
		f 4 76 103 -98 -103
		mu 0 4 65 66 69 68
		f 4 80 36 -99 -104
		mu 0 4 66 0 4 69
		f 4 96 104 -100 64
		mu 0 4 67 68 71 70
		f 4 97 105 -101 -105
		mu 0 4 68 69 72 71
		f 4 98 40 -102 -106
		mu 0 4 69 4 8 72
		f 4 99 106 56 60
		mu 0 4 70 71 74 73
		f 4 100 107 52 -107
		mu 0 4 71 72 75 74
		f 4 101 44 48 -108
		mu 0 4 72 8 12 75;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPipe2";
	rename -uid "57E9978D-486D-2304-ED3A-5AA5EADE2720";
	setAttr ".t" -type "double3" 11.300605386838541 4.5867895977585116 -2.4727542347620304 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 0.24719755761038559 0.24719755761038559 0.24719755761038559 ;
createNode mesh -n "pPipeShape2" -p "pPipe2";
	rename -uid "69617F20-42D4-C1CB-B33E-5692CAD54233";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 324 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0 0.75 0.1 0.75 0.2 0.75 0.30000001
		 0.75 0.40000001 0.75 0.5 0.75 0.60000002 0.75 0.70000005 0.75 0.80000007 0.75 0.9000001
		 0.75 1.000000119209 0.75 0 0.5 0.1 0.5 0.2 0.5 0.30000001 0.5 0.40000001 0.5 0.5
		 0.5 0.60000002 0.5 0.70000005 0.5 0.80000007 0.5 0.9000001 0.5 1.000000119209 0.5
		 0 0.25 0.1 0.25 0.2 0.25 0.30000001 0.25 0.40000001 0.25 0.5 0.25 0.60000002 0.25
		 0.70000005 0.25 0.80000007 0.25 0.9000001 0.25 1.000000119209 0.25 0 0 0.1 0 0.2
		 0 0.30000001 0 0.40000001 0 0.5 0 0.60000002 0 0.70000005 0 0.80000007 0 0.9000001
		 0 1.000000119209 0 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0
		 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1
		 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0
		 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0
		 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1
		 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0
		 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1
		 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1
		 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0
		 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1
		 0 0 1 0 1 1 0 1 0 0 1 0;
	setAttr ".uvst[0].uvsp[250:323]" 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0
		 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0
		 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1
		 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0
		 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".pt[100:109]" -type "float3"  0 -1.3795638 0 0 -1.3795638 
		0 0 -1.3795638 -1.110223e-016 0 -1.3795638 -1.110223e-016 0 -1.3795638 0 0 -1.3795638 
		0 0 -1.3795638 0 0 -1.3795638 0 0 -1.3795638 0 0 -1.3795638 0;
	setAttr -s 110 ".vt[0:109]"  0.90000153 -0.5 0 0.72811508 -0.5 -0.52900696
		 0.27811432 -0.5 -0.85594177 -0.27811432 -0.5 -0.85594177 -0.72811508 -0.5 -0.52900696
		 -0.90000153 -0.5 0 -0.72811508 -0.5 0.52900696 -0.27811432 -0.5 0.85595131 0.27811432 -0.5 0.85595131
		 0.72811508 -0.5 0.52900696 0.90000153 0.50000668 0 0.72811508 0.50000668 -0.52900696
		 0.27811432 0.50000668 -0.85594177 -0.27811432 0.50000668 -0.85594177 -0.72811508 0.50000668 -0.52900696
		 -0.90000153 0.50000668 0 -0.72811508 0.50000668 0.52900696 -0.27811432 0.50000668 0.85595131
		 0.27811432 0.50000668 0.85595131 0.72811508 0.50000668 0.52900696 1 0.50000668 0
		 0.80901718 0.50000668 -0.58778381 0.30901718 0.50000668 -0.95105553 -0.30901718 0.50000668 -0.95105553
		 -0.80901718 0.50000668 -0.58778381 -1 0.50000668 0 -0.80901718 0.50000668 0.58778572
		 -0.30901718 0.50000668 0.95105743 0.30901718 0.50000668 0.95105743 0.80901718 0.50000668 0.58778572
		 1 -0.5 0 0.80901718 -0.5 -0.58778381 0.30901718 -0.5 -0.95105553 -0.30901718 -0.5 -0.95105553
		 -0.80901718 -0.5 -0.58778381 -1 -0.5 0 -0.80901718 -0.5 0.58778572 -0.30901718 -0.5 0.95105743
		 0.30901718 -0.5 0.95105743 0.80901718 -0.5 0.58778572 0.90000153 0.38840961 0 0.72811508 0.38840961 -0.52900696
		 0.27811432 0.38840961 -0.85594177 -0.27811432 0.38840961 -0.85594177 -0.72811508 0.38840961 -0.52900696
		 -0.90000153 0.38840961 0 -0.72811508 0.38840961 0.52900696 -0.27811432 0.38840961 0.85595131
		 0.27811432 0.38840961 0.85595131 0.72811508 0.38840961 0.52900696 0.8058815 0.38840961 0
		 0.65196991 0.38840961 -0.47368431 0.24903107 0.38840961 -0.76643372 -0.24903107 0.38840961 -0.76643372
		 -0.65196991 0.38840961 -0.47368431 -0.8058815 0.38840961 0 -0.65196991 0.38840961 0.47368622
		 -0.24903107 0.38840961 0.76644325 0.24903107 0.38840961 0.76644325 0.65196991 0.38840961 0.47368622
		 0.8058815 -1.037709236 0.074432373 0.65196991 -1.037711143 -0.39925385 0.24903107 -1.037711143 -0.69200325
		 -0.24903107 -1.037711143 -0.69200325 -0.65196991 -1.037711143 -0.39925385 -0.8058815 -1.037709236 0.074432373
		 -0.65196991 -1.037709236 0.54811668 -0.24903107 -1.037709236 0.8408699 0.24903107 -1.037709236 0.8408699
		 0.65196991 -1.037709236 0.54811668 0.8058815 -1.78011322 0.55052948 0.65196991 -1.78011417 0.076845169
		 0.24903107 -1.78011417 -0.21590042 -0.24903107 -1.78011417 -0.21590042 -0.65196991 -1.78011417 0.076845169
		 -0.8058815 -1.78011322 0.55052948 -0.65196991 -1.78011322 1.024215698 -0.24903107 -1.78011322 1.31696892
		 0.24903107 -1.78011322 1.31696892 0.65196991 -1.78011322 1.024215698 0.8058815 -2.37357807 1.015708923
		 0.65196991 -2.37357807 0.54202271 0.24903107 -2.37357807 0.24927521 -0.24903107 -2.37357807 0.24927521
		 -0.65196991 -2.37357807 0.54202271 -0.8058815 -2.37357807 1.015708923 -0.65196991 -2.37357807 1.48939323
		 -0.24903107 -2.37357807 1.78214645 0.24903107 -2.37357807 1.78214645 0.65196991 -2.37357807 1.48939323
		 0.8058815 -3.07905674 1.10445595 0.65196991 -3.07905674 0.63076973 0.24903107 -3.07905674 0.33802414
		 -0.24903107 -3.07905674 0.33802414 -0.65196991 -3.07905674 0.63076973 -0.8058815 -3.07905674 1.10445595
		 -0.65196991 -3.07905674 1.57814217 -0.24903107 -3.07905674 1.87089539 0.24903107 -3.07905674 1.87089539
		 0.65196991 -3.07905674 1.57814217 0.8058815 -3.07905674 1.10445595 0.65196991 -3.07905674 0.63076973
		 0.24903107 -3.07905674 0.33802414 -0.24903107 -3.07905674 0.33802414 -0.65196991 -3.07905674 0.63076973
		 -0.8058815 -3.07905674 1.10445595 -0.65196991 -3.07905674 1.57814217 -0.24903107 -3.07905674 1.87089539
		 0.24903107 -3.07905674 1.87089539 0.65196991 -3.07905674 1.57814217;
	setAttr -s 210 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 0 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 10 0
		 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 20 0 30 31 0
		 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 30 0 10 20 1 11 21 1
		 12 22 1 13 23 1 14 24 1 15 25 1 16 26 1 17 27 1 18 28 1 19 29 1 20 30 0 21 31 0 22 32 0
		 23 33 0 24 34 0 25 35 0 26 36 0 27 37 0 28 38 0 29 39 0 30 0 1 31 1 1 32 2 1 33 3 1
		 34 4 1 35 5 1 36 6 1 37 7 1 38 8 1 39 9 1 0 40 0 1 41 0 40 41 0 2 42 0 41 42 0 3 43 0
		 42 43 0 4 44 0 43 44 0 5 45 0 44 45 0 6 46 0 45 46 0 7 47 0 46 47 0 8 48 0 47 48 0
		 9 49 0 48 49 0 49 40 0 40 50 0 41 51 0 50 51 0 42 52 0 51 52 0 43 53 0 52 53 0 44 54 0
		 53 54 0 45 55 0 54 55 0 46 56 0 55 56 0 47 57 0 56 57 0 48 58 0 57 58 0 49 59 0 58 59 0
		 59 50 0 50 60 0 51 61 0 60 61 0 52 62 0 61 62 0 53 63 0 62 63 0 54 64 0 63 64 0 55 65 0
		 64 65 0 56 66 0 65 66 0 57 67 0 66 67 0 58 68 0 67 68 0 59 69 0 68 69 0 69 60 0 60 70 0
		 61 71 0 70 71 0 62 72 0 71 72 0 63 73 0 72 73 0 64 74 0 73 74 0 65 75 0 74 75 0 66 76 0
		 75 76 0 67 77 0 76 77 0 68 78 0 77 78 0 69 79 0 78 79 0 79 70 0 70 80 0 71 81 0 80 81 0
		 72 82 0 81 82 0 73 83 0 82 83 0 74 84 0 83 84 0 75 85 0 84 85 0 76 86 0 85 86 0 77 87 0
		 86 87 0 78 88 0;
	setAttr ".ed[166:209]" 87 88 0 79 89 0 88 89 0 89 80 0 80 90 0 81 91 0 90 91 0
		 82 92 0 91 92 0 83 93 0 92 93 0 84 94 0 93 94 0 85 95 0 94 95 0 86 96 0 95 96 0 87 97 0
		 96 97 0 88 98 0 97 98 0 89 99 0 98 99 0 99 90 0 90 100 0 91 101 0 100 101 0 92 102 0
		 101 102 0 93 103 0 102 103 0 94 104 0 103 104 0 95 105 0 104 105 0 96 106 0 105 106 0
		 97 107 0 106 107 0 98 108 0 107 108 0 99 109 0 108 109 0 109 100 0;
	setAttr -s 100 -ch 400 ".fc[0:99]" -type "polyFaces" 
		f 4 -11 40 20 -42
		mu 0 4 1 0 11 12
		f 4 -12 41 21 -43
		mu 0 4 2 1 12 13
		f 4 -13 42 22 -44
		mu 0 4 3 2 13 14
		f 4 -14 43 23 -45
		mu 0 4 4 3 14 15
		f 4 -15 44 24 -46
		mu 0 4 5 4 15 16
		f 4 -16 45 25 -47
		mu 0 4 6 5 16 17
		f 4 -17 46 26 -48
		mu 0 4 7 6 17 18
		f 4 -18 47 27 -49
		mu 0 4 8 7 18 19
		f 4 -19 48 28 -50
		mu 0 4 9 8 19 20
		f 4 -20 49 29 -41
		mu 0 4 10 9 20 21
		f 4 -21 50 30 -52
		mu 0 4 12 11 22 23
		f 4 -22 51 31 -53
		mu 0 4 13 12 23 24
		f 4 -23 52 32 -54
		mu 0 4 14 13 24 25
		f 4 -24 53 33 -55
		mu 0 4 15 14 25 26
		f 4 -25 54 34 -56
		mu 0 4 16 15 26 27
		f 4 -26 55 35 -57
		mu 0 4 17 16 27 28
		f 4 -27 56 36 -58
		mu 0 4 18 17 28 29
		f 4 -28 57 37 -59
		mu 0 4 19 18 29 30
		f 4 -29 58 38 -60
		mu 0 4 20 19 30 31
		f 4 -30 59 39 -51
		mu 0 4 21 20 31 32
		f 4 -31 60 0 -62
		mu 0 4 23 22 33 34
		f 4 -32 61 1 -63
		mu 0 4 24 23 34 35
		f 4 -33 62 2 -64
		mu 0 4 25 24 35 36
		f 4 -34 63 3 -65
		mu 0 4 26 25 36 37
		f 4 -35 64 4 -66
		mu 0 4 27 26 37 38
		f 4 -36 65 5 -67
		mu 0 4 28 27 38 39
		f 4 -37 66 6 -68
		mu 0 4 29 28 39 40
		f 4 -38 67 7 -69
		mu 0 4 30 29 40 41
		f 4 -39 68 8 -70
		mu 0 4 31 30 41 42
		f 4 -40 69 9 -61
		mu 0 4 32 31 42 43
		f 4 -1 70 72 -72
		mu 0 4 44 45 46 47
		f 4 -2 71 74 -74
		mu 0 4 48 49 50 51
		f 4 -3 73 76 -76
		mu 0 4 52 53 54 55
		f 4 -4 75 78 -78
		mu 0 4 56 57 58 59
		f 4 -5 77 80 -80
		mu 0 4 60 61 62 63
		f 4 -6 79 82 -82
		mu 0 4 64 65 66 67
		f 4 -7 81 84 -84
		mu 0 4 68 69 70 71
		f 4 -8 83 86 -86
		mu 0 4 72 73 74 75
		f 4 -9 85 88 -88
		mu 0 4 76 77 78 79
		f 4 -10 87 89 -71
		mu 0 4 80 81 82 83
		f 4 -73 90 92 -92
		mu 0 4 84 85 86 87
		f 4 -75 91 94 -94
		mu 0 4 88 89 90 91
		f 4 -77 93 96 -96
		mu 0 4 92 93 94 95
		f 4 -79 95 98 -98
		mu 0 4 96 97 98 99
		f 4 -81 97 100 -100
		mu 0 4 100 101 102 103
		f 4 -83 99 102 -102
		mu 0 4 104 105 106 107
		f 4 -85 101 104 -104
		mu 0 4 108 109 110 111
		f 4 -87 103 106 -106
		mu 0 4 112 113 114 115
		f 4 -89 105 108 -108
		mu 0 4 116 117 118 119
		f 4 -90 107 109 -91
		mu 0 4 120 121 122 123
		f 4 -93 110 112 -112
		mu 0 4 124 125 126 127
		f 4 -95 111 114 -114
		mu 0 4 128 129 130 131
		f 4 -97 113 116 -116
		mu 0 4 132 133 134 135
		f 4 -99 115 118 -118
		mu 0 4 136 137 138 139
		f 4 -101 117 120 -120
		mu 0 4 140 141 142 143
		f 4 -103 119 122 -122
		mu 0 4 144 145 146 147
		f 4 -105 121 124 -124
		mu 0 4 148 149 150 151
		f 4 -107 123 126 -126
		mu 0 4 152 153 154 155
		f 4 -109 125 128 -128
		mu 0 4 156 157 158 159
		f 4 -110 127 129 -111
		mu 0 4 160 161 162 163
		f 4 -113 130 132 -132
		mu 0 4 164 165 166 167
		f 4 -115 131 134 -134
		mu 0 4 168 169 170 171
		f 4 -117 133 136 -136
		mu 0 4 172 173 174 175
		f 4 -119 135 138 -138
		mu 0 4 176 177 178 179
		f 4 -121 137 140 -140
		mu 0 4 180 181 182 183
		f 4 -123 139 142 -142
		mu 0 4 184 185 186 187
		f 4 -125 141 144 -144
		mu 0 4 188 189 190 191
		f 4 -127 143 146 -146
		mu 0 4 192 193 194 195
		f 4 -129 145 148 -148
		mu 0 4 196 197 198 199
		f 4 -130 147 149 -131
		mu 0 4 200 201 202 203
		f 4 -133 150 152 -152
		mu 0 4 204 205 206 207
		f 4 -135 151 154 -154
		mu 0 4 208 209 210 211
		f 4 -137 153 156 -156
		mu 0 4 212 213 214 215
		f 4 -139 155 158 -158
		mu 0 4 216 217 218 219
		f 4 -141 157 160 -160
		mu 0 4 220 221 222 223
		f 4 -143 159 162 -162
		mu 0 4 224 225 226 227
		f 4 -145 161 164 -164
		mu 0 4 228 229 230 231
		f 4 -147 163 166 -166
		mu 0 4 232 233 234 235
		f 4 -149 165 168 -168
		mu 0 4 236 237 238 239
		f 4 -150 167 169 -151
		mu 0 4 240 241 242 243
		f 4 -153 170 172 -172
		mu 0 4 244 245 246 247
		f 4 -155 171 174 -174
		mu 0 4 248 249 250 251
		f 4 -157 173 176 -176
		mu 0 4 252 253 254 255
		f 4 -159 175 178 -178
		mu 0 4 256 257 258 259
		f 4 -161 177 180 -180
		mu 0 4 260 261 262 263
		f 4 -163 179 182 -182
		mu 0 4 264 265 266 267
		f 4 -165 181 184 -184
		mu 0 4 268 269 270 271
		f 4 -167 183 186 -186
		mu 0 4 272 273 274 275
		f 4 -169 185 188 -188
		mu 0 4 276 277 278 279
		f 4 -170 187 189 -171
		mu 0 4 280 281 282 283
		f 4 -173 190 192 -192
		mu 0 4 284 285 286 287
		f 4 -175 191 194 -194
		mu 0 4 288 289 290 291
		f 4 -177 193 196 -196
		mu 0 4 292 293 294 295
		f 4 -179 195 198 -198
		mu 0 4 296 297 298 299
		f 4 -181 197 200 -200
		mu 0 4 300 301 302 303
		f 4 -183 199 202 -202
		mu 0 4 304 305 306 307
		f 4 -185 201 204 -204
		mu 0 4 308 309 310 311
		f 4 -187 203 206 -206
		mu 0 4 312 313 314 315
		f 4 -189 205 208 -208
		mu 0 4 316 317 318 319
		f 4 -190 207 209 -191
		mu 0 4 320 321 322 323;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder2";
	rename -uid "FE5DB234-4431-7754-D76E-18AE801D74B5";
	setAttr ".t" -type "double3" 11.26463990075259 4.6211161770281732 -1.4886157070620105 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 0.35007044159133976 1.2386865940212171 0.35007044159133976 ;
createNode mesh -n "pCylinderShape2" -p "pCylinder2";
	rename -uid "56BAA1EA-45AD-2DA3-8C09-CAAEE4FB7E8C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.42500001192092896 0.50046992301940918 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 102 ".uvst[0].uvsp[0:101]" -type "float2" 0.375 0.3125 0.40000001
		 0.3125 0.42500001 0.3125 0.45000002 0.3125 0.47500002 0.3125 0.5 0.3125 0.52499998
		 0.3125 0.54999995 0.3125 0.57499993 0.3125 0.5999999 0.3125 0.62499988 0.3125 0.375
		 0.68843985 0.40000001 0.68843985 0.42500001 0.68843985 0.45000002 0.68843985 0.47500002
		 0.68843985 0.5 0.68843985 0.52499998 0.68843985 0.54999995 0.68843985 0.57499993
		 0.68843985 0.5999999 0.68843985 0.62499988 0.68843985 0 0 1 0 1 1 0 1 0 0 1 0 1 1
		 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0
		 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1
		 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0
		 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  0.80901718 -0.99999952 -0.58778542 0.30901718 -0.99999952 -0.95105672
		 -0.30901718 -0.99999952 -0.9510566 -0.80901718 -0.99999952 -0.58778524 -1 -0.99999952 5.9604645e-008
		 -0.80901718 -0.99999952 0.58778536 -0.30901718 -0.99999952 0.9510566 0.30901718 -0.99999952 0.95105654
		 0.80901718 -0.99999952 0.58778524 1 -0.99999952 0 0.80901718 1 -0.58778542 0.30901718 1 -0.95105672
		 -0.30901718 1 -0.9510566 -0.80901718 1 -0.58778524 -1 1 5.9604645e-008 -0.80901718 1 0.58778536
		 -0.30901718 1 0.9510566 0.30901718 1 0.95105654 0.80901718 1 0.58778524 1 1 0 0.37583447 1.11701727 -0.27305898
		 0.14355659 1.11701727 -0.44181865 -0.14355659 1.11701727 -0.44181859 -0.37583447 1.11701727 -0.27305895
		 -0.46455574 1.11701727 -4.2252992e-009 -0.37583447 1.11701727 0.27305889 -0.14355659 1.11701727 0.44181854
		 0.14355659 1.11701727 0.44181854 0.37583447 1.11701727 0.27305883 0.46455574 1.11701727 -3.1914972e-008
		 0.46382904 -1.12447584 -0.33699158 0.177167 -1.12447584 -0.54526377 -0.177167 -1.12447584 -0.54526365
		 -0.46382904 -1.12447584 -0.33699143 -0.57332414 -1.12447584 8.7409191e-009 -0.46382904 -1.12447584 0.33699152
		 -0.177167 -1.12447584 0.54526365 0.177167 -1.12447584 0.54526365 0.46382904 -1.12447584 0.33699143
		 0.57332414 -1.12447584 -2.5431863e-008;
	setAttr -s 70 ".ed[0:69]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 0 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 10 0 0 10 0 1 11 0 2 12 0 3 13 0 4 14 0 5 15 0 6 16 0 7 17 0 8 18 0 9 19 0
		 10 20 0 11 21 0 20 21 0 12 22 0 21 22 0 13 23 0 22 23 0 14 24 0 23 24 0 15 25 0 24 25 0
		 16 26 0 25 26 0 17 27 0 26 27 0 18 28 0 27 28 0 19 29 0 28 29 0 29 20 0 0 30 0 1 31 0
		 30 31 0 2 32 0 31 32 0 3 33 0 32 33 0 4 34 0 33 34 0 5 35 0 34 35 0 6 36 0 35 36 0
		 7 37 0 36 37 0 8 38 0 37 38 0 9 39 0 38 39 0 39 30 0;
	setAttr -s 32 -ch 140 ".fc[0:31]" -type "polyFaces" 
		f 4 0 21 -11 -21
		mu 0 4 0 1 12 11
		f 4 1 22 -12 -22
		mu 0 4 1 2 13 12
		f 4 2 23 -13 -23
		mu 0 4 2 3 14 13
		f 4 3 24 -14 -24
		mu 0 4 3 4 15 14
		f 4 4 25 -15 -25
		mu 0 4 4 5 16 15
		f 4 5 26 -16 -26
		mu 0 4 5 6 17 16
		f 4 6 27 -17 -27
		mu 0 4 6 7 18 17
		f 4 7 28 -18 -28
		mu 0 4 7 8 19 18
		f 4 8 29 -19 -29
		mu 0 4 8 9 20 19
		f 4 9 20 -20 -30
		mu 0 4 9 10 21 20
		f 4 10 31 -33 -31
		mu 0 4 22 23 24 25
		f 4 11 33 -35 -32
		mu 0 4 26 27 28 29
		f 4 12 35 -37 -34
		mu 0 4 30 31 32 33
		f 4 13 37 -39 -36
		mu 0 4 34 35 36 37
		f 4 14 39 -41 -38
		mu 0 4 38 39 40 41
		f 4 15 41 -43 -40
		mu 0 4 42 43 44 45
		f 4 16 43 -45 -42
		mu 0 4 46 47 48 49
		f 4 17 45 -47 -44
		mu 0 4 50 51 52 53
		f 4 18 47 -49 -46
		mu 0 4 54 55 56 57
		f 4 19 30 -50 -48
		mu 0 4 58 59 60 61
		f 10 34 36 38 40 42 44 46 48 49 32
		mu 0 10 29 33 37 41 45 49 53 57 61 25
		f 4 -1 50 52 -52
		mu 0 4 62 63 64 65
		f 4 -2 51 54 -54
		mu 0 4 66 67 68 69
		f 4 -3 53 56 -56
		mu 0 4 70 71 72 73
		f 4 -4 55 58 -58
		mu 0 4 74 75 76 77
		f 4 -5 57 60 -60
		mu 0 4 78 79 80 81
		f 4 -6 59 62 -62
		mu 0 4 82 83 84 85
		f 4 -7 61 64 -64
		mu 0 4 86 87 88 89
		f 4 -8 63 66 -66
		mu 0 4 90 91 92 93
		f 4 -9 65 68 -68
		mu 0 4 94 95 96 97
		f 4 -10 67 69 -51
		mu 0 4 98 99 100 101
		f 10 -53 -70 -69 -67 -65 -63 -61 -59 -57 -55
		mu 0 10 65 101 97 93 89 85 81 77 73 69;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube10";
	rename -uid "B71E71E3-4610-53A6-1FAA-F7A631CA29A6";
	setAttr ".t" -type "double3" 11.272169754389202 6.1347718880227244 0 ;
	setAttr ".s" -type "double3" 5.0154164883536883 8.770575700242091 4.1387760330647936 ;
	setAttr ".rp" -type "double3" 6.106226635438361e-016 -2.3973210070120862e-014 8.2369272853590782e-017 ;
	setAttr ".spt" -type "double3" 6.106226635438361e-016 -2.3980817331903381e-014 8.3266726846886741e-017 ;
createNode mesh -n "pCubeShape10" -p "pCube10";
	rename -uid "22D56BB1-4E67-A6A6-D949-E5BA42756DA7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 90 ".uvst[0].uvsp[0:89]" -type "float2" 0.375 0.25 0.625
		 0.25 0.375 0.5 0.625 0.5 0.875 0.25 0.125 0.25 0.375 0.22253425 0.625 0.22253425
		 0.625 0.52746576 0.875 0.22253425 0.125 0.22253425 0.375 0.52746576 0.125 0.22588167
		 0.375 0.5241183 0.625 0.5241183 0.875 0.22588167 0.625 0.22588167 0.375 0.22588167
		 0.375 0.21806355 0.625 0.21806355 0.625 0.53193641 0.875 0.21806362 0.125 0.21806362
		 0.375 0.53193641 0.125 0.24314237 0.375 0.50685763 0.625 0.50685763 0.875 0.24314237
		 0.625 0.24314237 0.375 0.24314237 0.39610827 0.53193641 0.39610827 0.52746576 0.39610839
		 0.5241183 0.39610839 0.50685763 0.39610839 0.5 0.39610839 0.25 0.39610827 0.24314237
		 0.39610827 0.22588167 0.39610839 0.22253425 0.39610839 0.21806355 0.40553793 0.52746576
		 0.40553793 0.53193641 0.40553811 0.21806355 0.40553811 0.22253425 0.40553793 0.22588167
		 0.40553793 0.24314237 0.40553811 0.25 0.40553811 0.5 0.40553811 0.50685763 0.40553811
		 0.5241183 0.41732943 0.52746576 0.41732943 0.53193641 0.41732949 0.21806355 0.41732949
		 0.22253424 0.41732943 0.22588167 0.41732943 0.24314237 0.41732949 0.25 0.41732949
		 0.5 0.41732949 0.50685763 0.41732949 0.5241183 0.6034407 0.52746576 0.6034407 0.53193641
		 0.6034407 0.21806355 0.6034407 0.22253425 0.6034407 0.22588167 0.6034407 0.24314237
		 0.6034407 0.25 0.6034407 0.5 0.6034407 0.50685763 0.6034407 0.5241183 0.5931524 0.53193641
		 0.5931524 0.52746576 0.59315246 0.5241183 0.59315246 0.50685763 0.59315246 0.5 0.59315246
		 0.25 0.5931524 0.24314237 0.5931524 0.22588167 0.59315246 0.22253425 0.59315246 0.21806355
		 0.5836578 0.53193641 0.5836578 0.52746576 0.58365786 0.5241183 0.58365786 0.50685763
		 0.58365786 0.5 0.58365786 0.25 0.5836578 0.24314238 0.5836578 0.22588167 0.58365786
		 0.22253425 0.58365786 0.21806355;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 80 ".vt[0:79]"  -0.28928858 0.5 0.3098318 0.28928858 0.5 0.3098318
		 -0.3098318 0.5 -0.45028946 0.3098318 0.5 -0.45028946 -0.5 0.39013702 0.5 0.5 0.39013702 0.5
		 0.5 0.39013702 -0.68078142 -0.5 0.39013702 -0.68078142 -0.5 0.40352666 -0.70875955
		 0.5 0.40352666 -0.70875955 0.5 0.40352666 0.53633577 -0.5 0.40352666 0.53633577 -0.40381032 0.38723695 0.25743145
		 0.40028363 0.38723695 0.2579726 0.40735739 0.38723725 -0.40735739 -0.40735739 0.38723725 -0.40735739
		 -0.46684799 0.47256947 -0.70875955 0.46684799 0.47256947 -0.70875955 0.46684799 0.47256947 0.53633577
		 -0.46684799 0.47256947 0.53633577 -0.33856854 0.38723725 -0.40735739 -0.41556698 0.39013702 -0.68078142
		 -0.4155665 0.40352666 -0.70875955 -0.38801277 0.47256947 -0.70875955 -0.25751144 0.5 -0.45028946
		 -0.24043727 0.5 0.3098318 -0.38801321 0.47256947 0.53633577 -0.41556698 0.40352666 0.53633577
		 -0.4155665 0.39013702 0.5 -0.37113801 0.38723695 0.33341259 -0.37784836 0.39013702 -0.68078142
		 -0.30783865 0.38723725 -0.40735739 -0.30783796 0.38723695 0.40735739 -0.37784752 0.39013702 0.5
		 -0.37784836 0.40352666 0.53633577 -0.35279548 0.47256947 0.53633577 -0.21861394 0.5 0.3098318
		 -0.23413837 0.5 -0.45028946 -0.35279471 0.47256947 -0.70875955 -0.37784752 0.40352663 -0.70875955
		 -0.33068246 0.39013702 -0.68078142 -0.26941189 0.38723725 -0.19877318 -0.22744331 0.38723695 0.40735736
		 -0.33068192 0.39013702 0.5 -0.33068246 0.40352666 0.53633577 -0.30875686 0.47256947 0.53633577
		 -0.19132499 0.51742947 0.3098318 -0.20491156 0.51742947 -0.45028946 -0.30875638 0.47256947 -0.70875955
		 -0.33068192 0.40352663 -0.70875955 0.41376269 0.39013702 -0.68078142 0.3370986 0.38723725 -0.40735739
		 0.36966917 0.38723695 0.33341259 0.41376275 0.39013702 0.5 0.41376269 0.40352663 0.53633577
		 0.38632858 0.47256947 0.53633577 0.23939368 0.5 0.3098318 0.2563937 0.5 -0.45028946
		 0.38632861 0.47256947 -0.70875955 0.41376275 0.40352666 -0.70875955 0.30357045 0.38723725 -0.40735739
		 0.37260947 0.39013702 -0.68078142 0.37260982 0.40352666 -0.70875955 0.34790429 0.47256947 -0.70875955
		 0.23089273 0.5 -0.45028946 0.21558353 0.5 0.3098318 0.34790397 0.47256947 0.53633577
		 0.37260947 0.40352666 0.53633577 0.37260982 0.39013702 0.5 0.30357075 0.38723695 0.40735739
		 0.27262881 0.38723725 -0.19877318 0.334631 0.39013705 -0.68078142 0.33463138 0.40352666 -0.70875955
		 0.31244397 0.47256947 -0.70875955 0.20735888 0.51742947 -0.45028946 0.19361007 0.51742947 0.3098318
		 0.31244364 0.47256947 0.53633577 0.334631 0.40352666 0.53633577 0.33463138 0.39013702 0.5
		 0.23066348 0.38723695 0.40735736;
	setAttr -s 150 ".ed[0:149]"  0 25 0 2 24 0 0 2 0 1 3 0 2 16 0 3 17 0 4 11 0
		 5 10 0 6 14 0 7 15 0 4 28 1 5 6 1 6 50 1 7 4 1 8 7 0 9 6 0 10 18 0 11 19 0 8 22 1
		 9 10 1 10 54 1 11 8 1 12 4 0 13 5 0 12 29 1 13 14 1 14 51 1 15 12 1 16 8 0 17 9 0
		 18 1 0 19 0 0 16 23 1 17 18 1 18 55 1 19 16 1 20 15 1 21 7 1 22 39 1 23 38 1 24 37 0
		 25 36 0 26 19 1 27 11 1 28 33 1 29 32 1 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1
		 26 27 1 27 28 1 28 29 1 30 21 1 31 20 1 32 42 1 33 43 1 34 27 1 35 26 1 36 46 0 37 47 0
		 38 48 1 39 49 1 30 31 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 30 1
		 40 30 1 41 31 1 42 79 1 43 78 1 44 34 1 45 35 1 46 75 0 47 74 0 48 73 1 49 72 1 40 41 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 40 1 50 61 1 51 60 1 52 13 1
		 53 5 1 54 67 1 55 66 1 56 1 0 57 3 0 58 17 1 59 9 1 50 51 1 52 53 1 53 54 1 54 55 1
		 55 56 1 56 57 1 57 58 1 58 59 1 59 50 1 60 70 1 61 71 1 62 59 1 63 58 1 64 57 0 65 56 0
		 66 76 1 67 77 1 68 53 1 69 52 1 60 61 1 61 62 1 62 63 1 63 64 1 64 65 1 65 66 1 66 67 1
		 67 68 1 68 69 1 70 41 1 71 40 1 72 62 1 73 63 1 74 64 0 75 65 0 76 45 1 77 44 1 78 68 1
		 79 69 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1 75 76 1 76 77 1 77 78 1 78 79 1;
	setAttr -s 71 -ch 284 ".fc[0:70]" -type "polyFaces" 
		f 4 53 44 67 59
		mu 0 4 37 38 43 44
		f 4 50 41 70 -41
		mu 0 4 34 35 46 47
		f 4 47 38 73 55
		mu 0 4 31 32 49 40
		f 4 11 -16 19 -8
		mu 0 4 7 9 15 16
		f 4 13 6 21 14
		mu 0 4 10 6 17 12
		f 4 54 45 66 -45
		mu 0 4 38 39 42 43
		f 4 25 -9 -12 -24
		mu 0 4 19 21 9 7
		f 4 46 -56 65 56
		mu 0 4 30 31 40 41
		f 4 27 22 -14 9
		mu 0 4 22 18 6 10
		f 4 48 39 72 -39
		mu 0 4 32 33 48 49
		f 4 -20 -30 33 -17
		mu 0 4 16 15 27 28
		f 4 52 -60 68 60
		mu 0 4 36 37 44 45
		f 4 -22 17 35 28
		mu 0 4 12 17 29 24
		f 4 49 40 71 -40
		mu 0 4 33 34 47 48
		f 4 -34 -6 -4 -31
		mu 0 4 28 27 4 1
		f 4 51 -61 69 -42
		mu 0 4 35 36 45 46
		f 4 -36 31 2 4
		mu 0 4 24 29 0 5
		f 4 -38 -47 36 -10
		mu 0 4 11 31 30 23
		f 4 18 -48 37 -15
		mu 0 4 13 32 31 11
		f 4 32 -49 -19 -29
		mu 0 4 25 33 32 13
		f 4 1 -50 -33 -5
		mu 0 4 2 34 33 25
		f 4 0 -51 -2 -3
		mu 0 4 0 35 34 2
		f 4 -43 -52 -1 -32
		mu 0 4 29 36 35 0
		f 4 -44 -53 42 -18
		mu 0 4 17 37 36 29
		f 4 10 -54 43 -7
		mu 0 4 6 38 37 17
		f 4 24 -55 -11 -23
		mu 0 4 18 39 38 6
		f 4 -66 -75 84 75
		mu 0 4 41 40 50 51
		f 4 -67 57 85 -59
		mu 0 4 43 42 52 53
		f 4 -68 58 86 78
		mu 0 4 44 43 53 54
		f 4 -69 -79 87 79
		mu 0 4 45 44 54 55
		f 4 -70 -80 88 -62
		mu 0 4 46 45 55 56
		f 4 -71 61 89 -63
		mu 0 4 47 46 56 57
		f 4 -72 62 90 -64
		mu 0 4 48 47 57 58
		f 4 -73 63 91 -65
		mu 0 4 49 48 58 59
		f 4 -74 64 92 74
		mu 0 4 40 49 59 50
		f 4 122 -94 103 94
		mu 0 4 70 71 60 61
		f 4 130 121 104 -121
		mu 0 4 78 79 62 63
		f 4 129 120 105 97
		mu 0 4 77 78 63 64
		f 4 128 -98 106 98
		mu 0 4 76 77 64 65
		f 4 127 -99 107 -118
		mu 0 4 75 76 65 66
		f 4 126 117 108 -117
		mu 0 4 74 75 66 67
		f 4 125 116 109 -116
		mu 0 4 73 74 67 68
		f 4 124 115 110 -115
		mu 0 4 72 73 68 69
		f 4 123 114 111 93
		mu 0 4 71 72 69 60
		f 4 -104 -13 8 26
		mu 0 4 61 60 8 20
		f 4 -105 95 23 -97
		mu 0 4 63 62 19 7
		f 4 -106 96 7 20
		mu 0 4 64 63 7 16
		f 4 -107 -21 16 34
		mu 0 4 65 64 16 28
		f 4 -108 -35 30 -100
		mu 0 4 66 65 28 1
		f 4 -109 99 3 -101
		mu 0 4 67 66 1 3
		f 4 -110 100 5 -102
		mu 0 4 68 67 3 26
		f 4 -111 101 29 -103
		mu 0 4 69 68 26 14
		f 4 -112 102 15 12
		mu 0 4 60 69 14 8
		f 4 141 -114 -123 112
		mu 0 4 80 81 71 70
		f 4 142 133 -124 113
		mu 0 4 81 82 72 71
		f 4 143 134 -125 -134
		mu 0 4 82 83 73 72
		f 4 144 135 -126 -135
		mu 0 4 83 84 74 73
		f 4 145 136 -127 -136
		mu 0 4 84 85 75 74
		f 4 146 -119 -128 -137
		mu 0 4 85 86 76 75
		f 4 147 -120 -129 118
		mu 0 4 86 87 77 76
		f 4 148 139 -130 119
		mu 0 4 87 88 78 77
		f 4 149 140 -131 -140
		mu 0 4 88 89 79 78
		f 4 -85 -133 -142 131
		mu 0 4 51 50 81 80
		f 4 -93 83 -143 132
		mu 0 4 50 59 82 81
		f 4 -92 82 -144 -84
		mu 0 4 59 58 83 82
		f 4 -91 81 -145 -83
		mu 0 4 58 57 84 83
		f 4 -90 80 -146 -82
		mu 0 4 57 56 85 84
		f 4 -89 -138 -147 -81
		mu 0 4 56 55 86 85
		f 4 -88 -139 -148 137
		mu 0 4 55 54 87 86
		f 4 -87 77 -149 138
		mu 0 4 54 53 88 87
		f 4 -86 76 -150 -78
		mu 0 4 53 52 89 88;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube11";
	rename -uid "DDD36673-4EAA-AE78-656F-2890FF6A911C";
	setAttr ".t" -type "double3" 11.313240711238151 1.3593809484076449 -0.13282654464283805 ;
	setAttr ".s" -type "double3" 5.7357286611127369 0.82661668086172269 5.4485888049306235 ;
createNode mesh -n "pCubeShape11" -p "pCube11";
	rename -uid "007144FC-4164-CF15-D381-B3A3F74FA791";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube12";
	rename -uid "1B9A0A8D-4643-1C8D-04A7-85A8752ADD66";
	setAttr ".t" -type "double3" 28.659860053868208 2.6852543745516013 1.3121691036552829 ;
	setAttr ".r" -type "double3" 28.901603828654178 0 0 ;
	setAttr ".s" -type "double3" 2.3210954738476381 0.31067965424893551 0.049931861171682565 ;
createNode mesh -n "pCubeShape12" -p "pCube12";
	rename -uid "32861AC6-4DDA-B763-846C-CA8507F343E4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube13";
	rename -uid "9908E489-4BFE-BFD0-BC02-E29E60040AFF";
	setAttr ".t" -type "double3" 28.659860053868208 2.0801519790714917 1.3121691036552829 ;
	setAttr ".r" -type "double3" 28.901603828654178 0 0 ;
	setAttr ".s" -type "double3" 2.3210954738476381 0.31067965424893551 0.049931861171682565 ;
createNode mesh -n "pCubeShape13" -p "pCube13";
	rename -uid "06194F70-4169-A401-9E51-06AF70D56BE3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube14";
	rename -uid "1D03E3AA-4E7B-EB45-BEC2-05B9138DC35D";
	setAttr ".t" -type "double3" 28.659860053868208 2.3850242669550341 1.3121691036552829 ;
	setAttr ".r" -type "double3" 28.901603828654178 0 0 ;
	setAttr ".s" -type "double3" 2.3210954738476381 0.31067965424893551 0.049931861171682565 ;
createNode mesh -n "pCubeShape14" -p "pCube14";
	rename -uid "4D16E0A5-46C1-53CB-B25A-F29C772833C6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube15";
	rename -uid "5F2C47C2-4B63-1AD2-2F2C-F4A0784676AB";
	setAttr ".t" -type "double3" 28.659860053868208 1.4631575018735181 1.3121691036552829 ;
	setAttr ".r" -type "double3" 28.901603828654178 0 0 ;
	setAttr ".s" -type "double3" 2.3210954738476381 0.31067965424893551 0.049931861171682565 ;
createNode mesh -n "pCubeShape15" -p "pCube15";
	rename -uid "CBE8543F-4B04-554A-349F-67AB6076C8E6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube16";
	rename -uid "D717CC41-4C86-26C0-727F-AF8FE5B0FE5B";
	setAttr ".t" -type "double3" 28.659860053868208 1.7719140169740659 1.3121691036552829 ;
	setAttr ".r" -type "double3" 28.901603828654178 0 0 ;
	setAttr ".s" -type "double3" 2.3210954738476381 0.31067965424893551 0.049931861171682565 ;
createNode mesh -n "pCubeShape16" -p "pCube16";
	rename -uid "12AF0ED3-4D23-01BA-CEC4-40B8351F9525";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube17";
	rename -uid "690BD742-46EF-184E-7813-F79E42E064DE";
	setAttr ".t" -type "double3" 28.659860053868208 1.1528237168184892 1.3121691036552829 ;
	setAttr ".r" -type "double3" 28.901603828654178 0 0 ;
	setAttr ".s" -type "double3" 2.3210954738476381 0.31067965424893551 0.049931861171682565 ;
createNode mesh -n "pCubeShape17" -p "pCube17";
	rename -uid "B5AD806B-467B-9AAC-2ABA-DD8C2B627937";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube18";
	rename -uid "46147A76-4B06-0649-9362-53A9188A81B5";
	setAttr ".t" -type "double3" 28.699882165352744 0.64573212506648869 -1.2582624773703688 ;
	setAttr ".r" -type "double3" 28.901603828654178 0 0 ;
	setAttr ".s" -type "double3" 2.3210954738476381 0.31067965424893551 0.049931861171682565 ;
createNode mesh -n "pCubeShape18" -p "pCube18";
	rename -uid "F5FB34D4-42A2-7DF7-9C6D-02A7DAC5D135";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube19";
	rename -uid "FC257655-42B6-5A2F-BD32-4384D5605B78";
	setAttr ".t" -type "double3" 28.669332741396111 0.64747024995594016 1.489310232452999 ;
	setAttr ".s" -type "double3" 3.0189623835514698 0.31067965424893551 0.049931861171682565 ;
createNode mesh -n "pCubeShape19" -p "pCube19";
	rename -uid "08F562A4-4742-AAAD-A1D0-E686433650C2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50125451385974884 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[18]" -type "float3" 0.065231785 0.51820898 0 ;
	setAttr ".pt[19]" -type "float3" 0.065231785 0.51820898 0 ;
	setAttr ".pt[21]" -type "float3" -0.065231785 0.51820898 0 ;
	setAttr ".pt[22]" -type "float3" -0.065231785 0.51820898 0 ;
createNode mesh -n "polySurfaceShape8" -p "pCube19";
	rename -uid "E8CF9C08-4CDF-F777-8CCF-90B75B4ADE63";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube20";
	rename -uid "D069AB62-4055-3A22-9D13-CDAD0B0FA5F2";
createNode mesh -n "pCubeShape20" -p "pCube20";
	rename -uid "C8BFA3D4-46F2-F6D4-62A2-038B0FA070FA";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "bottom";
	rename -uid "0CA76C54-4B65-148C-7A82-B49C1368CCF1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -1000.1 0 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
createNode camera -n "bottomShape" -p "bottom";
	rename -uid "F48653EE-46E3-EE4C-9113-BC884F4476DF";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "bottom1";
	setAttr ".den" -type "string" "bottom1_depth";
	setAttr ".man" -type "string" "bottom1_mask";
	setAttr ".hc" -type "string" "viewSet -bo %camera";
	setAttr ".o" yes;
createNode transform -n "pCube21";
	rename -uid "43A4CC3D-46FF-2031-3AC6-B4BEC172E969";
	setAttr ".t" -type "double3" 28.683643873053807 2.3850242669550341 -1.3266608887438154 ;
	setAttr ".r" -type "double3" 28.901603828654178 180 0 ;
	setAttr ".s" -type "double3" 2.3210954738476381 0.31067965424893551 0.049931861171682565 ;
createNode mesh -n "pCubeShape21" -p "pCube21";
	rename -uid "F2735D60-4BA5-835F-7508-139DFF8E986F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube22";
	rename -uid "C3024EC1-4436-15A9-5790-9BBC6C0F097E";
	setAttr ".t" -type "double3" 28.683643873053807 2.0801519790714917 -1.3266608887438154 ;
	setAttr ".r" -type "double3" 28.901603828654178 180 0 ;
	setAttr ".s" -type "double3" 2.3210954738476381 0.31067965424893551 0.049931861171682565 ;
createNode mesh -n "pCubeShape22" -p "pCube22";
	rename -uid "429D1DC0-4D55-B8B7-24B3-B58833AF998A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube23";
	rename -uid "401AD83E-428E-1822-DCD8-F284F7708C66";
	setAttr ".t" -type "double3" 28.683643873053807 2.6852543745516013 -1.3266608887438154 ;
	setAttr ".r" -type "double3" 28.901603828654178 180 0 ;
	setAttr ".s" -type "double3" 2.3210954738476381 0.31067965424893551 0.049931861171682565 ;
createNode mesh -n "pCubeShape23" -p "pCube23";
	rename -uid "1BB45EC6-455B-7D62-7A3B-328A1627479D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube24";
	rename -uid "2C4EB1AD-4741-FAE1-2396-3994FD6EBE55";
	setAttr ".t" -type "double3" 28.683643873053807 1.1528237168184892 -1.3266608887438154 ;
	setAttr ".r" -type "double3" 28.901603828654178 180 0 ;
	setAttr ".s" -type "double3" 2.3210954738476381 0.31067965424893551 0.049931861171682565 ;
createNode mesh -n "pCubeShape24" -p "pCube24";
	rename -uid "B006F004-4957-97E4-0ACB-00A7A6DAF52C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube25";
	rename -uid "4A77CBB6-4B79-DFF1-2A10-C6BDFD9CC321";
	setAttr ".t" -type "double3" 28.683643873053807 1.7719140169740659 -1.3266608887438154 ;
	setAttr ".r" -type "double3" 28.901603828654178 180 0 ;
	setAttr ".s" -type "double3" 2.3210954738476381 0.31067965424893551 0.049931861171682565 ;
createNode mesh -n "pCubeShape25" -p "pCube25";
	rename -uid "82B85238-4579-6355-BF9F-118273D4EFEE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube26";
	rename -uid "BDB5CF25-471F-2CC0-B378-94BA5BA994E6";
	setAttr ".t" -type "double3" 28.683643873053807 1.4631575018735181 -1.3266608887438154 ;
	setAttr ".r" -type "double3" 28.901603828654178 180 0 ;
	setAttr ".s" -type "double3" 2.3210954738476381 0.31067965424893551 0.049931861171682565 ;
createNode mesh -n "pCubeShape26" -p "pCube26";
	rename -uid "76E888F8-4354-242B-03CE-5488078DF173";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder3";
	rename -uid "51C8F874-4A53-3685-8B42-2E8838A0F51A";
	setAttr ".t" -type "double3" 11.26463990075259 5.6773051600138977 -1.4886157070620105 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 0.35007044159133976 1.2386865940212171 0.35007044159133976 ;
createNode mesh -n "pCylinderShape3" -p "pCylinder3";
	rename -uid "64C323FB-435B-5B53-3E6A-B890C88EF712";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.42500001192092896 0.50046992301940918 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 102 ".uvst[0].uvsp[0:101]" -type "float2" 0.375 0.3125 0.40000001
		 0.3125 0.42500001 0.3125 0.45000002 0.3125 0.47500002 0.3125 0.5 0.3125 0.52499998
		 0.3125 0.54999995 0.3125 0.57499993 0.3125 0.5999999 0.3125 0.62499988 0.3125 0.375
		 0.68843985 0.40000001 0.68843985 0.42500001 0.68843985 0.45000002 0.68843985 0.47500002
		 0.68843985 0.5 0.68843985 0.52499998 0.68843985 0.54999995 0.68843985 0.57499993
		 0.68843985 0.5999999 0.68843985 0.62499988 0.68843985 0 0 1 0 1 1 0 1 0 0 1 0 1 1
		 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0
		 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1
		 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0
		 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  0.80901718 -0.99999952 -0.58778542 0.30901718 -0.99999952 -0.95105672
		 -0.30901718 -0.99999952 -0.9510566 -0.80901718 -0.99999952 -0.58778524 -1 -0.99999952 5.9604645e-008
		 -0.80901718 -0.99999952 0.58778536 -0.30901718 -0.99999952 0.9510566 0.30901718 -0.99999952 0.95105654
		 0.80901718 -0.99999952 0.58778524 1 -0.99999952 0 0.80901718 1 -0.58778542 0.30901718 1 -0.95105672
		 -0.30901718 1 -0.9510566 -0.80901718 1 -0.58778524 -1 1 5.9604645e-008 -0.80901718 1 0.58778536
		 -0.30901718 1 0.9510566 0.30901718 1 0.95105654 0.80901718 1 0.58778524 1 1 0 0.37583447 1.11701727 -0.27305898
		 0.14355659 1.11701727 -0.44181865 -0.14355659 1.11701727 -0.44181859 -0.37583447 1.11701727 -0.27305895
		 -0.46455574 1.11701727 -4.2252992e-009 -0.37583447 1.11701727 0.27305889 -0.14355659 1.11701727 0.44181854
		 0.14355659 1.11701727 0.44181854 0.37583447 1.11701727 0.27305883 0.46455574 1.11701727 -3.1914972e-008
		 0.46382904 -1.12447584 -0.33699158 0.177167 -1.12447584 -0.54526377 -0.177167 -1.12447584 -0.54526365
		 -0.46382904 -1.12447584 -0.33699143 -0.57332414 -1.12447584 8.7409191e-009 -0.46382904 -1.12447584 0.33699152
		 -0.177167 -1.12447584 0.54526365 0.177167 -1.12447584 0.54526365 0.46382904 -1.12447584 0.33699143
		 0.57332414 -1.12447584 -2.5431863e-008;
	setAttr -s 70 ".ed[0:69]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 0 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 10 0 0 10 0 1 11 0 2 12 0 3 13 0 4 14 0 5 15 0 6 16 0 7 17 0 8 18 0 9 19 0
		 10 20 0 11 21 0 20 21 0 12 22 0 21 22 0 13 23 0 22 23 0 14 24 0 23 24 0 15 25 0 24 25 0
		 16 26 0 25 26 0 17 27 0 26 27 0 18 28 0 27 28 0 19 29 0 28 29 0 29 20 0 0 30 0 1 31 0
		 30 31 0 2 32 0 31 32 0 3 33 0 32 33 0 4 34 0 33 34 0 5 35 0 34 35 0 6 36 0 35 36 0
		 7 37 0 36 37 0 8 38 0 37 38 0 9 39 0 38 39 0 39 30 0;
	setAttr -s 32 -ch 140 ".fc[0:31]" -type "polyFaces" 
		f 4 0 21 -11 -21
		mu 0 4 0 1 12 11
		f 4 1 22 -12 -22
		mu 0 4 1 2 13 12
		f 4 2 23 -13 -23
		mu 0 4 2 3 14 13
		f 4 3 24 -14 -24
		mu 0 4 3 4 15 14
		f 4 4 25 -15 -25
		mu 0 4 4 5 16 15
		f 4 5 26 -16 -26
		mu 0 4 5 6 17 16
		f 4 6 27 -17 -27
		mu 0 4 6 7 18 17
		f 4 7 28 -18 -28
		mu 0 4 7 8 19 18
		f 4 8 29 -19 -29
		mu 0 4 8 9 20 19
		f 4 9 20 -20 -30
		mu 0 4 9 10 21 20
		f 4 10 31 -33 -31
		mu 0 4 22 23 24 25
		f 4 11 33 -35 -32
		mu 0 4 26 27 28 29
		f 4 12 35 -37 -34
		mu 0 4 30 31 32 33
		f 4 13 37 -39 -36
		mu 0 4 34 35 36 37
		f 4 14 39 -41 -38
		mu 0 4 38 39 40 41
		f 4 15 41 -43 -40
		mu 0 4 42 43 44 45
		f 4 16 43 -45 -42
		mu 0 4 46 47 48 49
		f 4 17 45 -47 -44
		mu 0 4 50 51 52 53
		f 4 18 47 -49 -46
		mu 0 4 54 55 56 57
		f 4 19 30 -50 -48
		mu 0 4 58 59 60 61
		f 10 34 36 38 40 42 44 46 48 49 32
		mu 0 10 29 33 37 41 45 49 53 57 61 25
		f 4 -1 50 52 -52
		mu 0 4 62 63 64 65
		f 4 -2 51 54 -54
		mu 0 4 66 67 68 69
		f 4 -3 53 56 -56
		mu 0 4 70 71 72 73
		f 4 -4 55 58 -58
		mu 0 4 74 75 76 77
		f 4 -5 57 60 -60
		mu 0 4 78 79 80 81
		f 4 -6 59 62 -62
		mu 0 4 82 83 84 85
		f 4 -7 61 64 -64
		mu 0 4 86 87 88 89
		f 4 -8 63 66 -66
		mu 0 4 90 91 92 93
		f 4 -9 65 68 -68
		mu 0 4 94 95 96 97
		f 4 -10 67 69 -51
		mu 0 4 98 99 100 101
		f 10 -53 -70 -69 -67 -65 -63 -61 -59 -57 -55
		mu 0 10 65 101 97 93 89 85 81 77 73 69;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder4";
	rename -uid "253FF6B8-4880-A4DB-76E0-89B4085A0047";
	setAttr ".t" -type "double3" 27.143744135833643 1.7027245180485542 0.05304550598688218 ;
	setAttr ".r" -type "double3" 90 0 90 ;
	setAttr ".s" -type "double3" 0.22829922995561028 0.95798803836691937 0.22829922995561028 ;
createNode mesh -n "pCylinderShape4" -p "pCylinder4";
	rename -uid "F04EE69C-4E52-F7F9-C6ED-3594BE33DAF7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.42500001192092896 0.50046992301940918 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 102 ".uvst[0].uvsp[0:101]" -type "float2" 0.375 0.3125 0.40000001
		 0.3125 0.42500001 0.3125 0.45000002 0.3125 0.47500002 0.3125 0.5 0.3125 0.52499998
		 0.3125 0.54999995 0.3125 0.57499993 0.3125 0.5999999 0.3125 0.62499988 0.3125 0.375
		 0.68843985 0.40000001 0.68843985 0.42500001 0.68843985 0.45000002 0.68843985 0.47500002
		 0.68843985 0.5 0.68843985 0.52499998 0.68843985 0.54999995 0.68843985 0.57499993
		 0.68843985 0.5999999 0.68843985 0.62499988 0.68843985 0 0 1 0 1 1 0 1 0 0 1 0 1 1
		 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0
		 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1
		 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0
		 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 2 ".pt";
	setAttr ".pt[2]" -type "float3" 0 -9.5367432e-007 0 ;
	setAttr ".pt[12]" -type "float3" 0 -9.5367432e-007 0 ;
	setAttr -s 40 ".vt[0:39]"  0.80901718 -0.99999952 -0.58778542 0.30901718 -0.99999952 -0.95105672
		 -0.30901718 -1.000000476837 -0.9510566 -0.80901718 -0.99999952 -0.58778524 -1 -0.99999952 5.9604645e-008
		 -0.80901718 -0.99999952 0.58778536 -0.30901718 -0.99999952 0.9510566 0.30901718 -0.99999952 0.95105654
		 0.80901718 -0.99999952 0.58778524 1 -0.99999952 0 0.80901718 1 -0.58778542 0.30901718 1 -0.95105672
		 -0.30901718 0.99999905 -0.9510566 -0.80901718 1 -0.58778524 -1 1 5.9604645e-008 -0.80901718 1 0.58778536
		 -0.30901718 1 0.9510566 0.30901718 1 0.95105654 0.80901718 1 0.58778524 1 1 0 0.37583447 1.11701727 -0.27305898
		 0.14355659 1.11701727 -0.44181865 -0.14355659 1.11701727 -0.44181859 -0.37583447 1.11701727 -0.27305895
		 -0.46455574 1.11701727 -4.2252992e-009 -0.37583447 1.11701727 0.27305889 -0.14355659 1.11701727 0.44181854
		 0.14355659 1.11701727 0.44181854 0.37583447 1.11701727 0.27305883 0.46455574 1.11701727 -3.1914972e-008
		 0.46382904 -1.12447584 -0.33699158 0.177167 -1.12447584 -0.54526377 -0.177167 -1.12447584 -0.54526365
		 -0.46382904 -1.12447584 -0.33699143 -0.57332414 -1.12447584 8.7409191e-009 -0.46382904 -1.12447584 0.33699152
		 -0.177167 -1.12447584 0.54526365 0.177167 -1.12447584 0.54526365 0.46382904 -1.12447584 0.33699143
		 0.57332414 -1.12447584 -2.5431863e-008;
	setAttr -s 70 ".ed[0:69]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 0 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 10 0 0 10 0 1 11 0 2 12 0 3 13 0 4 14 0 5 15 0 6 16 0 7 17 0 8 18 0 9 19 0
		 10 20 0 11 21 0 20 21 0 12 22 0 21 22 0 13 23 0 22 23 0 14 24 0 23 24 0 15 25 0 24 25 0
		 16 26 0 25 26 0 17 27 0 26 27 0 18 28 0 27 28 0 19 29 0 28 29 0 29 20 0 0 30 0 1 31 0
		 30 31 0 2 32 0 31 32 0 3 33 0 32 33 0 4 34 0 33 34 0 5 35 0 34 35 0 6 36 0 35 36 0
		 7 37 0 36 37 0 8 38 0 37 38 0 9 39 0 38 39 0 39 30 0;
	setAttr -s 32 -ch 140 ".fc[0:31]" -type "polyFaces" 
		f 4 0 21 -11 -21
		mu 0 4 0 1 12 11
		f 4 1 22 -12 -22
		mu 0 4 1 2 13 12
		f 4 2 23 -13 -23
		mu 0 4 2 3 14 13
		f 4 3 24 -14 -24
		mu 0 4 3 4 15 14
		f 4 4 25 -15 -25
		mu 0 4 4 5 16 15
		f 4 5 26 -16 -26
		mu 0 4 5 6 17 16
		f 4 6 27 -17 -27
		mu 0 4 6 7 18 17
		f 4 7 28 -18 -28
		mu 0 4 7 8 19 18
		f 4 8 29 -19 -29
		mu 0 4 8 9 20 19
		f 4 9 20 -20 -30
		mu 0 4 9 10 21 20
		f 4 10 31 -33 -31
		mu 0 4 22 23 24 25
		f 4 11 33 -35 -32
		mu 0 4 26 27 28 29
		f 4 12 35 -37 -34
		mu 0 4 30 31 32 33
		f 4 13 37 -39 -36
		mu 0 4 34 35 36 37
		f 4 14 39 -41 -38
		mu 0 4 38 39 40 41
		f 4 15 41 -43 -40
		mu 0 4 42 43 44 45
		f 4 16 43 -45 -42
		mu 0 4 46 47 48 49
		f 4 17 45 -47 -44
		mu 0 4 50 51 52 53
		f 4 18 47 -49 -46
		mu 0 4 54 55 56 57
		f 4 19 30 -50 -48
		mu 0 4 58 59 60 61
		f 10 34 36 38 40 42 44 46 48 49 32
		mu 0 10 29 33 37 41 45 49 53 57 61 25
		f 4 -1 50 52 -52
		mu 0 4 62 63 64 65
		f 4 -2 51 54 -54
		mu 0 4 66 67 68 69
		f 4 -3 53 56 -56
		mu 0 4 70 71 72 73
		f 4 -4 55 58 -58
		mu 0 4 74 75 76 77
		f 4 -5 57 60 -60
		mu 0 4 78 79 80 81
		f 4 -6 59 62 -62
		mu 0 4 82 83 84 85
		f 4 -7 61 64 -64
		mu 0 4 86 87 88 89
		f 4 -8 63 66 -66
		mu 0 4 90 91 92 93
		f 4 -9 65 68 -68
		mu 0 4 94 95 96 97
		f 4 -10 67 69 -51
		mu 0 4 98 99 100 101
		f 10 -53 -70 -69 -67 -65 -63 -61 -59 -57 -55
		mu 0 10 65 101 97 93 89 85 81 77 73 69;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube27";
	rename -uid "129F49AE-43CC-880A-C2A4-DB928B57D615";
	setAttr ".t" -type "double3" 28.669332741396111 0.64747024995594016 -1.484689099685002 ;
	setAttr ".s" -type "double3" 3.0189623835514698 0.31067965424893551 0.049931861171682565 ;
createNode mesh -n "pCubeShape27" -p "pCube27";
	rename -uid "38259E5A-4C34-92F2-B801-599FDA9BB656";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50125451385974884 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 34 ".uvst[0].uvsp[0:33]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.45327777 0 0.45327777 1 0.45327777 0.75 0.45327777
		 0.5 0.45327777 0.25 0.54890132 0 0.54890132 1 0.54890132 0.25 0.54890132 0.5 0.54890132
		 0.75 0.45944694 0 0.45944694 1 0.45944694 0.74999994 0.45944694 0.5 0.45944694 0.25
		 0.54306209 0 0.54306209 1 0.54306209 0.25 0.54306209 0.5 0.54306209 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[18]" -type "float3" 0.065231785 0.51820898 0 ;
	setAttr ".pt[19]" -type "float3" 0.065231785 0.51820898 0 ;
	setAttr ".pt[21]" -type "float3" -0.065231785 0.51820898 0 ;
	setAttr ".pt[22]" -type "float3" -0.065231785 0.51820898 0 ;
	setAttr -s 24 ".vt[0:23]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 -0.18688899 -0.5 0.5 -0.18688899 -0.5 -0.5
		 -0.18688899 0.5 -0.5 -0.18688899 0.5 0.5 0.19560516 -0.5 0.5 0.19560516 0.5 0.5 0.19560516 0.5 -0.5
		 0.19560516 -0.5 -0.5 -0.1622123 -0.5 0.5 -0.1622123 -0.5 -0.5 -0.1622123 0.5 -0.5
		 -0.1622123 0.5 0.5 0.17224826 -0.5 0.5 0.17224826 0.5 0.5 0.17224826 0.5 -0.5 0.17224826 -0.5 -0.5;
	setAttr -s 44 ".ed[0:43]"  0 8 0 2 11 0 4 10 0 6 9 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 16 0 9 17 0 10 18 0 11 19 0 8 9 1 9 10 1 10 11 1
		 11 8 1 12 1 0 13 3 0 14 5 0 15 7 0 12 13 1 13 14 1 14 15 1 15 12 1 16 20 0 17 23 0
		 18 22 0 19 21 0 16 17 1 17 18 1 18 19 1 19 16 1 20 12 0 21 13 0 22 14 0 23 15 0 20 21 1
		 21 22 1 22 23 1 23 20 1;
	setAttr -s 22 -ch 88 ".fc[0:21]" -type "polyFaces" 
		f 4 35 28 40 -32
		mu 0 4 28 24 29 31
		f 4 34 31 41 -31
		mu 0 4 27 28 31 32
		f 4 33 30 42 -30
		mu 0 4 26 27 32 33
		f 4 32 29 43 -29
		mu 0 4 25 26 33 30
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 3 -17 -1 -11
		mu 0 4 6 16 15 8
		f 4 2 -18 -4 -9
		mu 0 4 4 17 16 6
		f 4 1 -19 -3 -7
		mu 0 4 2 18 17 4
		f 4 0 -20 -2 -5
		mu 0 4 0 14 18 2
		f 4 -25 20 5 -22
		mu 0 4 21 19 1 3
		f 4 -26 21 7 -23
		mu 0 4 22 21 3 5
		f 4 -27 22 9 -24
		mu 0 4 23 22 5 7
		f 4 -28 23 11 -21
		mu 0 4 20 23 7 9
		f 4 16 13 -33 -13
		mu 0 4 15 16 26 25
		f 4 17 14 -34 -14
		mu 0 4 16 17 27 26
		f 4 18 15 -35 -15
		mu 0 4 17 18 28 27
		f 4 19 12 -36 -16
		mu 0 4 18 14 24 28
		f 4 -41 36 24 -38
		mu 0 4 31 29 19 21
		f 4 -42 37 25 -39
		mu 0 4 32 31 21 22
		f 4 -43 38 26 -40
		mu 0 4 33 32 22 23
		f 4 -44 39 27 -37
		mu 0 4 30 33 23 20;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape8" -p "pCube27";
	rename -uid "EF88B96F-42A6-1532-104B-8FB85037E6BE";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube28";
	rename -uid "9738313F-4729-9BF3-CEA4-D881E46F1926";
	setAttr ".t" -type "double3" 30.199680782492145 0.64747024995594016 0.0021052832821562006 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".s" -type "double3" 3.0189623835514698 0.31067965424893551 0.049931861171682565 ;
createNode mesh -n "pCubeShape28" -p "pCube28";
	rename -uid "9C5B7087-4713-EFED-A5C7-BCA1842D8E77";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50125451385974884 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 34 ".uvst[0].uvsp[0:33]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.45327777 0 0.45327777 1 0.45327777 0.75 0.45327777
		 0.5 0.45327777 0.25 0.54890132 0 0.54890132 1 0.54890132 0.25 0.54890132 0.5 0.54890132
		 0.75 0.45944694 0 0.45944694 1 0.45944694 0.74999994 0.45944694 0.5 0.45944694 0.25
		 0.54306209 0 0.54306209 1 0.54306209 0.25 0.54306209 0.5 0.54306209 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[18]" -type "float3" 0.065231785 0.51820898 0 ;
	setAttr ".pt[19]" -type "float3" 0.065231785 0.51820898 0 ;
	setAttr ".pt[21]" -type "float3" -0.065231785 0.51820898 0 ;
	setAttr ".pt[22]" -type "float3" -0.065231785 0.51820898 0 ;
	setAttr -s 24 ".vt[0:23]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 -0.18688899 -0.5 0.5 -0.18688899 -0.5 -0.5
		 -0.18688899 0.5 -0.5 -0.18688899 0.5 0.5 0.19560516 -0.5 0.5 0.19560516 0.5 0.5 0.19560516 0.5 -0.5
		 0.19560516 -0.5 -0.5 -0.1622123 -0.5 0.5 -0.1622123 -0.5 -0.5 -0.1622123 0.5 -0.5
		 -0.1622123 0.5 0.5 0.17224826 -0.5 0.5 0.17224826 0.5 0.5 0.17224826 0.5 -0.5 0.17224826 -0.5 -0.5;
	setAttr -s 44 ".ed[0:43]"  0 8 0 2 11 0 4 10 0 6 9 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 16 0 9 17 0 10 18 0 11 19 0 8 9 1 9 10 1 10 11 1
		 11 8 1 12 1 0 13 3 0 14 5 0 15 7 0 12 13 1 13 14 1 14 15 1 15 12 1 16 20 0 17 23 0
		 18 22 0 19 21 0 16 17 1 17 18 1 18 19 1 19 16 1 20 12 0 21 13 0 22 14 0 23 15 0 20 21 1
		 21 22 1 22 23 1 23 20 1;
	setAttr -s 22 -ch 88 ".fc[0:21]" -type "polyFaces" 
		f 4 35 28 40 -32
		mu 0 4 28 24 29 31
		f 4 34 31 41 -31
		mu 0 4 27 28 31 32
		f 4 33 30 42 -30
		mu 0 4 26 27 32 33
		f 4 32 29 43 -29
		mu 0 4 25 26 33 30
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 3 -17 -1 -11
		mu 0 4 6 16 15 8
		f 4 2 -18 -4 -9
		mu 0 4 4 17 16 6
		f 4 1 -19 -3 -7
		mu 0 4 2 18 17 4
		f 4 0 -20 -2 -5
		mu 0 4 0 14 18 2
		f 4 -25 20 5 -22
		mu 0 4 21 19 1 3
		f 4 -26 21 7 -23
		mu 0 4 22 21 3 5
		f 4 -27 22 9 -24
		mu 0 4 23 22 5 7
		f 4 -28 23 11 -21
		mu 0 4 20 23 7 9
		f 4 16 13 -33 -13
		mu 0 4 15 16 26 25
		f 4 17 14 -34 -14
		mu 0 4 16 17 27 26
		f 4 18 15 -35 -15
		mu 0 4 17 18 28 27
		f 4 19 12 -36 -16
		mu 0 4 18 14 24 28
		f 4 -41 36 24 -38
		mu 0 4 31 29 19 21
		f 4 -42 37 25 -39
		mu 0 4 32 31 21 22
		f 4 -43 38 26 -40
		mu 0 4 33 32 22 23
		f 4 -44 39 27 -37
		mu 0 4 30 33 23 20;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape8" -p "pCube28";
	rename -uid "829DA1B0-4F9D-C305-1C72-049475ABA720";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube29";
	rename -uid "0C1EFD47-451E-330F-8ACA-CBBC4E3662A4";
	setAttr ".t" -type "double3" 27.145884118813939 0.64747024995594016 0.0021052832821562006 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".s" -type "double3" 3.0189623835514698 0.31067965424893551 0.049931861171682565 ;
createNode mesh -n "pCubeShape29" -p "pCube29";
	rename -uid "471E415C-438D-5CE5-5AC8-8BA000488124";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50125451385974884 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 34 ".uvst[0].uvsp[0:33]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.45327777 0 0.45327777 1 0.45327777 0.75 0.45327777
		 0.5 0.45327777 0.25 0.54890132 0 0.54890132 1 0.54890132 0.25 0.54890132 0.5 0.54890132
		 0.75 0.45944694 0 0.45944694 1 0.45944694 0.74999994 0.45944694 0.5 0.45944694 0.25
		 0.54306209 0 0.54306209 1 0.54306209 0.25 0.54306209 0.5 0.54306209 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[18]" -type "float3" 0.065231785 0.51820898 0 ;
	setAttr ".pt[19]" -type "float3" 0.065231785 0.51820898 0 ;
	setAttr ".pt[21]" -type "float3" -0.065231785 0.51820898 0 ;
	setAttr ".pt[22]" -type "float3" -0.065231785 0.51820898 0 ;
	setAttr -s 24 ".vt[0:23]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 -0.18688899 -0.5 0.5 -0.18688899 -0.5 -0.5
		 -0.18688899 0.5 -0.5 -0.18688899 0.5 0.5 0.19560516 -0.5 0.5 0.19560516 0.5 0.5 0.19560516 0.5 -0.5
		 0.19560516 -0.5 -0.5 -0.1622123 -0.5 0.5 -0.1622123 -0.5 -0.5 -0.1622123 0.5 -0.5
		 -0.1622123 0.5 0.5 0.17224826 -0.5 0.5 0.17224826 0.5 0.5 0.17224826 0.5 -0.5 0.17224826 -0.5 -0.5;
	setAttr -s 44 ".ed[0:43]"  0 8 0 2 11 0 4 10 0 6 9 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 16 0 9 17 0 10 18 0 11 19 0 8 9 1 9 10 1 10 11 1
		 11 8 1 12 1 0 13 3 0 14 5 0 15 7 0 12 13 1 13 14 1 14 15 1 15 12 1 16 20 0 17 23 0
		 18 22 0 19 21 0 16 17 1 17 18 1 18 19 1 19 16 1 20 12 0 21 13 0 22 14 0 23 15 0 20 21 1
		 21 22 1 22 23 1 23 20 1;
	setAttr -s 22 -ch 88 ".fc[0:21]" -type "polyFaces" 
		f 4 35 28 40 -32
		mu 0 4 28 24 29 31
		f 4 34 31 41 -31
		mu 0 4 27 28 31 32
		f 4 33 30 42 -30
		mu 0 4 26 27 32 33
		f 4 32 29 43 -29
		mu 0 4 25 26 33 30
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 3 -17 -1 -11
		mu 0 4 6 16 15 8
		f 4 2 -18 -4 -9
		mu 0 4 4 17 16 6
		f 4 1 -19 -3 -7
		mu 0 4 2 18 17 4
		f 4 0 -20 -2 -5
		mu 0 4 0 14 18 2
		f 4 -25 20 5 -22
		mu 0 4 21 19 1 3
		f 4 -26 21 7 -23
		mu 0 4 22 21 3 5
		f 4 -27 22 9 -24
		mu 0 4 23 22 5 7
		f 4 -28 23 11 -21
		mu 0 4 20 23 7 9
		f 4 16 13 -33 -13
		mu 0 4 15 16 26 25
		f 4 17 14 -34 -14
		mu 0 4 16 17 27 26
		f 4 18 15 -35 -15
		mu 0 4 17 18 28 27
		f 4 19 12 -36 -16
		mu 0 4 18 14 24 28
		f 4 -41 36 24 -38
		mu 0 4 31 29 19 21
		f 4 -42 37 25 -39
		mu 0 4 32 31 21 22
		f 4 -43 38 26 -40
		mu 0 4 33 32 22 23
		f 4 -44 39 27 -37
		mu 0 4 30 33 23 20;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape8" -p "pCube29";
	rename -uid "5CF70159-4582-8824-97BB-57883A105D73";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube30";
	rename -uid "E4F1A526-42FD-DB6F-0C30-8B8436843EF2";
	setAttr ".t" -type "double3" 28.669332741396111 3.1887243786534509 1.489310232452999 ;
	setAttr ".r" -type "double3" 180 0 0 ;
	setAttr ".s" -type "double3" 3.0189623835514698 0.31067965424893551 0.049931861171682565 ;
createNode mesh -n "pCubeShape30" -p "pCube30";
	rename -uid "BF61F182-4325-98E5-852E-5893EE519064";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50125451385974884 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 34 ".uvst[0].uvsp[0:33]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.45327777 0 0.45327777 1 0.45327777 0.75 0.45327777
		 0.5 0.45327777 0.25 0.54890132 0 0.54890132 1 0.54890132 0.25 0.54890132 0.5 0.54890132
		 0.75 0.45944694 0 0.45944694 1 0.45944694 0.74999994 0.45944694 0.5 0.45944694 0.25
		 0.54306209 0 0.54306209 1 0.54306209 0.25 0.54306209 0.5 0.54306209 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[18]" -type "float3" 0.065231785 0.51820898 0 ;
	setAttr ".pt[19]" -type "float3" 0.065231785 0.51820898 0 ;
	setAttr ".pt[21]" -type "float3" -0.065231785 0.51820898 0 ;
	setAttr ".pt[22]" -type "float3" -0.065231785 0.51820898 0 ;
	setAttr -s 24 ".vt[0:23]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 -0.18688899 -0.5 0.5 -0.18688899 -0.5 -0.5
		 -0.18688899 0.5 -0.5 -0.18688899 0.5 0.5 0.19560516 -0.5 0.5 0.19560516 0.5 0.5 0.19560516 0.5 -0.5
		 0.19560516 -0.5 -0.5 -0.1622123 -0.5 0.5 -0.1622123 -0.5 -0.5 -0.1622123 0.5 -0.5
		 -0.1622123 0.5 0.5 0.17224826 -0.5 0.5 0.17224826 0.5 0.5 0.17224826 0.5 -0.5 0.17224826 -0.5 -0.5;
	setAttr -s 44 ".ed[0:43]"  0 8 0 2 11 0 4 10 0 6 9 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 16 0 9 17 0 10 18 0 11 19 0 8 9 1 9 10 1 10 11 1
		 11 8 1 12 1 0 13 3 0 14 5 0 15 7 0 12 13 1 13 14 1 14 15 1 15 12 1 16 20 0 17 23 0
		 18 22 0 19 21 0 16 17 1 17 18 1 18 19 1 19 16 1 20 12 0 21 13 0 22 14 0 23 15 0 20 21 1
		 21 22 1 22 23 1 23 20 1;
	setAttr -s 22 -ch 88 ".fc[0:21]" -type "polyFaces" 
		f 4 35 28 40 -32
		mu 0 4 28 24 29 31
		f 4 34 31 41 -31
		mu 0 4 27 28 31 32
		f 4 33 30 42 -30
		mu 0 4 26 27 32 33
		f 4 32 29 43 -29
		mu 0 4 25 26 33 30
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 3 -17 -1 -11
		mu 0 4 6 16 15 8
		f 4 2 -18 -4 -9
		mu 0 4 4 17 16 6
		f 4 1 -19 -3 -7
		mu 0 4 2 18 17 4
		f 4 0 -20 -2 -5
		mu 0 4 0 14 18 2
		f 4 -25 20 5 -22
		mu 0 4 21 19 1 3
		f 4 -26 21 7 -23
		mu 0 4 22 21 3 5
		f 4 -27 22 9 -24
		mu 0 4 23 22 5 7
		f 4 -28 23 11 -21
		mu 0 4 20 23 7 9
		f 4 16 13 -33 -13
		mu 0 4 15 16 26 25
		f 4 17 14 -34 -14
		mu 0 4 16 17 27 26
		f 4 18 15 -35 -15
		mu 0 4 17 18 28 27
		f 4 19 12 -36 -16
		mu 0 4 18 14 24 28
		f 4 -41 36 24 -38
		mu 0 4 31 29 19 21
		f 4 -42 37 25 -39
		mu 0 4 32 31 21 22
		f 4 -43 38 26 -40
		mu 0 4 33 32 22 23
		f 4 -44 39 27 -37
		mu 0 4 30 33 23 20;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape8" -p "pCube30";
	rename -uid "525F86C1-4B9F-9BDD-922F-B582994C1341";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube31";
	rename -uid "6646D922-4C14-000D-CAEE-6292D872530E";
	setAttr ".t" -type "double3" 28.669332741396111 3.1887243786534509 -1.5130592301451686 ;
	setAttr ".r" -type "double3" 180 0 0 ;
	setAttr ".s" -type "double3" 3.0189623835514698 0.31067965424893551 0.049931861171682565 ;
createNode mesh -n "pCubeShape31" -p "pCube31";
	rename -uid "F28B2D1F-45CA-C7B0-110C-3B911EF2250C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50125451385974884 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 34 ".uvst[0].uvsp[0:33]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.45327777 0 0.45327777 1 0.45327777 0.75 0.45327777
		 0.5 0.45327777 0.25 0.54890132 0 0.54890132 1 0.54890132 0.25 0.54890132 0.5 0.54890132
		 0.75 0.45944694 0 0.45944694 1 0.45944694 0.74999994 0.45944694 0.5 0.45944694 0.25
		 0.54306209 0 0.54306209 1 0.54306209 0.25 0.54306209 0.5 0.54306209 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[18]" -type "float3" 0.065231785 0.51820898 0 ;
	setAttr ".pt[19]" -type "float3" 0.065231785 0.51820898 0 ;
	setAttr ".pt[21]" -type "float3" -0.065231785 0.51820898 0 ;
	setAttr ".pt[22]" -type "float3" -0.065231785 0.51820898 0 ;
	setAttr -s 24 ".vt[0:23]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 -0.18688899 -0.5 0.5 -0.18688899 -0.5 -0.5
		 -0.18688899 0.5 -0.5 -0.18688899 0.5 0.5 0.19560516 -0.5 0.5 0.19560516 0.5 0.5 0.19560516 0.5 -0.5
		 0.19560516 -0.5 -0.5 -0.1622123 -0.5 0.5 -0.1622123 -0.5 -0.5 -0.1622123 0.5 -0.5
		 -0.1622123 0.5 0.5 0.17224826 -0.5 0.5 0.17224826 0.5 0.5 0.17224826 0.5 -0.5 0.17224826 -0.5 -0.5;
	setAttr -s 44 ".ed[0:43]"  0 8 0 2 11 0 4 10 0 6 9 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 16 0 9 17 0 10 18 0 11 19 0 8 9 1 9 10 1 10 11 1
		 11 8 1 12 1 0 13 3 0 14 5 0 15 7 0 12 13 1 13 14 1 14 15 1 15 12 1 16 20 0 17 23 0
		 18 22 0 19 21 0 16 17 1 17 18 1 18 19 1 19 16 1 20 12 0 21 13 0 22 14 0 23 15 0 20 21 1
		 21 22 1 22 23 1 23 20 1;
	setAttr -s 22 -ch 88 ".fc[0:21]" -type "polyFaces" 
		f 4 35 28 40 -32
		mu 0 4 28 24 29 31
		f 4 34 31 41 -31
		mu 0 4 27 28 31 32
		f 4 33 30 42 -30
		mu 0 4 26 27 32 33
		f 4 32 29 43 -29
		mu 0 4 25 26 33 30
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 3 -17 -1 -11
		mu 0 4 6 16 15 8
		f 4 2 -18 -4 -9
		mu 0 4 4 17 16 6
		f 4 1 -19 -3 -7
		mu 0 4 2 18 17 4
		f 4 0 -20 -2 -5
		mu 0 4 0 14 18 2
		f 4 -25 20 5 -22
		mu 0 4 21 19 1 3
		f 4 -26 21 7 -23
		mu 0 4 22 21 3 5
		f 4 -27 22 9 -24
		mu 0 4 23 22 5 7
		f 4 -28 23 11 -21
		mu 0 4 20 23 7 9
		f 4 16 13 -33 -13
		mu 0 4 15 16 26 25
		f 4 17 14 -34 -14
		mu 0 4 16 17 27 26
		f 4 18 15 -35 -15
		mu 0 4 17 18 28 27
		f 4 19 12 -36 -16
		mu 0 4 18 14 24 28
		f 4 -41 36 24 -38
		mu 0 4 31 29 19 21
		f 4 -42 37 25 -39
		mu 0 4 32 31 21 22
		f 4 -43 38 26 -40
		mu 0 4 33 32 22 23
		f 4 -44 39 27 -37
		mu 0 4 30 33 23 20;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape8" -p "pCube31";
	rename -uid "4E9EEA42-4BC7-79DB-1CF0-50BDE1AE196A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube32";
	rename -uid "22D59708-4616-D7B6-EB5F-5BB2ADF181D7";
	setAttr ".t" -type "double3" 30.160876181028947 3.1887243786534509 -0.0017312836662941589 ;
	setAttr ".r" -type "double3" 180 90 0 ;
	setAttr ".s" -type "double3" 3.0189623835514698 0.31067965424893551 0.049931861171682565 ;
createNode mesh -n "pCubeShape32" -p "pCube32";
	rename -uid "F0AC6823-40D6-BF0A-E0E0-3A98F1A6772C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50125451385974884 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 34 ".uvst[0].uvsp[0:33]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.45327777 0 0.45327777 1 0.45327777 0.75 0.45327777
		 0.5 0.45327777 0.25 0.54890132 0 0.54890132 1 0.54890132 0.25 0.54890132 0.5 0.54890132
		 0.75 0.45944694 0 0.45944694 1 0.45944694 0.74999994 0.45944694 0.5 0.45944694 0.25
		 0.54306209 0 0.54306209 1 0.54306209 0.25 0.54306209 0.5 0.54306209 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[18]" -type "float3" 0.065231785 0.51820898 0 ;
	setAttr ".pt[19]" -type "float3" 0.065231785 0.51820898 0 ;
	setAttr ".pt[21]" -type "float3" -0.065231785 0.51820898 0 ;
	setAttr ".pt[22]" -type "float3" -0.065231785 0.51820898 0 ;
	setAttr -s 24 ".vt[0:23]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 -0.18688899 -0.5 0.5 -0.18688899 -0.5 -0.5
		 -0.18688899 0.5 -0.5 -0.18688899 0.5 0.5 0.19560516 -0.5 0.5 0.19560516 0.5 0.5 0.19560516 0.5 -0.5
		 0.19560516 -0.5 -0.5 -0.1622123 -0.5 0.5 -0.1622123 -0.5 -0.5 -0.1622123 0.5 -0.5
		 -0.1622123 0.5 0.5 0.17224826 -0.5 0.5 0.17224826 0.5 0.5 0.17224826 0.5 -0.5 0.17224826 -0.5 -0.5;
	setAttr -s 44 ".ed[0:43]"  0 8 0 2 11 0 4 10 0 6 9 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 16 0 9 17 0 10 18 0 11 19 0 8 9 1 9 10 1 10 11 1
		 11 8 1 12 1 0 13 3 0 14 5 0 15 7 0 12 13 1 13 14 1 14 15 1 15 12 1 16 20 0 17 23 0
		 18 22 0 19 21 0 16 17 1 17 18 1 18 19 1 19 16 1 20 12 0 21 13 0 22 14 0 23 15 0 20 21 1
		 21 22 1 22 23 1 23 20 1;
	setAttr -s 22 -ch 88 ".fc[0:21]" -type "polyFaces" 
		f 4 35 28 40 -32
		mu 0 4 28 24 29 31
		f 4 34 31 41 -31
		mu 0 4 27 28 31 32
		f 4 33 30 42 -30
		mu 0 4 26 27 32 33
		f 4 32 29 43 -29
		mu 0 4 25 26 33 30
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 3 -17 -1 -11
		mu 0 4 6 16 15 8
		f 4 2 -18 -4 -9
		mu 0 4 4 17 16 6
		f 4 1 -19 -3 -7
		mu 0 4 2 18 17 4
		f 4 0 -20 -2 -5
		mu 0 4 0 14 18 2
		f 4 -25 20 5 -22
		mu 0 4 21 19 1 3
		f 4 -26 21 7 -23
		mu 0 4 22 21 3 5
		f 4 -27 22 9 -24
		mu 0 4 23 22 5 7
		f 4 -28 23 11 -21
		mu 0 4 20 23 7 9
		f 4 16 13 -33 -13
		mu 0 4 15 16 26 25
		f 4 17 14 -34 -14
		mu 0 4 16 17 27 26
		f 4 18 15 -35 -15
		mu 0 4 17 18 28 27
		f 4 19 12 -36 -16
		mu 0 4 18 14 24 28
		f 4 -41 36 24 -38
		mu 0 4 31 29 19 21
		f 4 -42 37 25 -39
		mu 0 4 32 31 21 22
		f 4 -43 38 26 -40
		mu 0 4 33 32 22 23
		f 4 -44 39 27 -37
		mu 0 4 30 33 23 20;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape8" -p "pCube32";
	rename -uid "420238BA-4D7C-2460-1716-E3B473F833F8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube33";
	rename -uid "72DBFA4B-46FB-AE2F-6A2D-7F9EE40A4576";
	setAttr ".t" -type "double3" 27.185349574550241 3.1887243786534509 -0.0017312836662941589 ;
	setAttr ".r" -type "double3" 180 90 0 ;
	setAttr ".s" -type "double3" 3.0189623835514698 0.31067965424893551 0.049931861171682565 ;
createNode mesh -n "pCubeShape33" -p "pCube33";
	rename -uid "CDABDA4A-48EB-14C6-1E48-82B91D3C4517";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50125451385974884 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 34 ".uvst[0].uvsp[0:33]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.45327777 0 0.45327777 1 0.45327777 0.75 0.45327777
		 0.5 0.45327777 0.25 0.54890132 0 0.54890132 1 0.54890132 0.25 0.54890132 0.5 0.54890132
		 0.75 0.45944694 0 0.45944694 1 0.45944694 0.74999994 0.45944694 0.5 0.45944694 0.25
		 0.54306209 0 0.54306209 1 0.54306209 0.25 0.54306209 0.5 0.54306209 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[18]" -type "float3" 0.065231785 0.51820898 0 ;
	setAttr ".pt[19]" -type "float3" 0.065231785 0.51820898 0 ;
	setAttr ".pt[21]" -type "float3" -0.065231785 0.51820898 0 ;
	setAttr ".pt[22]" -type "float3" -0.065231785 0.51820898 0 ;
	setAttr -s 24 ".vt[0:23]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 -0.18688899 -0.5 0.5 -0.18688899 -0.5 -0.5
		 -0.18688899 0.5 -0.5 -0.18688899 0.5 0.5 0.19560516 -0.5 0.5 0.19560516 0.5 0.5 0.19560516 0.5 -0.5
		 0.19560516 -0.5 -0.5 -0.1622123 -0.5 0.5 -0.1622123 -0.5 -0.5 -0.1622123 0.5 -0.5
		 -0.1622123 0.5 0.5 0.17224826 -0.5 0.5 0.17224826 0.5 0.5 0.17224826 0.5 -0.5 0.17224826 -0.5 -0.5;
	setAttr -s 44 ".ed[0:43]"  0 8 0 2 11 0 4 10 0 6 9 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 16 0 9 17 0 10 18 0 11 19 0 8 9 1 9 10 1 10 11 1
		 11 8 1 12 1 0 13 3 0 14 5 0 15 7 0 12 13 1 13 14 1 14 15 1 15 12 1 16 20 0 17 23 0
		 18 22 0 19 21 0 16 17 1 17 18 1 18 19 1 19 16 1 20 12 0 21 13 0 22 14 0 23 15 0 20 21 1
		 21 22 1 22 23 1 23 20 1;
	setAttr -s 22 -ch 88 ".fc[0:21]" -type "polyFaces" 
		f 4 35 28 40 -32
		mu 0 4 28 24 29 31
		f 4 34 31 41 -31
		mu 0 4 27 28 31 32
		f 4 33 30 42 -30
		mu 0 4 26 27 32 33
		f 4 32 29 43 -29
		mu 0 4 25 26 33 30
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 3 -17 -1 -11
		mu 0 4 6 16 15 8
		f 4 2 -18 -4 -9
		mu 0 4 4 17 16 6
		f 4 1 -19 -3 -7
		mu 0 4 2 18 17 4
		f 4 0 -20 -2 -5
		mu 0 4 0 14 18 2
		f 4 -25 20 5 -22
		mu 0 4 21 19 1 3
		f 4 -26 21 7 -23
		mu 0 4 22 21 3 5
		f 4 -27 22 9 -24
		mu 0 4 23 22 5 7
		f 4 -28 23 11 -21
		mu 0 4 20 23 7 9
		f 4 16 13 -33 -13
		mu 0 4 15 16 26 25
		f 4 17 14 -34 -14
		mu 0 4 16 17 27 26
		f 4 18 15 -35 -15
		mu 0 4 17 18 28 27
		f 4 19 12 -36 -16
		mu 0 4 18 14 24 28
		f 4 -41 36 24 -38
		mu 0 4 31 29 19 21
		f 4 -42 37 25 -39
		mu 0 4 32 31 21 22
		f 4 -43 38 26 -40
		mu 0 4 33 32 22 23
		f 4 -44 39 27 -37
		mu 0 4 30 33 23 20;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape8" -p "pCube33";
	rename -uid "123E3517-4230-34CC-5EE5-C1927ED8F4BC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube34";
	rename -uid "8A3276B5-4D7C-40E7-C806-B3979A86D7B5";
	setAttr ".t" -type "double3" 28.669332741396111 3.8839968649480059 1.489310232452999 ;
	setAttr ".s" -type "double3" 3.0189623835514698 0.31067965424893551 0.049931861171682565 ;
createNode mesh -n "pCubeShape34" -p "pCube34";
	rename -uid "A7B44DA6-4B71-0372-6CBE-238727D31183";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50125451385974884 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 34 ".uvst[0].uvsp[0:33]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.45327777 0 0.45327777 1 0.45327777 0.75 0.45327777
		 0.5 0.45327777 0.25 0.54890132 0 0.54890132 1 0.54890132 0.25 0.54890132 0.5 0.54890132
		 0.75 0.45944694 0 0.45944694 1 0.45944694 0.74999994 0.45944694 0.5 0.45944694 0.25
		 0.54306209 0 0.54306209 1 0.54306209 0.25 0.54306209 0.5 0.54306209 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[18]" -type "float3" 0.065231785 0.51820898 0 ;
	setAttr ".pt[19]" -type "float3" 0.065231785 0.51820898 0 ;
	setAttr ".pt[21]" -type "float3" -0.065231785 0.51820898 0 ;
	setAttr ".pt[22]" -type "float3" -0.065231785 0.51820898 0 ;
	setAttr -s 24 ".vt[0:23]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 -0.18688899 -0.5 0.5 -0.18688899 -0.5 -0.5
		 -0.18688899 0.5 -0.5 -0.18688899 0.5 0.5 0.19560516 -0.5 0.5 0.19560516 0.5 0.5 0.19560516 0.5 -0.5
		 0.19560516 -0.5 -0.5 -0.1622123 -0.5 0.5 -0.1622123 -0.5 -0.5 -0.1622123 0.5 -0.5
		 -0.1622123 0.5 0.5 0.17224826 -0.5 0.5 0.17224826 0.5 0.5 0.17224826 0.5 -0.5 0.17224826 -0.5 -0.5;
	setAttr -s 44 ".ed[0:43]"  0 8 0 2 11 0 4 10 0 6 9 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 16 0 9 17 0 10 18 0 11 19 0 8 9 1 9 10 1 10 11 1
		 11 8 1 12 1 0 13 3 0 14 5 0 15 7 0 12 13 1 13 14 1 14 15 1 15 12 1 16 20 0 17 23 0
		 18 22 0 19 21 0 16 17 1 17 18 1 18 19 1 19 16 1 20 12 0 21 13 0 22 14 0 23 15 0 20 21 1
		 21 22 1 22 23 1 23 20 1;
	setAttr -s 22 -ch 88 ".fc[0:21]" -type "polyFaces" 
		f 4 35 28 40 -32
		mu 0 4 28 24 29 31
		f 4 34 31 41 -31
		mu 0 4 27 28 31 32
		f 4 33 30 42 -30
		mu 0 4 26 27 32 33
		f 4 32 29 43 -29
		mu 0 4 25 26 33 30
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 3 -17 -1 -11
		mu 0 4 6 16 15 8
		f 4 2 -18 -4 -9
		mu 0 4 4 17 16 6
		f 4 1 -19 -3 -7
		mu 0 4 2 18 17 4
		f 4 0 -20 -2 -5
		mu 0 4 0 14 18 2
		f 4 -25 20 5 -22
		mu 0 4 21 19 1 3
		f 4 -26 21 7 -23
		mu 0 4 22 21 3 5
		f 4 -27 22 9 -24
		mu 0 4 23 22 5 7
		f 4 -28 23 11 -21
		mu 0 4 20 23 7 9
		f 4 16 13 -33 -13
		mu 0 4 15 16 26 25
		f 4 17 14 -34 -14
		mu 0 4 16 17 27 26
		f 4 18 15 -35 -15
		mu 0 4 17 18 28 27
		f 4 19 12 -36 -16
		mu 0 4 18 14 24 28
		f 4 -41 36 24 -38
		mu 0 4 31 29 19 21
		f 4 -42 37 25 -39
		mu 0 4 32 31 21 22
		f 4 -43 38 26 -40
		mu 0 4 33 32 22 23
		f 4 -44 39 27 -37
		mu 0 4 30 33 23 20;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape8" -p "pCube34";
	rename -uid "2E89A4B0-472B-1703-64F9-CA8B23165E11";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube35";
	rename -uid "5EE39D25-4CDC-804C-F512-BEAFB85C6B7A";
	setAttr ".t" -type "double3" 28.669332741396111 3.8839968649480059 -1.5024853526554878 ;
	setAttr ".s" -type "double3" 3.0189623835514698 0.31067965424893551 0.049931861171682565 ;
createNode mesh -n "pCubeShape35" -p "pCube35";
	rename -uid "0C9E35EF-4936-2E9D-A06E-AC89D0D45E41";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50125451385974884 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 34 ".uvst[0].uvsp[0:33]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.45327777 0 0.45327777 1 0.45327777 0.75 0.45327777
		 0.5 0.45327777 0.25 0.54890132 0 0.54890132 1 0.54890132 0.25 0.54890132 0.5 0.54890132
		 0.75 0.45944694 0 0.45944694 1 0.45944694 0.74999994 0.45944694 0.5 0.45944694 0.25
		 0.54306209 0 0.54306209 1 0.54306209 0.25 0.54306209 0.5 0.54306209 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[18]" -type "float3" 0.065231785 0.51820898 0 ;
	setAttr ".pt[19]" -type "float3" 0.065231785 0.51820898 0 ;
	setAttr ".pt[21]" -type "float3" -0.065231785 0.51820898 0 ;
	setAttr ".pt[22]" -type "float3" -0.065231785 0.51820898 0 ;
	setAttr -s 24 ".vt[0:23]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 -0.18688899 -0.5 0.5 -0.18688899 -0.5 -0.5
		 -0.18688899 0.5 -0.5 -0.18688899 0.5 0.5 0.19560516 -0.5 0.5 0.19560516 0.5 0.5 0.19560516 0.5 -0.5
		 0.19560516 -0.5 -0.5 -0.1622123 -0.5 0.5 -0.1622123 -0.5 -0.5 -0.1622123 0.5 -0.5
		 -0.1622123 0.5 0.5 0.17224826 -0.5 0.5 0.17224826 0.5 0.5 0.17224826 0.5 -0.5 0.17224826 -0.5 -0.5;
	setAttr -s 44 ".ed[0:43]"  0 8 0 2 11 0 4 10 0 6 9 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 16 0 9 17 0 10 18 0 11 19 0 8 9 1 9 10 1 10 11 1
		 11 8 1 12 1 0 13 3 0 14 5 0 15 7 0 12 13 1 13 14 1 14 15 1 15 12 1 16 20 0 17 23 0
		 18 22 0 19 21 0 16 17 1 17 18 1 18 19 1 19 16 1 20 12 0 21 13 0 22 14 0 23 15 0 20 21 1
		 21 22 1 22 23 1 23 20 1;
	setAttr -s 22 -ch 88 ".fc[0:21]" -type "polyFaces" 
		f 4 35 28 40 -32
		mu 0 4 28 24 29 31
		f 4 34 31 41 -31
		mu 0 4 27 28 31 32
		f 4 33 30 42 -30
		mu 0 4 26 27 32 33
		f 4 32 29 43 -29
		mu 0 4 25 26 33 30
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 3 -17 -1 -11
		mu 0 4 6 16 15 8
		f 4 2 -18 -4 -9
		mu 0 4 4 17 16 6
		f 4 1 -19 -3 -7
		mu 0 4 2 18 17 4
		f 4 0 -20 -2 -5
		mu 0 4 0 14 18 2
		f 4 -25 20 5 -22
		mu 0 4 21 19 1 3
		f 4 -26 21 7 -23
		mu 0 4 22 21 3 5
		f 4 -27 22 9 -24
		mu 0 4 23 22 5 7
		f 4 -28 23 11 -21
		mu 0 4 20 23 7 9
		f 4 16 13 -33 -13
		mu 0 4 15 16 26 25
		f 4 17 14 -34 -14
		mu 0 4 16 17 27 26
		f 4 18 15 -35 -15
		mu 0 4 17 18 28 27
		f 4 19 12 -36 -16
		mu 0 4 18 14 24 28
		f 4 -41 36 24 -38
		mu 0 4 31 29 19 21
		f 4 -42 37 25 -39
		mu 0 4 32 31 21 22
		f 4 -43 38 26 -40
		mu 0 4 33 32 22 23
		f 4 -44 39 27 -37
		mu 0 4 30 33 23 20;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape8" -p "pCube35";
	rename -uid "9D63A996-4A80-9227-661D-6082D8461F61";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube36";
	rename -uid "B4F5E20C-48B2-7470-97DE-CF9F3A2A0EB7";
	setAttr ".t" -type "double3" -30.509937096884947 0 0 ;
	setAttr ".s" -type "double3" 7.8357070644824534 2.5992240655461796 2.5992240655461796 ;
createNode mesh -n "pCubeShape36" -p "pCube36";
	rename -uid "3F6AFBE9-4B6F-3CE7-6723-429AC271C545";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.56951286643743515 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCylinder5";
	rename -uid "909413D6-454E-25F8-8179-82899B6AC4AE";
	setAttr ".t" -type "double3" -30.523890020882085 0.02901015339261992 0.0038027481439386612 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 1.0431061412237701 3.6909188545070544 1.0431061412237701 ;
createNode mesh -n "pCylinderShape5" -p "pCylinder5";
	rename -uid "F328F742-4A10-4091-A319-699B432C8670";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".pt[130:139]" -type "float3"  -0.12051038 0 0.087555923 
		-0.046030849 0 0.14166842 0.046030972 0 0.14166839 0.12051038 0 0.0875559 0.14895897 
		0 -2.4246541e-008 0.12051038 0 -0.087555945 0.046030972 0 -0.14166842 -0.046030849 
		0 -0.14166842 -0.12051038 0 -0.087555937 -0.14895897 0 -1.5300623e-008;
createNode mesh -n "polySurfaceShape9" -p "pCylinder5";
	rename -uid "017E9144-4F6B-24A3-9402-C794EEE9D9F5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.42500001192092896 0.50046992301940918 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 102 ".uvst[0].uvsp[0:101]" -type "float2" 0.375 0.3125 0.40000001
		 0.3125 0.42500001 0.3125 0.45000002 0.3125 0.47500002 0.3125 0.5 0.3125 0.52499998
		 0.3125 0.54999995 0.3125 0.57499993 0.3125 0.5999999 0.3125 0.62499988 0.3125 0.375
		 0.68843985 0.40000001 0.68843985 0.42500001 0.68843985 0.45000002 0.68843985 0.47500002
		 0.68843985 0.5 0.68843985 0.52499998 0.68843985 0.54999995 0.68843985 0.57499993
		 0.68843985 0.5999999 0.68843985 0.62499988 0.68843985 0 0 1 0 1 1 0 1 0 0 1 0 1 1
		 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0
		 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1
		 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0
		 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  0.80901718 -0.99999952 -0.58778542 0.30901718 -0.99999952 -0.95105672
		 -0.30901718 -0.99999952 -0.9510566 -0.80901718 -0.99999952 -0.58778524 -1 -0.99999952 5.9604645e-008
		 -0.80901718 -0.99999952 0.58778536 -0.30901718 -0.99999952 0.9510566 0.30901718 -0.99999952 0.95105654
		 0.80901718 -0.99999952 0.58778524 1 -0.99999952 0 0.80901718 1 -0.58778542 0.30901718 1 -0.95105672
		 -0.30901718 1 -0.9510566 -0.80901718 1 -0.58778524 -1 1 5.9604645e-008 -0.80901718 1 0.58778536
		 -0.30901718 1 0.9510566 0.30901718 1 0.95105654 0.80901718 1 0.58778524 1 1 0 0.37583447 1.11701727 -0.27305898
		 0.14355659 1.11701727 -0.44181865 -0.14355659 1.11701727 -0.44181859 -0.37583447 1.11701727 -0.27305895
		 -0.46455574 1.11701727 -4.2252992e-009 -0.37583447 1.11701727 0.27305889 -0.14355659 1.11701727 0.44181854
		 0.14355659 1.11701727 0.44181854 0.37583447 1.11701727 0.27305883 0.46455574 1.11701727 -3.1914972e-008
		 0.46382904 -1.12447584 -0.33699158 0.177167 -1.12447584 -0.54526377 -0.177167 -1.12447584 -0.54526365
		 -0.46382904 -1.12447584 -0.33699143 -0.57332414 -1.12447584 8.7409191e-009 -0.46382904 -1.12447584 0.33699152
		 -0.177167 -1.12447584 0.54526365 0.177167 -1.12447584 0.54526365 0.46382904 -1.12447584 0.33699143
		 0.57332414 -1.12447584 -2.5431863e-008;
	setAttr -s 70 ".ed[0:69]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 0 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 10 0 0 10 0 1 11 0 2 12 0 3 13 0 4 14 0 5 15 0 6 16 0 7 17 0 8 18 0 9 19 0
		 10 20 0 11 21 0 20 21 0 12 22 0 21 22 0 13 23 0 22 23 0 14 24 0 23 24 0 15 25 0 24 25 0
		 16 26 0 25 26 0 17 27 0 26 27 0 18 28 0 27 28 0 19 29 0 28 29 0 29 20 0 0 30 0 1 31 0
		 30 31 0 2 32 0 31 32 0 3 33 0 32 33 0 4 34 0 33 34 0 5 35 0 34 35 0 6 36 0 35 36 0
		 7 37 0 36 37 0 8 38 0 37 38 0 9 39 0 38 39 0 39 30 0;
	setAttr -s 32 -ch 140 ".fc[0:31]" -type "polyFaces" 
		f 4 0 21 -11 -21
		mu 0 4 0 1 12 11
		f 4 1 22 -12 -22
		mu 0 4 1 2 13 12
		f 4 2 23 -13 -23
		mu 0 4 2 3 14 13
		f 4 3 24 -14 -24
		mu 0 4 3 4 15 14
		f 4 4 25 -15 -25
		mu 0 4 4 5 16 15
		f 4 5 26 -16 -26
		mu 0 4 5 6 17 16
		f 4 6 27 -17 -27
		mu 0 4 6 7 18 17
		f 4 7 28 -18 -28
		mu 0 4 7 8 19 18
		f 4 8 29 -19 -29
		mu 0 4 8 9 20 19
		f 4 9 20 -20 -30
		mu 0 4 9 10 21 20
		f 4 10 31 -33 -31
		mu 0 4 22 23 24 25
		f 4 11 33 -35 -32
		mu 0 4 26 27 28 29
		f 4 12 35 -37 -34
		mu 0 4 30 31 32 33
		f 4 13 37 -39 -36
		mu 0 4 34 35 36 37
		f 4 14 39 -41 -38
		mu 0 4 38 39 40 41
		f 4 15 41 -43 -40
		mu 0 4 42 43 44 45
		f 4 16 43 -45 -42
		mu 0 4 46 47 48 49
		f 4 17 45 -47 -44
		mu 0 4 50 51 52 53
		f 4 18 47 -49 -46
		mu 0 4 54 55 56 57
		f 4 19 30 -50 -48
		mu 0 4 58 59 60 61
		f 10 34 36 38 40 42 44 46 48 49 32
		mu 0 10 29 33 37 41 45 49 53 57 61 25
		f 4 -1 50 52 -52
		mu 0 4 62 63 64 65
		f 4 -2 51 54 -54
		mu 0 4 66 67 68 69
		f 4 -3 53 56 -56
		mu 0 4 70 71 72 73
		f 4 -4 55 58 -58
		mu 0 4 74 75 76 77
		f 4 -5 57 60 -60
		mu 0 4 78 79 80 81
		f 4 -6 59 62 -62
		mu 0 4 82 83 84 85
		f 4 -7 61 64 -64
		mu 0 4 86 87 88 89
		f 4 -8 63 66 -66
		mu 0 4 90 91 92 93
		f 4 -9 65 68 -68
		mu 0 4 94 95 96 97
		f 4 -10 67 69 -51
		mu 0 4 98 99 100 101
		f 10 -53 -70 -69 -67 -65 -63 -61 -59 -57 -55
		mu 0 10 65 101 97 93 89 85 81 77 73 69;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "DA640079-4B6F-AC31-5262-79B1334CF543";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "FA6B28D7-4D67-9756-B326-50A0C6CCD38E";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "65121AB8-4C53-BF13-BCA6-78B23DABC914";
createNode displayLayerManager -n "layerManager";
	rename -uid "BFC3B594-4968-98EB-05DD-7388C905F103";
createNode displayLayer -n "defaultLayer";
	rename -uid "B3777D1D-460A-9276-94C6-75BAD2625E00";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "BDE27EC5-4AA5-9D46-5653-7F97280C09D8";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "11A5631D-46B3-3C8F-6EBF-4C8796764F3E";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	rename -uid "9E0D0D36-4B1A-4641-095A-8197BBFA301F";
	setAttr ".cuv" 4;
createNode animCurveTU -n "imagePlane2_scaleX";
	rename -uid "1FCEB1D4-4542-F74D-E0DA-CE95CA8C634B";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "imagePlane2_scaleY";
	rename -uid "CC2424A2-44EA-0970-6782-91BF733F9DD9";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "imagePlane2_scaleZ";
	rename -uid "1882D992-49A9-6027-FDE3-CA9EAE724D18";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 1;
createNode polyCube -n "polyCube2";
	rename -uid "9F507D99-4B22-BE1F-DEA1-D7A9FFD572A2";
	setAttr ".sw" 3;
	setAttr ".sh" 6;
	setAttr ".sd" 3;
	setAttr ".cuv" 4;
createNode polySplit -n "polySplit1";
	rename -uid "113899DE-494D-0D0E-7E30-A0A3FB1D88AB";
	setAttr -s 13 ".e[0:12]"  0.73038602 0.73038602 0.73038602 0.73038602
		 0.73038602 0.73038602 0.26961401 0.26961401 0.26961401 0.26961401 0.73038602 0.73038602
		 0.73038602;
	setAttr -s 13 ".d[0:12]"  -2147483574 -2147483573 -2147483572 -2147483571 -2147483496 -2147483497 
		-2147483555 -2147483556 -2147483557 -2147483558 -2147483470 -2147483469 -2147483574;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit2";
	rename -uid "63001D46-497A-B75B-7AA3-589CABA8355B";
	setAttr -s 21 ".e[0:20]"  0.844248 0.844248 0.844248 0.844248 0.844248
		 0.844248 0.844248 0.844248 0.844248 0.155752 0.844248 0.844248 0.844248 0.844248
		 0.844248 0.844248 0.844248 0.844248 0.844248 0.844248 0.844248;
	setAttr -s 21 ".d[0:20]"  -2147483646 -2147483595 -2147483598 -2147483601 -2147483604 -2147483607 
		-2147483610 -2147483613 -2147483616 -2147483450 -2147483619 -2147483622 -2147483625 -2147483628 -2147483454 -2147483631 -2147483634 -2147483637 
		-2147483640 -2147483643 -2147483646;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit3";
	rename -uid "02DF029C-4E9E-8C49-F55C-73B66F4AC83E";
	setAttr -s 23 ".e[0:22]"  0.144908 0.144908 0.144908 0.85509199 0.144908
		 0.144908 0.85509199 0.85509199 0.85509199 0.85509199 0.85509199 0.85509199 0.144908
		 0.85509199 0.85509199 0.85509199 0.85509199 0.85509199 0.85509199 0.85509199 0.85509199
		 0.85509199 0.144908;
	setAttr -s 23 ".d[0:22]"  -2147483570 -2147483569 -2147483568 -2147483412 -2147483567 -2147483453 
		-2147483508 -2147483511 -2147483514 -2147483517 -2147483520 -2147483523 -2147483424 -2147483524 -2147483525 -2147483526 -2147483493 -2147483490 
		-2147483487 -2147483484 -2147483481 -2147483445 -2147483570;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit4";
	rename -uid "488F0DC7-4012-3259-D136-34AC916360F6";
	setAttr -s 23 ".e[0:22]"  0.82493699 0.82493699 0.82493699 0.175063
		 0.82493699 0.82493699 0.175063 0.175063 0.175063 0.175063 0.175063 0.175063 0.82493699
		 0.175063 0.175063 0.175063 0.175063 0.175063 0.175063 0.175063 0.175063 0.175063
		 0.82493699;
	setAttr -s 23 ".d[0:22]"  -2147483562 -2147483561 -2147483560 -2147483414 -2147483559 -2147483451 
		-2147483510 -2147483513 -2147483516 -2147483519 -2147483522 -2147483531 -2147483422 -2147483532 -2147483533 -2147483534 -2147483495 -2147483492 
		-2147483489 -2147483486 -2147483483 -2147483447 -2147483562;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit5";
	rename -uid "5C89BCD1-43CE-585F-B12B-EE851B0C2E1B";
	setAttr -s 25 ".e[0:24]"  0.189014 0.81098598 0.189014 0.189014 0.81098598
		 0.189014 0.189014 0.189014 0.189014 0.189014 0.189014 0.81098598 0.189014 0.189014
		 0.189014 0.189014 0.189014 0.189014 0.189014 0.189014 0.189014 0.189014 0.189014
		 0.189014 0.189014;
	setAttr -s 25 ".d[0:24]"  -2147483648 -2147483368 -2147483597 -2147483600 -2147483324 -2147483603 
		-2147483606 -2147483609 -2147483612 -2147483615 -2147483618 -2147483448 -2147483621 -2147483338 -2147483624 -2147483627 -2147483382 -2147483630 
		-2147483456 -2147483633 -2147483636 -2147483639 -2147483642 -2147483645 -2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit6";
	rename -uid "96CA95B0-4082-9DC2-B14C-C8B655D8C184";
	setAttr -s 21 ".e[0:20]"  0.313447 0.686553 0.313447 0.313447 0.686553
		 0.313447 0.686553 0.313447 0.313447 0.686553 0.686553 0.313447 0.686553 0.686553
		 0.313447 0.686553 0.313447 0.313447 0.313447 0.313447 0.313447;
	setAttr -s 21 ".d[0:20]"  -2147483594 -2147483269 -2147483593 -2147483592 -2147483405 -2147483591 
		-2147483372 -2147483506 -2147483507 -2147483328 -2147483535 -2147483421 -2147483536 -2147483537 -2147483287 -2147483538 -2147483323 -2147483480 
		-2147483479 -2147483367 -2147483594;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit7";
	rename -uid "454B3D0D-4EC1-4463-57D9-FBBF5CD70E1C";
	setAttr -s 5 ".e[0:4]"  0.89013702 0.89013702 0.109863 0.109863 0.89013702;
	setAttr -s 5 ".d[0:4]"  -2147483644 -2147483643 -2147483639 -2147483640 -2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit8";
	rename -uid "0EC479C8-49CE-25AF-2D18-6EA882F3A465";
	setAttr -s 5 ".e[0:4]"  0.878124 0.878124 0.121876 0.121876 0.878124;
	setAttr -s 5 ".d[0:4]"  -2147483640 -2147483639 -2147483635 -2147483636 -2147483640;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit9";
	rename -uid "7D054473-4BB3-3167-814B-3F8AC079047B";
	setAttr -s 5 ".e[0:4]"  0.97991002 0.97991002 0.0200896 0.0200896
		 0.97991002;
	setAttr -s 5 ".d[0:4]"  -2147483644 -2147483643 -2147483634 -2147483633 -2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit10";
	rename -uid "65FEC62E-4AF2-A3E3-B5B5-B88D83933AE5";
	setAttr -s 5 ".e[0:4]"  0.28433299 0.28433299 0.71566701 0.71566701
		 0.28433299;
	setAttr -s 5 ".d[0:4]"  -2147483640 -2147483639 -2147483626 -2147483625 -2147483640;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak1";
	rename -uid "0147CD65-44A5-EF37-66AC-E1A2F463D313";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[2]" -type "float3" 0.21071143 0 -0.19016819 ;
	setAttr ".tk[3]" -type "float3" -0.21071143 0 -0.19016819 ;
	setAttr ".tk[4]" -type "float3" 0.19016819 0 0.19016819 ;
	setAttr ".tk[5]" -type "float3" -0.19016819 0 0.19016819 ;
	setAttr ".tk[16]" -type "float3" 1.4901161e-008 0 -1.4901161e-008 ;
	setAttr ".tk[17]" -type "float3" -1.4901161e-008 0 -1.4901161e-008 ;
	setAttr ".tk[18]" -type "float3" -1.4901161e-008 -1.7763568e-015 1.4901161e-008 ;
	setAttr ".tk[19]" -type "float3" 1.4901161e-008 -1.7763568e-015 1.4901161e-008 ;
	setAttr ".tk[20]" -type "float3" 0.033152018 0 0 ;
	setAttr ".tk[21]" -type "float3" -0.033152018 0 0 ;
	setAttr ".tk[22]" -type "float3" -0.033152018 0 0 ;
	setAttr ".tk[23]" -type "float3" 0.033152018 0 0 ;
createNode polySplit -n "polySplit11";
	rename -uid "9466BE9C-47EF-B3C3-5EE8-28A66F24580E";
	setAttr -s 5 ".e[0:4]"  0.14004201 0.14004201 0.85995799 0.85995799
		 0.14004201;
	setAttr -s 5 ".d[0:4]"  -2147483644 -2147483643 -2147483618 -2147483617 -2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit12";
	rename -uid "C32DE4A2-4DE8-BB7C-11C7-9296525DB674";
	setAttr -s 5 ".e[0:4]"  0.973499 0.026501199 0.026501199 0.973499
		 0.973499;
	setAttr -s 5 ".d[0:4]"  -2147483618 -2147483603 -2147483604 -2147483617 -2147483618;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit13";
	rename -uid "FF369BCA-4115-47F2-6D57-009A2873CE6D";
	setAttr -s 5 ".e[0:4]"  0.84891802 0.15108199 0.15108199 0.84891802
		 0.84891802;
	setAttr -s 5 ".d[0:4]"  -2147483618 -2147483595 -2147483594 -2147483617 -2147483618;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit14";
	rename -uid "B77FE06C-4A06-8C0A-751C-EA9855956B1A";
	setAttr -s 19 ".e[0:18]"  0.084433503 0.084433503 0.91556698 0.084433503
		 0.084433503 0.91556698 0.91556698 0.084433503 0.084433503 0.084433503 0.084433503
		 0.91556698 0.91556698 0.084433503 0.084433503 0.91556698 0.91556698 0.084433503 0.084433503;
	setAttr -s 19 ".d[0:18]"  -2147483648 -2147483645 -2147483598 -2147483589 -2147483581 -2147483614 
		-2147483630 -2147483624 -2147483608 -2147483646 -2147483647 -2147483606 -2147483622 -2147483632 -2147483616 -2147483583 -2147483591 -2147483600 
		-2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit15";
	rename -uid "33AB9ADB-427D-B7D8-CF94-32BBCF716F92";
	setAttr -s 19 ".e[0:18]"  0.958803 0.958803 0.041197401 0.041197401
		 0.958803 0.041197401 0.041197401 0.041197401 0.958803 0.958803 0.041197401 0.041197401
		 0.958803 0.958803 0.041197401 0.041197401 0.041197401 0.041197401 0.958803;
	setAttr -s 19 ".d[0:18]"  -2147483630 -2147483614 -2147483576 -2147483577 -2147483598 -2147483579 
		-2147483580 -2147483563 -2147483591 -2147483583 -2147483566 -2147483567 -2147483622 -2147483606 -2147483570 -2147483571 -2147483572 -2147483573 
		-2147483630;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit16";
	rename -uid "4BCF4F2E-41E1-F9BA-DF68-4487316CFB90";
	setAttr -s 19 ".e[0:18]"  0.946271 0.946271 0.0537287 0.0537287 0.946271
		 0.0537287 0.0537287 0.0537287 0.946271 0.946271 0.0537287 0.0537287 0.946271 0.946271
		 0.0537287 0.0537287 0.0537287 0.0537287 0.946271;
	setAttr -s 19 ".d[0:18]"  -2147483630 -2147483614 -2147483542 -2147483541 -2147483598 -2147483539 
		-2147483538 -2147483537 -2147483591 -2147483583 -2147483534 -2147483533 -2147483622 -2147483606 -2147483530 -2147483529 -2147483528 -2147483527 
		-2147483630;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit17";
	rename -uid "ED392D40-4C74-988A-933C-A9A36BBF1E55";
	setAttr -s 19 ".e[0:18]"  0.103815 0.103815 0.89618498 0.89618498 0.103815
		 0.89618498 0.89618498 0.89618498 0.103815 0.103815 0.89618498 0.89618498 0.103815
		 0.103815 0.89618498 0.89618498 0.89618498 0.89618498 0.103815;
	setAttr -s 19 ".d[0:18]"  -2147483630 -2147483614 -2147483506 -2147483505 -2147483598 -2147483503 
		-2147483502 -2147483501 -2147483591 -2147483583 -2147483498 -2147483497 -2147483622 -2147483606 -2147483494 -2147483493 -2147483492 -2147483491 
		-2147483630;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit18";
	rename -uid "5323FA4B-4827-1BC0-E290-E7BC17EE5314";
	setAttr -s 19 ".e[0:18]"  0.94471997 0.055280399 0.055280399 0.94471997
		 0.94471997 0.94471997 0.94471997 0.055280399 0.055280399 0.94471997 0.94471997 0.055280399
		 0.055280399 0.94471997 0.94471997 0.94471997 0.055280399 0.94471997 0.94471997;
	setAttr -s 19 ".d[0:18]"  -2147483506 -2147483471 -2147483472 -2147483491 -2147483492 -2147483493 
		-2147483494 -2147483459 -2147483460 -2147483497 -2147483498 -2147483463 -2147483464 -2147483501 -2147483502 -2147483503 -2147483468 -2147483505 
		-2147483506;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit19";
	rename -uid "3CEB5706-4E6F-63FA-405B-BEA823A5404B";
	setAttr -s 19 ".e[0:18]"  0.94599903 0.054001 0.054001 0.94599903 0.94599903
		 0.94599903 0.94599903 0.054001 0.054001 0.94599903 0.94599903 0.054001 0.054001 0.94599903
		 0.94599903 0.94599903 0.054001 0.94599903 0.94599903;
	setAttr -s 19 ".d[0:18]"  -2147483506 -2147483435 -2147483434 -2147483491 -2147483492 -2147483493 
		-2147483494 -2147483429 -2147483428 -2147483497 -2147483498 -2147483425 -2147483424 -2147483501 -2147483502 -2147483503 -2147483420 -2147483505 
		-2147483506;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyCube -n "polyCube3";
	rename -uid "F944B7AF-4C2D-C841-3C97-51A2D02236DF";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube4";
	rename -uid "92D616EA-4AB3-935E-0B12-FA8F7EBCBC53";
	setAttr ".cuv" 4;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "A24F38E7-4BB1-E7E6-0B2C-0B9703910B76";
	setAttr ".dc" -type "componentList" 1 "f[4]";
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	rename -uid "55542214-43CC-BCFC-BFF6-8DB3272B6A23";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[5]" "e[7]" "e[9]" "e[11]";
	setAttr ".ix" -type "matrix" 0.47706531326319757 0 0 0 0 1 0 0 0 0 0.60084959946472705 0
		 13.047724198804222 7.0434659075862562 -1.9907883988841171 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 13.286257 7.0434661 -1.9907883 ;
	setAttr ".rs" 33625;
	setAttr ".lt" -type "double3" 9.857098758964158e-016 0.43924262978251605 0 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 13.28625685543582 6.5434659075862562 -2.2912131986164805 ;
	setAttr ".cbx" -type "double3" 13.28625685543582 7.5434659075862562 -1.6903635991517536 ;
createNode polyCloseBorder -n "polyCloseBorder1";
	rename -uid "C4D121F2-4D2E-4657-9BD0-A1BDA77B930F";
	setAttr ".ics" -type "componentList" 3 "e[14]" "e[16]" "e[18:19]";
createNode deleteComponent -n "deleteComponent2";
	rename -uid "8FD0C821-44B8-25D5-625D-B082F1E3473F";
	setAttr ".dc" -type "componentList" 1 "f[5]";
createNode polyExtrudeEdge -n "polyExtrudeEdge2";
	rename -uid "9F5F2248-4765-92C7-B4A4-969612B4F1B5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[5]" "e[12:14]";
	setAttr ".ix" -type "matrix" 0.47706531326319757 0 0 0 0 1 0 0 0 0 0.60084959946472705 0
		 13.047724198804222 7.0434659075862562 -1.9907883988841171 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 13.505878 7.0434666 -1.6575736 ;
	setAttr ".rs" 41227;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 13.28625685543582 6.5434667420512831 -1.6575736133413117 ;
	setAttr ".cbx" -type "double3" 13.725500023597284 7.5434667420512831 -1.6575736133413117 ;
createNode polyTweak -n "polyTweak2";
	rename -uid "50F13BB0-43D0-A406-C26A-0EAC3DE68578";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" 0 8.3446503e-007 0.054572444 ;
	setAttr ".tk[3]" -type "float3" 0 8.3446503e-007 0.054572444 ;
	setAttr ".tk[8]" -type "float3" 0 8.3446503e-007 0.054572444 ;
	setAttr ".tk[9]" -type "float3" 0 8.3446503e-007 0.054572444 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge3";
	rename -uid "30D76DB6-4317-A173-D0AF-359E7C3B443F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[22]" "e[24]" "e[26:27]";
	setAttr ".ix" -type "matrix" 0.47706531326319757 0 0 0 0 1 0 0 0 0 0.60084959946472705 0
		 13.047724198804222 7.0434659075862562 -1.9907883988841171 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 13.505878 2.2334502 0.95963228 ;
	setAttr ".rs" 46768;
	setAttr ".lt" -type "double3" -3.9443045261050599e-031 0.80901547688018671 1.9559943613423475e-015 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 13.28625685543582 1.7334502291804945 0.95963230425681889 ;
	setAttr ".cbx" -type "double3" 13.725500023597284 2.7334502291804945 0.95963230425681889 ;
createNode polyTweak -n "polyTweak3";
	rename -uid "0F77E90C-4F13-B7B1-F73D-E0B5045D81CB";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[12:15]" -type "float3"  0 -4.81001663 4.35584164 0
		 -4.81001663 4.35584164 0 -4.81001663 4.35584164 0 -4.81001663 4.35584164;
createNode polyExtrudeEdge -n "polyExtrudeEdge4";
	rename -uid "7DACFF21-4256-83AE-22A6-FF823242066F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[30]" "e[32]" "e[34:35]";
	setAttr ".ix" -type "matrix" 0.47706531326319757 0 0 0 0 1 0 0 0 0 0.60084959946472705 0
		 13.047724198804222 7.0434659075862562 -1.9907883988841171 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 13.505878 2.2279289 1.6621056 ;
	setAttr ".rs" 64674;
	setAttr ".lt" -type "double3" 8.8817841970012444e-016 0.51981514084350877 3.6681358263831473e-015 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 13.28625685543582 1.7279289317256605 1.6621055109903273 ;
	setAttr ".cbx" -type "double3" 13.725500023597284 2.7279289317256605 1.6621055109903273 ;
createNode polyTweak -n "polyTweak4";
	rename -uid "D7E95FEB-437E-4ED5-4D4E-0B9F0F83A3A1";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[16:19]" -type "float3"  0 0.34979382 0.17414096 0
		 0.34979382 0.17414096 0 0.34979382 0.17414096 0 0.34979382 0.17414096;
createNode polyCloseBorder -n "polyCloseBorder2";
	rename -uid "EBC0D92C-49B6-FC67-D90C-7380C2B38835";
	setAttr ".ics" -type "componentList" 3 "e[38]" "e[40]" "e[42:43]";
createNode deleteComponent -n "deleteComponent3";
	rename -uid "538E6255-42F3-4F66-9C2F-6AAE7D67AE50";
	setAttr ".dc" -type "componentList" 1 "f[17]";
createNode polyTweak -n "polyTweak5";
	rename -uid "0CB17020-404A-BEE8-361D-6886F54D5990";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[16]" -type "float3" -3.8571568 0 0 ;
	setAttr ".tk[17]" -type "float3" -3.8571568 0 0 ;
	setAttr ".tk[20]" -type "float3" -3.8571568 0 0 ;
	setAttr ".tk[21]" -type "float3" -3.8571568 0 0 ;
createNode deleteComponent -n "deleteComponent4";
	rename -uid "B6131FA9-4065-579B-488B-3B9DD624DF6F";
	setAttr ".dc" -type "componentList" 1 "f[4]";
createNode polyCylinder -n "polyCylinder1";
	rename -uid "73164B3D-42EA-17CD-9791-ACAF8ED5619F";
	setAttr ".sa" 10;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "0C88F4F7-4EED-6BA7-D94B-B29C394399F3";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n"
		+ "            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n"
		+ "                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n"
		+ "                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n"
		+ "                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n"
		+ "            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 980\n                -height 698\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 980\n            -height 698\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n"
		+ "                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -renderFilterIndex 0\n                -selectionOrder \"chronological\" \n                -expandAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n"
		+ "            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n"
		+ "                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n"
		+ "            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n"
		+ "                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n"
		+ "                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n"
		+ "                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n"
		+ "                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n"
		+ "                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n"
		+ "                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"timeEditorPanel\" -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n"
		+ "                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n"
		+ "                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tshapePanel -unParent -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tposePanel -unParent -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels ;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"contentBrowserPanel\" -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"front\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 980\\n    -height 698\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"front\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 980\\n    -height 698\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "F0A08FDE-47B6-1FC0-9CF7-8887CC4A1EBF";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyAutoProj -n "polyAutoProj1";
	rename -uid "72F836CB-4DCD-20B2-E673-C6843CEAFA52";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:19]";
	setAttr ".ix" -type "matrix" 0.47706531326319757 0 0 0 0 1 0 0 0 0 0.60084959946472705 0
		 13.047724198804222 8.640996719528804 -1.9907883988841171 1;
	setAttr ".s" -type "double3" 5.8175806999206543 5.8175806999206543 5.8175806999206543 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyCube -n "polyCube5";
	rename -uid "F53B4FBE-4B01-45EA-5978-86AE8368C93D";
	setAttr ".sw" 3;
	setAttr ".sh" 3;
	setAttr ".sd" 3;
	setAttr ".cuv" 4;
createNode deleteComponent -n "deleteComponent5";
	rename -uid "2F054F3B-4AB7-B75F-C381-A786E1C86919";
	setAttr ".dc" -type "componentList" 1 "f[10:29]";
createNode polyExtrudeEdge -n "polyExtrudeEdge5";
	rename -uid "BAFE1564-4C04-D8E0-3A4B-0E9E78B85806";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[10:19]";
	setAttr ".ix" -type "matrix" 7.7731252899080286e-017 0.35007044159133976 0 0 -1.2386865940212171 2.7504367539537379e-016 0 0
		 0 0 0.35007044159133976 0 7.6859296659028917 4.4145664578942885 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 6.4472432 4.4145665 -2.0865825e-008 ;
	setAttr ".rs" 56903;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 6.4472430718816742 4.0644959745713001 -0.3329368455379314 ;
	setAttr ".cbx" -type "double3" 6.4472430718816742 4.7646368994856285 0.33293680380628277 ;
createNode polyCloseBorder -n "polyCloseBorder3";
	rename -uid "DE64BC28-4BCE-E892-15DF-4F830902AD63";
	setAttr ".ics" -type "componentList" 9 "e[32]" "e[34]" "e[36]" "e[38]" "e[40]" "e[42]" "e[44]" "e[46]" "e[48:49]";
createNode polyTweak -n "polyTweak6";
	rename -uid "1FB36DDC-49E0-911D-E11D-FFB2490B0806";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk[20:29]" -type "float3"  -0.4331837 0.11701694 0.31472644
		 -0.16546151 0.11701694 0.50923806 0.16546151 0.11701694 0.509238 0.4331837 0.11701694
		 0.31472629 0.53544438 0.11701694 -6.3829944e-008 0.4331837 0.11701694 -0.31472647
		 0.16546151 0.11701694 -0.50923806 -0.16546151 0.11701694 -0.509238 -0.4331837 0.11701694
		 -0.31472641 -0.53544438 0.11701694 -3.1914972e-008;
createNode polyExtrudeEdge -n "polyExtrudeEdge6";
	rename -uid "19E26CA3-4031-E1D7-A2FC-59AEB8BD0CD6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:9]";
	setAttr ".ix" -type "matrix" 7.7731252899080286e-017 0.35007044159133976 0 0 -1.2386865940212171 2.7504367539537379e-016 0 0
		 0 0 0.35007044159133976 0 7.6859296659028917 4.4145664578942885 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 8.9246159 4.4145665 -2.0865825e-008 ;
	setAttr ".rs" 64544;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 8.9246156692723133 4.0644960163029484 -0.3329368455379314 ;
	setAttr ".cbx" -type "double3" 8.9246156692723133 4.7646368994856276 0.33293680380628277 ;
createNode polyCloseBorder -n "polyCloseBorder4";
	rename -uid "8DF3A25B-4AD2-5882-6D4D-44AB2F33802D";
	setAttr ".ics" -type "componentList" 9 "e[52]" "e[54]" "e[56]" "e[58]" "e[60]" "e[62]" "e[64]" "e[66]" "e[68:69]";
createNode polyTweak -n "polyTweak7";
	rename -uid "51DC8E17-48A3-71E5-2E8F-3D9ACC44E704";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk[30:39]" -type "float3"  -0.34518814 -0.12447636 0.25079384
		 -0.13185018 -0.12447636 0.40579295 0.13185018 -0.12447636 0.40579292 0.34518814 -0.12447636
		 0.25079381 0.42667586 -0.12447636 -5.0863726e-008 0.34518814 -0.12447636 -0.25079384
		 0.13185018 -0.12447636 -0.40579295 -0.13185018 -0.12447636 -0.40579292 -0.34518814
		 -0.12447636 -0.25079381 -0.42667586 -0.12447636 -2.5431863e-008;
createNode polyMirror -n "polyMirror1";
	rename -uid "C9B8469A-42A6-7703-BDB4-A39D8A254418";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 0.47706531326319757 0 0 0 0 1 0 0 0 0 0.60084959946472705 0
		 13.047724198804222 8.640996719528804 -1.9907883988841171 1;
	setAttr ".ws" yes;
	setAttr ".mtt" 1;
	setAttr ".mt" 1.9360892772674561;
	setAttr ".cm" yes;
	setAttr ".fnf" 20;
	setAttr ".lnf" 39;
createNode polyMirror -n "polyMirror2";
	rename -uid "F1B590BF-4315-86F1-8AAE-EEB2B3139A3C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 0.47706531326319757 0 0 0 0 1 0 0 0 0 0.60084959946472705 0
		 13.047724198804222 7.0434659075862562 -1.9907883988841171 1;
	setAttr ".ws" yes;
	setAttr ".mtt" 1;
	setAttr ".mt" 1.9360892772674561;
	setAttr ".cm" yes;
	setAttr ".fnf" 20;
	setAttr ".lnf" 39;
createNode polySeparate -n "polySeparate1";
	rename -uid "7AF69996-4524-A345-B32D-87833DCE47D7";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupId -n "groupId1";
	rename -uid "5FC11F35-4F3C-2FDB-B35F-4E87871F2B89";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "9FFAA5D4-404E-71F0-4F66-279CC29D5787";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:39]";
createNode groupId -n "groupId2";
	rename -uid "E12285A6-4F54-AFB1-E18A-6ABADD133833";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "4C9260C4-474E-DCAB-4F2B-19843ECE2F78";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "36BF4FA4-4AEC-DCC4-7072-E4905664B52D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:39]";
createNode groupId -n "groupId4";
	rename -uid "D39CF0B0-4258-1DDF-8D6D-84AD31E5F8A5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "E3A1BA14-402A-B7D0-B15D-FDB02A1CAE3F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:39]";
createNode polySeparate -n "polySeparate2";
	rename -uid "6AD2F0A4-4CC8-E62A-4B63-6DA5918F28F6";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupId -n "groupId5";
	rename -uid "2FE89C10-4172-F9BC-5837-5BA934FF2C75";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "1B7A4F0E-4CF7-8CCB-ACA5-948D0A2C06EE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:39]";
createNode groupId -n "groupId6";
	rename -uid "8B808992-4285-F231-1B3C-21AC12E49754";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7";
	rename -uid "1F859EF8-4B4D-9C14-6044-F7849E2798B8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	rename -uid "3DAD1FB3-4B45-AF9B-538D-E0A652D9432D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:39]";
createNode groupId -n "groupId8";
	rename -uid "B0AE7830-4121-6AD2-DCA4-93834A70CAE9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "D6241880-41D2-816C-DCEC-62B73905B665";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:39]";
createNode polyPipe -n "polyPipe1";
	rename -uid "290237D2-4555-51B7-9923-998F4B766458";
	setAttr ".t" 0.099999999999999978;
	setAttr ".sa" 10;
	setAttr ".sc" 0;
createNode deleteComponent -n "deleteComponent6";
	rename -uid "4450AC34-4A3E-A19D-87BC-BAA0D1EABD35";
	setAttr ".dc" -type "componentList" 1 "f[0:9]";
createNode polyExtrudeEdge -n "polyExtrudeEdge7";
	rename -uid "11FD73C2-4DCD-9B81-95DC-A48E84099466";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:9]";
	setAttr ".ix" -type "matrix" 0.24719755761038559 0 0 0 0 5.4888884018030734e-017 0.24719755761038559 0
		 0 -0.24719755761038559 5.4888884018030734e-017 0 11.300605386838541 5.7572601039072957 -2.4727542347620304 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 11.300606 5.7572603 -2.5963531 ;
	setAttr ".rs" 55978;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 11.07812757614872 5.5456711487116106 -2.596353013567223 ;
	setAttr ".cbx" -type "double3" 11.523083182794238 5.9688490591029808 -2.596353013567223 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge8";
	rename -uid "D04C568D-4324-A03C-CF4B-4B96D56F0D5B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[72]" "e[74]" "e[76]" "e[78]" "e[80]" "e[82]" "e[84]" "e[86]" "e[88:89]";
	setAttr ".ix" -type "matrix" 0.24719755761038559 0 0 0 0 5.4888884018030734e-017 0.24719755761038559 0
		 0 -0.24719755761038559 5.4888884018030734e-017 0 11.300605386838541 5.7572601039072957 -2.4727542347620304 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 11.300606 5.7572598 -2.3767414 ;
	setAttr ".rs" 45903;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 11.078127207795655 5.5456710308386299 -2.376741358078251 ;
	setAttr ".cbx" -type "double3" 11.523083565881427 5.9688487054840378 -2.376741358078251 ;
createNode polyTweak -n "polyTweak8";
	rename -uid "49197C1C-4C82-108E-A9E8-72A6A96C8B45";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk[40:49]" -type "float3"  0 0.88840544 1.9726564e-016
		 0 0.88840544 0 0 0.88840544 0 0 0.88840544 0 0 0.88840544 0 0 0.88840544 1.9726564e-016
		 0 0.88840544 0 0 0.88840544 0 0 0.88840544 0 0 0.88840544 0;
createNode polyExtrudeEdge -n "polyExtrudeEdge9";
	rename -uid "4736A729-4A71-BCC4-11E5-088D34F4C376";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[92]" "e[94]" "e[96]" "e[98]" "e[100]" "e[102]" "e[104]" "e[106]" "e[108:109]";
	setAttr ".ix" -type "matrix" 0.24719755761038559 0 0 0 0 5.4888884018030734e-017 0.24719755761038559 0
		 0 -0.24719755761038559 5.4888884018030734e-017 0 11.300605386838541 5.7572601039072957 -2.4727542347620304 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 11.300606 5.7572598 -2.3767412 ;
	setAttr ".rs" 63147;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 11.101393197774712 5.5677982499493499 -2.3767412696735155 ;
	setAttr ".cbx" -type "double3" 11.49981757590237 5.9467210148813949 -2.3767412696735155 ;
createNode polyTweak -n "polyTweak9";
	rename -uid "27F5C031-4ECE-414B-1A71-C19C5B71F96D";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk[50:59]" -type "float3"  -0.094119027 0 1.9946387e-007
		 -0.076143742 0 0.055321909 -0.029084217 0 0.089512281 0.029084217 0 0.089512281 0.076143742
		 0 0.055321909 0.094119027 0 1.9946387e-007 0.076143742 0 -0.055321582 0.029084217
		 0 -0.089512281 -0.029084217 0 -0.089512281 -0.076143742 0 -0.055321582;
createNode polyExtrudeEdge -n "polyExtrudeEdge10";
	rename -uid "5AEE7C55-4C25-BBDE-EC2A-A588D8D7A07C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[112]" "e[114]" "e[116]" "e[118]" "e[120]" "e[122]" "e[124]" "e[126]" "e[128:129]";
	setAttr ".ix" -type "matrix" 0.24719755761038559 0 0 0 0 5.4888884018030734e-017 0.24719755761038559 0
		 0 -0.24719755761038559 5.4888884018030734e-017 0 11.300605386838541 5.7572601039072957 -2.4727542347620304 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 11.300606 5.7386384 -2.8495026 ;
	setAttr ".rs" 38312;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 11.101393448254797 5.5491770300479715 -2.8495025673474315 ;
	setAttr ".cbx" -type "double3" 11.499817325422285 5.9280995297658086 -2.84950233160147 ;
createNode polyTweak -n "polyTweak10";
	rename -uid "82B81B9E-4F5C-CA73-90C6-28990091033C";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk[60:69]" -type "float3"  0 -1.91248369 0.075328901
		 0 -1.91248465 0.075328909 0 -1.91248441 0.075328901 0 -1.91248441 0.075328901 0 -1.91248465
		 0.075328909 0 -1.91248369 0.075328901 0 -1.91248405 0.075328849 0 -1.91248393 0.075328864
		 0 -1.91248393 0.075328864 0 -1.91248405 0.075328849;
createNode polyExtrudeEdge -n "polyExtrudeEdge11";
	rename -uid "ECC57FA9-4D67-6120-6662-92AF0DEEA30F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[132]" "e[134]" "e[136]" "e[138]" "e[140]" "e[142]" "e[144]" "e[146]" "e[148:149]";
	setAttr ".ix" -type "matrix" 0.24719755761038559 0 0 0 0 5.4888884018030734e-017 0.24719755761038559 0
		 0 -0.24719755761038559 5.4888884018030734e-017 0 11.300605386838541 5.7572601039072957 -2.4727542347620304 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 11.300606 5.6845431 -3.1049533 ;
	setAttr ".rs" 36451;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 11.101393448254797 5.4950817450054501 -3.1049534732064523 ;
	setAttr ".cbx" -type "double3" 11.499817325422285 5.8740042447232881 -3.1049532374604905 ;
createNode polyTweak -n "polyTweak11";
	rename -uid "BF6AAEA3-40D9-2246-E60D-7DBC011990B4";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk[70:79]" -type "float3"  0 -1.033388257 0.21883427
		 0 -1.033388257 0.21883427 0 -1.033388257 0.21883427 0 -1.033388257 0.21883427 0 -1.033388257
		 0.21883427 0 -1.033388257 0.21883427 0 -1.033388257 0.21883427 0 -1.033388257 0.21883427
		 0 -1.033388257 0.21883427 0 -1.033388257 0.21883427;
createNode polyExtrudeEdge -n "polyExtrudeEdge12";
	rename -uid "8908AC37-4F5C-B5EF-3F6B-8AB264C23229";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[152]" "e[154]" "e[156]" "e[158]" "e[160]" "e[162]" "e[164]" "e[166]" "e[168:169]";
	setAttr ".ix" -type "matrix" 0.24719755761038559 0 0 0 0 5.4888884018030734e-017 0.24719755761038559 0
		 0 -0.24719755761038559 5.4888884018030734e-017 0 11.300605386838541 5.7572601039072957 -2.4727542347620304 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 11.300606 5.6252918 -3.2688584 ;
	setAttr ".rs" 42400;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 11.101393448254797 5.4358307989178476 -3.268858564206564 ;
	setAttr ".cbx" -type "double3" 11.499817325422285 5.8147528271437618 -3.2688583284606021 ;
createNode polyTweak -n "polyTweak12";
	rename -uid "16D030E1-4C0C-C2F3-7264-A692E7F09114";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk[80:89]" -type "float3"  0 -0.66305298 0.23969102 0
		 -0.66305298 0.23969102 0 -0.66305298 0.23969102 0 -0.66305298 0.23969102 0 -0.66305298
		 0.23969102 0 -0.66305298 0.23969102 0 -0.66305298 0.23969102 0 -0.66305298 0.23969102
		 0 -0.66305298 0.23969102 0 -0.66305298 0.23969102;
createNode polyExtrudeEdge -n "polyExtrudeEdge13";
	rename -uid "BAA88CC7-40F3-F020-7396-B385FCF4B21F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[172]" "e[174]" "e[176]" "e[178]" "e[180]" "e[182]" "e[184]" "e[186]" "e[188:189]";
	setAttr ".ix" -type "matrix" 0.24719755761038559 0 0 0 0 5.4888884018030734e-017 0.24719755761038559 0
		 0 -0.24719755761038559 5.4888884018030734e-017 0 11.300605386838541 5.7572601039072957 -2.4727542347620304 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 11.300606 5.4842405 -3.2338898 ;
	setAttr ".rs" 48719;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 11.101393448254797 5.2947795992214939 -3.2338898352686014 ;
	setAttr ".cbx" -type "double3" 11.499817325422285 5.6737016274474081 -3.2338898352686014 ;
createNode polyTweak -n "polyTweak13";
	rename -uid "51CC98C7-441D-079E-15A2-63BD759D431B";
	setAttr ".uopa" yes;
	setAttr -s 40 ".tk[60:99]" -type "float3"  0 0.4863655 -0.00089840218
		 0 0.4863655 -0.00089840218 0 0.4863655 -0.00089840218 0 0.4863655 -0.00089840218
		 0 0.4863655 -0.00089840218 0 0.4863655 -0.00089840218 0 0.4863655 -0.00089840218
		 0 0.4863655 -0.00089840218 0 0.4863655 -0.00089840218 0 0.4863655 -0.00089840218
		 0 0.77735049 0.25636664 0 0.77735049 0.25636664 0 0.77735049 0.25636664 0 0.77735049
		 0.25636664 0 0.77735049 0.25636664 0 0.77735049 0.25636664 0 0.77735049 0.25636664
		 0 0.77735049 0.25636664 0 0.77735049 0.25636664 0 0.77735049 0.25636664 0 0.84693867
		 0.48185337 0 0.84693867 0.48185337 0 0.84693867 0.48185337 0 0.84693867 0.48185337
		 0 0.84693867 0.48185337 0 0.84693867 0.48185337 0 0.84693867 0.48185337 0 0.84693867
		 0.48185337 0 0.84693867 0.48185337 0 0.84693867 0.48185337 0 0.14145923 0.57060134
		 0 0.14145923 0.57060134 0 0.14145923 0.57060134 0 0.14145923 0.57060134 0 0.14145923
		 0.57060134 0 0.14145923 0.57060134 0 0.14145923 0.57060134 0 0.14145923 0.57060134
		 0 0.14145923 0.57060134 0 0.14145923 0.57060134;
createNode polyTweak -n "polyTweak14";
	rename -uid "4FEE2570-4F85-978D-6BAC-D6A8B6962C70";
	setAttr ".uopa" yes;
	setAttr -s 130 ".tk";
	setAttr ".tk[0]" -type "float3" 0.098610476 0.011066884 -0.090436883 ;
	setAttr ".tk[1]" -type "float3" -0.10071125 0.011066884 -0.096213855 ;
	setAttr ".tk[4]" -type "float3" 0 0 -0.14045766 ;
	setAttr ".tk[5]" -type "float3" 0 0 -0.14045766 ;
	setAttr ".tk[6]" -type "float3" 0.090599082 0.016635722 0.19946384 ;
	setAttr ".tk[7]" -type "float3" -0.090599082 0.016635722 0.19946384 ;
	setAttr ".tk[10]" -type "float3" 0 0 -0.18078144 ;
	setAttr ".tk[11]" -type "float3" 0 0 -0.18078144 ;
	setAttr ".tk[12]" -type "float3" 0 0 -0.20875958 ;
	setAttr ".tk[13]" -type "float3" 0 0 -0.20875958 ;
	setAttr ".tk[14]" -type "float3" 0 0 0.036335759 ;
	setAttr ".tk[15]" -type "float3" 0 0 0.036335759 ;
	setAttr ".tk[16]" -type "float3" 0.096189663 0.014982752 -0.24256857 ;
	setAttr ".tk[17]" -type "float3" -0.09971635 0.014982752 -0.2420274 ;
	setAttr ".tk[18]" -type "float3" -0.092642613 0.014982756 0.092642613 ;
	setAttr ".tk[19]" -type "float3" 0.092642613 0.014982756 0.092642613 ;
	setAttr ".tk[20]" -type "float3" 0 0 -0.20875958 ;
	setAttr ".tk[21]" -type "float3" 0 0 -0.20875958 ;
	setAttr ".tk[22]" -type "float3" 0 0 0.036335759 ;
	setAttr ".tk[23]" -type "float3" 0 0 0.036335759 ;
	setAttr ".tk[24]" -type "float3" 0.098610476 -0.011066876 -0.2453658 ;
	setAttr ".tk[25]" -type "float3" -0.10071126 -0.011066876 -0.25114277 ;
	setAttr ".tk[26]" -type "float3" -0.090599082 -0.016635729 0.10226323 ;
	setAttr ".tk[27]" -type "float3" 0.090599082 -0.016635729 0.10226323 ;
	setAttr ".tk[28]" -type "float3" -0.092642613 0.0060072169 0.092642613 ;
	setAttr ".tk[29]" -type "float3" -0.09971635 0.0060072071 -0.2420274 ;
	setAttr ".tk[30]" -type "float3" 0.096189678 0.0060072071 -0.24256857 ;
	setAttr ".tk[31]" -type "float3" 0.092642613 0.0060072169 0.092642613 ;
	setAttr ".tk[32]" -type "float3" -0.092642613 0.0041920431 0.092642613 ;
	setAttr ".tk[33]" -type "float3" -0.09971635 0.0041920394 -0.2420274 ;
	setAttr ".tk[34]" -type "float3" 0.096189663 0.0041920394 -0.24256857 ;
	setAttr ".tk[35]" -type "float3" 0.092642613 0.0041920431 0.092642613 ;
	setAttr ".tk[36]" -type "float3" 0.075299889 0.011066884 -0.09059906 ;
	setAttr ".tk[37]" -type "float3" 0.075299874 0.016635722 0.19946384 ;
	setAttr ".tk[38]" -type "float3" 0.075299978 -0.016635729 0.10226323 ;
	setAttr ".tk[39]" -type "float3" 0.076998308 0.0060072169 0.092642613 ;
	setAttr ".tk[40]" -type "float3" 0.076998308 0.0041920431 0.092642613 ;
	setAttr ".tk[41]" -type "float3" 0.076998442 0.014982756 0.092642613 ;
	setAttr ".tk[42]" -type "float3" 0 0 -0.18078144 ;
	setAttr ".tk[43]" -type "float3" 0 0 -0.20875958 ;
	setAttr ".tk[44]" -type "float3" 0 0 -0.20875958 ;
	setAttr ".tk[45]" -type "float3" 0 0 -0.14045766 ;
	setAttr ".tk[47]" -type "float3" 0 0 0.036335759 ;
	setAttr ".tk[48]" -type "float3" 0 0 0.036335759 ;
	setAttr ".tk[50]" -type "float3" 0.044428505 0.014982752 -0.16658743 ;
	setAttr ".tk[51]" -type "float3" 0.04442862 0.0041920394 -0.16658743 ;
	setAttr ".tk[52]" -type "float3" 0.04442862 0.0060072071 -0.16658743 ;
	setAttr ".tk[53]" -type "float3" 0.04256634 -0.011066876 -0.1645439 ;
	setAttr ".tk[54]" -type "float3" 0 0 -0.18078144 ;
	setAttr ".tk[55]" -type "float3" 0.070009701 0.014982756 0.092642613 ;
	setAttr ".tk[56]" -type "float3" 0.070009552 0.0041920431 0.092642613 ;
	setAttr ".tk[57]" -type "float3" 0.070009552 0.0060072169 0.092642613 ;
	setAttr ".tk[58]" -type "float3" 0.068465427 -0.016635729 0.10226323 ;
	setAttr ".tk[59]" -type "float3" 0.068465263 0.016635722 0.19946384 ;
	setAttr ".tk[60]" -type "float3" 0.06846527 0.011066884 -0.09059906 ;
	setAttr ".tk[61]" -type "float3" 0.068465255 -0.011066876 -0.090599075 ;
	setAttr ".tk[62]" -type "float3" 0.070009701 0.0060072071 -0.092642613 ;
	setAttr ".tk[63]" -type "float3" 0.070009701 0.0041920394 -0.092642613 ;
	setAttr ".tk[64]" -type "float3" 0.070009552 0.014982752 -0.092642613 ;
	setAttr ".tk[66]" -type "float3" 0 0 0.036335759 ;
	setAttr ".tk[67]" -type "float3" 0 0 0.036335759 ;
	setAttr ".tk[69]" -type "float3" 0 0 -0.14045766 ;
	setAttr ".tk[70]" -type "float3" 0 0 -0.20875958 ;
	setAttr ".tk[71]" -type "float3" 0 0 -0.20875958 ;
	setAttr ".tk[72]" -type "float3" 0 0 -0.18078144 ;
	setAttr ".tk[73]" -type "float3" 0.061270576 0.014982756 0.30122682 ;
	setAttr ".tk[74]" -type "float3" 0.061270446 -0.10998746 0.30122682 ;
	setAttr ".tk[75]" -type "float3" 0.061270446 0.0060072169 0.092642613 ;
	setAttr ".tk[76]" -type "float3" 0.059919067 -0.016635729 0.10226323 ;
	setAttr ".tk[77]" -type "float3" 0.059918962 0.016635722 0.19946384 ;
	setAttr ".tk[78]" -type "float3" 0.059918974 0.011066884 -0.09059906 ;
	setAttr ".tk[79]" -type "float3" 0.10209644 -0.011066876 -0.090599075 ;
	setAttr ".tk[80]" -type "float3" 0.10323884 0.0060072071 -0.092642613 ;
	setAttr ".tk[81]" -type "float3" 0.10323884 0.0041920394 -0.092642635 ;
	setAttr ".tk[82]" -type "float3" 0.10323862 0.014982752 -0.092642635 ;
	setAttr ".tk[84]" -type "float3" 0 0 0.036335759 ;
	setAttr ".tk[85]" -type "float3" 0 0 0.036335759 ;
	setAttr ".tk[86]" -type "float3" 0 0.017429486 0 ;
	setAttr ".tk[87]" -type "float3" 0 0.017429486 -0.14045766 ;
	setAttr ".tk[88]" -type "float3" 0 0 -0.20875958 ;
	setAttr ".tk[89]" -type "float3" 0 0 -0.20875958 ;
	setAttr ".tk[90]" -type "float3" 0 0 -0.18078144 ;
	setAttr ".tk[91]" -type "float3" -0.076664105 0.014982756 0.092642613 ;
	setAttr ".tk[92]" -type "float3" -0.076664105 0.0041920431 0.092642613 ;
	setAttr ".tk[93]" -type "float3" -0.076664105 0.0060072169 0.092642613 ;
	setAttr ".tk[94]" -type "float3" -0.074973002 -0.016635729 0.10226323 ;
	setAttr ".tk[95]" -type "float3" -0.074973024 0.016635722 0.19946384 ;
	setAttr ".tk[96]" -type "float3" -0.074973039 0.011066884 -0.09059906 ;
	setAttr ".tk[97]" -type "float3" -0.042239491 -0.011066876 -0.1645439 ;
	setAttr ".tk[98]" -type "float3" -0.044093613 0.0060072071 -0.16658743 ;
	setAttr ".tk[99]" -type "float3" -0.044093613 0.0041920319 -0.16658743 ;
	setAttr ".tk[100]" -type "float3" -0.04409359 0.014982752 -0.16658743 ;
	setAttr ".tk[102]" -type "float3" 0 0 0.036335759 ;
	setAttr ".tk[103]" -type "float3" 0 0 0.036335759 ;
	setAttr ".tk[105]" -type "float3" 0 0 -0.14045766 ;
	setAttr ".tk[106]" -type "float3" 0 0 -0.20875958 ;
	setAttr ".tk[107]" -type "float3" 0 0 -0.20875958 ;
	setAttr ".tk[108]" -type "float3" -0.069039091 0.0041920431 0.092642613 ;
	setAttr ".tk[109]" -type "float3" -0.069039017 0.014982756 0.092642613 ;
	setAttr ".tk[110]" -type "float3" 0 0 -0.18078144 ;
	setAttr ".tk[111]" -type "float3" 0 0 -0.20875958 ;
	setAttr ".tk[112]" -type "float3" 0 0 -0.20875958 ;
	setAttr ".tk[113]" -type "float3" 0 0 -0.14045766 ;
	setAttr ".tk[115]" -type "float3" 0 0 0.036335759 ;
	setAttr ".tk[116]" -type "float3" 0 0 0.036335759 ;
	setAttr ".tk[118]" -type "float3" -0.069039091 0.014982752 -0.092642613 ;
	setAttr ".tk[119]" -type "float3" -0.069039017 0.0041920394 -0.092642613 ;
	setAttr ".tk[120]" -type "float3" -0.069039017 0.0060072071 -0.092642613 ;
	setAttr ".tk[121]" -type "float3" -0.067516208 -0.011066876 -0.090599075 ;
	setAttr ".tk[122]" -type "float3" -0.067516208 0.011066884 -0.09059906 ;
	setAttr ".tk[123]" -type "float3" -0.0675162 0.016635722 0.19946384 ;
	setAttr ".tk[124]" -type "float3" -0.06751617 -0.016635729 0.10226323 ;
	setAttr ".tk[125]" -type "float3" -0.069039091 0.0060072169 0.092642613 ;
	setAttr ".tk[126]" -type "float3" -0.062002242 -0.10998746 0.30122682 ;
	setAttr ".tk[127]" -type "float3" -0.062002182 0.014982756 0.30122682 ;
	setAttr ".tk[128]" -type "float3" 0 0 -0.18078144 ;
	setAttr ".tk[129]" -type "float3" 0 0 -0.20875958 ;
	setAttr ".tk[130]" -type "float3" 0 0 -0.20875958 ;
	setAttr ".tk[131]" -type "float3" 0 0.017429486 -0.14045766 ;
	setAttr ".tk[132]" -type "float3" 0 0.017429486 0 ;
	setAttr ".tk[133]" -type "float3" 0 0 0.036335759 ;
	setAttr ".tk[134]" -type "float3" 0 0 0.036335759 ;
	setAttr ".tk[136]" -type "float3" -0.10396791 0.014982752 -0.092642635 ;
	setAttr ".tk[137]" -type "float3" -0.10396785 0.0041920394 -0.092642635 ;
	setAttr ".tk[138]" -type "float3" -0.10396785 0.0060072071 -0.092642613 ;
	setAttr ".tk[139]" -type "float3" -0.10281205 -0.011066876 -0.090599075 ;
	setAttr ".tk[140]" -type "float3" -0.060634606 0.011066884 -0.09059906 ;
	setAttr ".tk[141]" -type "float3" -0.060634594 0.016635722 0.19946384 ;
	setAttr ".tk[142]" -type "float3" -0.060634535 -0.016635729 0.10226323 ;
	setAttr ".tk[143]" -type "float3" -0.062002242 0.0060072169 0.092642613 ;
createNode deleteComponent -n "deleteComponent7";
	rename -uid "C87362B1-4A42-D4BB-7A37-A4806B6E5C02";
	setAttr ".dc" -type "componentList" 10 "f[0:2]" "f[4:13]" "f[18:21]" "f[39:47]" "f[52]" "f[62:70]" "f[80:88]" "f[98:105]" "f[107:115]" "f[125:133]";
createNode blinn -n "blinn1";
	rename -uid "AD0E943D-472C-2DB5-1803-0B9011E4AA25";
	setAttr ".it" -type "float3" 0.39860141 0.39860141 0.39860141 ;
createNode shadingEngine -n "blinn1SG";
	rename -uid "46BDE06A-4D05-D1A7-2CEA-99B2B9D80B3A";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "D7BE6A26-4AF2-785F-42A0-8FB23FD46757";
createNode polyCube -n "polyCube6";
	rename -uid "4D04B633-4827-4565-BCE7-808A67F00578";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube7";
	rename -uid "3993B97C-4663-B8DA-7127-9A9EFF43DB3B";
	setAttr ".cuv" 4;
createNode deleteComponent -n "deleteComponent8";
	rename -uid "CDB7ABF0-4ED2-F494-6B96-34AC1C147078";
	setAttr ".dc" -type "componentList" 1 "f[3]";
createNode polyExtrudeEdge -n "polyExtrudeEdge14";
	rename -uid "AFE19416-472E-D476-2FFF-70BF921D0B52";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[0]" "e[3]" "e[10:11]";
	setAttr ".ix" -type "matrix" 2.482708678925905 0 0 0 0 0.42804146611400157 0 0 0 0 2.193642301924875 0
		 11.253871026597812 7.9502625061952443 -18.529696245294907 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 11.253871 7.7362418 -18.529696 ;
	setAttr ".rs" 64471;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 10.012516687134859 7.7362417731382438 -19.626517396257345 ;
	setAttr ".cbx" -type "double3" 12.495225366060765 7.7362417731382438 -17.43287509433247 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge15";
	rename -uid "F4584DF3-415A-5A85-2A57-5C90F3228E01";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[14]" "e[17:19]";
	setAttr ".ix" -type "matrix" 2.482708678925905 0 0 0 0 0.42804146611400157 0 0 0 0 2.193642301924875 0
		 11.253871026597812 7.9502625061952443 -18.529696245294907 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 11.25387 7.7362418 -18.529697 ;
	setAttr ".rs" 55193;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 10.223296339790085 7.7362417731382438 -19.440279209564586 ;
	setAttr ".cbx" -type "double3" 12.284444529557788 7.7362417731382438 -17.61911432703539 ;
createNode polyTweak -n "polyTweak15";
	rename -uid "28F08D07-41C2-2FD6-081E-FF88BF32BEF2";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[8:11]" -type "float3"  0.084899083 9.4368957e-016
		 -0.084899083 -0.084899083 9.4368957e-016 -0.084899083 0.084899083 9.4368957e-016
		 0.084899083 -0.084899083 9.4368957e-016 0.084899083;
createNode polyExtrudeEdge -n "polyExtrudeEdge16";
	rename -uid "AB3A040A-4B43-22D4-A11B-218AF7798927";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[22]" "e[25:27]";
	setAttr ".ix" -type "matrix" 2.482708678925905 0 0 0 0 0.42804146611400157 0 0 0 0 2.193642301924875 0
		 11.253871026597812 7.9502625061952443 -18.529696245294907 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 11.25387 7.6120133 -18.529697 ;
	setAttr ".rs" 40149;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 10.223296043828148 7.6120131200665435 -19.440279471067125 ;
	setAttr ".cbx" -type "double3" 12.284444825519726 7.6120131200665435 -17.61911511154301 ;
createNode polyTweak -n "polyTweak16";
	rename -uid "4FF7F48A-4D62-391B-6888-459A05C9604F";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[12:15]" -type "float3"  0 -0.29022577 0 0 -0.29022577
		 0 0 -0.29022577 0 0 -0.29022577 0;
createNode polyExtrudeEdge -n "polyExtrudeEdge17";
	rename -uid "4E81DBBE-47F5-4102-419A-B4A8DA6CA80E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[30]" "e[33:35]";
	setAttr ".ix" -type "matrix" 2.482708678925905 0 0 0 0 0.42804146611400157 0 0 0 0 2.193642301924875 0
		 11.253871026597812 7.9502625061952443 -18.529696245294907 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 11.25387 7.6120129 -18.529697 ;
	setAttr ".rs" 51181;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 10.087088662796184 7.6120130180135055 -19.560627908680324 ;
	setAttr ".cbx" -type "double3" 12.420652206551688 7.6120130180135055 -17.498766673929815 ;
createNode polyTweak -n "polyTweak17";
	rename -uid "C2DF7C9C-4A8C-DC47-732D-1C8444AF7E71";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[16:19]" -type "float3"  -0.054862417 -2.220446e-016
		 0.054862384 0.054862417 -2.220446e-016 0.054862384 -0.054862417 -2.220446e-016 -0.054862384
		 0.054862417 -2.220446e-016 -0.054862384;
createNode polyExtrudeEdge -n "polyExtrudeEdge18";
	rename -uid "913338FE-4ED0-9801-CB1B-1F83D4034072";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[38]" "e[41:43]";
	setAttr ".ix" -type "matrix" 2.482708678925905 0 0 0 0 0.42804146611400157 0 0 0 0 2.193642301924875 0
		 11.253871026597812 7.9502625061952443 -18.529696245294907 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 11.25387 7.3478422 -18.529697 ;
	setAttr ".rs" 59828;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 10.087088440824731 7.3478420442948327 -19.560629216193025 ;
	setAttr ".cbx" -type "double3" 12.420652428523141 7.3478420442948327 -17.498767458437435 ;
createNode polyTweak -n "polyTweak18";
	rename -uid "5787CC24-47C9-31B6-5105-248ADFF124F7";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[20:23]" -type "float3"  0 -0.61716211 0 0 -0.61716211
		 0 0 -0.61716211 0 0 -0.61716211 0;
createNode polyExtrudeEdge -n "polyExtrudeEdge19";
	rename -uid "9C38808C-4C96-CF79-04C4-0EBBF2C64C86";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[46]" "e[49:51]";
	setAttr ".ix" -type "matrix" 2.482708678925905 0 0 0 0 0.42804146611400157 0 0 0 0 2.193642301924875 0
		 11.253871026597812 7.9502625061952443 -18.529696245294907 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 11.25387 7.3478417 -18.529697 ;
	setAttr ".rs" 48536;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 10.247609760959378 7.3478417891622376 -19.418797756510099 ;
	setAttr ".cbx" -type "double3" 12.260131108388494 7.3478417891622376 -17.640598918120361 ;
createNode polyTweak -n "polyTweak19";
	rename -uid "448154DA-4B2A-3F14-67F1-BDA3B3E66CE8";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[24:27]" -type "float3"  0.064655714 4.4408921e-016
		 -0.064655684 -0.064655714 4.4408921e-016 -0.064655684 0.064655714 4.4408921e-016
		 0.064655684 -0.064655714 4.4408921e-016 0.064655684;
createNode polyExtrudeEdge -n "polyExtrudeEdge20";
	rename -uid "A0FC928D-4567-913E-D0A7-FA988F4B097A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[54]" "e[57:59]";
	setAttr ".ix" -type "matrix" 2.482708678925905 0 0 0 0 0.42804146611400157 0 0 0 0 2.193642301924875 0
		 11.253871026597812 7.9502625061952443 -18.529696245294907 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 11.25387 7.2438912 -18.529699 ;
	setAttr ".rs" 37721;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 10.247609908940348 7.2438913809295498 -19.418798606393356 ;
	setAttr ".cbx" -type "double3" 12.260130960407526 7.2438913809295498 -17.640600160257428 ;
createNode polyTweak -n "polyTweak20";
	rename -uid "1FF1EB0F-496D-55D7-78E8-BDBA1747FEA5";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[28:31]" -type "float3"  0 -0.24285124 0 0 -0.24285124
		 0 0 -0.24285124 0 0 -0.24285124 0;
createNode polyExtrudeEdge -n "polyExtrudeEdge21";
	rename -uid "C46718E0-4F90-C929-85E5-A0B9AE1EAE37";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[62]" "e[65:67]";
	setAttr ".ix" -type "matrix" 2.482708678925905 0 0 0 0 0.42804146611400157 0 0 0 0 2.193642301924875 0
		 11.253871026597812 7.9502625061952443 -18.529696245294907 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 11.25387 7.2438912 -18.529701 ;
	setAttr ".rs" 53489;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 10.087266091977881 7.2438913809295498 -19.560475256572399 ;
	setAttr ".cbx" -type "double3" 12.420474777369991 7.2438913809295498 -17.498927694119029 ;
createNode polyTweak -n "polyTweak21";
	rename -uid "5E956F33-4A54-F06A-79B7-72B9D079B438";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[32:35]" -type "float3"  -0.064584218 -6.6613381e-016
		 0.064584173 0.064584218 -6.6613381e-016 0.064584173 -0.064584218 -6.6613381e-016
		 -0.064584173 0.064584218 -6.6613381e-016 -0.064584173;
createNode polyExtrudeEdge -n "polyExtrudeEdge22";
	rename -uid "CA77C004-4E03-C900-3924-C5A985570265";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[70]" "e[73:75]";
	setAttr ".ix" -type "matrix" 2.482708678925905 0 0 0 0 0.42804146611400157 0 0 0 0 2.193642301924875 0
		 11.253871026597812 7.9502625061952443 -18.529696245294907 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 11.25387 6.984621 -18.529701 ;
	setAttr ".rs" 47591;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 10.087266017987396 6.9846212492353139 -19.560476498709466 ;
	setAttr ".cbx" -type "double3" 12.420474851360476 6.9846212492353139 -17.498927497992124 ;
createNode polyTweak -n "polyTweak22";
	rename -uid "0B63137C-4D90-8EFF-6CC1-6B904C845D82";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[36:39]" -type "float3"  0 -0.60571271 -1.6098234e-015
		 0 -0.60571271 -1.6098234e-015 0 -0.60571271 -1.6098234e-015 0 -0.60571271 -1.6098234e-015;
createNode polyExtrudeEdge -n "polyExtrudeEdge23";
	rename -uid "6A2C1EB7-4620-A434-4AC8-6992FCA40B55";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[78]" "e[81:83]";
	setAttr ".ix" -type "matrix" 2.482708678925905 0 0 0 0 0.42804146611400157 0 0 0 0 2.193642301924875 0
		 11.253871026597812 7.9502625061952443 -18.529696245294907 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 11.25387 6.984621 -18.529703 ;
	setAttr ".rs" 49639;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 10.185666629163938 6.984621147182275 -19.473534879873561 ;
	setAttr ".cbx" -type "double3" 12.322074240183936 6.984621147182275 -17.585871208848349 ;
createNode polyTweak -n "polyTweak23";
	rename -uid "846F37BA-4A06-AE12-1089-BE9BC6BAB7C8";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[40:43]" -type "float3"  0.039634377 4.4408921e-016
		 -0.039634418 -0.039634377 4.4408921e-016 -0.039634418 0.039634377 4.4408921e-016
		 0.039634418 -0.039634377 4.4408921e-016 0.039634418;
createNode polyExtrudeEdge -n "polyExtrudeEdge24";
	rename -uid "53EEAE44-4A1A-F00D-CCB0-30925821A815";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[86]" "e[89:91]";
	setAttr ".ix" -type "matrix" 2.482708678925905 0 0 0 0 0.42804146611400157 0 0 0 0 2.193642301924875 0
		 11.253871026597812 7.9502625061952443 -18.529696245294907 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 11.25387 6.8978086 -18.529703 ;
	setAttr ".rs" 47175;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 10.185666259211516 6.8978087097517653 -19.473534226117213 ;
	setAttr ".cbx" -type "double3" 12.322073426288608 6.8978087097517653 -17.585872908614864 ;
createNode polyTweak -n "polyTweak24";
	rename -uid "F9DB4978-49AA-49AC-07A6-AE81123BACD6";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[44:47]" -type "float3"  0 -0.20281325 0 0 -0.20281325
		 0 0 -0.20281325 0 0 -0.20281325 0;
createNode polyExtrudeEdge -n "polyExtrudeEdge25";
	rename -uid "5ACFBC81-42F8-55C2-793B-0F84DEFECD36";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[94]" "e[97:99]";
	setAttr ".ix" -type "matrix" 2.482708678925905 0 0 0 0 0.42804146611400157 0 0 0 0 2.193642301924875 0
		 11.253871026597812 7.9502625061952443 -18.529696245294907 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 11.253869 6.897809 -18.529703 ;
	setAttr ".rs" 35417;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 10.099749100598927 6.8978091179639183 -19.549447890573123 ;
	setAttr ".cbx" -type "double3" 12.407989401053445 6.8978091179639183 -17.509959244158949 ;
createNode polyTweak -n "polyTweak25";
	rename -uid "B34A6D83-4505-C211-5920-FCA4F0248F58";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[48:51]" -type "float3"  -0.034606207 0 0.034606222
		 0.034606207 0 0.034606222 -0.034606207 0 -0.034606222 0.034606207 0 -0.034606222;
createNode polyExtrudeEdge -n "polyExtrudeEdge26";
	rename -uid "7A98DB65-4760-98B6-E386-48B3E3C26CB4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[102]" "e[105:107]";
	setAttr ".ix" -type "matrix" 2.482708678925905 0 0 0 0 0.42804146611400157 0 0 0 0 2.193642301924875 0
		 11.253871026597812 7.9502625061952443 -18.529696245294907 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 11.253869 6.6451225 -18.529705 ;
	setAttr ".rs" 33391;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 10.09974850867505 6.6451224277605734 -19.549449459588367 ;
	setAttr ".cbx" -type "double3" 12.407988809129568 6.6451224277605734 -17.50995976716403 ;
createNode polyTweak -n "polyTweak26";
	rename -uid "C64673F8-4458-3A9E-66C9-EC9C5CD7B878";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[52:55]" -type "float3"  7.2164497e-016 -0.59033233
		 -1.6098234e-015 7.2164497e-016 -0.59033233 -1.6098234e-015 7.2164497e-016 -0.59033233
		 -1.6098234e-015 7.2164497e-016 -0.59033233 -1.6098234e-015;
createNode polyExtrudeEdge -n "polyExtrudeEdge27";
	rename -uid "0AE4DF15-48BA-CAF0-8341-9F9EB314A867";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[110]" "e[113:115]";
	setAttr ".ix" -type "matrix" 2.482708678925905 0 0 0 0 0.42804146611400157 0 0 0 0 2.193642301924875 0
		 11.253871026597812 7.9502625061952443 -18.529696245294907 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 11.253868 6.6451225 -18.529705 ;
	setAttr ".rs" 42824;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 10.185134637580784 6.6451225298136114 -19.474004930689826 ;
	setAttr ".cbx" -type "double3" 12.322601496376084 6.6451225298136114 -17.58540429606257 ;
createNode polyTweak -n "polyTweak27";
	rename -uid "ABA9CEC3-40CF-25B2-A88C-929AB64FBDEA";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[56:59]" -type "float3"  0.034392316 0 -0.034392364
		 -0.034392316 0 -0.034392364 0.034392316 0 0.034392364 -0.034392316 0 0.034392364;
createNode polyExtrudeEdge -n "polyExtrudeEdge28";
	rename -uid "7696455D-42A9-7B18-96A2-A5B3A7469B6C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[118]" "e[121:123]";
	setAttr ".ix" -type "matrix" 2.482708678925905 0 0 0 0 0.42804146611400157 0 0 0 0 2.193642301924875 0
		 11.253871026597812 7.9502625061952443 -18.529696245294907 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 11.253868 6.5710769 -18.529705 ;
	setAttr ".rs" 36783;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 10.185134711571269 6.5710770295083858 -19.474007022710147 ;
	setAttr ".cbx" -type "double3" 12.322601422385599 6.5710770295083858 -17.58540429606257 ;
createNode polyTweak -n "polyTweak28";
	rename -uid "33D06699-44A6-50F2-54D7-5999AF655BBC";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[60:63]" -type "float3"  0 -0.17298667 -1.6098234e-015
		 0 -0.17298667 -1.6098234e-015 0 -0.17298667 -1.6098234e-015 0 -0.17298667 -1.6098234e-015;
createNode polyExtrudeEdge -n "polyExtrudeEdge29";
	rename -uid "6E630A69-4484-BE61-812B-05B9A6396876";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[126]" "e[129:131]";
	setAttr ".ix" -type "matrix" 2.482708678925905 0 0 0 0 0.42804146611400157 0 0 0 0 2.193642301924875 0
		 11.253871026597812 7.9502625061952443 -18.529696245294907 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 11.253868 6.5710773 -18.529705 ;
	setAttr ".rs" 40134;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 10.115884945446492 6.5710773356675007 -19.535194040855487 ;
	setAttr ".cbx" -type "double3" 12.391851188510378 6.5710773356675007 -17.524217277917231 ;
createNode polyTweak -n "polyTweak29";
	rename -uid "94E059A4-4F71-5ED6-5EFB-E19CD210ECB8";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[64:67]" -type "float3"  -0.027892817 0 0.027892891
		 0.027892817 0 0.027892891 -0.027892817 0 -0.027892891 0.027892817 0 -0.027892891;
createNode polyCloseBorder -n "polyCloseBorder5";
	rename -uid "7CC0E696-4738-3998-2C0D-9391F5303092";
	setAttr ".ics" -type "componentList" 2 "e[134]" "e[137:139]";
createNode polyTweak -n "polyTweak30";
	rename -uid "23D5A7E2-47B2-AC60-862A-FBA9C508A1CD";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[68:71]" -type "float3"  0 -0.90306646 -1.6098234e-015
		 0 -0.90306646 -1.6098234e-015 0 -0.90306646 -1.6098234e-015 0 -0.90306646 -1.6098234e-015;
createNode polyTweak -n "polyTweak31";
	rename -uid "DB7A97F6-45C2-7A35-692F-BE8295810419";
	setAttr ".uopa" yes;
	setAttr -s 112 ".tk";
	setAttr ".tk[5]" -type "float3" 0.022431824 0.014569029 -0.080705434 ;
	setAttr ".tk[6]" -type "float3" -0.02243183 0.014569029 -0.080705434 ;
	setAttr ".tk[9]" -type "float3" 0.022431824 0.0073634814 -0.080705434 ;
	setAttr ".tk[10]" -type "float3" -0.02243183 0.0073634814 -0.080705434 ;
	setAttr ".tk[13]" -type "float3" 0.022431824 0.0001579196 -0.080705434 ;
	setAttr ".tk[14]" -type "float3" -0.02243183 0.0001579196 -0.080705434 ;
	setAttr ".tk[17]" -type "float3" 0.022431824 -0.0070476439 -0.080705434 ;
	setAttr ".tk[18]" -type "float3" -0.02243183 -0.0070476439 -0.080705434 ;
	setAttr ".tk[21]" -type "float3" 0.022431824 -0.014253203 -0.080705434 ;
	setAttr ".tk[22]" -type "float3" -0.02243183 -0.014253203 -0.080705434 ;
	setAttr ".tk[41]" -type "float3" 0.022431824 -0.014253195 0.080705434 ;
	setAttr ".tk[42]" -type "float3" -0.02243183 -0.014253195 0.080705434 ;
	setAttr ".tk[45]" -type "float3" 0.022431824 -0.0070476402 0.080705434 ;
	setAttr ".tk[46]" -type "float3" -0.02243183 -0.0070476402 0.080705434 ;
	setAttr ".tk[49]" -type "float3" 0.022431824 0.00015792204 0.080705434 ;
	setAttr ".tk[50]" -type "float3" -0.02243183 0.00015792204 0.080705434 ;
	setAttr ".tk[53]" -type "float3" 0.022431824 0.0073634777 0.080705434 ;
	setAttr ".tk[54]" -type "float3" -0.02243183 0.0073634777 0.080705434 ;
	setAttr ".tk[57]" -type "float3" 0.022431824 0.014569033 0.080705434 ;
	setAttr ".tk[58]" -type "float3" -0.02243183 0.014569033 0.080705434 ;
	setAttr ".tk[72]" -type "float3" -0.067295499 0.014569029 0.026901823 ;
	setAttr ".tk[73]" -type "float3" -0.067295499 0.014569029 -0.026901824 ;
	setAttr ".tk[74]" -type "float3" -0.067295499 0.0073634814 0.026901823 ;
	setAttr ".tk[75]" -type "float3" -0.067295499 0.0073634814 -0.026901824 ;
	setAttr ".tk[76]" -type "float3" -0.067295499 0.0001579196 0.026901823 ;
	setAttr ".tk[77]" -type "float3" -0.067295499 0.0001579196 -0.026901824 ;
	setAttr ".tk[78]" -type "float3" -0.067295499 -0.0070476439 0.026901823 ;
	setAttr ".tk[79]" -type "float3" -0.067295499 -0.0070476439 -0.026901824 ;
	setAttr ".tk[80]" -type "float3" -0.067295499 -0.014253203 0.026901823 ;
	setAttr ".tk[81]" -type "float3" -0.067295499 -0.014253203 -0.026901824 ;
	setAttr ".tk[82]" -type "float3" 0.067295499 0.014569029 0.026901823 ;
	setAttr ".tk[83]" -type "float3" 0.067295499 0.014569029 -0.026901824 ;
	setAttr ".tk[84]" -type "float3" 0.067295499 0.0073634814 0.026901823 ;
	setAttr ".tk[85]" -type "float3" 0.067295499 0.0073634814 -0.026901824 ;
	setAttr ".tk[86]" -type "float3" 0.067295499 0.0001579196 0.026901823 ;
	setAttr ".tk[87]" -type "float3" 0.067295499 0.0001579196 -0.026901824 ;
	setAttr ".tk[88]" -type "float3" 0.067295499 -0.0070476439 0.026901823 ;
	setAttr ".tk[89]" -type "float3" 0.067295499 -0.0070476439 -0.026901824 ;
	setAttr ".tk[90]" -type "float3" 0.067295499 -0.014253203 0.026901823 ;
	setAttr ".tk[91]" -type "float3" 0.067295499 -0.014253203 -0.026901824 ;
	setAttr ".tk[93]" -type "float3" 0.022431824 -0.019516028 -0.080705427 ;
	setAttr ".tk[94]" -type "float3" -0.02243183 -0.019516028 -0.080705434 ;
	setAttr ".tk[96]" -type "float3" -0.067295499 -0.019516028 -0.026901823 ;
	setAttr ".tk[97]" -type "float3" -0.067295499 -0.019516028 0.026901824 ;
	setAttr ".tk[99]" -type "float3" -0.02243183 -0.019516028 0.080705434 ;
	setAttr ".tk[100]" -type "float3" 0.022431824 -0.019516028 0.080705434 ;
	setAttr ".tk[102]" -type "float3" 0.067295499 -0.019516028 0.026901824 ;
	setAttr ".tk[103]" -type "float3" 0.067295499 -0.019516028 -0.026901823 ;
	setAttr ".tk[108]" -type "float3" -0.060307875 0.014569033 0.080705434 ;
	setAttr ".tk[109]" -type "float3" -0.060307875 0.0073634777 0.080705434 ;
	setAttr ".tk[110]" -type "float3" -0.060307875 0.00015792204 0.080705434 ;
	setAttr ".tk[111]" -type "float3" -0.060307875 -0.0070476402 0.080705434 ;
	setAttr ".tk[112]" -type "float3" -0.060307875 -0.014253195 0.080705434 ;
	setAttr ".tk[113]" -type "float3" -0.060307875 -0.019516028 0.080705434 ;
	setAttr ".tk[118]" -type "float3" -0.060307875 -0.019516028 -0.080705434 ;
	setAttr ".tk[119]" -type "float3" -0.060307875 -0.014253203 -0.080705434 ;
	setAttr ".tk[120]" -type "float3" -0.060307875 -0.0070476439 -0.080705434 ;
	setAttr ".tk[121]" -type "float3" -0.060307875 0.0001579196 -0.080705434 ;
	setAttr ".tk[122]" -type "float3" -0.060307875 0.0073634814 -0.080705434 ;
	setAttr ".tk[123]" -type "float3" -0.060307875 0.014569029 -0.080705434 ;
	setAttr ".tk[129]" -type "float3" -0.067295499 -0.019516028 -0.072908908 ;
	setAttr ".tk[130]" -type "float3" -0.067295499 -0.014253203 -0.072908908 ;
	setAttr ".tk[131]" -type "float3" -0.067295499 -0.0070476439 -0.072908908 ;
	setAttr ".tk[132]" -type "float3" -0.067295499 0.0001579196 -0.072908908 ;
	setAttr ".tk[133]" -type "float3" -0.067295499 0.0073634814 -0.072908908 ;
	setAttr ".tk[134]" -type "float3" -0.067295499 0.014569029 -0.072908908 ;
	setAttr ".tk[140]" -type "float3" 0.067295499 0.014569029 -0.072908908 ;
	setAttr ".tk[141]" -type "float3" 0.067295499 0.0073634814 -0.072908908 ;
	setAttr ".tk[142]" -type "float3" 0.067295499 0.0001579196 -0.072908908 ;
	setAttr ".tk[143]" -type "float3" 0.067295499 -0.0070476439 -0.072908908 ;
	setAttr ".tk[144]" -type "float3" 0.067295499 -0.014253203 -0.072908908 ;
	setAttr ".tk[145]" -type "float3" 0.067295499 -0.019516028 -0.072908908 ;
	setAttr ".tk[151]" -type "float3" -0.067295499 -0.019516028 0.071286425 ;
	setAttr ".tk[152]" -type "float3" -0.067295499 -0.014253195 0.071286425 ;
	setAttr ".tk[153]" -type "float3" -0.067295499 -0.007047642 0.071286425 ;
	setAttr ".tk[154]" -type "float3" -0.067295499 0.00015792163 0.071286425 ;
	setAttr ".tk[155]" -type "float3" -0.067295499 0.0073634814 0.071286425 ;
	setAttr ".tk[156]" -type "float3" -0.067295499 0.014569029 0.071286425 ;
	setAttr ".tk[162]" -type "float3" 0.067295499 0.014569029 0.071286425 ;
	setAttr ".tk[163]" -type "float3" 0.067295499 0.0073634814 0.071286425 ;
	setAttr ".tk[164]" -type "float3" 0.067295499 0.00015792163 0.071286425 ;
	setAttr ".tk[165]" -type "float3" 0.067295499 -0.007047642 0.071286425 ;
	setAttr ".tk[166]" -type "float3" 0.067295499 -0.014253195 0.071286425 ;
	setAttr ".tk[167]" -type "float3" 0.067295499 -0.019516028 0.071286425 ;
	setAttr ".tk[174]" -type "float3" 0.058815617 0.014569033 0.080705434 ;
	setAttr ".tk[175]" -type "float3" 0.058815617 0.0073634777 0.080705434 ;
	setAttr ".tk[176]" -type "float3" 0.058815617 0.00015792204 0.080705434 ;
	setAttr ".tk[177]" -type "float3" 0.058815617 -0.0070476402 0.080705434 ;
	setAttr ".tk[178]" -type "float3" 0.058815617 -0.014253195 0.080705434 ;
	setAttr ".tk[179]" -type "float3" 0.058815617 -0.019516028 0.080705434 ;
	setAttr ".tk[186]" -type "float3" 0.058815617 -0.019516036 -0.080705427 ;
	setAttr ".tk[187]" -type "float3" 0.058815617 -0.014253203 -0.080705434 ;
	setAttr ".tk[188]" -type "float3" 0.058815617 -0.0070476439 -0.080705434 ;
	setAttr ".tk[189]" -type "float3" 0.058815617 0.0001579196 -0.080705434 ;
	setAttr ".tk[190]" -type "float3" 0.058815617 0.0073634796 -0.080705434 ;
	setAttr ".tk[191]" -type "float3" 0.058815617 0.014569029 -0.080705434 ;
	setAttr ".tk[193]" -type "float3" 0.058815617 0.019516036 -0.080705434 ;
	setAttr ".tk[194]" -type "float3" 0.022431824 0.019516036 -0.080705434 ;
	setAttr ".tk[195]" -type "float3" -0.02243183 0.019516036 -0.080705434 ;
	setAttr ".tk[196]" -type "float3" -0.060307875 0.019516036 -0.080705434 ;
	setAttr ".tk[198]" -type "float3" -0.067295499 0.019516036 -0.072908908 ;
	setAttr ".tk[199]" -type "float3" -0.067295499 0.019516036 -0.026901824 ;
	setAttr ".tk[200]" -type "float3" -0.067295499 0.019516036 0.026901823 ;
	setAttr ".tk[201]" -type "float3" -0.067295499 0.019516028 0.071286425 ;
	setAttr ".tk[203]" -type "float3" -0.060307875 0.019516028 0.080705434 ;
	setAttr ".tk[204]" -type "float3" -0.02243183 0.019516028 0.080705434 ;
	setAttr ".tk[205]" -type "float3" 0.022431824 0.019516028 0.080705434 ;
	setAttr ".tk[206]" -type "float3" 0.058815617 0.019516028 0.080705434 ;
	setAttr ".tk[208]" -type "float3" 0.067295499 0.019516028 0.071286425 ;
	setAttr ".tk[209]" -type "float3" 0.067295499 0.019516036 0.026901823 ;
	setAttr ".tk[210]" -type "float3" 0.067295499 0.019516036 -0.026901824 ;
	setAttr ".tk[211]" -type "float3" 0.067295499 0.019516036 -0.072908908 ;
createNode polySplit -n "polySplit20";
	rename -uid "677B835E-41B1-EC02-C2F3-EE9C0C8B4EEF";
	setAttr -s 21 ".e[0:20]"  0.83790803 0.162092 0.83790803 0.83790803
		 0.162092 0.83790803 0.162092 0.83790803 0.83790803 0.162092 0.162092 0.83790803 0.162092
		 0.162092 0.83790803 0.162092 0.83790803 0.83790803 0.83790803 0.83790803 0.83790803;
	setAttr -s 21 ".d[0:20]"  -2147483574 -2147483274 -2147483573 -2147483572 -2147483410 -2147483571 
		-2147483377 -2147483496 -2147483497 -2147483333 -2147483462 -2147483416 -2147483461 -2147483460 -2147483282 -2147483459 -2147483318 -2147483470 
		-2147483469 -2147483362 -2147483574;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit21";
	rename -uid "E891DF08-473A-C9C7-BD32-489ED4A335D0";
	setAttr -s 21 ".e[0:20]"  0.76166898 0.238331 0.76166898 0.76166898
		 0.238331 0.76166898 0.238331 0.76166898 0.76166898 0.238331 0.238331 0.76166898 0.238331
		 0.238331 0.76166898 0.238331 0.76166898 0.76166898 0.76166898 0.76166898 0.76166898;
	setAttr -s 21 ".d[0:20]"  -2147483574 -2147483227 -2147483573 -2147483572 -2147483224 -2147483571 
		-2147483222 -2147483496 -2147483497 -2147483219 -2147483218 -2147483416 -2147483216 -2147483215 -2147483282 -2147483213 -2147483318 -2147483470 
		-2147483469 -2147483362 -2147483574;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit22";
	rename -uid "2490FE35-41B4-CB85-B42C-D6951F4C6C27";
	setAttr -s 21 ".e[0:20]"  0.69757903 0.302421 0.69757903 0.69757903
		 0.302421 0.69757903 0.69757903 0.302421 0.302421 0.69757903 0.302421 0.69757903 0.302421
		 0.302421 0.69757903 0.302421 0.302421 0.302421 0.302421 0.302421 0.69757903;
	setAttr -s 21 ".d[0:20]"  -2147483538 -2147483254 -2147483537 -2147483536 -2147483257 -2147483535 
		-2147483328 -2147483260 -2147483261 -2147483372 -2147483263 -2147483405 -2147483265 -2147483266 -2147483269 -2147483268 -2147483249 -2147483250 
		-2147483251 -2147483252 -2147483538;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit23";
	rename -uid "E7A8B13C-4B66-E099-BCFA-94BE9A39CA95";
	setAttr -s 21 ".e[0:20]"  0.63993597 0.360064 0.63993597 0.63993597
		 0.360064 0.63993597 0.63993597 0.360064 0.360064 0.63993597 0.360064 0.63993597 0.360064
		 0.360064 0.63993597 0.360064 0.360064 0.360064 0.360064 0.360064 0.63993597;
	setAttr -s 21 ".d[0:20]"  -2147483538 -2147483147 -2147483537 -2147483536 -2147483144 -2147483535 
		-2147483328 -2147483141 -2147483140 -2147483372 -2147483138 -2147483405 -2147483136 -2147483135 -2147483269 -2147483133 -2147483132 -2147483131 
		-2147483130 -2147483129 -2147483538;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent9";
	rename -uid "859E7B0B-47A9-9EFB-E756-909E1ED91B8F";
	setAttr ".dc" -type "componentList" 7 "f[18:26]" "f[36]" "f[112:114]" "f[122:125]" "f[144:147]" "f[178:182]" "f[256:258]";
createNode polyExtrudeEdge -n "polyExtrudeEdge30";
	rename -uid "1E963C1F-4F15-3172-AC5D-68A691109729";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[18:23]" "e[72:77]" "e[202:203]" "e[227:228]" "e[264:265]" "e[313:314]";
	setAttr ".ix" -type "matrix" 3.0148571149052334 0 0 0 0 3.0148571149052334 0 0 0 0 3.0148571149052334 0
		 28.677180284905518 1.9984881111164796 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 28.677179 3.3774631 0 ;
	setAttr ".rs" 40088;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 26.899303639543284 3.3774630723506549 -1.7778766453622321 ;
	setAttr ".cbx" -type "double3" 30.455056930267752 3.3774630723506549 1.7778766453622321 ;
createNode polyTweak -n "polyTweak32";
	rename -uid "3CC36576-448F-0F77-399E-B78995A8CE16";
	setAttr ".uopa" yes;
	setAttr -s 60 ".tk";
	setAttr ".tk[24]" -type "float3" -0.089705124 -0.042606849 0.089705124 ;
	setAttr ".tk[25]" -type "float3" -0.029901706 -0.042606849 0.089705124 ;
	setAttr ".tk[26]" -type "float3" 0.029901706 -0.042606849 0.089705124 ;
	setAttr ".tk[27]" -type "float3" 0.089705124 -0.042606849 0.089705124 ;
	setAttr ".tk[28]" -type "float3" -0.089705124 -0.042606849 0.029901706 ;
	setAttr ".tk[29]" -type "float3" 0.089705124 -0.042606849 0.029901706 ;
	setAttr ".tk[30]" -type "float3" -0.089705124 -0.042606849 -0.029901706 ;
	setAttr ".tk[31]" -type "float3" 0.089705124 -0.042606849 -0.029901706 ;
	setAttr ".tk[32]" -type "float3" -0.089705124 -0.042606849 -0.089705124 ;
	setAttr ".tk[33]" -type "float3" -0.029901706 -0.042606849 -0.089705124 ;
	setAttr ".tk[34]" -type "float3" 0.029901706 -0.042606849 -0.089705124 ;
	setAttr ".tk[35]" -type "float3" 0.089705124 -0.042606849 -0.089705124 ;
	setAttr ".tk[110]" -type "float3" 0.08039064 -0.042606849 -0.089705124 ;
	setAttr ".tk[111]" -type "float3" 0.08039064 -0.042606849 0.089705124 ;
	setAttr ".tk[118]" -type "float3" -0.089705124 -0.042606849 0.081039153 ;
	setAttr ".tk[119]" -type "float3" 0.089705124 -0.042606849 0.081039153 ;
	setAttr ".tk[137]" -type "float3" -0.089705124 -0.042606849 -0.07923577 ;
	setAttr ".tk[138]" -type "float3" 0.089705124 -0.042606849 -0.07923577 ;
	setAttr ".tk[168]" -type "float3" -0.078401484 -0.042606849 -0.089705124 ;
	setAttr ".tk[169]" -type "float3" -0.078401484 -0.042606849 0.089705124 ;
	setAttr ".tk[252]" -type "float3" 7.4505806e-009 8.1490725e-010 7.4505806e-009 ;
	setAttr ".tk[253]" -type "float3" 7.4505806e-009 1.1641532e-010 -1.1175871e-008 ;
	setAttr ".tk[254]" -type "float3" 0 1.1641532e-010 -1.1175871e-008 ;
	setAttr ".tk[255]" -type "float3" 0 1.1641532e-010 -1.1175871e-008 ;
	setAttr ".tk[256]" -type "float3" 1.1175871e-008 1.1641532e-010 -1.1175871e-008 ;
	setAttr ".tk[257]" -type "float3" -7.4505806e-009 8.1490725e-010 7.4505806e-009 ;
	setAttr ".tk[258]" -type "float3" 1.4901161e-008 1.1641532e-010 -7.4505806e-009 ;
	setAttr ".tk[259]" -type "float3" 1.4901161e-008 1.1641532e-010 -3.7252903e-009 ;
	setAttr ".tk[260]" -type "float3" 1.4901161e-008 1.1641532e-010 3.7252903e-009 ;
	setAttr ".tk[261]" -type "float3" 1.4901161e-008 1.1641532e-010 1.1175871e-008 ;
	setAttr ".tk[262]" -type "float3" -7.4505806e-009 8.1490725e-010 -7.4505806e-009 ;
	setAttr ".tk[263]" -type "float3" 7.4505806e-009 1.1641532e-010 1.1175871e-008 ;
	setAttr ".tk[264]" -type "float3" 0 1.1641532e-010 1.1175871e-008 ;
	setAttr ".tk[265]" -type "float3" 0 1.1641532e-010 1.1175871e-008 ;
	setAttr ".tk[266]" -type "float3" 7.4505806e-009 1.1641532e-010 1.1175871e-008 ;
	setAttr ".tk[267]" -type "float3" 7.4505806e-009 8.1490725e-010 -7.4505806e-009 ;
	setAttr ".tk[268]" -type "float3" -3.7252903e-009 1.1641532e-010 1.1175871e-008 ;
	setAttr ".tk[269]" -type "float3" -3.7252903e-009 1.1641532e-010 3.7252903e-009 ;
	setAttr ".tk[270]" -type "float3" -3.7252903e-009 1.1641532e-010 -3.7252903e-009 ;
	setAttr ".tk[271]" -type "float3" -3.7252903e-009 1.1641532e-010 -7.4505806e-009 ;
	setAttr ".tk[276]" -type "float3" 3.7252903e-009 0 -1.1175871e-008 ;
	setAttr ".tk[277]" -type "float3" 0 0 -1.1175871e-008 ;
	setAttr ".tk[278]" -type "float3" 1.6763806e-008 0 -1.1175871e-008 ;
	setAttr ".tk[279]" -type "float3" 1.4901161e-008 0 -1.1175871e-008 ;
	setAttr ".tk[280]" -type "float3" 7.4505806e-009 0 -1.1175871e-008 ;
	setAttr ".tk[281]" -type "float3" 2.2351742e-008 0 1.1175871e-008 ;
	setAttr ".tk[282]" -type "float3" 0 0 1.1175871e-008 ;
	setAttr ".tk[283]" -type "float3" 1.8626451e-009 0 1.1175871e-008 ;
	setAttr ".tk[284]" -type "float3" -1.8626451e-009 0 1.1175871e-008 ;
	setAttr ".tk[285]" -type "float3" -7.4505806e-009 0 1.1175871e-008 ;
	setAttr ".tk[286]" -type "float3" 3.7252903e-009 0 0 ;
	setAttr ".tk[287]" -type "float3" -3.7252903e-009 0 -1.1175871e-008 ;
	setAttr ".tk[288]" -type "float3" -3.7252903e-009 0 0 ;
	setAttr ".tk[289]" -type "float3" 3.7252903e-009 0 -1.8626451e-009 ;
	setAttr ".tk[290]" -type "float3" 3.7252903e-009 0 0 ;
	setAttr ".tk[291]" -type "float3" -3.7252903e-009 0 -1.8626451e-009 ;
	setAttr ".tk[292]" -type "float3" -3.7252903e-009 0 0 ;
	setAttr ".tk[293]" -type "float3" 3.7252903e-009 0 -7.4505806e-009 ;
	setAttr ".tk[294]" -type "float3" -3.7252903e-009 0 -7.4505806e-009 ;
	setAttr ".tk[295]" -type "float3" -3.7252903e-009 0 1.1175871e-008 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge31";
	rename -uid "C5CCA203-4202-7743-52B8-7FA0340E759B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 13 "e[540]" "e[543]" "e[545]" "e[548]" "e[551]" "e[553]" "e[555]" "e[558]" "e[561]" "e[564]" "e[566]" "e[568]" "e[570:577]";
	setAttr ".ix" -type "matrix" 3.0148571149052334 0 0 0 0 3.0148571149052334 0 0 0 0 3.0148571149052334 0
		 28.677180284905518 1.9984881111164796 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 28.677179 3.7501769 0 ;
	setAttr ".rs" 64676;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 26.89930256134636 3.7501767907834873 -1.7778766453622321 ;
	setAttr ".cbx" -type "double3" 30.455055133272875 3.7501767907834873 1.7778766453622321 ;
createNode polyTweak -n "polyTweak33";
	rename -uid "DD5C894A-4753-3888-4C4E-8F843395B8D3";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk[276:295]" -type "float3"  0 0.12362579 0 0 0.12362579
		 0 0 0.12362579 0 0 0.12362579 0 0 0.12362579 0 0 0.12362579 0 0 0.12362579 0 0 0.12362579
		 0 0 0.12362579 0 0 0.12362579 0 0 0.12362579 0 0 0.12362579 0 0 0.12362579 0 0 0.12362579
		 0 0 0.12362579 0 0 0.12362579 0 0 0.12362579 0 0 0.12362579 0 0 0.12362579 0 0 0.12362579
		 0;
createNode polyExtrudeEdge -n "polyExtrudeEdge32";
	rename -uid "3EB072BA-48C3-D459-AE0D-3FA30914D767";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 13 "e[580]" "e[583]" "e[585]" "e[588]" "e[591]" "e[593]" "e[595]" "e[598]" "e[601]" "e[604]" "e[606]" "e[608]" "e[610:617]";
	setAttr ".ix" -type "matrix" 3.0148571149052334 0 0 0 0 3.0148571149052334 0 0 0 0 3.0148571149052334 0
		 28.677180284905518 1.9984881111164796 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 28.677176 3.7501767 0 ;
	setAttr ".rs" 45556;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 27.039899440274418 3.750176611084 -1.6372768912423774 ;
	setAttr ".cbx" -type "double3" 30.314452503961224 3.750176611084 1.6372768912423774 ;
createNode polyTweak -n "polyTweak34";
	rename -uid "8F6D55BD-48D3-C7F1-7EF6-5B91DC3FB04C";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk[296:315]" -type "float3"  0.046635635 0 -0.04663565
		 0.040759031 0 -0.04663565 0.015545188 0 -0.04663565 -0.01554534 0 -0.04663565 -0.041793339
		 0 -0.04663565 0.046635635 0 0.04663565 0.040759031 0 0.04663565 0.015545188 0 0.04663565
		 -0.01554534 0 0.04663565 -0.041793339 0 0.04663565 0.046635635 0 -0.042130399 -0.046635635
		 0 -0.04663565 -0.046635635 0 -0.042130399 0.046635635 0 -0.015545217 0.046635635
		 0 0.015545217 -0.046635635 0 -0.015545217 -0.046635635 0 0.015545217 0.046635635
		 0 0.041192863 -0.046635635 0 0.041192863 -0.046635635 0 0.04663565;
createNode polyCloseBorder -n "polyCloseBorder6";
	rename -uid "F3399867-4276-8D5F-82D3-8588AF304668";
	setAttr ".ics" -type "componentList" 13 "e[620]" "e[623]" "e[625]" "e[628]" "e[631]" "e[633]" "e[635]" "e[638]" "e[641]" "e[644]" "e[646]" "e[648]" "e[650:657]";
createNode polyTweak -n "polyTweak35";
	rename -uid "365358DB-45D1-56A9-A19F-159292BD16D0";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk[316:335]" -type "float3"  0 0.073082194 0 0 0.073082194
		 0 0 0.073082194 0 0 0.073082194 0 0 0.073082194 0 0 0.073082194 0 0 0.073082194 0
		 0 0.073082194 0 0 0.073082194 0 0 0.073082194 0 0 0.073082194 0 0 0.073082194 0 0
		 0.073082194 0 0 0.073082194 0 0 0.073082194 0 0 0.073082194 0 0 0.073082194 0 0 0.073082194
		 0 0 0.073082194 0 0 0.073082194 0;
createNode deleteComponent -n "deleteComponent10";
	rename -uid "977A131C-4294-9D3A-F1AE-41B7ED9BD042";
	setAttr ".dc" -type "componentList" 1 "e[440:459]";
createNode deleteComponent -n "deleteComponent11";
	rename -uid "813A922D-4DD1-9E72-DB9E-5189DA41D31F";
	setAttr ".dc" -type "componentList" 1 "e[400:419]";
createNode polyCube -n "polyCube8";
	rename -uid "06357EE6-4EA7-242D-C6CD-AB9828164A20";
	setAttr ".cuv" 4;
createNode deleteComponent -n "deleteComponent12";
	rename -uid "110E774F-401B-A55F-90F9-F7A0D40EFDDB";
	setAttr ".dc" -type "componentList" 1 "f[192:194]";
createNode deleteComponent -n "deleteComponent13";
	rename -uid "48979CD4-4364-6A42-F074-30A30C646E07";
	setAttr ".dc" -type "componentList" 1 "f[194:196]";
createNode deleteComponent -n "deleteComponent14";
	rename -uid "4FD37CEF-486B-266A-892D-C9B64AC38093";
	setAttr ".dc" -type "componentList" 1 "f[185:187]";
createNode deleteComponent -n "deleteComponent15";
	rename -uid "C6097B1D-4239-C9C3-7E0B-98A741B058FA";
	setAttr ".dc" -type "componentList" 2 "f[27]" "f[97]";
createNode deleteComponent -n "deleteComponent16";
	rename -uid "B19EFC5A-4E49-9E39-C2F5-8F8E6DE73CA5";
	setAttr ".dc" -type "componentList" 2 "f[50:51]" "f[129]";
createNode deleteComponent -n "deleteComponent17";
	rename -uid "3CA5C4D9-4018-E1EF-7FCE-AFA4F848E25D";
	setAttr ".dc" -type "componentList" 2 "f[6:7]" "f[102]";
createNode deleteComponent -n "deleteComponent18";
	rename -uid "21186A76-455D-8DBE-6417-E0A832A46208";
	setAttr ".dc" -type "componentList" 2 "f[64:65]" "f[132]";
createNode deleteComponent -n "deleteComponent19";
	rename -uid "5619BEC1-448B-11B0-6DEC-52BE850DB44E";
	setAttr ".dc" -type "componentList" 2 "f[10:11]" "f[96]";
createNode deleteComponent -n "deleteComponent20";
	rename -uid "A502B816-4039-77E1-1F4B-8197A708C028";
	setAttr ".dc" -type "componentList" 2 "f[66:67]" "f[128]";
createNode deleteComponent -n "deleteComponent21";
	rename -uid "CAD275F6-4106-ED68-1384-2493B64445D7";
	setAttr ".dc" -type "componentList" 2 "f[17:18]" "f[87]";
createNode deleteComponent -n "deleteComponent22";
	rename -uid "33E42BF1-428D-AD46-8C49-34B8C6F75173";
	setAttr ".dc" -type "componentList" 2 "f[48:49]" "f[112]";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "62D711A8-4BA9-8459-D611-F5AEE8A2A5CB";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -327.38093937200267 79.761901592451565 ;
	setAttr ".tgi[0].vh" -type "double2" -171.42856461661233 329.76189165834455 ;
	setAttr ".tgi[0].ni[0].x" -341.42855834960937;
	setAttr ".tgi[0].ni[0].y" 481.42855834960937;
	setAttr ".tgi[0].ni[0].nvs" 1922;
createNode polyExtrudeEdge -n "polyExtrudeEdge33";
	rename -uid "606756F5-4CB3-2FD9-8CC3-C6A0A820CA38";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 13 "e[110:111]" "e[113:114]" "e[116:117]" "e[119:120]" "e[232]" "e[234]" "e[251:254]" "e[269]" "e[271]" "e[424:426]" "e[442]" "e[445]" "e[462:464]";
	setAttr ".ix" -type "matrix" 3.0148571149052334 0 0 0 0 3.0148571149052334 0 0 0 0 3.0148571149052334 0
		 28.677180284905518 1.9984881111164796 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 29.981714 1.9923377 0.012706416 ;
	setAttr ".rs" 60901;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 29.981715182740217 1.0242067281881861 -1.1165801058516058 ;
	setAttr ".cbx" -type "double3" 29.981715182740217 2.9604687047344673 1.141992937808006 ;
createNode polyTweak -n "polyTweak36";
	rename -uid "EF76F2DE-4571-72FD-8043-B18EDFF1F95E";
	setAttr ".uopa" yes;
	setAttr -s 120 ".tk";
	setAttr ".tk[4]" -type "float3" 0 0.20538612 0 ;
	setAttr ".tk[5]" -type "float3" 0 0.20538612 0 ;
	setAttr ".tk[6]" -type "float3" 0 0.20538612 0 ;
	setAttr ".tk[7]" -type "float3" 0 0.20538612 0 ;
	setAttr ".tk[8]" -type "float3" 0 0.16746005 0 ;
	setAttr ".tk[9]" -type "float3" 0 0.16746005 0 ;
	setAttr ".tk[10]" -type "float3" 0 0.16746005 0 ;
	setAttr ".tk[11]" -type "float3" 0 0.16746005 0 ;
	setAttr ".tk[12]" -type "float3" 0 0.10852517 0 ;
	setAttr ".tk[13]" -type "float3" 0 0.10852517 0 ;
	setAttr ".tk[14]" -type "float3" 0 0.10852517 0 ;
	setAttr ".tk[15]" -type "float3" 0 0.10852517 0 ;
	setAttr ".tk[16]" -type "float3" 0 0.064894944 0 ;
	setAttr ".tk[17]" -type "float3" 0 0.064894944 0 ;
	setAttr ".tk[18]" -type "float3" 0 0.064894944 0 ;
	setAttr ".tk[19]" -type "float3" 0 0.064894944 0 ;
	setAttr ".tk[40]" -type "float3" 0 0.064894944 0 ;
	setAttr ".tk[41]" -type "float3" 0 0.064894944 0 ;
	setAttr ".tk[42]" -type "float3" 0 0.064894944 0 ;
	setAttr ".tk[43]" -type "float3" 0 0.064894944 0 ;
	setAttr ".tk[44]" -type "float3" 0 0.10852517 0 ;
	setAttr ".tk[45]" -type "float3" 0 0.10852517 0 ;
	setAttr ".tk[46]" -type "float3" 0 0.10852517 0 ;
	setAttr ".tk[47]" -type "float3" 0 0.10852517 0 ;
	setAttr ".tk[48]" -type "float3" 0 0.16746005 0 ;
	setAttr ".tk[49]" -type "float3" 0 0.16746005 0 ;
	setAttr ".tk[50]" -type "float3" 0 0.16746005 0 ;
	setAttr ".tk[51]" -type "float3" 0 0.16746005 0 ;
	setAttr ".tk[52]" -type "float3" 0 0.20538612 0 ;
	setAttr ".tk[53]" -type "float3" 0 0.20538612 0 ;
	setAttr ".tk[54]" -type "float3" 0 0.20538612 0 ;
	setAttr ".tk[55]" -type "float3" 0 0.20538612 0 ;
	setAttr ".tk[68]" -type "float3" 0 0.20538612 0 ;
	setAttr ".tk[69]" -type "float3" 0 0.20538612 0 ;
	setAttr ".tk[70]" -type "float3" 0 0.16746005 0 ;
	setAttr ".tk[71]" -type "float3" 0 0.16746005 0 ;
	setAttr ".tk[72]" -type "float3" 0 0.10852517 0 ;
	setAttr ".tk[73]" -type "float3" 0 0.10852517 0 ;
	setAttr ".tk[74]" -type "float3" 0 0.064894944 0 ;
	setAttr ".tk[75]" -type "float3" 0 0.064894944 0 ;
	setAttr ".tk[78]" -type "float3" 0 0.20538612 0 ;
	setAttr ".tk[79]" -type "float3" 0 0.20538612 0 ;
	setAttr ".tk[80]" -type "float3" 0 0.16746005 0 ;
	setAttr ".tk[81]" -type "float3" 0 0.16746005 0 ;
	setAttr ".tk[82]" -type "float3" 0 0.10852517 0 ;
	setAttr ".tk[83]" -type "float3" 0 0.10852517 0 ;
	setAttr ".tk[84]" -type "float3" 0 0.064894944 0 ;
	setAttr ".tk[85]" -type "float3" 0 0.064894944 0 ;
	setAttr ".tk[104]" -type "float3" 0 0.20538612 0 ;
	setAttr ".tk[105]" -type "float3" 0 0.16746005 0 ;
	setAttr ".tk[106]" -type "float3" 0 0.10852517 0 ;
	setAttr ".tk[107]" -type "float3" 0 0.064894944 0 ;
	setAttr ".tk[114]" -type "float3" 0 0.064894944 0 ;
	setAttr ".tk[115]" -type "float3" 0 0.10852517 0 ;
	setAttr ".tk[116]" -type "float3" 0 0.16746005 0 ;
	setAttr ".tk[117]" -type "float3" 0 0.20538612 0 ;
	setAttr ".tk[122]" -type "float3" 0 0.064894944 0 ;
	setAttr ".tk[123]" -type "float3" 0 0.10852517 0 ;
	setAttr ".tk[124]" -type "float3" 0 0.16746005 0 ;
	setAttr ".tk[125]" -type "float3" 0 0.20538612 0 ;
	setAttr ".tk[131]" -type "float3" 0 0.20538612 0 ;
	setAttr ".tk[132]" -type "float3" 0 0.16746005 0 ;
	setAttr ".tk[133]" -type "float3" 0 0.10852517 0 ;
	setAttr ".tk[134]" -type "float3" 0 0.064894944 0 ;
	setAttr ".tk[141]" -type "float3" 0 0.064894944 0 ;
	setAttr ".tk[142]" -type "float3" 0 0.10852517 0 ;
	setAttr ".tk[143]" -type "float3" 0 0.16746005 0 ;
	setAttr ".tk[144]" -type "float3" 0 0.20538612 0 ;
	setAttr ".tk[150]" -type "float3" 0 0.20538612 0 ;
	setAttr ".tk[151]" -type "float3" 0 0.16746005 0 ;
	setAttr ".tk[152]" -type "float3" 0 0.10852517 0 ;
	setAttr ".tk[153]" -type "float3" 0 0.064894944 0 ;
	setAttr ".tk[162]" -type "float3" 0 0.20538612 0 ;
	setAttr ".tk[163]" -type "float3" 0 0.16746005 0 ;
	setAttr ".tk[164]" -type "float3" 0 0.10852517 0 ;
	setAttr ".tk[165]" -type "float3" 0 0.064894944 0 ;
	setAttr ".tk[172]" -type "float3" 0 0.064894944 0 ;
	setAttr ".tk[173]" -type "float3" 0 0.10852517 0 ;
	setAttr ".tk[174]" -type "float3" 0 0.16746005 0 ;
	setAttr ".tk[175]" -type "float3" 0 0.20538612 0 ;
	setAttr ".tk[236]" -type "float3" 0 0.071974173 0 ;
	setAttr ".tk[237]" -type "float3" 0 0.071974173 0 ;
	setAttr ".tk[238]" -type "float3" 0 0.071974173 0 ;
	setAttr ".tk[239]" -type "float3" 0 0.071974173 0 ;
	setAttr ".tk[240]" -type "float3" 0 0.071974173 0 ;
	setAttr ".tk[241]" -type "float3" 0 0.071974173 0 ;
	setAttr ".tk[242]" -type "float3" 0 0.071974203 0 ;
	setAttr ".tk[243]" -type "float3" 0 0.071974173 0 ;
	setAttr ".tk[244]" -type "float3" 0 0.071974173 0 ;
	setAttr ".tk[245]" -type "float3" 0 0.071974173 0 ;
	setAttr ".tk[246]" -type "float3" 0 0.071974173 0 ;
	setAttr ".tk[247]" -type "float3" 0 0.071974173 0 ;
	setAttr ".tk[248]" -type "float3" 0 0.071974173 0 ;
	setAttr ".tk[249]" -type "float3" 0 0.071974173 0 ;
	setAttr ".tk[250]" -type "float3" 0 0.071974173 0 ;
	setAttr ".tk[251]" -type "float3" 0 0.071974173 0 ;
	setAttr ".tk[252]" -type "float3" 0 0.071974173 0 ;
	setAttr ".tk[253]" -type "float3" 0 0.071974173 0 ;
	setAttr ".tk[254]" -type "float3" 0 0.071974173 0 ;
	setAttr ".tk[255]" -type "float3" 0 0.071974173 0 ;
	setAttr ".tk[256]" -type "float3" 0 0.14420652 0 ;
	setAttr ".tk[257]" -type "float3" 0 0.14420652 0 ;
	setAttr ".tk[258]" -type "float3" 0 0.14420652 0 ;
	setAttr ".tk[259]" -type "float3" 0 0.14420652 0 ;
	setAttr ".tk[260]" -type "float3" 0 0.14420652 0 ;
	setAttr ".tk[261]" -type "float3" 0 0.14420652 0 ;
	setAttr ".tk[262]" -type "float3" 0 0.14420652 0 ;
	setAttr ".tk[263]" -type "float3" 0 0.14420652 0 ;
	setAttr ".tk[264]" -type "float3" 0 0.14420652 0 ;
	setAttr ".tk[265]" -type "float3" 0 0.14420652 0 ;
	setAttr ".tk[266]" -type "float3" 0 0.14420652 0 ;
	setAttr ".tk[267]" -type "float3" 0 0.14420652 0 ;
	setAttr ".tk[268]" -type "float3" 0 0.14420652 0 ;
	setAttr ".tk[269]" -type "float3" 0 0.14420652 0 ;
	setAttr ".tk[270]" -type "float3" 0 0.14420652 0 ;
	setAttr ".tk[271]" -type "float3" 0 0.14420652 0 ;
	setAttr ".tk[272]" -type "float3" 0 0.14420652 0 ;
	setAttr ".tk[273]" -type "float3" 0 0.14420652 0 ;
	setAttr ".tk[274]" -type "float3" 0 0.14420652 0 ;
	setAttr ".tk[275]" -type "float3" 0 0.14420652 0 ;
createNode polyCloseBorder -n "polyCloseBorder7";
	rename -uid "980B968A-4236-378E-B9B1-018CBF541708";
	setAttr ".ics" -type "componentList" 19 "e[598]" "e[600]" "e[603]" "e[605]" "e[608]" "e[610]" "e[613]" "e[615:617]" "e[619]" "e[621]" "e[623]" "e[625:627]" "e[630]" "e[632]" "e[634]" "e[636]" "e[638]" "e[640]" "e[642:643]";
createNode polyTweak -n "polyTweak37";
	rename -uid "22065F8A-40A3-9049-81ED-13AA79E2155C";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk[336:359]" -type "float3"  0.1042228 -7.2858386e-017
		 0 0.1042228 -7.2858386e-017 0 0.1042228 -7.2858386e-017 0 0.1042228 -6.9388939e-017
		 0 0.1042228 -6.9388939e-017 0 0.1042228 -6.9388939e-017 0 0.1042228 -8.3266727e-017
		 0 0.1042228 -8.3266727e-017 0 0.1042228 -8.3266727e-017 0 0.1042228 -5.5511151e-017
		 0 0.1042228 -5.5511151e-017 0 0.1042228 -5.5511151e-017 0 0.1042228 -5.5511151e-017
		 0 0.1042228 -8.3266727e-017 0 0.1042228 -6.9388939e-017 0 0.1042228 -7.2858386e-017
		 0 0.1042228 -5.5511151e-017 0 0.1042228 -5.5511151e-017 0 0.1042228 -5.5511151e-017
		 0 0.1042228 -5.5511151e-017 0 0.1042228 -8.3266727e-017 0 0.1042228 -8.3266727e-017
		 0 0.1042228 -8.3266727e-017 0 0.1042228 -8.3266727e-017 0;
createNode polyExtrudeEdge -n "polyExtrudeEdge34";
	rename -uid "33856A09-409D-55DB-1E44-A0B6F7622659";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[133:134]" "e[136:137]" "e[139:140]" "e[142:143]" "e[243]" "e[245]" "e[262:265]" "e[280]" "e[282]" "e[416:417]" "e[434:436]" "e[472:474]";
	setAttr ".ix" -type "matrix" 3.0148571149052334 0 0 0 0 3.0148571149052334 0 0 0 0 3.0148571149052334 0
		 28.677180284905518 1.9984881111164796 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 27.372631 1.9923376 0.012706416 ;
	setAttr ".rs" 41201;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 27.372631011111828 1.0242065484886989 -1.1165801058516058 ;
	setAttr ".cbx" -type "double3" 27.372631011111828 2.9604687047344673 1.141992937808006 ;
createNode polyCloseBorder -n "polyCloseBorder8";
	rename -uid "388DFB95-4EC1-ED95-7227-58A384DC690B";
	setAttr ".ics" -type "componentList" 18 "e[646]" "e[648]" "e[651]" "e[653]" "e[656]" "e[658]" "e[661]" "e[663:665]" "e[667]" "e[669]" "e[671]" "e[673:675]" "e[678]" "e[681]" "e[683]" "e[685:686]" "e[688]" "e[690:691]";
createNode polyTweak -n "polyTweak38";
	rename -uid "E5283924-4D13-982D-0858-C1AEAFEA5C00";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk[360:383]" -type "float3"  -0.09555801 -7.2858386e-017
		 0 -0.09555801 -7.2858386e-017 0 -0.09555801 -7.2858386e-017 0 -0.09555801 -6.9388939e-017
		 0 -0.09555801 -6.9388939e-017 0 -0.09555801 -6.9388939e-017 0 -0.09555801 -8.3266727e-017
		 0 -0.09555801 -8.3266727e-017 0 -0.09555801 -8.3266727e-017 0 -0.09555801 -5.5511151e-017
		 0 -0.09555801 -5.5511151e-017 0 -0.09555801 -5.5511151e-017 0 -0.09555801 -7.2858386e-017
		 0 -0.09555801 -6.9388939e-017 0 -0.09555801 -8.3266727e-017 0 -0.09555801 -5.5511151e-017
		 0 -0.09555801 -5.5511151e-017 0 -0.09555801 -8.3266727e-017 0 -0.09555801 -5.5511151e-017
		 0 -0.09555801 -8.3266727e-017 0 -0.09555801 -5.5511151e-017 0 -0.09555801 -5.5511151e-017
		 0 -0.09555801 -8.3266727e-017 0 -0.09555801 -8.3266727e-017 0;
createNode polySplit -n "polySplit24";
	rename -uid "4B756DCE-46FF-18EA-9178-C0B211598C7C";
	setAttr -s 5 ".e[0:4]"  0.31311101 0.31311101 0.31311101 0.31311101
		 0.31311101;
	setAttr -s 5 ".d[0:4]"  -2147483648 -2147483645 -2147483646 -2147483647 -2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit25";
	rename -uid "D3BCC634-463C-2DDD-9BF0-37AD3049800D";
	setAttr -s 5 ".e[0:4]"  0.55685002 0.55685002 0.55685002 0.55685002
		 0.55685002;
	setAttr -s 5 ".d[0:4]"  -2147483636 -2147483633 -2147483634 -2147483635 -2147483636;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit26";
	rename -uid "DF846CE8-48F0-7752-72DA-7C8A5134A99F";
	setAttr -s 5 ".e[0:4]"  0.064515203 0.064515203 0.064515203 0.064515203
		 0.064515203;
	setAttr -s 5 ".d[0:4]"  -2147483636 -2147483635 -2147483634 -2147483633 -2147483636;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit27";
	rename -uid "ADD3C965-498C-F77C-714A-4AA07648B8AF";
	setAttr -s 5 ".e[0:4]"  0.93472397 0.93472397 0.93472397 0.93472397
		 0.93472397;
	setAttr -s 5 ".d[0:4]"  -2147483620 -2147483617 -2147483618 -2147483619 -2147483620;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyCube -n "polyCube9";
	rename -uid "FB17121A-4C94-D5E7-6081-F7B05F05534F";
	setAttr ".sw" 5;
	setAttr ".sh" 5;
	setAttr ".sd" 5;
	setAttr ".cuv" 4;
createNode polyTweak -n "polyTweak39";
	rename -uid "EE566FE1-4B0B-B4E9-904A-C5B521E79022";
	setAttr ".uopa" yes;
	setAttr -s 144 ".tk";
	setAttr ".tk[1]" -type "float3" -0.14311939 0 0 ;
	setAttr ".tk[2]" -type "float3" -0.28757036 0 0 ;
	setAttr ".tk[3]" -type "float3" 0.27700949 0 0 ;
	setAttr ".tk[4]" -type "float3" 0.13661818 0 0 ;
	setAttr ".tk[6]" -type "float3" 0 -0.088419892 0 ;
	setAttr ".tk[7]" -type "float3" -0.14311939 -0.088419892 0 ;
	setAttr ".tk[8]" -type "float3" -0.28757036 -0.088419892 0 ;
	setAttr ".tk[9]" -type "float3" 0.27700949 -0.088419892 0 ;
	setAttr ".tk[10]" -type "float3" 0.13661818 -0.088419892 0 ;
	setAttr ".tk[11]" -type "float3" 0 -0.088419892 0 ;
	setAttr ".tk[12]" -type "float3" 0 -0.16911204 0 ;
	setAttr ".tk[13]" -type "float3" -0.14311939 -0.16911204 0 ;
	setAttr ".tk[14]" -type "float3" -0.28757036 -0.16911204 0 ;
	setAttr ".tk[15]" -type "float3" 0.27700949 -0.16911204 0 ;
	setAttr ".tk[16]" -type "float3" 0.13661818 -0.16911204 0 ;
	setAttr ".tk[17]" -type "float3" 0 -0.16911204 0 ;
	setAttr ".tk[18]" -type "float3" 0 0.18744913 0 ;
	setAttr ".tk[19]" -type "float3" -0.14311939 0.18744913 0 ;
	setAttr ".tk[20]" -type "float3" -0.28757036 0.18744913 0 ;
	setAttr ".tk[21]" -type "float3" 0.27700949 0.18744913 0 ;
	setAttr ".tk[22]" -type "float3" 0.13661818 0.18744913 0 ;
	setAttr ".tk[23]" -type "float3" 0 0.18744913 0 ;
	setAttr ".tk[24]" -type "float3" 0 0.093006827 0 ;
	setAttr ".tk[25]" -type "float3" -0.14311939 0.093006827 0 ;
	setAttr ".tk[26]" -type "float3" -0.28757036 0.093006827 0 ;
	setAttr ".tk[27]" -type "float3" 0.27700949 0.093006827 0 ;
	setAttr ".tk[28]" -type "float3" 0.13661818 0.093006827 0 ;
	setAttr ".tk[29]" -type "float3" 0 0.093006827 0 ;
	setAttr ".tk[31]" -type "float3" -0.14311939 0 0 ;
	setAttr ".tk[32]" -type "float3" -0.28757036 0 0 ;
	setAttr ".tk[33]" -type "float3" 0.27700949 0 0 ;
	setAttr ".tk[34]" -type "float3" 0.13661818 0 0 ;
	setAttr ".tk[36]" -type "float3" 0 0 0.090085737 ;
	setAttr ".tk[37]" -type "float3" -0.14311939 0 0.090085737 ;
	setAttr ".tk[38]" -type "float3" -0.28757036 0 0.090085737 ;
	setAttr ".tk[39]" -type "float3" 0.27700949 0 0.090085737 ;
	setAttr ".tk[40]" -type "float3" 0.13661818 0 0.090085737 ;
	setAttr ".tk[41]" -type "float3" 0 0 0.090085737 ;
	setAttr ".tk[42]" -type "float3" 0 0 0.18641485 ;
	setAttr ".tk[43]" -type "float3" -0.14311939 0 0.18641485 ;
	setAttr ".tk[44]" -type "float3" -0.28757036 0 0.18641485 ;
	setAttr ".tk[45]" -type "float3" 0.27700949 0 0.18641485 ;
	setAttr ".tk[46]" -type "float3" 0.13661818 0 0.18641485 ;
	setAttr ".tk[47]" -type "float3" 0 0 0.18641485 ;
	setAttr ".tk[48]" -type "float3" 0 0 -0.17419806 ;
	setAttr ".tk[49]" -type "float3" -0.14311939 0 -0.17419806 ;
	setAttr ".tk[50]" -type "float3" -0.28757036 0 -0.17419806 ;
	setAttr ".tk[51]" -type "float3" 0.27700949 0 -0.17419806 ;
	setAttr ".tk[52]" -type "float3" 0.13661818 0 -0.17419806 ;
	setAttr ".tk[53]" -type "float3" 0 0 -0.17419806 ;
	setAttr ".tk[54]" -type "float3" 0 0 -0.079190679 ;
	setAttr ".tk[55]" -type "float3" -0.14311939 0 -0.079190679 ;
	setAttr ".tk[56]" -type "float3" -0.28757036 0 -0.079190679 ;
	setAttr ".tk[57]" -type "float3" 0.27700949 0 -0.079190679 ;
	setAttr ".tk[58]" -type "float3" 0.13661818 0 -0.079190679 ;
	setAttr ".tk[59]" -type "float3" 0 0 -0.079190679 ;
	setAttr ".tk[61]" -type "float3" -0.14311939 0 0 ;
	setAttr ".tk[62]" -type "float3" -0.28757036 0 0 ;
	setAttr ".tk[63]" -type "float3" 0.27700949 0 0 ;
	setAttr ".tk[64]" -type "float3" 0.13661818 0 0 ;
	setAttr ".tk[66]" -type "float3" 0 0.093006827 0 ;
	setAttr ".tk[67]" -type "float3" -0.14311939 0.093006827 0 ;
	setAttr ".tk[68]" -type "float3" -0.28757036 0.093006827 0 ;
	setAttr ".tk[69]" -type "float3" 0.27700949 0.093006827 0 ;
	setAttr ".tk[70]" -type "float3" 0.13661818 0.093006827 0 ;
	setAttr ".tk[71]" -type "float3" 0 0.093006827 0 ;
	setAttr ".tk[72]" -type "float3" 0 0.18744913 0 ;
	setAttr ".tk[73]" -type "float3" -0.14311939 0.18744913 0 ;
	setAttr ".tk[74]" -type "float3" -0.28757036 0.18744913 0 ;
	setAttr ".tk[75]" -type "float3" 0.27700949 0.18744913 0 ;
	setAttr ".tk[76]" -type "float3" 0.13661818 0.18744913 0 ;
	setAttr ".tk[77]" -type "float3" 0 0.18744913 0 ;
	setAttr ".tk[78]" -type "float3" 0 -0.16911204 0 ;
	setAttr ".tk[79]" -type "float3" -0.14311939 -0.16911204 0 ;
	setAttr ".tk[80]" -type "float3" -0.28757036 -0.16911204 0 ;
	setAttr ".tk[81]" -type "float3" 0.27700949 -0.16911204 0 ;
	setAttr ".tk[82]" -type "float3" 0.13661818 -0.16911204 0 ;
	setAttr ".tk[83]" -type "float3" 0 -0.16911204 0 ;
	setAttr ".tk[84]" -type "float3" 0 -0.088419892 0 ;
	setAttr ".tk[85]" -type "float3" -0.14311939 -0.088419892 0 ;
	setAttr ".tk[86]" -type "float3" -0.28757036 -0.088419892 0 ;
	setAttr ".tk[87]" -type "float3" 0.27700949 -0.088419892 0 ;
	setAttr ".tk[88]" -type "float3" 0.13661818 -0.088419892 0 ;
	setAttr ".tk[89]" -type "float3" 0 -0.088419892 0 ;
	setAttr ".tk[91]" -type "float3" -0.14311939 0 0 ;
	setAttr ".tk[92]" -type "float3" -0.28757036 0 0 ;
	setAttr ".tk[93]" -type "float3" 0.27700949 0 0 ;
	setAttr ".tk[94]" -type "float3" 0.13661818 0 0 ;
	setAttr ".tk[96]" -type "float3" 0 0 -0.079190679 ;
	setAttr ".tk[97]" -type "float3" 0 0 -0.079190679 ;
	setAttr ".tk[98]" -type "float3" 0 0 -0.079190679 ;
	setAttr ".tk[99]" -type "float3" 0 0 -0.079190679 ;
	setAttr ".tk[100]" -type "float3" 0 0 -0.079190679 ;
	setAttr ".tk[101]" -type "float3" 0 0 -0.079190679 ;
	setAttr ".tk[102]" -type "float3" 0 0 -0.17419806 ;
	setAttr ".tk[103]" -type "float3" 0 0 -0.17419806 ;
	setAttr ".tk[104]" -type "float3" 0 0 -0.17419806 ;
	setAttr ".tk[105]" -type "float3" 0 0 -0.17419806 ;
	setAttr ".tk[106]" -type "float3" 0 0 -0.17419806 ;
	setAttr ".tk[107]" -type "float3" 0 0 -0.17419806 ;
	setAttr ".tk[108]" -type "float3" 0 0 0.18641485 ;
	setAttr ".tk[109]" -type "float3" 0 0 0.18641485 ;
	setAttr ".tk[110]" -type "float3" 0 0 0.18641485 ;
	setAttr ".tk[111]" -type "float3" 0 0 0.18641485 ;
	setAttr ".tk[112]" -type "float3" 0 0 0.18641485 ;
	setAttr ".tk[113]" -type "float3" 0 0 0.18641485 ;
	setAttr ".tk[114]" -type "float3" 0 0 0.090085737 ;
	setAttr ".tk[115]" -type "float3" 0 0 0.090085737 ;
	setAttr ".tk[116]" -type "float3" 0 0 0.090085737 ;
	setAttr ".tk[117]" -type "float3" 0 0 0.090085737 ;
	setAttr ".tk[118]" -type "float3" 0 0 0.090085737 ;
	setAttr ".tk[119]" -type "float3" 0 0 0.090085737 ;
	setAttr ".tk[120]" -type "float3" 0 -0.088419892 -0.079190679 ;
	setAttr ".tk[121]" -type "float3" 0 -0.088419892 -0.17419806 ;
	setAttr ".tk[122]" -type "float3" 0 -0.088419892 0.18641485 ;
	setAttr ".tk[123]" -type "float3" 0 -0.088419892 0.090085737 ;
	setAttr ".tk[124]" -type "float3" 0 -0.16911204 -0.079190679 ;
	setAttr ".tk[125]" -type "float3" 0 -0.16911204 -0.17419806 ;
	setAttr ".tk[126]" -type "float3" 0 -0.16911204 0.18641485 ;
	setAttr ".tk[127]" -type "float3" 0 -0.16911204 0.090085737 ;
	setAttr ".tk[128]" -type "float3" 0 0.18744913 -0.079190679 ;
	setAttr ".tk[129]" -type "float3" 0 0.18744913 -0.17419806 ;
	setAttr ".tk[130]" -type "float3" 0 0.18744913 0.18641485 ;
	setAttr ".tk[131]" -type "float3" 0 0.18744913 0.090085737 ;
	setAttr ".tk[132]" -type "float3" 0 0.093006827 -0.079190679 ;
	setAttr ".tk[133]" -type "float3" 0 0.093006827 -0.17419806 ;
	setAttr ".tk[134]" -type "float3" 0 0.093006827 0.18641485 ;
	setAttr ".tk[135]" -type "float3" 0 0.093006827 0.090085737 ;
	setAttr ".tk[136]" -type "float3" 0 -0.088419892 -0.079190679 ;
	setAttr ".tk[137]" -type "float3" 0 -0.088419892 -0.17419806 ;
	setAttr ".tk[138]" -type "float3" 0 -0.088419892 0.18641485 ;
	setAttr ".tk[139]" -type "float3" 0 -0.088419892 0.090085737 ;
	setAttr ".tk[140]" -type "float3" 0 -0.16911204 -0.079190679 ;
	setAttr ".tk[141]" -type "float3" 0 -0.16911204 -0.17419806 ;
	setAttr ".tk[142]" -type "float3" 0 -0.16911204 0.18641485 ;
	setAttr ".tk[143]" -type "float3" 0 -0.16911204 0.090085737 ;
	setAttr ".tk[144]" -type "float3" 0 0.18744913 -0.079190679 ;
	setAttr ".tk[145]" -type "float3" 0 0.18744913 -0.17419806 ;
	setAttr ".tk[146]" -type "float3" 0 0.18744913 0.18641485 ;
	setAttr ".tk[147]" -type "float3" 0 0.18744913 0.090085737 ;
	setAttr ".tk[148]" -type "float3" 0 0.093006827 -0.079190679 ;
	setAttr ".tk[149]" -type "float3" 0 0.093006827 -0.17419806 ;
	setAttr ".tk[150]" -type "float3" 0 0.093006827 0.18641485 ;
	setAttr ".tk[151]" -type "float3" 0 0.093006827 0.090085737 ;
createNode deleteComponent -n "deleteComponent23";
	rename -uid "D99C12D6-4617-9DAF-9B0C-208A6A9AD625";
	setAttr ".dc" -type "componentList" 1 "f[137]";
createNode deleteComponent -n "deleteComponent24";
	rename -uid "D6A3A059-4AC6-D5DB-E050-B2B5553EA014";
	setAttr ".dc" -type "componentList" 1 "f[12]";
createNode deleteComponent -n "deleteComponent25";
	rename -uid "631438B0-4696-E4AF-23F3-7189ADC7623A";
	setAttr ".dc" -type "componentList" 1 "f[61]";
createNode deleteComponent -n "deleteComponent26";
	rename -uid "CCCE86CE-479E-5C58-5E79-8BBFC50E9FD3";
	setAttr ".dc" -type "componentList" 1 "f[110]";
createNode deleteComponent -n "deleteComponent27";
	rename -uid "67BE718C-4C9D-CBDB-9274-3B9B99466386";
	setAttr ".dc" -type "componentList" 1 "f[138]";
createNode deleteComponent -n "deleteComponent28";
	rename -uid "63F005B7-4301-01EE-0DA4-1D8C88C4F1D6";
	setAttr ".dc" -type "componentList" 1 "f[137]";
createNode deleteComponent -n "deleteComponent29";
	rename -uid "EAC87630-417F-CDA5-EB4E-FBAD1CE5CE61";
	setAttr ".dc" -type "componentList" 1 "f[133]";
createNode deleteComponent -n "deleteComponent30";
	rename -uid "6E22507E-4FB7-03EC-0138-A182129D83EF";
	setAttr ".dc" -type "componentList" 1 "f[136]";
createNode deleteComponent -n "deleteComponent31";
	rename -uid "DCA30D69-450B-8277-6E56-0F8B8E626BBA";
	setAttr ".dc" -type "componentList" 1 "f[133]";
createNode deleteComponent -n "deleteComponent32";
	rename -uid "DB03863E-433D-BBA6-F60E-67AE94079866";
	setAttr ".dc" -type "componentList" 1 "f[130]";
createNode deleteComponent -n "deleteComponent33";
	rename -uid "56FD36DA-46A6-6B21-938C-BB8C1BA2F7BC";
	setAttr ".dc" -type "componentList" 1 "f[129]";
createNode deleteComponent -n "deleteComponent34";
	rename -uid "EDD6146E-4D8F-CA45-E0CE-26B3051BC53A";
	setAttr ".dc" -type "componentList" 1 "f[128]";
createNode deleteComponent -n "deleteComponent35";
	rename -uid "21225438-470F-2154-B1DF-3F9F6405FE2A";
	setAttr ".dc" -type "componentList" 11 "f[6:8]" "f[11:12]" "f[15:17]" "f[35:36]" "f[55:57]" "f[60:61]" "f[64:66]" "f[73:97]" "f[104:106]" "f[109:110]" "f[113:115]";
createNode polyCloseBorder -n "polyCloseBorder9";
	rename -uid "7E6E2C78-4849-CAC3-672B-4DA36BD121B8";
	setAttr ".ics" -type "componentList" 3 "e[0:4]" "e[63:67]" "e[145:154]";
createNode polyAppend -n "polyAppend1";
	rename -uid "F99ECA46-425C-B6D7-B322-F99168B51DFB";
	setAttr -s 2 ".d[0:1]"  -2147483612 -2147483597;
	setAttr ".tx" 1;
createNode polyAppend -n "polyAppend2";
	rename -uid "F78083F0-4523-2827-CE78-05A84D26A94B";
	setAttr -s 3 ".d[0:2]"  -2147483613 -2147483598 -2147483437;
	setAttr ".tx" 1;
createNode polySplit -n "polySplit28";
	rename -uid "92109BC8-489C-A37D-78DA-5BBB06EB01B4";
	setAttr -s 3 ".e[0:2]"  0.50744998 0.50744998 0.49254999;
	setAttr -s 3 ".d[0:2]"  -2147483435 -2147483437 -2147483436;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak40";
	rename -uid "CAA5DA22-4FB5-8EBD-8319-6899C6516E1D";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk[120:122]" -type "float3"  0 -0.055860139 0.11738279
		 0 -0.055860139 0.11738279 0 -0.055860139 0.11738279;
createNode deleteComponent -n "deleteComponent36";
	rename -uid "EC974680-4636-423C-5880-BAB7FA104D2E";
	setAttr ".dc" -type "componentList" 1 "f[27]";
createNode polyAppend -n "polyAppend3";
	rename -uid "0364205F-45D2-D9D3-7EEA-5CADBBE2011C";
	setAttr -s 2 ".d[0:1]"  -2147483632 -2147483617;
	setAttr ".tx" 1;
createNode polyTweak -n "polyTweak41";
	rename -uid "68954CE1-483B-91B0-5515-D999DE293589";
	setAttr ".uopa" yes;
	setAttr -s 15 ".tk";
	setAttr ".tk[45]" -type "float3" 3.7252903e-009 0 0 ;
	setAttr ".tk[46]" -type "float3" 1.4901161e-008 0 0 ;
	setAttr ".tk[47]" -type "float3" 0.12283397 0 0 ;
	setAttr ".tk[51]" -type "float3" 3.7252903e-009 0 0 ;
	setAttr ".tk[52]" -type "float3" 1.4901161e-008 0 0 ;
	setAttr ".tk[53]" -type "float3" 0.12283397 0 0 ;
	setAttr ".tk[57]" -type "float3" 3.7252903e-009 0 0 ;
	setAttr ".tk[58]" -type "float3" 1.4901161e-008 0 0 ;
	setAttr ".tk[59]" -type "float3" 0.12283397 0 0 ;
	setAttr ".tk[63]" -type "float3" 3.7252903e-009 0 0 ;
	setAttr ".tk[64]" -type "float3" 1.4901161e-008 0 0 ;
	setAttr ".tk[65]" -type "float3" 0.12283397 0 0 ;
	setAttr ".tk[120]" -type "float3" 3.7252903e-009 0 0 ;
	setAttr ".tk[121]" -type "float3" 1.4901161e-008 0 0 ;
	setAttr ".tk[122]" -type "float3" 0.12283397 0 0 ;
createNode polyAppend -n "polyAppend4";
	rename -uid "07C503A6-44EB-3D2D-7C2E-4F99273D862F";
	setAttr -s 3 ".d[0:2]"  -2147483616 -2147483631 -2147483429;
	setAttr ".tx" 1;
createNode polyAppend -n "polyAppend5";
	rename -uid "EC34D1FA-485E-380D-0B9D-EE82D9F995AD";
	setAttr -s 2 ".d[0:1]"  -2147483542 -2147483483;
	setAttr ".tx" 1;
createNode polyAppend -n "polyAppend6";
	rename -uid "2031F0EB-4F5E-5BC0-2970-12A2AFA0542D";
	setAttr -s 2 ".d[0:1]"  -2147483516 -2147483474;
	setAttr ".tx" 1;
createNode polyAppend -n "polyAppend7";
	rename -uid "F2A86E83-49C5-0CED-2D2B-3D9C40D59A65";
	setAttr -s 3 ".d[0:2]"  -2147483512 -2147483476 -2147483425;
	setAttr ".tx" 1;
createNode polyAppend -n "polyAppend8";
	rename -uid "F146AEFF-4A2A-8944-8B16-26A895AAD24A";
	setAttr -s 3 ".d[0:2]"  -2147483520 -2147483424 -2147483472;
	setAttr ".tx" 1;
createNode polyAppend -n "polyAppend9";
	rename -uid "6EF00DAD-45C7-6325-8E43-39B0C6149E72";
	setAttr -s 3 ".d[0:2]"  -2147483633 -2147483618 -2147483430;
	setAttr ".tx" 1;
createNode polyAppend -n "polyAppend10";
	rename -uid "0A5BFD19-4BFB-95E2-15B4-B9B6238AD97D";
	setAttr -s 2 ".d[0:1]"  -2147483569 -2147483445;
	setAttr ".tx" 1;
createNode polyAppend -n "polyAppend11";
	rename -uid "C2AC3C92-4D50-FE61-79C6-7AAF5E2DC340";
	setAttr -s 3 ".d[0:2]"  -2147483565 -2147483419 -2147483443;
	setAttr ".tx" 1;
createNode polyAppend -n "polyAppend12";
	rename -uid "D649AD8F-45BE-F5D5-18DD-B6BABA92EE82";
	setAttr -s 3 ".d[0:2]"  -2147483573 -2147483447 -2147483420;
	setAttr ".tx" 1;
createNode polyAppend -n "polyAppend13";
	rename -uid "81146637-4480-6D97-F04E-AF956E280C26";
	setAttr -s 2 ".d[0:1]"  -2147483455 -2147483543;
	setAttr ".tx" 1;
createNode polyAppend -n "polyAppend14";
	rename -uid "BA3E02D5-4C0F-E97A-2331-B8B75942B4F5";
	setAttr -s 2 ".d[0:1]"  -2147483446 -2147483517;
	setAttr ".tx" 1;
createNode polyAppend -n "polyAppend15";
	rename -uid "D60007D3-402E-4D8E-80A6-6ABDF6A594C9";
	setAttr -s 3 ".d[0:2]"  -2147483444 -2147483413 -2147483521;
	setAttr ".tx" 1;
createNode polyAppend -n "polyAppend16";
	rename -uid "70F2411A-4E7D-7F14-4751-8DAABF780D4E";
	setAttr -s 3 ".d[0:2]"  -2147483448 -2147483513 -2147483414;
	setAttr ".tx" 1;
createNode polySplit -n "polySplit29";
	rename -uid "5E33848E-4731-B445-AA9C-FBA2852F8A85";
	setAttr -s 4 ".e[0:3]"  0.51561701 0.51561701 0.48438299 0.48438299;
	setAttr -s 4 ".d[0:3]"  -2147483421 -2147483430 -2147483429 -2147483428;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak42";
	rename -uid "607F8CE3-4FDB-BDB2-B221-46A0B2263A2C";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[123:126]" -type "float3"  0 -0.059668466 -0.11112523
		 0 -0.059668466 -0.11112523 0 -0.059668466 -0.11112523 0 -0.059668466 -0.11112523;
createNode polySplit -n "polySplit30";
	rename -uid "C4762867-4563-F450-971D-2487F5C2E67F";
	setAttr -s 2 ".e[0:1]"  0.49853 0.50147003;
	setAttr -s 2 ".d[0:1]"  -2147483416 -2147483415;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak43";
	rename -uid "FA5D67AD-46F9-4F38-A31D-98A3A84496D4";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[127:128]" -type "float3"  0.029346939 -0.060500767 0
		 0.029346939 -0.060500767 0;
createNode polySplit -n "polySplit31";
	rename -uid "746D01B3-40BA-DA0B-9F80-129B01214843";
	setAttr -s 2 ".e[0:1]"  0.43129799 0.56870198;
	setAttr -s 2 ".d[0:1]"  -2147483427 -2147483426;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak44";
	rename -uid "119BAAC5-441B-7415-943E-D08CD6DA5011";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[129:130]" -type "float3"  -0.028756447 -0.062336378
		 0 -0.028756447 -0.062336378 0;
createNode polySplit -n "polySplit32";
	rename -uid "AE4B94CC-4A7D-3388-C2A6-99AB64B44B3A";
	setAttr -s 4 ".e[0:3]"  0.493498 0.493498 0.50650197 0.50650197;
	setAttr -s 4 ".d[0:3]"  -2147483417 -2147483420 -2147483419 -2147483418;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak45";
	rename -uid "C856D1E8-405B-5533-AB9A-ABA0FE2EE011";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[131:134]" -type "float3"  0.031038722 0 -0.057320151
		 0.031038722 0 -0.057320151 0.031038722 0 -0.057320151 0.031038722 0 -0.057320151;
createNode polySplit -n "polySplit33";
	rename -uid "0FBF404D-473F-0DBA-0A76-B6BA19B5FEEC";
	setAttr -s 4 ".e[0:3]"  0.52165902 0.52165902 0.47834101 0.47834101;
	setAttr -s 4 ".d[0:3]"  -2147483411 -2147483414 -2147483413 -2147483412;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak46";
	rename -uid "FA72C851-4489-29E5-8471-1E8A1CA5FFFA";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[135:138]" -type "float3"  0.026078667 0 0.062598377
		 0.026078667 0 0.062598377 0.026078667 0 0.062598377 0.026078667 0 0.062598377;
createNode polySplit -n "polySplit34";
	rename -uid "A67C8209-40FF-553E-10F9-B49FAB504977";
	setAttr -s 4 ".e[0:3]"  0.48051599 0.48051599 0.51948398 0.51948398;
	setAttr -s 4 ".d[0:3]"  -2147483423 -2147483425 -2147483424 -2147483422;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyAppend -n "polyAppend17";
	rename -uid "8462F7C6-445A-3207-5071-6E96279AA889";
	setAttr -s 2 ".d[0:1]"  -2147483473 -2147483568;
	setAttr ".tx" 1;
createNode polyTweak -n "polyTweak47";
	rename -uid "F915A55D-40AB-3549-E7FD-E8A28EA5B173";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[139:142]" -type "float3"  -0.028296538 0 0.068825573
		 -0.028296538 0 0.068825573 -0.028296538 0 0.068825573 -0.028296538 0 0.068825573;
createNode polyAppend -n "polyAppend18";
	rename -uid "EB78401B-498A-C077-2A95-83AFE3963FF9";
	setAttr -s 3 ".d[0:2]"  -2147483471 -2147483375 -2147483564;
	setAttr ".tx" 1;
createNode polyAppend -n "polyAppend19";
	rename -uid "FBB722CB-4153-E172-C40F-31917A51411D";
	setAttr -s 3 ".d[0:2]"  -2147483475 -2147483572 -2147483376;
	setAttr ".tx" 1;
createNode polySplit -n "polySplit35";
	rename -uid "489629CF-4CA7-AE5C-9241-8AAA751703C4";
	setAttr -s 4 ".e[0:3]"  0.56301099 0.56301099 0.43698901 0.43698901;
	setAttr -s 4 ".d[0:3]"  -2147483373 -2147483376 -2147483375 -2147483374;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyCloseBorder -n "polyCloseBorder10";
	rename -uid "8814154A-43D2-FD13-5E8E-EBB35F833B97";
	setAttr ".ics" -type "componentList" 7 "e[166]" "e[220]" "e[222]" "e[241]" "e[249]" "e[274]" "e[279]";
createNode polyTweak -n "polyTweak48";
	rename -uid "A28B6200-440C-C025-9E66-798A50B3126C";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[143:146]" -type "float3"  -0.025682667 0 -0.065882832
		 -0.025682667 0 -0.065882832 -0.025682667 0 -0.065882832 -0.025682667 0 -0.065882832;
createNode polyCloseBorder -n "polyCloseBorder11";
	rename -uid "4605DA49-4EA6-15A0-EB08-6390982D476A";
	setAttr ".ics" -type "componentList" 7 "e[194]" "e[227]" "e[230]" "e[233]" "e[238]" "e[246]" "e[254]";
createNode polyCloseBorder -n "polyCloseBorder12";
	rename -uid "4ED25FB1-4E49-C0D6-728C-7F8381ACB498";
	setAttr ".ics" -type "componentList" 6 "e[192]" "e[212:213]" "e[232]" "e[236]" "e[245]" "e[261]";
createNode polyCloseBorder -n "polyCloseBorder13";
	rename -uid "D2B045C1-4263-ABDF-EA62-E29E5FEEE440";
	setAttr ".ics" -type "componentList" 11 "e[6:8]" "e[59:61]" "e[155:157]" "e[183:185]" "e[225]" "e[231]" "e[237]" "e[251]" "e[258]" "e[265]" "e[275:276]";
createNode polySplit -n "polySplit36";
	rename -uid "553AD589-437D-244E-BCD8-0F8C39816D01";
	setAttr -s 11 ".e[0:10]"  0.15789799 0.15789799 0.15789799 0.15789799
		 0.15789799 0.15789799 0.15789799 0.15789799 0.15789799 0.15789799 0.15789799;
	setAttr -s 11 ".d[0:10]"  -2147483628 -2147483627 -2147483626 -2147483625 -2147483624 -2147483623 
		-2147483622 -2147483621 -2147483620 -2147483619 -2147483628;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit37";
	rename -uid "3501FDE8-43F5-FBA1-E247-72B90C6E93A8";
	setAttr -s 11 ".e[0:10]"  0.0583294 0.0583294 0.0583294 0.0583294 0.0583294
		 0.0583294 0.0583294 0.0583294 0.0583294 0.0583294 0.0583294;
	setAttr -s 11 ".d[0:10]"  -2147483578 -2147483569 -2147483570 -2147483571 -2147483572 -2147483573 
		-2147483574 -2147483575 -2147483576 -2147483577 -2147483578;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit38";
	rename -uid "AD105F32-4BFB-2074-3C6B-46B86AE83F85";
	setAttr -s 11 ".e[0:10]"  0.74302697 0.74302697 0.74302697 0.74302697
		 0.74302697 0.74302697 0.74302697 0.74302697 0.74302697 0.74302697 0.74302697;
	setAttr -s 11 ".d[0:10]"  -2147483558 -2147483557 -2147483556 -2147483555 -2147483554 -2147483553 
		-2147483552 -2147483551 -2147483550 -2147483549 -2147483558;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit39";
	rename -uid "9C711CA6-4713-10A0-92A2-8494EB488BEE";
	setAttr -s 11 ".e[0:10]"  0.24030399 0.24030399 0.24030399 0.24030399
		 0.24030399 0.24030399 0.24030399 0.24030399 0.24030399 0.24030399 0.24030399;
	setAttr -s 11 ".d[0:10]"  -2147483538 -2147483537 -2147483536 -2147483535 -2147483534 -2147483533 
		-2147483532 -2147483531 -2147483530 -2147483529 -2147483538;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent37";
	rename -uid "12F7D9CA-41AD-BDF9-5617-7D9DACFFB66F";
	setAttr ".dc" -type "componentList" 1 "f[0:9]";
createNode deleteComponent -n "deleteComponent38";
	rename -uid "2EDEEFAD-4041-D951-593C-5D80E31F3680";
	setAttr ".dc" -type "componentList" 1 "f[42:51]";
createNode polyExtrudeEdge -n "polyExtrudeEdge35";
	rename -uid "E78B3FCD-4245-214D-1FA0-ACA65EE18E61";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[120:129]";
	setAttr ".ix" -type "matrix" 2.3161609102290595e-016 1.0431061412237701 0 0 -3.6909188545070544 8.19548618859368e-016 0 0
		 0 0 1.0431061412237701 0 -38.910496135051723 0.02901015339261992 0.0038027481439386612 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -41.458652 0.029010154 0.003802686 ;
	setAttr ".rs" 59465;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -41.45865372937736 -1.0140959878311495 -0.98825035591589694 ;
	setAttr ".cbx" -type "double3" -41.45865372937736 1.0721162946163907 0.99585572785583221 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge36";
	rename -uid "3B5ABFCB-4B19-E65A-1F11-F481E30C167F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[132]" "e[134]" "e[136]" "e[138]" "e[140]" "e[142]" "e[144]" "e[146]" "e[148:149]";
	setAttr ".ix" -type "matrix" 2.3161609102290595e-016 1.0431061412237701 0 0 -3.6909188545070544 8.19548618859368e-016 0 0
		 0 0 1.0431061412237701 0 -38.910496135051723 0.02901015339261992 0.0038027481439386612 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -41.458652 0.029010216 0.0038027482 ;
	setAttr ".rs" 49068;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -41.458650649434659 -1.1880143665037062 -1.1536566205653245 ;
	setAttr ".cbx" -type "double3" -41.458650649434659 1.2460347976368893 1.1612621168532018 ;
createNode polyTweak -n "polyTweak49";
	rename -uid "3F079C7F-4C95-CE55-462E-6488C1350040";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk[80:89]" -type "float3"  0.13488844 -1.110223e-016
		 -0.098002233 0.16673128 -1.110223e-016 4.968979e-009 0.13488844 -1.110223e-016 0.09800218
		 0.051522829 -1.110223e-016 0.1585709 -0.05152284 -1.110223e-016 0.1585709 -0.13488844
		 -1.110223e-016 0.098002233 -0.16673127 -1.110223e-016 1.490694e-008 -0.13488844 -1.110223e-016
		 -0.098002173 -0.05152284 -1.110223e-016 -0.1585709 0.051522829 -1.110223e-016 -0.15857092;
createNode polyExtrudeEdge -n "polyExtrudeEdge37";
	rename -uid "5DE6A3EC-4DCB-0741-84C4-37B8EF94D10A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[152]" "e[154]" "e[156]" "e[158]" "e[160]" "e[162]" "e[164]" "e[166]" "e[168:169]";
	setAttr ".ix" -type "matrix" 2.3161609102290595e-016 1.0431061412237701 0 0 -3.6909188545070544 8.19548618859368e-016 0 0
		 0 0 1.0431061412237701 0 -38.910496135051723 0.02901015339261992 0.0038027481439386612 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -41.083385 0.029010277 0.0038027482 ;
	setAttr ".rs" 47290;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -41.083384710845436 -1.1880143665037064 -1.1536566205653245 ;
	setAttr ".cbx" -type "double3" -41.083384710845436 1.246034921984831 1.1612621168532018 ;
createNode polyTweak -n "polyTweak50";
	rename -uid "B83C473B-438F-7EB2-0792-63BB2B182820";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk[90:99]" -type "float3"  0 -0.10167181 0 0 -0.10167181
		 0 0 -0.10167181 0 0 -0.10167181 0 0 -0.10167181 0 0 -0.10167181 0 0 -0.10167181 0
		 0 -0.10167181 0 0 -0.10167181 0 0 -0.10167181 0;
createNode polyExtrudeEdge -n "polyExtrudeEdge38";
	rename -uid "AE142187-4CAA-A910-78C6-B1B6F1661FA1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[70:79]";
	setAttr ".ix" -type "matrix" 2.3161609102290595e-016 1.0431061412237701 0 0 -3.6909188545070544 8.19548618859368e-016 0 0
		 0 0 1.0431061412237701 0 -38.910496135051723 0.02901015339261992 0.0038027481439386612 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -36.385155 0.029010341 0.0038027482 ;
	setAttr ".rs" 62775;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -36.38515431626363 -1.0140959878311508 -0.98825035591589694 ;
	setAttr ".cbx" -type "double3" -36.38515431626363 1.0721166676602154 0.99585585220377426 ;
createNode polyTweak -n "polyTweak51";
	rename -uid "427844A1-4FF4-0B3E-4FB0-978E7355BAFC";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk[100:109]" -type "float3"  -0.13037826 3.3306691e-016
		 0.094725363 -0.16115636 3.3306691e-016 -6.7536154e-010 -0.13037826 3.3306691e-016
		 -0.094725363 -0.049800057 3.3306691e-016 -0.15326887 0.049800158 3.3306691e-016 -0.15326887
		 0.13037828 3.3306691e-016 -0.09472537 0.16115636 3.3306691e-016 -1.0355544e-008 0.13037828
		 3.3306691e-016 0.094725341 0.049800158 3.3306691e-016 0.15326887 -0.049800057 3.3306691e-016
		 0.15326887;
createNode polyExtrudeEdge -n "polyExtrudeEdge39";
	rename -uid "D90C1CB9-4AF3-0E3F-AD5D-06818ABCFBE7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[192]" "e[194]" "e[196]" "e[198]" "e[200]" "e[202]" "e[204]" "e[206]" "e[208:209]";
	setAttr ".ix" -type "matrix" 2.3161609102290595e-016 1.0431061412237701 0 0 -3.6909188545070544 8.19548618859368e-016 0 0
		 0 0 1.0431061412237701 0 -38.910496135051723 0.02901015339261992 0.0038027481439386612 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -36.385155 0.029010402 0.0038027482 ;
	setAttr ".rs" 65169;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -36.38515431626363 -1.1437466234920515 -1.1115555160954484 ;
	setAttr ".cbx" -type "double3" -36.38515431626363 1.2017674276690582 1.1191610123833258 ;
createNode polyTweak -n "polyTweak52";
	rename -uid "2A334DDD-4303-B140-39F4-768954032428";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk[110:119]" -type "float3"  0.10055502 -2.220446e-016
		 -0.073057517 0.0384086 -2.220446e-016 -0.11820957 -0.038408659 -2.220446e-016 -0.11820956
		 -0.10055502 -2.220446e-016 -0.07305751 -0.12429288 -2.220446e-016 3.7042136e-009
		 -0.10055502 -2.220446e-016 0.073057517 -0.038408659 -2.220446e-016 0.11820959 0.0384086
		 -2.220446e-016 0.11820959 0.10055502 -2.220446e-016 0.073057517 0.12429288 -2.220446e-016
		 -3.7042132e-009;
createNode polyExtrudeEdge -n "polyExtrudeEdge40";
	rename -uid "507AB7EB-41CD-DC93-E226-DBA36915DA53";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[212]" "e[214]" "e[216]" "e[218]" "e[220]" "e[222]" "e[224]" "e[226]" "e[228:229]";
	setAttr ".ix" -type "matrix" 2.3161609102290595e-016 1.0431061412237701 0 0 -3.6909188545070544 8.19548618859368e-016 0 0
		 0 0 1.0431061412237701 0 -38.910496135051723 0.02901015339261992 0.0038027481439386612 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -36.729675 0.029010464 0.003802686 ;
	setAttr ".rs" 58217;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -36.729675166831463 -1.1437466234920513 -1.1115556404433904 ;
	setAttr ".cbx" -type "double3" -36.729675166831463 1.2017675520170004 1.1191610123833258 ;
createNode polyTweak -n "polyTweak53";
	rename -uid "FDCDAD94-4D94-32D0-243D-2094828973CB";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk[120:129]" -type "float3"  0 0.093342833 3.7252903e-009
		 0 0.093342833 0 -1.8626451e-009 0.093342833 -7.4505806e-009 1.4901161e-008 0.093342833
		 7.4505806e-009 7.4505806e-009 0.093342833 8.8817842e-016 1.4901161e-008 0.093342833
		 7.4505806e-009 -1.8626451e-009 0.093342833 7.4505806e-009 0 0.093342833 7.4505806e-009
		 0 0.093342833 3.7252903e-009 -7.4505806e-009 0.093342833 -4.4408921e-016;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 48 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 8 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr ":defaultColorMgtGlobals.cme" "imagePlaneShape1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "imagePlaneShape1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "imagePlaneShape1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "imagePlaneShape1.ws";
connectAttr ":frontShape.msg" "imagePlaneShape1.ltc";
connectAttr "deleteComponent7.og" "pCubeShape1.i";
connectAttr "imagePlane2_scaleX.o" "imagePlane2.sx";
connectAttr "imagePlane2_scaleY.o" "imagePlane2.sy";
connectAttr "imagePlane2_scaleZ.o" "imagePlane2.sz";
connectAttr ":defaultColorMgtGlobals.cme" "imagePlaneShape2.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "imagePlaneShape2.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "imagePlaneShape2.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "imagePlaneShape2.ws";
connectAttr ":frontShape.msg" "imagePlaneShape2.ltc";
connectAttr ":defaultColorMgtGlobals.cme" "imagePlaneShape3.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "imagePlaneShape3.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "imagePlaneShape3.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "imagePlaneShape3.ws";
connectAttr ":frontShape.msg" "imagePlaneShape3.ltc";
connectAttr ":defaultColorMgtGlobals.cme" "imagePlaneShape4.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "imagePlaneShape4.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "imagePlaneShape4.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "imagePlaneShape4.ws";
connectAttr ":frontShape.msg" "imagePlaneShape4.ltc";
connectAttr "polyCloseBorder8.out" "pCubeShape2.i";
connectAttr "polyCloseBorder5.out" "pCubeShape3.i";
connectAttr "deleteComponent4.og" "pCubeShape4.i";
connectAttr "polyAutoProj1.out" "pCubeShape5.i";
connectAttr "polyCloseBorder4.out" "pCylinderShape1.i";
connectAttr "polyCube5.out" "pCubeShape6.i";
connectAttr "groupParts2.og" "polySurfaceShape4.i";
connectAttr "groupId3.id" "polySurfaceShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape4.iog.og[0].gco";
connectAttr "groupParts3.og" "polySurfaceShape5.i";
connectAttr "groupId4.id" "polySurfaceShape5.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape5.iog.og[0].gco";
connectAttr "groupId1.id" "pCubeShape7.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape7.iog.og[0].gco";
connectAttr "groupParts1.og" "pCubeShape7.i";
connectAttr "groupId2.id" "pCubeShape7.ciog.cog[0].cgid";
connectAttr "groupParts5.og" "polySurfaceShape6.i";
connectAttr "groupId7.id" "polySurfaceShape6.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape6.iog.og[0].gco";
connectAttr "groupParts6.og" "polySurfaceShape7.i";
connectAttr "groupId8.id" "polySurfaceShape7.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape7.iog.og[0].gco";
connectAttr "groupId5.id" "pCubeShape8.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape8.iog.og[0].gco";
connectAttr "groupParts4.og" "pCubeShape8.i";
connectAttr "groupId6.id" "pCubeShape8.ciog.cog[0].cgid";
connectAttr "polyExtrudeEdge13.out" "pPipeShape1.i";
connectAttr "polyCube6.out" "pCubeShape11.i";
connectAttr "polyCube7.out" "pCubeShape12.i";
connectAttr "polySplit27.out" "pCubeShape19.i";
connectAttr "polyCube8.out" "pCubeShape20.i";
connectAttr "polyCloseBorder13.out" "pCubeShape36.i";
connectAttr "polyExtrudeEdge40.out" "pCylinderShape5.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCube2.out" "polySplit1.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polySplit2.out" "polySplit3.ip";
connectAttr "polySplit3.out" "polySplit4.ip";
connectAttr "polySplit4.out" "polySplit5.ip";
connectAttr "polySplit5.out" "polySplit6.ip";
connectAttr "polyCube1.out" "polySplit7.ip";
connectAttr "polySplit7.out" "polySplit8.ip";
connectAttr "polySplit8.out" "polySplit9.ip";
connectAttr "polySplit9.out" "polySplit10.ip";
connectAttr "polySplit10.out" "polyTweak1.ip";
connectAttr "polyTweak1.out" "polySplit11.ip";
connectAttr "polySplit11.out" "polySplit12.ip";
connectAttr "polySplit12.out" "polySplit13.ip";
connectAttr "polySplit13.out" "polySplit14.ip";
connectAttr "polySplit14.out" "polySplit15.ip";
connectAttr "polySplit15.out" "polySplit16.ip";
connectAttr "polySplit16.out" "polySplit17.ip";
connectAttr "polySplit17.out" "polySplit18.ip";
connectAttr "polySplit18.out" "polySplit19.ip";
connectAttr "polyCube4.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "polyExtrudeEdge1.ip";
connectAttr "pCubeShape4.wm" "polyExtrudeEdge1.mp";
connectAttr "polyExtrudeEdge1.out" "polyCloseBorder1.ip";
connectAttr "polyCloseBorder1.out" "deleteComponent2.ig";
connectAttr "polyTweak2.out" "polyExtrudeEdge2.ip";
connectAttr "pCubeShape4.wm" "polyExtrudeEdge2.mp";
connectAttr "deleteComponent2.og" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polyExtrudeEdge3.ip";
connectAttr "pCubeShape4.wm" "polyExtrudeEdge3.mp";
connectAttr "polyExtrudeEdge2.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polyExtrudeEdge4.ip";
connectAttr "pCubeShape4.wm" "polyExtrudeEdge4.mp";
connectAttr "polyExtrudeEdge3.out" "polyTweak4.ip";
connectAttr "polyExtrudeEdge4.out" "polyCloseBorder2.ip";
connectAttr "polyCloseBorder2.out" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "polyTweak5.ip";
connectAttr "polyTweak5.out" "deleteComponent4.ig";
connectAttr "|pCube5|polySurfaceShape1.o" "polyAutoProj1.ip";
connectAttr "pCubeShape5.wm" "polyAutoProj1.mp";
connectAttr "polyCylinder1.out" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "polyExtrudeEdge5.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeEdge5.mp";
connectAttr "polyTweak6.out" "polyCloseBorder3.ip";
connectAttr "polyExtrudeEdge5.out" "polyTweak6.ip";
connectAttr "polyCloseBorder3.out" "polyExtrudeEdge6.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeEdge6.mp";
connectAttr "polyTweak7.out" "polyCloseBorder4.ip";
connectAttr "polyExtrudeEdge6.out" "polyTweak7.ip";
connectAttr "polySurfaceShape2.o" "polyMirror1.ip";
connectAttr "pCube7.sp" "polyMirror1.sp";
connectAttr "pCubeShape7.wm" "polyMirror1.mp";
connectAttr "polySurfaceShape3.o" "polyMirror2.ip";
connectAttr "pCube8.sp" "polyMirror2.sp";
connectAttr "pCubeShape8.wm" "polyMirror2.mp";
connectAttr "pCubeShape7.o" "polySeparate1.ip";
connectAttr "polyMirror1.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "polySeparate1.out[0]" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "polySeparate1.out[1]" "groupParts3.ig";
connectAttr "groupId4.id" "groupParts3.gi";
connectAttr "pCubeShape8.o" "polySeparate2.ip";
connectAttr "polyMirror2.out" "groupParts4.ig";
connectAttr "groupId5.id" "groupParts4.gi";
connectAttr "polySeparate2.out[0]" "groupParts5.ig";
connectAttr "groupId7.id" "groupParts5.gi";
connectAttr "polySeparate2.out[1]" "groupParts6.ig";
connectAttr "groupId8.id" "groupParts6.gi";
connectAttr "polyPipe1.out" "deleteComponent6.ig";
connectAttr "deleteComponent6.og" "polyExtrudeEdge7.ip";
connectAttr "pPipeShape1.wm" "polyExtrudeEdge7.mp";
connectAttr "polyTweak8.out" "polyExtrudeEdge8.ip";
connectAttr "pPipeShape1.wm" "polyExtrudeEdge8.mp";
connectAttr "polyExtrudeEdge7.out" "polyTweak8.ip";
connectAttr "polyTweak9.out" "polyExtrudeEdge9.ip";
connectAttr "pPipeShape1.wm" "polyExtrudeEdge9.mp";
connectAttr "polyExtrudeEdge8.out" "polyTweak9.ip";
connectAttr "polyTweak10.out" "polyExtrudeEdge10.ip";
connectAttr "pPipeShape1.wm" "polyExtrudeEdge10.mp";
connectAttr "polyExtrudeEdge9.out" "polyTweak10.ip";
connectAttr "polyTweak11.out" "polyExtrudeEdge11.ip";
connectAttr "pPipeShape1.wm" "polyExtrudeEdge11.mp";
connectAttr "polyExtrudeEdge10.out" "polyTweak11.ip";
connectAttr "polyTweak12.out" "polyExtrudeEdge12.ip";
connectAttr "pPipeShape1.wm" "polyExtrudeEdge12.mp";
connectAttr "polyExtrudeEdge11.out" "polyTweak12.ip";
connectAttr "polyTweak13.out" "polyExtrudeEdge13.ip";
connectAttr "pPipeShape1.wm" "polyExtrudeEdge13.mp";
connectAttr "polyExtrudeEdge12.out" "polyTweak13.ip";
connectAttr "polySplit19.out" "polyTweak14.ip";
connectAttr "polyTweak14.out" "deleteComponent7.ig";
connectAttr "blinn1.oc" "blinn1SG.ss";
connectAttr "pCubeShape1.iog" "blinn1SG.dsm" -na;
connectAttr "blinn1SG.msg" "materialInfo1.sg";
connectAttr "blinn1.msg" "materialInfo1.m";
connectAttr "polyCube3.out" "deleteComponent8.ig";
connectAttr "deleteComponent8.og" "polyExtrudeEdge14.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeEdge14.mp";
connectAttr "polyTweak15.out" "polyExtrudeEdge15.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeEdge15.mp";
connectAttr "polyExtrudeEdge14.out" "polyTweak15.ip";
connectAttr "polyTweak16.out" "polyExtrudeEdge16.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeEdge16.mp";
connectAttr "polyExtrudeEdge15.out" "polyTweak16.ip";
connectAttr "polyTweak17.out" "polyExtrudeEdge17.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeEdge17.mp";
connectAttr "polyExtrudeEdge16.out" "polyTweak17.ip";
connectAttr "polyTweak18.out" "polyExtrudeEdge18.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeEdge18.mp";
connectAttr "polyExtrudeEdge17.out" "polyTweak18.ip";
connectAttr "polyTweak19.out" "polyExtrudeEdge19.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeEdge19.mp";
connectAttr "polyExtrudeEdge18.out" "polyTweak19.ip";
connectAttr "polyTweak20.out" "polyExtrudeEdge20.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeEdge20.mp";
connectAttr "polyExtrudeEdge19.out" "polyTweak20.ip";
connectAttr "polyTweak21.out" "polyExtrudeEdge21.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeEdge21.mp";
connectAttr "polyExtrudeEdge20.out" "polyTweak21.ip";
connectAttr "polyTweak22.out" "polyExtrudeEdge22.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeEdge22.mp";
connectAttr "polyExtrudeEdge21.out" "polyTweak22.ip";
connectAttr "polyTweak23.out" "polyExtrudeEdge23.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeEdge23.mp";
connectAttr "polyExtrudeEdge22.out" "polyTweak23.ip";
connectAttr "polyTweak24.out" "polyExtrudeEdge24.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeEdge24.mp";
connectAttr "polyExtrudeEdge23.out" "polyTweak24.ip";
connectAttr "polyTweak25.out" "polyExtrudeEdge25.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeEdge25.mp";
connectAttr "polyExtrudeEdge24.out" "polyTweak25.ip";
connectAttr "polyTweak26.out" "polyExtrudeEdge26.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeEdge26.mp";
connectAttr "polyExtrudeEdge25.out" "polyTweak26.ip";
connectAttr "polyTweak27.out" "polyExtrudeEdge27.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeEdge27.mp";
connectAttr "polyExtrudeEdge26.out" "polyTweak27.ip";
connectAttr "polyTweak28.out" "polyExtrudeEdge28.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeEdge28.mp";
connectAttr "polyExtrudeEdge27.out" "polyTweak28.ip";
connectAttr "polyTweak29.out" "polyExtrudeEdge29.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeEdge29.mp";
connectAttr "polyExtrudeEdge28.out" "polyTweak29.ip";
connectAttr "polyTweak30.out" "polyCloseBorder5.ip";
connectAttr "polyExtrudeEdge29.out" "polyTweak30.ip";
connectAttr "polySplit6.out" "polyTweak31.ip";
connectAttr "polyTweak31.out" "polySplit20.ip";
connectAttr "polySplit20.out" "polySplit21.ip";
connectAttr "polySplit21.out" "polySplit22.ip";
connectAttr "polySplit22.out" "polySplit23.ip";
connectAttr "polySplit23.out" "deleteComponent9.ig";
connectAttr "polyTweak32.out" "polyExtrudeEdge30.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeEdge30.mp";
connectAttr "deleteComponent9.og" "polyTweak32.ip";
connectAttr "polyTweak33.out" "polyExtrudeEdge31.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeEdge31.mp";
connectAttr "polyExtrudeEdge30.out" "polyTweak33.ip";
connectAttr "polyTweak34.out" "polyExtrudeEdge32.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeEdge32.mp";
connectAttr "polyExtrudeEdge31.out" "polyTweak34.ip";
connectAttr "polyTweak35.out" "polyCloseBorder6.ip";
connectAttr "polyExtrudeEdge32.out" "polyTweak35.ip";
connectAttr "polyCloseBorder6.out" "deleteComponent10.ig";
connectAttr "deleteComponent10.og" "deleteComponent11.ig";
connectAttr "deleteComponent11.og" "deleteComponent12.ig";
connectAttr "deleteComponent12.og" "deleteComponent13.ig";
connectAttr "deleteComponent13.og" "deleteComponent14.ig";
connectAttr "deleteComponent14.og" "deleteComponent15.ig";
connectAttr "deleteComponent15.og" "deleteComponent16.ig";
connectAttr "deleteComponent16.og" "deleteComponent17.ig";
connectAttr "deleteComponent17.og" "deleteComponent18.ig";
connectAttr "deleteComponent18.og" "deleteComponent19.ig";
connectAttr "deleteComponent19.og" "deleteComponent20.ig";
connectAttr "deleteComponent20.og" "deleteComponent21.ig";
connectAttr "deleteComponent21.og" "deleteComponent22.ig";
connectAttr "bottomShape.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "polyTweak36.out" "polyExtrudeEdge33.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeEdge33.mp";
connectAttr "deleteComponent22.og" "polyTweak36.ip";
connectAttr "polyTweak37.out" "polyCloseBorder7.ip";
connectAttr "polyExtrudeEdge33.out" "polyTweak37.ip";
connectAttr "polyCloseBorder7.out" "polyExtrudeEdge34.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeEdge34.mp";
connectAttr "polyTweak38.out" "polyCloseBorder8.ip";
connectAttr "polyExtrudeEdge34.out" "polyTweak38.ip";
connectAttr "|pCube19|polySurfaceShape8.o" "polySplit24.ip";
connectAttr "polySplit24.out" "polySplit25.ip";
connectAttr "polySplit25.out" "polySplit26.ip";
connectAttr "polySplit26.out" "polySplit27.ip";
connectAttr "polyCube9.out" "polyTweak39.ip";
connectAttr "polyTweak39.out" "deleteComponent23.ig";
connectAttr "deleteComponent23.og" "deleteComponent24.ig";
connectAttr "deleteComponent24.og" "deleteComponent25.ig";
connectAttr "deleteComponent25.og" "deleteComponent26.ig";
connectAttr "deleteComponent26.og" "deleteComponent27.ig";
connectAttr "deleteComponent27.og" "deleteComponent28.ig";
connectAttr "deleteComponent28.og" "deleteComponent29.ig";
connectAttr "deleteComponent29.og" "deleteComponent30.ig";
connectAttr "deleteComponent30.og" "deleteComponent31.ig";
connectAttr "deleteComponent31.og" "deleteComponent32.ig";
connectAttr "deleteComponent32.og" "deleteComponent33.ig";
connectAttr "deleteComponent33.og" "deleteComponent34.ig";
connectAttr "deleteComponent34.og" "deleteComponent35.ig";
connectAttr "deleteComponent35.og" "polyCloseBorder9.ip";
connectAttr "polyCloseBorder9.out" "polyAppend1.ip";
connectAttr "polyAppend1.out" "polyAppend2.ip";
connectAttr "polyAppend2.out" "polySplit28.ip";
connectAttr "polySplit28.out" "polyTweak40.ip";
connectAttr "polyTweak40.out" "deleteComponent36.ig";
connectAttr "polyTweak41.out" "polyAppend3.ip";
connectAttr "deleteComponent36.og" "polyTweak41.ip";
connectAttr "polyAppend3.out" "polyAppend4.ip";
connectAttr "polyAppend4.out" "polyAppend5.ip";
connectAttr "polyAppend5.out" "polyAppend6.ip";
connectAttr "polyAppend6.out" "polyAppend7.ip";
connectAttr "polyAppend7.out" "polyAppend8.ip";
connectAttr "polyAppend8.out" "polyAppend9.ip";
connectAttr "polyAppend9.out" "polyAppend10.ip";
connectAttr "polyAppend10.out" "polyAppend11.ip";
connectAttr "polyAppend11.out" "polyAppend12.ip";
connectAttr "polyAppend12.out" "polyAppend13.ip";
connectAttr "polyAppend13.out" "polyAppend14.ip";
connectAttr "polyAppend14.out" "polyAppend15.ip";
connectAttr "polyAppend15.out" "polyAppend16.ip";
connectAttr "polyAppend16.out" "polySplit29.ip";
connectAttr "polySplit29.out" "polyTweak42.ip";
connectAttr "polyTweak42.out" "polySplit30.ip";
connectAttr "polySplit30.out" "polyTweak43.ip";
connectAttr "polyTweak43.out" "polySplit31.ip";
connectAttr "polySplit31.out" "polyTweak44.ip";
connectAttr "polyTweak44.out" "polySplit32.ip";
connectAttr "polySplit32.out" "polyTweak45.ip";
connectAttr "polyTweak45.out" "polySplit33.ip";
connectAttr "polySplit33.out" "polyTweak46.ip";
connectAttr "polyTweak46.out" "polySplit34.ip";
connectAttr "polyTweak47.out" "polyAppend17.ip";
connectAttr "polySplit34.out" "polyTweak47.ip";
connectAttr "polyAppend17.out" "polyAppend18.ip";
connectAttr "polyAppend18.out" "polyAppend19.ip";
connectAttr "polyAppend19.out" "polySplit35.ip";
connectAttr "polyTweak48.out" "polyCloseBorder10.ip";
connectAttr "polySplit35.out" "polyTweak48.ip";
connectAttr "polyCloseBorder10.out" "polyCloseBorder11.ip";
connectAttr "polyCloseBorder11.out" "polyCloseBorder12.ip";
connectAttr "polyCloseBorder12.out" "polyCloseBorder13.ip";
connectAttr "polySurfaceShape9.o" "polySplit36.ip";
connectAttr "polySplit36.out" "polySplit37.ip";
connectAttr "polySplit37.out" "polySplit38.ip";
connectAttr "polySplit38.out" "polySplit39.ip";
connectAttr "polySplit39.out" "deleteComponent37.ig";
connectAttr "deleteComponent37.og" "deleteComponent38.ig";
connectAttr "deleteComponent38.og" "polyExtrudeEdge35.ip";
connectAttr "pCylinderShape5.wm" "polyExtrudeEdge35.mp";
connectAttr "polyTweak49.out" "polyExtrudeEdge36.ip";
connectAttr "pCylinderShape5.wm" "polyExtrudeEdge36.mp";
connectAttr "polyExtrudeEdge35.out" "polyTweak49.ip";
connectAttr "polyTweak50.out" "polyExtrudeEdge37.ip";
connectAttr "pCylinderShape5.wm" "polyExtrudeEdge37.mp";
connectAttr "polyExtrudeEdge36.out" "polyTweak50.ip";
connectAttr "polyTweak51.out" "polyExtrudeEdge38.ip";
connectAttr "pCylinderShape5.wm" "polyExtrudeEdge38.mp";
connectAttr "polyExtrudeEdge37.out" "polyTweak51.ip";
connectAttr "polyTweak52.out" "polyExtrudeEdge39.ip";
connectAttr "pCylinderShape5.wm" "polyExtrudeEdge39.mp";
connectAttr "polyExtrudeEdge38.out" "polyTweak52.ip";
connectAttr "polyTweak53.out" "polyExtrudeEdge40.ip";
connectAttr "pCylinderShape5.wm" "polyExtrudeEdge40.mp";
connectAttr "polyExtrudeEdge39.out" "polyTweak53.ip";
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "blinn1.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCubeShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape5.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape6.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape7.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape7.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape5.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape8.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape8.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape6.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape7.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPipeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape9.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPipeShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape10.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape11.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape12.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape13.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape14.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape15.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape16.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape17.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape18.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape19.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape20.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape21.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape22.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape23.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape24.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape25.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape26.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape27.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape28.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape29.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape30.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape31.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape32.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape33.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape34.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape35.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape36.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape5.iog" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
// End of Props_RB.ma

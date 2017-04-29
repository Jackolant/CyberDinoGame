//Maya ASCII 2016 scene
//Name: Statue1.ma
//Last modified: Tue, Apr 18, 2017 01:13:35 PM
//Codeset: UTF-8
requires maya "2016";
requires "stereoCamera" "10.0";
currentUnit -l meter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201502261600-953408";
fileInfo "osv" "Mac OS X 10.9.6";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "AC914CB8-654C-1DD5-01D5-81AF703D3D8D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 28.444978654922263 -4.601135916917797 5.4642467398289885 ;
	setAttr ".r" -type "double3" 11.06164727007862 -998.20000000005598 5.5748763571508145e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "073B96DD-4A43-707E-49FC-C68D731C475D";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 32.007894032936186;
	setAttr ".ow" 0.1;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -32.824705004224157 336.30456604953139 376.37772179917573 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "5C633E99-6E4C-3A39-95E6-909FB7ADD45F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1.001 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "6EC4195F-1A4C-5AF0-EB0C-E2B83E333342";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 1.001;
	setAttr ".ow" 0.3;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "242CDBBE-554E-A53E-F458-398A1572D58D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1.001 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "3D5E39AF-6B46-AB68-A37F-2EBC9939B4FA";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 1.001;
	setAttr ".ow" 24.936348871919385;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "068D7DAF-D248-155E-8A85-1A996DD90C69";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.001 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "6DA10565-064C-EF8D-F685-EABE2E5B252E";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 1.001;
	setAttr ".ow" 26.136450477831968;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "Statue";
	rename -uid "EC60AFEF-1E4E-1D9C-0B30-42857775A3C4";
	setAttr ".s" -type "double3" 1.1221861144367105 1.1221861144367105 1.1221861144367105 ;
createNode transform -n "CrystalGroup1" -p "Statue";
	rename -uid "76DF60D1-0646-E4FA-610F-748864B1DCF7";
	setAttr ".rp" -type "double3" 0 -4.2399427217382115 0 ;
	setAttr ".sp" -type "double3" 0 -4.2399427217382115 0 ;
createNode transform -n "pCube5" -p "CrystalGroup1";
	rename -uid "E0FDD98A-2342-11F6-5ED6-3CB377A02398";
	setAttr ".rp" -type "double3" 0.011370713031417288 -4.2848427302078127 -0.00010723742005059545 ;
	setAttr ".sp" -type "double3" 0.011370713031417288 -4.2848427302078127 -0.00010723742005059545 ;
createNode mesh -n "pCubeShape5" -p "|Statue|CrystalGroup1|pCube5";
	rename -uid "90C1387F-AC4E-12A1-F140-02B7FC179252";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube6" -p "CrystalGroup1";
	rename -uid "214F555A-F247-79EC-E23C-ACB48D17E06E";
	setAttr ".rp" -type "double3" 0.011370713031417288 -4.2848427302078127 -0.00010723742005059545 ;
	setAttr ".sp" -type "double3" 0.011370713031417288 -4.2848427302078127 -0.00010723742005059545 ;
createNode mesh -n "pCubeShape6" -p "|Statue|CrystalGroup1|pCube6";
	rename -uid "4A5A3422-F045-A79B-EE7A-FEAF40A5167A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.357537 -5.0105424 0.64098054 
		0.73546815 -4.9638844 -0.05244451 1.0484926 0.61722273 1.2179738 1.0870819 -0.48842755 
		0.16117315 -0.81813639 -3.6058011 0.24064936 -0.2293859 -3.6058011 -0.82961434 -0.71272677 
		-4.9638844 0.052230034 -0.33479556 -4.9638844 -0.641195;
	setAttr -s 8 ".vt[0:7]"  -0.0049999999 -0.0049999999 0.0049999999
		 0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999
		 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 -0.0049999999
		 -0.0049999999 -0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 -0.0049999999;
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
createNode transform -n "pCube7" -p "CrystalGroup1";
	rename -uid "1B890021-E748-23CB-7D84-4D8633B97BE0";
	setAttr ".rp" -type "double3" 0.011370713031417288 -4.2946680313477694 -0.00010723742005059379 ;
	setAttr ".sp" -type "double3" 0.011370713031417288 -4.2946680313477694 -0.00010723742005059379 ;
createNode mesh -n "pCubeShape7" -p "|Statue|CrystalGroup1|pCube7";
	rename -uid "5E0862C4-EE49-32D7-32D5-AD8DFE09232F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.7467888 -3.7402198 0.012593461 
		0.32102799 -3.6984317 -0.66451204 1.5836079 1.2990795 -0.30886695 0.67912436 0.30883634 
		-0.86707497 -0.18531492 -2.4831479 0.84828246 -0.83701897 -2.4831479 -0.19679287 
		-0.29828656 -3.6984317 0.66429758 -0.7240473 -3.6984317 -0.012807936;
	setAttr -s 8 ".vt[0:7]"  -0.0049999999 -0.0049999999 0.0049999999
		 0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999
		 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 -0.0049999999
		 -0.0049999999 -0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 -0.0049999999;
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
createNode transform -n "pCube8" -p "CrystalGroup1";
	rename -uid "1EF756B9-A746-24F8-7E12-34B84419E8B9";
	setAttr ".rp" -type "double3" 0.01137071303141729 -4.2848427302078127 -0.00010723742005059212 ;
	setAttr ".sp" -type "double3" 0.01137071303141729 -4.2848427302078127 -0.00010723742005059212 ;
createNode mesh -n "pCubeShape8" -p "|Statue|CrystalGroup1|pCube8";
	rename -uid "FC60766E-F041-22AA-348C-D9A3C49D255A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.375 0.25 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.38843226 -5.0105424 -0.63391089 
		-0.41547477 -4.9638844 -0.60165578 0.5123744 0.61722273 -1.5213227 -0.41741994 -0.48842755 
		-1.0130693 0.65393883 -3.6058011 0.59267694 -0.58141345 -3.6058011 0.64246088 0.43821621 
		-4.9638844 0.60144132 -0.36569083 -4.9638844 0.63369644;
	setAttr -s 8 ".vt[0:7]"  -0.0049999999 -0.0049999999 0.0049999999
		 0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999
		 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 -0.0049999999
		 -0.0049999999 -0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 -0.0049999999;
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
createNode transform -n "pCube9" -p "CrystalGroup1";
	rename -uid "EE075248-E945-46B3-A6A3-12BF672486A3";
	setAttr ".rp" -type "double3" 0.011370713031417292 -4.2848427302078127 -0.00010723742005059212 ;
	setAttr ".sp" -type "double3" 0.011370713031417292 -4.2848427302078127 -0.00010723742005059212 ;
createNode mesh -n "pCubeShape9" -p "|Statue|CrystalGroup1|pCube9";
	rename -uid "6C66A7A0-054E-EDD4-08DF-6D80F87D834E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.35074216 -5.0105424 -0.63681287 
		-0.720204 -4.9638844 0.071788572 -1.0687634 0.61722273 -1.1784035 -1.0801997 -0.48842755 
		-0.12737933 0.84061944 -3.6058011 -0.26454616 0.27580962 -3.6058011 0.82914144 0.74294549 
		-4.9638844 -0.072003037 0.37348357 -4.9638844 0.63659841;
	setAttr -s 8 ".vt[0:7]"  -0.0049999999 -0.0049999999 0.0049999999
		 0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999
		 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 -0.0049999999
		 -0.0049999999 -0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 -0.0049999999;
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
createNode transform -n "pCube10" -p "CrystalGroup1";
	rename -uid "D48CA54B-6C40-3FBE-C4C0-3BA32459B36A";
	setAttr ".rp" -type "double3" 0.011370713031417292 -4.2848427302078127 -0.00010723742005059434 ;
	setAttr ".sp" -type "double3" 0.011370713031417292 -4.2848427302078127 -0.00010723742005059434 ;
createNode mesh -n "pCubeShape10" -p "|Statue|CrystalGroup1|pCube10";
	rename -uid "FDD81942-F04C-5329-60C3-58B0E037F3C3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.625 0.25 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.71416384 -5.0105424 0.0068578189 
		-0.28125879 -4.9638844 0.66652739 -1.5414563 0.61722273 0.36890128 -0.63083696 -0.48842755 
		0.88346022 0.18365286 -3.6058011 -0.84598917 0.8572526 -3.6058011 0.17217492 0.30400023 
		-4.9638844 -0.66674197 0.73690528 -4.9638844 -0.0070722937;
	setAttr -s 8 ".vt[0:7]"  -0.0049999999 -0.0049999999 0.0049999999
		 0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999
		 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 -0.0049999999
		 -0.0049999999 -0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 -0.0049999999;
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
createNode transform -n "CrystalGroup2" -p "Statue";
	rename -uid "5456A77C-7C44-D041-2D24-7BAD34F2B143";
	setAttr ".rp" -type "double3" -0.0035074308336669967 -4.6431458583128986 0 ;
	setAttr ".sp" -type "double3" -0.0035074308336669967 -4.6431458583128986 0 ;
createNode transform -n "pCube5" -p "CrystalGroup2";
	rename -uid "6EB42839-7C46-3BC3-A6E2-A18744FC41DA";
	setAttr ".rp" -type "double3" 0.011593321863076139 -4.6674537774971423 -0.00014241549809114847 ;
	setAttr ".sp" -type "double3" 0.011593321863076139 -4.6674537774971423 -0.00014241549809114847 ;
createNode mesh -n "pCubeShape5" -p "|Statue|CrystalGroup2|pCube5";
	rename -uid "EC54F076-6C49-9B52-5055-2E892AD67E66";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.51101148 -5.0580392 0.80918676 
		0.53419811 -5.0327797 0.80918676 -0.7292785 -2.015872 1.9889505 0.51459926 -2.6144476 
		1.3552144 -0.79773581 -4.3021278 -0.80947161 0.82092249 -4.3021278 -0.80947161 -0.51101148 
		-5.0327797 -0.80947161 0.53419811 -5.0327797 -0.80947161;
	setAttr -s 8 ".vt[0:7]"  -0.0049999999 -0.0049999999 0.0049999999
		 0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999
		 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 -0.0049999999
		 -0.0049999999 -0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 -0.0049999999;
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
createNode transform -n "pCube6" -p "CrystalGroup2";
	rename -uid "CFB543CE-F54B-E12B-AFBE-70B748DB2B37";
	setAttr ".rp" -type "double3" 0.011593321863076139 -4.6674537774971423 -0.00014241549809114847 ;
	setAttr ".sp" -type "double3" 0.011593321863076139 -4.6674537774971423 -0.00014241549809114847 ;
createNode mesh -n "pCubeShape6" -p "|Statue|CrystalGroup2|pCube6";
	rename -uid "C5733E6A-5A41-8292-F34A-479F0E927B81";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.46967551 -5.0580392 0.85288751 
		0.97486329 -5.0327797 -0.06800817 1.3872916 -2.015872 1.6191571 1.44182 -2.6144476 
		0.21568447 -1.0916648 -4.3021278 0.31795159 -0.30650067 -4.3021278 -1.1034006 -0.95167661 
		-5.0327797 0.067723334 -0.44648889 -5.0327797 -0.8531723;
	setAttr -s 8 ".vt[0:7]"  -0.0049999999 -0.0049999999 0.0049999999
		 0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999
		 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 -0.0049999999
		 -0.0049999999 -0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 -0.0049999999;
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
createNode transform -n "pCube7" -p "CrystalGroup2";
	rename -uid "35D7261C-024D-8882-7626-89B5CF6D23C3";
	setAttr ".rp" -type "double3" 0.011593321863076139 -4.6727729886557015 -0.00014241549809114625 ;
	setAttr ".sp" -type "double3" 0.011593321863076139 -4.6727729886557015 -0.00014241549809114625 ;
createNode mesh -n "pCubeShape7" -p "|Statue|CrystalGroup2|pCube7";
	rename -uid "135C62FE-8046-35BE-68B9-B6A4811FE88A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.98661715 -4.3703132 0.018364806 
		0.42447051 -4.3476901 -0.88085777 2.0979459 -1.6467289 -0.40854725 0.90003657 -2.1828258 
		-1.1498694 -0.2512531 -3.6943471 1.1249121 -1.1134613 -3.6943471 -0.26298884 -0.40128386 
		-4.3476901 0.88057297 -0.96343046 -4.3476901 -0.018649638;
	setAttr -s 8 ".vt[0:7]"  -0.0049999999 -0.0049999999 0.0049999999
		 0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999
		 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 -0.0049999999
		 -0.0049999999 -0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 -0.0049999999;
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
createNode transform -n "pCube8" -p "CrystalGroup2";
	rename -uid "B6CD890A-7B4B-8827-4C3F-C18441DB3FA5";
	setAttr ".rp" -type "double3" 0.011593321863076142 -4.6674537774971423 -0.00014241549809114402 ;
	setAttr ".sp" -type "double3" 0.011593321863076142 -4.6674537774971423 -0.00014241549809114402 ;
createNode mesh -n "pCubeShape8" -p "|Statue|CrystalGroup2|pCube8";
	rename -uid "6F9A0809-5A46-2BE2-DD25-5FB55F1973C8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.375 0.25 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.51070571 -5.0580392 -0.84021837 
		-0.55363405 -5.0327797 -0.79738235 0.6753056 -2.015872 -2.0187364 -0.55621725 -2.6144476 
		-1.3437554 0.86330873 -4.3021278 0.78545797 -0.77400708 -4.3021278 0.85157305 0.57682073 
		-5.0327797 0.79709744 -0.48751903 -5.0327797 0.83993345;
	setAttr -s 8 ".vt[0:7]"  -0.0049999999 -0.0049999999 0.0049999999
		 0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999
		 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 -0.0049999999
		 -0.0049999999 -0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 -0.0049999999;
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
createNode transform -n "pCube9" -p "CrystalGroup2";
	rename -uid "D2D6491C-644F-1E45-A0CA-51BBFBC320BA";
	setAttr ".rp" -type "double3" 0.011593321863076142 -4.6674537774971423 -0.00014241549809114402 ;
	setAttr ".sp" -type "double3" 0.011593321863076142 -4.6674537774971423 -0.00014241549809114402 ;
createNode mesh -n "pCubeShape9" -p "|Statue|CrystalGroup2|pCube9";
	rename -uid "39549AA1-134E-4352-20E8-50995B4960E3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.47094697 -5.0580392 -0.84407228 
		-0.9583264 -5.0327797 0.096978225 -1.4245075 -2.015872 -1.5633258 -1.4364148 -2.6144476 
		-0.16752455 1.111228 -4.3021278 -0.35296783 0.36441875 -4.3021278 1.0994922 0.98151308 
		-5.0327797 -0.097263061 0.49413359 -5.0327797 0.84378743;
	setAttr -s 8 ".vt[0:7]"  -0.0049999999 -0.0049999999 0.0049999999
		 0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999
		 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 -0.0049999999
		 -0.0049999999 -0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 -0.0049999999;
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
createNode transform -n "pCube10" -p "CrystalGroup2";
	rename -uid "909657DA-0C41-8AC7-5B03-34AA35AF70AD";
	setAttr ".rp" -type "double3" 0.011593321863076142 -4.6674537774971423 -0.00014241549809114698 ;
	setAttr ".sp" -type "double3" 0.011593321863076142 -4.6674537774971423 -0.00014241549809114698 ;
createNode mesh -n "pCubeShape10" -p "|Statue|CrystalGroup2|pCube10";
	rename -uid "1A1D82B6-3A4B-DDEE-B709-CFBB414FD8FB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.625 0.25 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.95358521 -5.0580392 0.010747649 
		-0.37538993 -5.0327797 0.88681471 -2.0522621 -2.015872 0.4915556 -0.83964342 -2.6144476 
		1.1749099 0.23875058 -4.3021278 -1.125147 1.1365979 -4.3021278 0.22701484 0.39857656 
		-5.0327797 -0.88709962 0.97677183 -5.0327797 -0.011032479;
	setAttr -s 8 ".vt[0:7]"  -0.0049999999 -0.0049999999 0.0049999999
		 0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999
		 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 -0.0049999999
		 -0.0049999999 -0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 -0.0049999999;
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
createNode transform -n "Chest" -p "Statue";
	rename -uid "AE59B58F-A543-625B-7E97-7ABBB072E70F";
createNode transform -n "pSphere1" -p "|Statue|Chest";
	rename -uid "B248C8A3-E842-73A7-54D5-DA8D2EB9E892";
	setAttr ".t" -type "double3" 0.61024505016231434 1.9473746110201418 0 ;
	setAttr ".s" -type "double3" 0.51501482485805261 0.51501482485805261 0.51501482485805261 ;
createNode mesh -n "pSphereShape1" -p "pSphere1";
	rename -uid "1AD6356D-4C42-4FD8-F5B5-EE94548F79EB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.07500000111758709 0.32500001788139343 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "ChestArmor" -p "|Statue|Chest";
	rename -uid "DCAB8FE3-0342-7DED-712E-2AA4FCEB8628";
	setAttr ".t" -type "double3" 0 0.77891936109554827 0 ;
	setAttr ".s" -type "double3" 1.6964030267003574 0.71786564161343491 2.340640229270091 ;
	setAttr ".rp" -type "double3" 0 2.3186801838849251 0 ;
	setAttr ".sp" -type "double3" 0 3.2299640016058921 0 ;
	setAttr ".spt" -type "double3" 0 -0.91128382120478035 0 ;
createNode mesh -n "ChestArmorShape" -p "ChestArmor";
	rename -uid "4C85AD87-9D4D-5724-8E76-689CF1F5E883";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.0625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 21 ".pt";
	setAttr ".pt[0]" -type "float3" 0.17492579 0 0 ;
	setAttr ".pt[6]" -type "float3" 0.17492579 0 0 ;
	setAttr ".pt[8]" -type "float3" 0.074793525 -0.21430716 0 ;
	setAttr ".pt[9]" -type "float3" 0 0.099827938 0.020838005 ;
	setAttr ".pt[14]" -type "float3" 0.074793525 -0.21430716 0 ;
	setAttr ".pt[16]" -type "float3" -0.0034864866 -2.2369721 4.328233e-16 ;
	setAttr ".pt[17]" -type "float3" -0.099086136 -1.5357722 0.0034192065 ;
	setAttr ".pt[24]" -type "float3" 0.074793525 -0.21430716 0 ;
	setAttr ".pt[25]" -type "float3" -0.12488386 -0.5860427 0 ;
	setAttr ".pt[26]" -type "float3" 0.074793525 -0.21430716 0 ;
	setAttr ".pt[27]" -type "float3" 0 -1.5357722 0.12269679 ;
	setAttr ".pt[29]" -type "float3" 0.12540908 -2.2369721 4.2632563e-16 ;
	setAttr ".pt[30]" -type "float3" -0.046464454 -0.5860427 0 ;
	setAttr ".pt[34]" -type "float3" 0.074793525 0.020964317 0.035330687 ;
	setAttr ".pt[35]" -type "float3" 0 -1.3005008 -0.087366104 ;
	setAttr ".pt[36]" -type "float3" 0 0.23527145 0.035330687 ;
	setAttr ".pt[37]" -type "float3" 0.12540908 -2.0017004 0.035330687 ;
	setAttr ".pt[38]" -type "float3" -0.046464454 -0.35077125 0.035330687 ;
	setAttr ".pt[39]" -type "float3" 0 0.23527145 0.035330687 ;
	setAttr ".pt[40]" -type "float3" 0 0.23527145 0.035330687 ;
	setAttr ".pt[41]" -type "float3" 0 0.23527145 0.035330687 ;
createNode transform -n "pCube26" -p "ChestArmor";
	rename -uid "4B8E87AB-BE48-DCBE-5CEB-1AB970220019";
	setAttr ".t" -type "double3" 0.064252314891727905 3.4723901378451854 -0.46647588842441418 ;
	setAttr ".r" -type "double3" -7.3670626193872248 0.58922954628472657 29.980552707475358 ;
	setAttr ".s" -type "double3" 0.15979832616481893 0.7195018485988468 0.081034744716575874 ;
	setAttr ".sh" -type "double3" 0.44133713597702645 0.45536580262583504 0.86973295987122523 ;
createNode mesh -n "pCubeShape26" -p "pCube26";
	rename -uid "9CEE8EE8-E04B-413D-B57E-549A00111CF3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[2:5]" -type "float3"  -1.674289 -0.6747576 0.064983211 
		-1.674289 -0.6747576 0.064983211 -1.674289 -0.6747576 0.064983211 -1.674289 -0.6747576 
		0.064983211;
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
createNode transform -n "pCube27" -p "ChestArmor";
	rename -uid "49BF8532-E642-8507-0D2C-60AFA26EA6A2";
	setAttr ".t" -type "double3" 0.064252314891727905 3.3362513078736233 -0.61045834505786156 ;
	setAttr ".r" -type "double3" -7.3670626193872248 0.58922954628472657 29.980552707475358 ;
	setAttr ".s" -type "double3" 0.15979832616481893 0.7195018485988468 0.081034744716575874 ;
	setAttr ".sh" -type "double3" 0.44133713597702645 0.45536580262583504 0.86973295987122523 ;
createNode mesh -n "pCubeShape27" -p "pCube27";
	rename -uid "18636F2E-324D-27FF-C7AA-3F8B6F612C8E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[2:5]" -type "float3"  -1.674289 -0.6747576 0.064983211 
		-1.674289 -0.6747576 0.064983211 -1.674289 -0.6747576 0.064983211 -1.674289 -0.6747576 
		0.064983211;
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
createNode transform -n "pCube28" -p "ChestArmor";
	rename -uid "FDA439F2-3843-815E-2B11-CCB91F81F33A";
	setAttr ".t" -type "double3" 0.064252314891727905 3.148659752020575 -0.74927387576172677 ;
	setAttr ".r" -type "double3" -7.3670626193872248 0.58922954628472657 29.980552707475358 ;
	setAttr ".s" -type "double3" 0.15979832616481893 0.7195018485988468 0.081034744716575874 ;
	setAttr ".sh" -type "double3" 0.44133713597702645 0.45536580262583504 0.86973295987122523 ;
createNode mesh -n "pCubeShape28" -p "pCube28";
	rename -uid "73D9106D-DA46-3E9E-C7E4-A99E01E31BD5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[2:5]" -type "float3"  -1.674289 -0.6747576 0.064983211 
		-1.674289 -0.6747576 0.064983211 -1.674289 -0.6747576 0.064983211 -1.674289 -0.6747576 
		0.064983211;
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
createNode transform -n "pCube29" -p "ChestArmor";
	rename -uid "5D2C5155-964A-FEAF-2D6E-6795828C5724";
	setAttr ".t" -type "double3" 0.06425231489172796 2.9720231428885926 -0.87150330070226267 ;
	setAttr ".r" -type "double3" -7.3670626193872568 0.58922954628469315 29.980552707475415 ;
	setAttr ".s" -type "double3" 0.15979832616481898 0.71950184859884636 0.081034744716575874 ;
	setAttr ".sh" -type "double3" 0.44133713597702762 0.45536580262583554 0.86973295987122512 ;
createNode mesh -n "pCubeShape29" -p "pCube29";
	rename -uid "3B2DA516-FA46-D44E-2F57-6FBD01C15354";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[2:5]" -type "float3"  -1.674289 -0.6747576 0.064983211 
		-1.674289 -0.6747576 0.064983211 -1.674289 -0.6747576 0.064983211 -1.674289 -0.6747576 
		0.064983211;
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
createNode transform -n "pCube22" -p "ChestArmor";
	rename -uid "A06FEFF0-EA43-1F4A-7A35-8386F4879F3F";
	setAttr ".t" -type "double3" 0.15861615866744166 3.4160715859036337 0.4920567900421004 ;
	setAttr ".r" -type "double3" 10.198570927003273 13.575076045960769 16.346112807131703 ;
	setAttr ".s" -type "double3" 0.14332936362824808 0.78842467655913506 0.082447981383584196 ;
	setAttr ".sh" -type "double3" 0.25420242918962682 -0.040499206184849118 -0.87332841322474264 ;
createNode mesh -n "pCubeShape22" -p "pCube22";
	rename -uid "38CB3F39-E949-F2C4-630E-989D682ED82C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[2:5]" -type "float3"  -1.674289 -0.6747576 0.064983211 
		-1.674289 -0.6747576 0.064983211 -1.674289 -0.6747576 0.064983211 -1.674289 -0.6747576 
		0.064983211;
createNode transform -n "pCube23" -p "ChestArmor";
	rename -uid "ADC0BBE3-9544-B9AB-C366-D592887CF780";
	setAttr ".t" -type "double3" 0.15861615866744166 3.2608270916840536 0.63259851730371519 ;
	setAttr ".r" -type "double3" 10.198570927003273 13.575076045960769 16.346112807131703 ;
	setAttr ".s" -type "double3" 0.14332936362824808 0.78842467655913506 0.082447981383584196 ;
	setAttr ".sh" -type "double3" 0.25420242918962682 -0.040499206184849118 -0.87332841322474264 ;
createNode mesh -n "pCubeShape23" -p "pCube23";
	rename -uid "8DA3D681-5044-AA89-7612-3FB956202226";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[2:5]" -type "float3"  -1.674289 -0.6747576 0.064983211 
		-1.674289 -0.6747576 0.064983211 -1.674289 -0.6747576 0.064983211 -1.674289 -0.6747576 
		0.064983211;
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
createNode transform -n "pCube24" -p "ChestArmor";
	rename -uid "1E9752B6-F046-22D1-5F30-98A2EE012F4C";
	setAttr ".t" -type "double3" 0.15861615866744169 3.1055825974644722 0.77314024456533004 ;
	setAttr ".r" -type "double3" 10.198570927003203 13.575076045960802 16.346112807131384 ;
	setAttr ".s" -type "double3" 0.14332936362824789 0.78842467655913584 0.082447981383584251 ;
	setAttr ".sh" -type "double3" 0.2542024291896221 -0.040499206184845087 -0.87332841322474453 ;
createNode mesh -n "pCubeShape24" -p "pCube24";
	rename -uid "70776360-F340-F055-8CAA-478F18546EF2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[2:5]" -type "float3"  -1.674289 -0.6747576 0.064983211 
		-1.674289 -0.6747576 0.064983211 -1.674289 -0.6747576 0.064983211 -1.674289 -0.6747576 
		0.064983211;
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
createNode transform -n "pCube25" -p "ChestArmor";
	rename -uid "D73CEB88-BD4D-10EC-3207-4DB35E834C9B";
	setAttr ".t" -type "double3" 0.15861615866744164 2.9503381032448921 0.91368197182694499 ;
	setAttr ".r" -type "double3" 10.198570927003146 13.575076045960834 16.346112807131071 ;
	setAttr ".s" -type "double3" 0.14332936362824764 0.78842467655913673 0.082447981383584307 ;
	setAttr ".sh" -type "double3" 0.25420242918961761 -0.040499206184841312 -0.87332841322474675 ;
createNode mesh -n "pCubeShape25" -p "pCube25";
	rename -uid "404F7426-2B48-5F81-7A61-ADBCB2643991";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[2:5]" -type "float3"  -1.674289 -0.6747576 0.064983211 
		-1.674289 -0.6747576 0.064983211 -1.674289 -0.6747576 0.064983211 -1.674289 -0.6747576 
		0.064983211;
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
createNode transform -n "pTorus1" -p "|Statue|Chest";
	rename -uid "0211518A-4743-142C-9907-53BBB807A466";
	setAttr ".t" -type "double3" 0.96351773570163002 1.9261481395511266 0 ;
	setAttr ".r" -type "double3" 0 0 89.999999999999986 ;
	setAttr ".s" -type "double3" 0.91008238936001518 0.35989349173275714 0.91008238936001495 ;
createNode mesh -n "pTorusShape1" -p "pTorus1";
	rename -uid "EA1A515A-B24E-7560-A63B-7EAF106124A8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Chest" -p "|Statue|Chest";
	rename -uid "2E55E60D-F941-316D-4779-A0944544605A";
	setAttr ".s" -type "double3" 1.1326381423059482 1 1 ;
	setAttr ".rp" -type "double3" 0.011935668229032699 0.013141302062065825 0 ;
	setAttr ".sp" -type "double3" 0.011935668229032699 0.013141302062065825 0 ;
createNode mesh -n "ChestShape" -p "|Statue|Chest|Chest";
	rename -uid "BD83DAC0-EB42-B117-F6CE-769CA9AB0B30";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 35 ".pt";
	setAttr ".pt[0]" -type "float3" 0.049967561 0 -0.086222343 ;
	setAttr ".pt[1]" -type "float3" -0.047203973 0 -0.086222343 ;
	setAttr ".pt[3]" -type "float3" 0.030271525 5.9604643e-10 0 ;
	setAttr ".pt[5]" -type "float3" 0.10859935 0.053663548 0.31678942 ;
	setAttr ".pt[6]" -type "float3" 0.049967561 0 0.086222343 ;
	setAttr ".pt[7]" -type "float3" -0.047203973 0 0.086222343 ;
	setAttr ".pt[8]" -type "float3" 0.030271525 5.9604643e-10 0 ;
	setAttr ".pt[10]" -type "float3" -0.057573665 -0.043823212 0.43570986 ;
	setAttr ".pt[11]" -type "float3" 0.0013818237 0 0.10890474 ;
	setAttr ".pt[12]" -type "float3" -0.085303538 0 0 ;
	setAttr ".pt[13]" -type "float3" 0.0013818237 0 -0.10890474 ;
	setAttr ".pt[14]" -type "float3" 0.067218922 0 -0.079198554 ;
	setAttr ".pt[15]" -type "float3" -0.064455293 0 -0.079198554 ;
	setAttr ".pt[16]" -type "float3" 0.0013818237 0 -0.10816328 ;
	setAttr ".pt[20]" -type "float3" -0.024113955 -0.047992293 0 ;
	setAttr ".pt[21]" -type "float3" 0.067218922 0 0.079198554 ;
	setAttr ".pt[22]" -type "float3" -0.064455293 0 0.079198554 ;
	setAttr ".pt[23]" -type "float3" 0.0013818237 0 0.10816328 ;
	setAttr ".pt[24]" -type "float3" 0.088067196 0 0 ;
	setAttr ".pt[25]" -type "float3" -0.055761699 0 0.051145557 ;
	setAttr ".pt[26]" -type "float3" 0.0013818229 0 -8.0772145e-10 ;
	setAttr ".pt[27]" -type "float3" -0.055761699 0 -0.051145557 ;
	setAttr ".pt[28]" -type "float3" -0.25010434 0 4.5868162e-10 ;
	setAttr ".pt[29]" -type "float3" -0.082491592 0 -0.043179806 ;
	setAttr ".pt[30]" -type "float3" -0.082491592 0 0.043179806 ;
	setAttr ".pt[31]" -type "float3" 0.27271137 0 -4.5868162e-10 ;
	setAttr ".pt[32]" -type "float3" 0.085255213 0 0.043179806 ;
	setAttr ".pt[33]" -type "float3" 0.085255213 0 -0.043179806 ;
	setAttr ".pt[36]" -type "float3" -0.024113955 -0.047992293 0 ;
	setAttr ".pt[38]" -type "float3" 0.058525339 0 0.051145557 ;
	setAttr ".pt[39]" -type "float3" 0.0013818252 0 0.076037958 ;
	setAttr ".pt[40]" -type "float3" 0.0013818252 0 -0.076037958 ;
	setAttr ".pt[41]" -type "float3" 0.058525339 0 -0.051145557 ;
	setAttr ".pt[66]" -type "float3" 0 0.50043154 0 ;
	setAttr ".pt[72]" -type "float3" 0 0.50043154 0 ;
createNode mesh -n "polySurfaceShape1" -p "|Statue|Chest|Chest";
	rename -uid "845B2C93-104E-26FB-FB0E-769D3D6B68C9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 63 ".uvst[0].uvsp[0:62]" -type "float2" 0.375 0 0.5 0 0.375
		 0.125 0.625 0 0.625 0.125 0.5 0.125 0.625 0.25 0.5 0.25 0.375 0.25 0.375 0.3125 0.375
		 0.375 0.5 0.3125 0.625 0.3125 0.625 0.375 0.5 0.375 0.5 0.4375 0.625 0.4375 0.625
		 0.5 0.5 0.5 0.375 0.4375 0.375 0.5 0.375 0.625 0.625 0.625 0.5 0.625 0.625 0.75 0.5
		 0.75 0.375 0.75 0.375 0.8125 0.375 0.875 0.5 0.8125 0.625 0.8125 0.625 0.875 0.5
		 0.875 0.5 0.9375 0.625 0.9375 0.625 1 0.5 1 0.375 0.9375 0.375 1 0.6875 0 0.75 0
		 0.75 0.125 0.6875 0.125 0.8125 0 0.875 0 0.8125 0.125 0.875 0.125 0.875 0.25 0.8125
		 0.25 0.75 0.25 0.6875 0.25 0.125 0 0.1875 0 0.25 0 0.25 0.125 0.1875 0.125 0.125
		 0.125 0.3125 0 0.3125 0.125 0.3125 0.25 0.25 0.25 0.1875 0.25 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 30 ".pt";
	setAttr ".pt[0]" -type "float3" 0.0001728776 -0.0014942898 -0.00141239 ;
	setAttr ".pt[1]" -type "float3" -0.0001728775 -0.0014942898 -0.00141239 ;
	setAttr ".pt[6]" -type "float3" 0.0001728776 -0.0014942898 0.00141239 ;
	setAttr ".pt[7]" -type "float3" -0.0001728775 -0.0014942898 0.00141239 ;
	setAttr ".pt[9]" -type "float3" 0.0013268854 0 0 ;
	setAttr ".pt[11]" -type "float3" -4.5071596e-11 -0.0016240226 0.0017839456 ;
	setAttr ".pt[12]" -type "float3" 0.0010184408 -0.0016240226 0 ;
	setAttr ".pt[13]" -type "float3" -4.5071596e-11 -0.0016240226 -0.0017839456 ;
	setAttr ".pt[14]" -type "float3" 0 0 -0.0021746093 ;
	setAttr ".pt[15]" -type "float3" 0 0 -0.0021746093 ;
	setAttr ".pt[16]" -type "float3" 0 0 -0.0029699118 ;
	setAttr ".pt[17]" -type "float3" -0.0013268851 0 0 ;
	setAttr ".pt[19]" -type "float3" 7.6847131e-12 0 0 ;
	setAttr ".pt[21]" -type "float3" 0 0 0.0021746093 ;
	setAttr ".pt[22]" -type "float3" 0 0 0.0021746093 ;
	setAttr ".pt[23]" -type "float3" 0 0 0.0029699118 ;
	setAttr ".pt[24]" -type "float3" -0.0010184408 -0.0016240226 0 ;
	setAttr ".pt[25]" -type "float3" -0.00020332765 -0.001581152 0.00083780399 ;
	setAttr ".pt[26]" -type "float3" -4.4939004e-11 0.0018375949 -8.0041451e-12 ;
	setAttr ".pt[27]" -type "float3" -0.00020332765 -0.001581152 -0.00083780399 ;
	setAttr ".pt[28]" -type "float3" 0.0018121563 0 1.2594346e-11 ;
	setAttr ".pt[29]" -type "float3" 0 0 -0.0011856167 ;
	setAttr ".pt[30]" -type "float3" 0 0 0.0011856167 ;
	setAttr ".pt[31]" -type "float3" -0.0018121563 0 -1.2594346e-11 ;
	setAttr ".pt[32]" -type "float3" 0 0 0.0011856167 ;
	setAttr ".pt[33]" -type "float3" 0 0 -0.0011856167 ;
	setAttr ".pt[38]" -type "float3" 0.00020332746 -0.001581152 0.00083780399 ;
	setAttr ".pt[39]" -type "float3" -5.771961e-11 0.0018947561 0.00075350096 ;
	setAttr ".pt[40]" -type "float3" -5.771961e-11 0.0018947561 -0.00075350096 ;
	setAttr ".pt[41]" -type "float3" 0.00020332746 -0.001581152 -0.00083780399 ;
	setAttr -s 42 ".vt[0:41]"  -0.0025462965 -0.0025462965 0.0025462965
		 0.0025462965 -0.0025462965 0.0025462965 -0.0025462965 0.0025462965 0.0025462965 0.0025462965 0.0025462965 0.0025462965
		 -0.0025462965 0.0025462965 -0.0025462965 0.0025462965 0.0025462965 -0.0025462965
		 -0.0025462965 -0.0025462965 -0.0025462965 0.0025462965 -0.0025462965 -0.0025462965
		 0 0.0032161463 0.0032161463 0.0032161463 0.0032161463 0 0 0.0032161463 -0.0032161463
		 0 -0.0032161463 -0.0032161463 0.0032161463 -0.0032161463 0 0 -0.0032161463 0.0032161463
		 -0.003216146 0 0.0032161463 0.0032161463 0 0.0032161463 1.8626451e-11 1.8626451e-11 0.0043923617
		 -0.003216146 0.0032161463 0 0.0029947916 0.0029947916 0.0015104167 1.8626451e-11 0.0043923617 -1.8626451e-11
		 0.0029947916 0.0029947916 -0.0015104167 -0.003216146 0 -0.0032161463 0.0032161463 0 -0.0032161463
		 1.8626451e-11 -1.8626451e-11 -0.0043923617 -0.003216146 -0.0032161463 0 0.0029947916 -0.0029947916 -0.0015104167
		 1.8626451e-11 -0.0043923617 1.8626451e-11 0.0029947916 -0.0029947916 0.0015104167
		 0.0043923617 1.8626451e-11 -1.8626451e-11 0.0040972219 0 0.0017534721 0.0040972219 0 -0.0017534721
		 -0.0043923617 1.8626451e-11 1.8626451e-11 -0.0040972219 0 -0.0017534721 -0.0040972219 0 0.0017534721
		 -0.0029947916 0.0029947916 0.0015104167 0 0.0040972219 0.0017534721 0 0.0040972219 -0.0017534721
		 -0.0029947916 0.0029947916 -0.0015104167 -0.0029947916 -0.0029947916 -0.0015104167
		 0 -0.0040972219 -0.0017534721 0 -0.0040972219 0.0017534721 -0.0029947916 -0.0029947916 0.0015104167;
	setAttr -s 80 ".ed[0:79]"  0 13 1 13 1 1 2 8 1 8 3 1 4 10 1 10 5 1 6 11 1
		 11 7 1 1 15 1 15 3 1 3 18 1 18 9 1 9 20 1 20 5 1 5 22 1 22 7 1 7 25 1 25 12 1 12 27 1
		 27 1 1 19 17 1 9 19 1 26 24 1 12 26 1 12 28 1 9 28 1 24 31 1 17 31 1 0 14 1 16 14 1
		 13 16 1 15 16 1 8 16 1 2 14 1 2 34 1 35 34 1 17 34 1 8 35 1 18 35 1 19 35 1 19 36 1
		 20 36 1 10 36 1 17 37 1 36 37 1 4 37 1 4 21 1 23 21 1 10 23 1 22 23 1 11 23 1 6 21 1
		 6 38 1 39 38 1 24 38 1 11 39 1 25 39 1 26 39 1 26 40 1 27 40 1 13 40 1 24 41 1 40 41 1
		 0 41 1 27 29 1 29 15 1 28 29 1 25 30 1 30 28 1 22 30 1 20 30 1 18 29 1 38 32 1 32 21 1
		 31 32 1 41 33 1 33 31 1 14 33 1 34 33 1 37 32 1;
	setAttr -s 40 -ch 160 ".fc[0:39]" -type "polyFaces" 
		f 4 0 30 29 -29
		mu 0 4 0 1 5 2
		f 4 1 8 31 -31
		mu 0 4 1 3 4 5
		f 4 -32 9 -4 32
		mu 0 4 5 4 6 7
		f 4 -30 -33 -3 33
		mu 0 4 2 5 7 8
		f 4 2 37 35 -35
		mu 0 4 8 7 11 9
		f 4 -36 -40 20 36
		mu 0 4 9 11 14 10
		f 4 3 10 38 -38
		mu 0 4 7 6 12 11
		f 4 -39 11 21 39
		mu 0 4 11 12 13 14
		f 4 -22 12 41 -41
		mu 0 4 14 13 16 15
		f 4 -42 13 -6 42
		mu 0 4 15 16 17 18
		f 4 -21 40 44 -44
		mu 0 4 10 14 15 19
		f 4 -45 -43 -5 45
		mu 0 4 19 15 18 20
		f 4 4 48 47 -47
		mu 0 4 20 18 23 21
		f 4 5 14 49 -49
		mu 0 4 18 17 22 23
		f 4 -50 15 -8 50
		mu 0 4 23 22 24 25
		f 4 -48 -51 -7 51
		mu 0 4 21 23 25 26
		f 4 6 55 53 -53
		mu 0 4 26 25 29 27
		f 4 -54 -58 22 54
		mu 0 4 27 29 32 28
		f 4 7 16 56 -56
		mu 0 4 25 24 30 29
		f 4 -57 17 23 57
		mu 0 4 29 30 31 32
		f 4 -24 18 59 -59
		mu 0 4 32 31 34 33
		f 4 -60 19 -2 60
		mu 0 4 33 34 35 36
		f 4 -23 58 62 -62
		mu 0 4 28 32 33 37
		f 4 -63 -61 -1 63
		mu 0 4 37 33 36 38
		f 4 -20 64 65 -9
		mu 0 4 3 39 42 4
		f 4 -19 24 66 -65
		mu 0 4 39 40 41 42
		f 4 -18 67 68 -25
		mu 0 4 40 43 45 41
		f 4 -17 -16 69 -68
		mu 0 4 43 44 46 45
		f 4 -70 -15 -14 70
		mu 0 4 45 46 47 48
		f 4 -69 -71 -13 25
		mu 0 4 41 45 48 49
		f 4 -67 -26 -12 71
		mu 0 4 42 41 49 50
		f 4 -66 -72 -11 -10
		mu 0 4 4 42 50 6
		f 4 52 72 73 -52
		mu 0 4 51 52 55 56
		f 4 -55 26 74 -73
		mu 0 4 52 53 54 55
		f 4 61 75 76 -27
		mu 0 4 53 57 58 54
		f 4 -64 28 77 -76
		mu 0 4 57 0 2 58
		f 4 -78 -34 34 78
		mu 0 4 58 2 8 59
		f 4 -77 -79 -37 27
		mu 0 4 54 58 59 60
		f 4 -75 -28 43 79
		mu 0 4 55 54 60 61
		f 4 -74 -80 -46 46
		mu 0 4 56 55 61 62;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Belt" -p "|Statue|Chest";
	rename -uid "343A66E5-EC47-FCC7-AA67-46BF9EF83A51";
	setAttr ".s" -type "double3" 1.0944143610972155 0.89111778085220505 1.0944143610972155 ;
createNode mesh -n "BeltShape" -p "Belt";
	rename -uid "CE570901-8549-4E97-B187-A2B5655E26E0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.57500007748603821 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 54 ".pt";
	setAttr ".pt[0]" -type "float3" -0.06655968 0 3.0766959e-08 ;
	setAttr ".pt[1]" -type "float3" -0.062816471 0 0.045719568 ;
	setAttr ".pt[2]" -type "float3" -0.051953148 0 0.086963728 ;
	setAttr ".pt[3]" -type "float3" -0.035033133 0 0.11969531 ;
	setAttr ".pt[4]" -type "float3" -0.01371269 0 0.14071026 ;
	setAttr ".pt[5]" -type "float3" 0.0099212369 0 0.14795154 ;
	setAttr ".pt[6]" -type "float3" 0.033555165 0 0.14071026 ;
	setAttr ".pt[7]" -type "float3" 0.054875623 0 0.1196953 ;
	setAttr ".pt[8]" -type "float3" 0.071795657 0 0.08696375 ;
	setAttr ".pt[9]" -type "float3" 0.082658961 0 0.045719557 ;
	setAttr ".pt[10]" -type "float3" 0.10991168 0 2.1536875e-08 ;
	setAttr ".pt[11]" -type "float3" 0.10616849 0 -0.045719516 ;
	setAttr ".pt[12]" -type "float3" 0.071795657 0 -0.08696375 ;
	setAttr ".pt[13]" -type "float3" 0.054875623 0 -0.11969529 ;
	setAttr ".pt[14]" -type "float3" 0.033555169 0 -0.14071023 ;
	setAttr ".pt[15]" -type "float3" 0.0099212285 0 -0.14795151 ;
	setAttr ".pt[16]" -type "float3" -0.01371268 0 -0.14071023 ;
	setAttr ".pt[17]" -type "float3" -0.035033155 0 -0.11969529 ;
	setAttr ".pt[18]" -type "float3" -0.051953174 0 -0.08696375 ;
	setAttr ".pt[19]" -type "float3" -0.062816523 0 -0.045719519 ;
	setAttr ".pt[27]" -type "float3" 0.09374664 0 -0.065544173 ;
	setAttr ".pt[28]" -type "float3" 0.16439323 -5.6843418e-16 0.09352763 ;
	setAttr ".pt[29]" -type "float3" 0.14828688 5.6843418e-16 0.077048704 ;
	setAttr ".pt[30]" -type "float3" 0.026095379 0 0.0061038113 ;
	setAttr ".pt[31]" -type "float3" 0.16026445 -2.8421709e-16 -0.072579697 ;
	setAttr ".pt[32]" -type "float3" 0.16026445 -2.8421709e-16 -0.072579697 ;
	setAttr ".pt[33]" -type "float3" 0.033730377 0 0.011740787 ;
	setAttr ".pt[34]" -type "float3" 0.031144531 0 0.0056369845 ;
	setAttr ".pt[47]" -type "float3" 0.09374664 0 -0.065544173 ;
	setAttr ".pt[48]" -type "float3" 0.16439323 -5.6843418e-16 0.09352763 ;
	setAttr ".pt[49]" -type "float3" 0.12477735 5.6843418e-16 0.077048704 ;
	setAttr ".pt[50]" -type "float3" 0.023509534 0 0 ;
	setAttr ".pt[51]" -type "float3" 0.10546357 0 -0.053655032 ;
	setAttr ".pt[52]" -type "float3" 0.081954025 0 -0.053655032 ;
	setAttr ".pt[60]" -type "float3" -0.073463865 0 3.0766959e-08 ;
	setAttr ".pt[61]" -type "float3" -0.069382749 0 0.049846791 ;
	setAttr ".pt[62]" -type "float3" -0.057538729 0 0.094814166 ;
	setAttr ".pt[63]" -type "float3" -0.039091263 0 0.13050056 ;
	setAttr ".pt[64]" -type "float3" -0.015846178 0 0.15341263 ;
	setAttr ".pt[65]" -type "float3" 0.0099212369 0 0.16130756 ;
	setAttr ".pt[66]" -type "float3" 0.035688654 0 0.15341263 ;
	setAttr ".pt[67]" -type "float3" 0.058933772 0 0.13050054 ;
	setAttr ".pt[68]" -type "float3" 0.077381223 0 0.094814226 ;
	setAttr ".pt[69]" -type "float3" 0.08922518 0 0.049846791 ;
	setAttr ".pt[70]" -type "float3" 0.093306363 0 2.7690266e-08 ;
	setAttr ".pt[71]" -type "float3" 0.089225218 0 -0.049846746 ;
	setAttr ".pt[72]" -type "float3" 0.077381238 0 -0.094814159 ;
	setAttr ".pt[73]" -type "float3" 0.058933757 0 -0.13050054 ;
	setAttr ".pt[74]" -type "float3" 0.035688661 0 -0.1534126 ;
	setAttr ".pt[75]" -type "float3" 0.0099212304 0 -0.16130759 ;
	setAttr ".pt[76]" -type "float3" -0.01584621 0 -0.1534126 ;
	setAttr ".pt[77]" -type "float3" -0.039091334 0 -0.13050054 ;
	setAttr ".pt[78]" -type "float3" -0.057538729 0 -0.094814166 ;
	setAttr ".pt[79]" -type "float3" -0.069382727 0 -0.049846746 ;
createNode transform -n "pCube18" -p "Belt";
	rename -uid "1D57A99D-BE44-AA8E-3672-41AA01B11596";
	setAttr ".t" -type "double3" -0.036411595803546151 0.11139222765240277 0 ;
	setAttr ".r" -type "double3" 0 0 -6.1269084487485284 ;
	setAttr ".s" -type "double3" 0.81580914954940087 0.71395838461728522 0.5824537825682915 ;
	setAttr ".sh" -type "double3" -0.035901850474948808 0 0 ;
	setAttr ".rp" -type "double3" 1.0436722634157527 0 0 ;
	setAttr ".rpt" -type "double3" -0.0059615305802502303 -0.11139222765240275 0 ;
	setAttr ".sp" -type "double3" 1.2793093384552117 0 0 ;
	setAttr ".spt" -type "double3" -0.23563707503945885 0 0 ;
createNode mesh -n "pCubeShape18" -p "pCube18";
	rename -uid "08914806-1241-E5FE-7B3B-C09EA7126D29";
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
	setAttr -s 8 ".vt[0:7]"  1.23105931 -0.56417453 0 1.32755923 -0.56417453 0
		 1.23105931 0 0.56417453 1.32755923 0 0.56417453 1.23105931 0.56417453 0 1.32755923 0.56417453 0
		 1.23105931 0 -0.56417453 1.32755923 0 -0.56417453;
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
createNode transform -n "pCube17" -p "Belt";
	rename -uid "BD46209E-9441-26AA-FC81-86A1E5483B36";
	setAttr ".t" -type "double3" -0.067437226699790784 0.11139222765240277 0 ;
	setAttr ".r" -type "double3" 0 0 -6.1269084487485284 ;
	setAttr ".s" -type "double3" 0.81580914954940087 0.99807862405355308 0.81424167347256526 ;
	setAttr ".sh" -type "double3" -0.035901850474948795 0 0 ;
	setAttr ".rp" -type "double3" 1.0436722634157527 0 0 ;
	setAttr ".rpt" -type "double3" -0.0059615305802502303 -0.11139222765240275 0 ;
	setAttr ".sp" -type "double3" 1.2793093384552117 0 0 ;
	setAttr ".spt" -type "double3" -0.23563707503945885 0 0 ;
createNode mesh -n "pCubeShape17" -p "pCube17";
	rename -uid "9B2060ED-9247-3047-EC21-DC97CF1D365D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Head" -p "Statue";
	rename -uid "5AD4CC88-FA4F-4E3B-E03D-86ABF780154C";
	setAttr ".t" -type "double3" -2.8421709430404008e-16 -4.4408920985006262e-16 2.8421709430404008e-16 ;
	setAttr ".r" -type "double3" 15.336526620599477 39.473910398414887 34.54008460516723 ;
	setAttr ".s" -type "double3" 0.89111778085220505 0.89111778085220517 0.89111778085220505 ;
	setAttr ".rp" -type "double3" 0 3.2696593181332054 0 ;
	setAttr ".sp" -type "double3" 0 3.6691662857476848 0 ;
	setAttr ".spt" -type "double3" 0 -0.39950696761447968 0 ;
createNode transform -n "Skull" -p "Head";
	rename -uid "AA4E9C57-B74E-B66B-FD85-9A9633924244";
	setAttr ".rp" -type "double3" 0.013394041153143896 4.2707424495535342 0 ;
	setAttr ".sp" -type "double3" 0.013394041153143896 4.2707424495535342 0 ;
createNode mesh -n "SkullShape" -p "Skull";
	rename -uid "D14616CA-544A-DBB8-CB7E-73A6E0299579";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube13" -p "Head";
	rename -uid "2507334D-F54D-0A3D-962E-C7BB34D6AA3C";
	setAttr ".rp" -type "double3" -0.26315266621437022 4.2622807543355066 -0.027116715206891965 ;
	setAttr ".sp" -type "double3" -0.26315266621437022 4.2622807543355066 -0.027116715206891965 ;
createNode mesh -n "pCubeShape13" -p "pCube13";
	rename -uid "21502CBA-7A4D-1439-B4A1-2289C62FBDE8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.47604954242706299 0.72887298464775085 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube14" -p "Head";
	rename -uid "3746550D-2A41-8F1C-FBF0-978A3CDEEAB7";
	setAttr ".rp" -type "double3" 0.85246120257071256 4.4687739003244991 0 ;
	setAttr ".sp" -type "double3" 0.85246120257071256 4.4687739003244991 0 ;
createNode mesh -n "pCubeShape14" -p "pCube14";
	rename -uid "41E22B23-894C-B2BE-545C-6AB98C91613F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.65625 0.28125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCylinder1" -p "Head";
	rename -uid "7D67AA9C-624C-1A2C-5914-E38CFE2DECBB";
	setAttr ".rp" -type "double3" -0.14817217441894148 4.3272161263101525 0 ;
	setAttr ".sp" -type "double3" -0.14817217441894148 4.3272161263101525 0 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	rename -uid "25129D52-4943-9F0A-76FF-4598FD7D95D8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.49999996274709702 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube15" -p "Head";
	rename -uid "36EC1ED9-8C4F-B826-00CF-DE93316B2C89";
	setAttr ".rp" -type "double3" -0.58797046244638507 4.2916111872675549 1.0404421967371627 ;
	setAttr ".sp" -type "double3" -0.58797046244638507 4.2916111872675549 1.0404421967371627 ;
createNode mesh -n "pCubeShape15" -p "pCube15";
	rename -uid "EAEAFF40-504F-EA78-30C2-BBA81DFE6EFB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube16" -p "Head";
	rename -uid "9581516C-5645-9806-9283-DE83946F50A3";
	setAttr ".rp" -type "double3" -0.58797046244638507 4.2916111872675549 -1.052745735643897 ;
	setAttr ".sp" -type "double3" -0.58797046244638507 4.2916111872675549 -1.052745735643897 ;
createNode mesh -n "pCubeShape16" -p "pCube16";
	rename -uid "2C9DA3DF-E04B-D025-454B-44A2C46679F0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5879705 4.7214842 -1.4973748 
		-0.5879705 4.5838861 -1.4973748 -0.5879705 3.8617382 -1.4973748 -0.5879705 3.9993362 
		-1.4973748 -0.5879705 3.8617382 -0.60811669 -0.5879705 3.9993362 -0.60811669 -0.5879705 
		4.7214842 -0.60811669 -0.5879705 4.5838861 -0.60811669;
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
createNode transform -n "R_Arm" -p "Statue";
	rename -uid "914052FA-4244-72B3-65C3-4D97EA4346C6";
	setAttr ".s" -type "double3" 0.89111778085220505 0.89111778085220505 0.89111778085220505 ;
createNode transform -n "pCylinder2" -p "R_Arm";
	rename -uid "950291AC-A546-077C-1D14-EDB7A249164F";
	setAttr ".t" -type "double3" 0 0 2.8268590421009412 ;
	setAttr ".r" -type "double3" -198.77431883739231 -5.7452443428934465 177.98754890495528 ;
	setAttr ".rp" -type "double3" 0.021734112349864495 2.3627189211952944 -1.4798804492860145 ;
	setAttr ".sp" -type "double3" 0.021734112349864495 2.3627189211952944 -1.4798804492860145 ;
createNode mesh -n "pCylinderShape2" -p "pCylinder2";
	rename -uid "013F34E6-874B-63FD-F526-B7B83C1343C4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.42499995231628418 0.64963304996490479 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 15 ".pt";
	setAttr ".pt[14]" -type "float3" 0.0072101103 0.023064224 -0.067850389 ;
	setAttr ".pt[15]" -type "float3" 0.0072101103 0.023064224 -0.067850389 ;
	setAttr ".pt[27]" -type "float3" 0.0072101103 0.023064224 -0.067850389 ;
	setAttr ".pt[28]" -type "float3" 0.0072101103 0.023064224 -0.067850389 ;
	setAttr ".pt[32]" -type "float3" 0.020890463 0.092128381 0 ;
	setAttr ".pt[33]" -type "float3" 0.054691963 0.057992924 0 ;
	setAttr ".pt[34]" -type "float3" 0.083321944 0.034633528 0 ;
	setAttr ".pt[35]" -type "float3" 0.083321907 -0.02521533 0 ;
	setAttr ".pt[36]" -type "float3" 0.07087785 -0.052210554 0 ;
	setAttr ".pt[37]" -type "float3" -1.4210571e-08 -0.092128374 0 ;
	setAttr ".pt[38]" -type "float3" -0.011294416 -0.090151101 0 ;
	setAttr ".pt[39]" -type "float3" -0.07087788 -0.052210554 0 ;
	setAttr ".pt[40]" -type "float3" -0.083321944 -0.02521533 0 ;
	setAttr ".pt[41]" -type "float3" -0.054691967 0.057992872 0 ;
	setAttr ".pt[42]" -type "float3" -0.02089048 0.092128381 0 ;
createNode transform -n "pCylinder3" -p "pCylinder2";
	rename -uid "8F23EF0D-AF4F-DE2F-3864-059333B09E7E";
	setAttr ".r" -type "double3" -128.8444131422807 0 0 ;
	setAttr ".rp" -type "double3" 0.021734112349864509 2.360183292600345 -3.7866340677444237 ;
	setAttr ".sp" -type "double3" 0.021734112349864509 2.360183292600345 -3.7866340677444237 ;
createNode mesh -n "pCylinderShape3" -p "|Statue|R_Arm|pCylinder2|pCylinder3";
	rename -uid "B2E4610B-6842-56F3-43B7-18B4B4D56C85";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50018250942230225 0.49617629870772362 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 11 ".pt[21:31]" -type "float3"  0.11948302 0.053667143 0 
		0.11948293 -0.0321557 0 0.10163825 -0.070866577 0 -2.0746075e-08 -0.12810841 0 -0.012542521 
		-0.12591262 0 -0.10163829 -0.070866577 0 -0.119483 -0.0321557 0 -0.074679911 0.086361982 
		0 -0.028525205 0.13499431 0 0.028525174 0.13499431 0 0.074679926 0.086362034 0;
createNode mesh -n "polySurfaceShape2" -p "|Statue|R_Arm|pCylinder2|pCylinder3";
	rename -uid "5B4CD6D2-194E-BE2F-CFC4-19B3A61612BC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.43749994039535522 0.50046992301940918 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 44 ".uvst[0].uvsp[0:43]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.54828393 0.0076473355 0.45171607 0.0076473504 0.37359107
		 0.064408526 0.37359107 0.24809146 0.4517161 0.3048526 0.5 0.3125 0.62640893 0.24809146
		 0.6486026 0.2045339 0.375 0.3125 0.38749999 0.3125 0.41249996 0.3125 0.43749994 0.3125
		 0.46249992 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.53749985 0.3125 0.54999983
		 0.3125 0.5874998 0.3125 0.59999979 0.3125 0.62499976 0.3125 0.375 0.68843985 0.38749999
		 0.68843985 0.41249996 0.68843985 0.43749994 0.68843985 0.46249992 0.68843985 0.49999988
		 0.68843985 0.51249987 0.68843985 0.54999983 0.68843985 0.5874998 0.68843985 0.59999979
		 0.68843985 0.62499976 0.68843985 0.64860266 0.79546607 0.62640899 0.75190848 0.5
		 0.68749994 0.37359107 0.75190854 0.3513974 0.79546607 0.37359107 0.93559146 0.4517161
		 0.9923526 0.54828387 0.9923526 0.62640893 0.93559146 0.6486026 0.89203393 0.3513974
		 0.20453392;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 21 ".pt[0:20]" -type "float3"  -0.71563876 3.4430294 -5.7943707 
		-0.60551274 3.5122604 -5.5150542 -0.21785282 3.6024771 -5.1510692 0.26132107 3.6024771 
		-5.1510692 0.6489808 3.5122604 -5.5150542 0.64898074 3.2203126 -6.692934 0.26132101 
		3.1300957 -7.0569191 0.021734156 3.1179409 -7.1059589 -0.60551238 3.2203126 -6.692934 
		-0.71563828 3.2895434 -6.4136181 -0.60937142 1.4659659 -3.4860535 -0.62175906 1.5458277 
		-3.2647724 -0.22405833 1.6737384 -2.7887506 0.2675266 1.6737384 -2.7887509 0.66522706 
		1.5458276 -3.2647724 0.65283936 1.2361497 -4.1059051 0.55858433 1.1324896 -4.3854933 
		0.021734133 0.9792074 -4.7989202 -0.51511598 1.1324897 -4.3854933 -0.60937101 1.2361497 
		-4.1059051 0.75910676 3.2895434 -6.4136181;
	setAttr -s 21 ".vt[0:20]"  0.95105714 -1 -0.30901718 0.80901754 -1 -0.5877856
		 0.30901715 -1 -0.95105708 -0.30901715 -1 -0.95105696 -0.80901724 -1 -0.58778542 -0.80901718 -1 0.58778536
		 -0.30901706 -1 0.95105666 -2.9802322e-08 -1 1.000000119209 0.809017 -1 0.5877853
		 0.95105654 -1 0.309017 0.95105714 1 -0.30901718 0.80901754 1 -0.5877856 0.30901715 1 -0.95105708
		 -0.30901715 1 -0.95105696 -0.80901724 1 -0.58778542 -0.95105672 1 0.30901706 -0.80901718 1 0.58778536
		 -2.9802322e-08 1 1.000000119209 0.809017 1 0.5877853 0.95105654 1 0.309017 -0.95105672 -1 0.30901706;
	setAttr -s 47 ".ed[0:46]"  0 1 0 1 2 0 2 3 0 3 4 0 20 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 0 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 10 0 0 10 1 1 11 1 2 12 1 3 13 1 4 14 1 20 15 1 5 16 1 6 17 1 7 17 1 8 18 1
		 9 19 1 20 0 1 20 1 1 20 2 1 20 3 1 20 4 0 20 6 1 20 7 1 20 8 1 20 9 1 10 17 1 11 17 1
		 12 17 1 13 17 1 14 17 1 15 17 1 19 17 1;
	setAttr -s 28 -ch 94 ".fc[0:27]" -type "polyFaces" 
		f 4 0 21 -11 -21
		mu 0 4 10 11 23 22
		f 4 1 22 -12 -22
		mu 0 4 11 12 24 23
		f 4 2 23 -13 -23
		mu 0 4 12 13 25 24
		f 4 3 24 -14 -24
		mu 0 4 13 14 26 25
		f 4 -36 25 -15 -25
		mu 0 4 14 15 27 26
		f 4 4 26 -16 -26
		mu 0 4 15 16 28 27
		f 4 5 27 -17 -27
		mu 0 4 16 17 29 28
		f 3 6 28 -28
		mu 0 3 17 18 29
		f 4 7 29 -18 -29
		mu 0 4 18 19 30 29
		f 4 8 30 -19 -30
		mu 0 4 19 20 31 30
		f 4 9 20 -20 -31
		mu 0 4 20 21 32 31
		f 3 -1 -32 32
		mu 0 3 1 0 43
		f 3 -2 -33 33
		mu 0 3 2 1 43
		f 3 -3 -34 34
		mu 0 3 3 2 43
		f 3 -4 -35 35
		mu 0 3 4 3 43
		f 3 -6 -5 36
		mu 0 3 6 5 43
		f 3 -7 -37 37
		mu 0 3 7 6 43
		f 3 -8 -38 38
		mu 0 3 8 7 43
		f 3 -9 -39 39
		mu 0 3 9 8 43
		f 3 -10 -40 31
		mu 0 3 0 9 43
		f 3 10 41 -41
		mu 0 3 42 41 35
		f 3 11 42 -42
		mu 0 3 41 40 35
		f 3 12 43 -43
		mu 0 3 40 39 35
		f 3 13 44 -44
		mu 0 3 39 38 35
		f 3 14 45 -45
		mu 0 3 38 37 35
		f 3 15 16 -46
		mu 0 3 37 36 35
		f 3 18 46 17
		mu 0 3 34 33 35
		f 3 19 40 -47
		mu 0 3 33 42 35;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube21" -p "|Statue|R_Arm|pCylinder2|pCylinder3";
	rename -uid "2D3BD818-434E-6CEB-674A-BFAE7069FFEC";
	setAttr ".t" -type "double3" 0 2.3176626235090305 -6.3550706442240434 ;
	setAttr ".r" -type "double3" 177.16163866114593 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.5000640118752984 ;
createNode mesh -n "pCubeShape21" -p "|Statue|R_Arm|pCylinder2|pCylinder3|pCube21";
	rename -uid "A5A679F3-8349-4330-65CD-F49FCEA4C0BD";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube20" -p "pCylinder2";
	rename -uid "D89C0370-4E46-0E5C-7C5D-69BD354966C6";
	setAttr ".t" -type "double3" 0.042347530868871636 2.2499943904232311 -3.5703783671318674 ;
	setAttr ".r" -type "double3" 19.240756491609574 0 0 ;
	setAttr ".s" -type "double3" 1.1790432374881716 1 1 ;
createNode mesh -n "pCubeShape20" -p "|Statue|R_Arm|pCylinder2|pCube20";
	rename -uid "A5A5470E-3149-2A6D-6A19-FDB1AD606E19";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.39607881009578705 0.49026936292648315 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 96 ".pt[0:95]" -type "float3"  0 0.054725908 0.38872245 
		0 0.094020531 0.38872245 0 0.094020531 0.38872245 -8.881784e-18 0.17630365 0.38872245 
		-8.881784e-18 0.1271155 0.38872245 -8.881784e-18 0.1271155 0.38872245 -8.881784e-18 
		0.17630365 0.38872245 0 0.094020531 0.38872245 0 0.094020531 0.38872245 0 0.073715016 
		0.38872245 0 -0.19271961 0.38872245 0 -0.19271961 0.38872245 0 -0.24195707 0.38872245 
		-8.881784e-18 -0.27500272 0.38872245 -8.881784e-18 -0.22581454 0.38872245 -8.881784e-18 
		-0.22581454 0.38872245 -8.881784e-18 -0.27500272 0.38872245 0 -0.24195707 0.38872245 
		0 -0.19271961 0.38872245 0 -0.19271961 0.38872245 -0.073191024 0.053729251 -0.045543615 
		-0.054480754 0.072439522 -0.045543615 -0.054480754 0.053729251 -0.064253837 -0.013243432 
		0.066305324 -0.076811209 -0.013243433 0.084996872 -0.058119677 0.013243433 0.084996872 
		-0.058119677 0.013243432 0.066305324 -0.076811209 0.054480754 0.053729251 -0.064253837 
		0.054480754 0.072439522 -0.045543615 0.073191024 0.053729251 -0.045543615 -0.073191032 
		-0.055232231 -0.045543615 -0.054480758 -0.055232231 -0.064253837 -0.054480758 -0.073942535 
		-0.045543615 -0.013243432 -0.086499885 -0.058119677 -0.013243432 -0.067808345 -0.076811209 
		0.013243432 -0.067808345 -0.076811209 0.013243432 -0.086499885 -0.058119677 0.054480758 
		-0.073942535 -0.045543615 0.054480758 -0.055232231 -0.064253837 0.073191032 -0.055232231 
		-0.045543615 0 -0.014498426 0.38872245 0 -0.014498426 0.38872245 0 -0.084200598 0.38872245 
		0 -0.084200598 0.38872245 0 -0.084200598 0.38872245 0 -0.084200598 0.38872245 0 -0.014498426 
		0.38872245 0 -0.014498426 0.38872245 0 -0.22581454 0.38872245 0 -0.27500272 0.38872245 
		0 9.536743e-09 0 0 -1.1920929e-09 0 0 -1.1920929e-09 0 0 9.536743e-09 0 0 -0.27500272 
		0.38872245 -0.010337207 -0.22511427 0.26999885 -0.085748374 0.012491932 -0.058119677 
		-0.067056835 0.012491932 -0.076811209 -0.067056835 -0.013994962 -0.076811209 -0.085748374 
		-0.013994962 -0.058119677 0.085748374 -0.013994962 -0.058119677 0.067056835 -0.013994962 
		-0.076811209 0.067056835 0.012491932 -0.076811209 0.085748374 0.012491932 -0.058119677 
		0 -1.5497207e-08 0 0 1.6689301e-08 0 0 0.087771453 0.38872245 0 0.1271155 0.38872245 
		0 0.1271155 0.38872245 0 0.10676061 0.38872245 0 1.6689301e-08 0 0 -1.5497207e-08 
		0 -8.881784e-18 -0.084165648 0.38872245 -8.881784e-18 -0.014533379 0.38872245 -8.881784e-18 
		-0.014533379 0.38872245 -8.881784e-18 -0.084165648 0.38872245 0 0 0 -8.881784e-18 
		-0.32687721 0.38872245 -8.881784e-18 -0.32687721 0.38872245 0 0 0 -0.013230161 -0.013981673 
		-0.096523687 -0.013230161 0.012478641 -0.096523687 0.013230161 0.012478641 -0.096523687 
		0.013230161 -0.013981673 -0.096523687 -8.881784e-18 0.22817838 0.38872245 0 -7.1525572e-09 
		0 0 -7.1525572e-09 0 -8.881784e-18 0.22817838 0.38872245 0 -0.084165648 0.38872245 
		0 -0.014533379 0.38872245 0 2.9802322e-10 0 0 2.9802323e-09 0 0 2.9802323e-09 0 0 
		2.9802322e-10 0 0 -0.014533379 0.38872245 0 -0.084165648 0.38872245;
createNode transform -n "L_Arm" -p "Statue";
	rename -uid "19008303-B74F-649C-4858-E0A11D2AF6A9";
	setAttr ".s" -type "double3" 0.89111778085220505 0.89111778085220505 0.89111778085220505 ;
createNode transform -n "pCylinder4" -p "L_Arm";
	rename -uid "31485DED-6D4A-C253-2961-319FB5920E1B";
	setAttr ".rp" -type "double3" 0.021734112349864495 2.3627189211952944 -1.4798804492860149 ;
	setAttr ".sp" -type "double3" 0.021734112349864495 2.3627189211952944 -1.4798804492860149 ;
createNode mesh -n "pCylinderShape4" -p "pCylinder4";
	rename -uid "805E1C40-2742-9329-520A-37A526970F78";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999988079071045 0.47271639108657837 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 68 ".uvst[0].uvsp[0:67]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.54828393 0.0076473355 0.45171607 0.0076473504 0.37359107
		 0.064408526 0.37359107 0.24809146 0.4517161 0.3048526 0.5 0.3125 0.62640893 0.24809146
		 0.6486026 0.2045339 0.375 0.3125 0.38749999 0.3125 0.41249996 0.3125 0.43749994 0.3125
		 0.46249992 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.53749985 0.3125 0.54999983
		 0.3125 0.5874998 0.3125 0.59999979 0.3125 0.62499976 0.3125 0.375 0.68843985 0.38749999
		 0.68843985 0.41249996 0.68843985 0.43749994 0.68843985 0.46249992 0.68843985 0.49999988
		 0.68843985 0.51249987 0.68843985 0.54999983 0.68843985 0.5874998 0.68843985 0.59999979
		 0.68843985 0.62499976 0.68843985 0.64860266 0.79546607 0.62640899 0.75190848 0.5
		 0.68749994 0.37359107 0.75190854 0.3513974 0.79546607 0.37359107 0.93559146 0.4517161
		 0.9923526 0.54828387 0.9923526 0.62640893 0.93559146 0.6486026 0.89203393 0.3513974
		 0.20453392 0.62499976 0.61082625 0.375 0.61082625 0.59999979 0.61082625 0.5874998
		 0.61082625 0.54999983 0.61082625 0.54741919 0.61082625 0.51249987 0.61082625 0.49999988
		 0.61082625 0.46249992 0.61082625 0.43749994 0.61082625 0.41249996 0.61082625 0.38749999
		 0.61082625 0.41249996 0.47271639 0.38749999 0.47271639 0.62499976 0.47271639 0.375
		 0.47271639 0.59999979 0.47271639 0.5874998 0.47271639 0.54999983 0.47271639 0.54282707
		 0.47271639 0.51249987 0.47271639 0.49999988 0.47271639 0.46249992 0.47271639 0.43749994
		 0.47271639;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 43 ".pt[0:42]" -type "float3"  0 -0.77575785 0.091310851 
		0 -0.78135598 0.056622382 0 -0.78865081 0.011418794 0 -0.78865081 0.011418794 0 -0.78135598 
		0.056622382 0 -0.75774896 0.20290434 0 -0.75045413 0.24810797 0 -0.74947119 0.25419819 
		0 -0.75774896 0.20290434 0 -0.76334691 0.16821584 0 -0.017497227 0.019793943 0 -0.043094482 
		-0.08892148 0 -0.016639585 -0.15940443 0 -0.016639585 -0.15940443 0 -0.043094467 
		-0.088921383 0 0.0010857192 0.062919423 0 0.0094676204 0.11485887 0 0.021862002 0.1916617 
		0 0.0094676204 0.11485887 0 0.0010857192 0.13494456 0 -0.76334691 0.16821584 0 -0.17763069 
		0.028254893 0 -0.15417789 0.17175728 0 -0.14359941 0.16445991 0 -0.12795688 0.26017275 
		0 -0.12823184 0.2584905 0 -0.14359941 0.16445991 0 -0.15417789 0.099732153 0 -0.20132479 
		-0.093177937 0 -0.18529253 -0.17882457 0 -0.18529253 -0.17882457 0 -0.20132481 -0.093178041 
		0.020890463 -0.37763435 -0.12111135 0.054691963 -0.41509604 -0.042938981 0.083321944 
		-0.42183411 0.0073523377 0.083321907 -0.459999 0.13974604 0.07087785 -0.47721347 
		0.1994631 -1.4210571e-08 -0.50266862 0.2877667 -0.011294416 -0.50140452 0.28339213 
		-0.07087788 -0.47721347 0.1994631 -0.083321944 -0.459999 0.13974604 -0.054691967 
		-0.4150961 -0.042938881 -0.02089048 -0.37763435 -0.12111135;
	setAttr -s 43 ".vt[0:42]"  0.34620112 2.48124933 -3.81386375 0.29774225 2.58637238 -3.81303287
		 0.12715985 2.72336125 -3.81194949 -0.083691552 2.72336125 -3.81194949 -0.25427389 2.58637238 -3.81303287
		 -0.25427386 2.14306688 -3.8165381 -0.083691522 2.0060777664 -3.81762147 0.021734133 1.98762143 -3.81776738
		 0.29774207 2.14306688 -3.8165381 0.34620094 2.24818993 -3.81570673 0.50756186 2.52553892 -1.50537813
		 0.27307329 2.64656639 -1.5625397 0.11773713 2.84124947 -1.44926167 -0.07426884 2.84124947 -1.44926167
		 -0.22960491 2.64656615 -1.5625397 -0.46409345 2.17657661 -1.50813746 -0.39153549 2.019174814 -1.50938237
		 0.021734096 1.78642488 -1.51122284 0.43500367 2.019174814 -1.50938237 0.50756156 2.17657661 -1.50813746
		 -0.30273271 2.24818993 -3.81570673 0.6273849 2.58064747 -1.98196971 0.62738454 2.1456182 -1.98453999
		 0.53693116 1.9493953 -1.98569942 0.02173407 1.6592406 -1.98741364 -0.0073969257 1.66434038 -1.9873836
		 -0.49346307 1.9493953 -1.98569942 -0.58391649 2.1456182 -1.98453999 -0.32147759 2.73823738 -2.027158737
		 -0.10936107 2.98286128 -1.93704343 0.15282933 2.98286128 -1.93704343 0.36494592 2.73823762 -2.027158737
		 0.14094566 2.86272573 -2.80502939 0.33383405 2.6679318 -2.85392737 0.4972111 2.53463125 -2.83004332
		 0.49721089 2.19310355 -2.83227682 0.42619881 2.039055347 -2.83328438 0.0217341 1.81126416 -2.83477426
		 -0.042717438 1.82254744 -2.83469057 -0.38273063 2.039055347 -2.83328438 -0.45374274 2.19310355 -2.83227682
		 -0.2903657 2.66793156 -2.85392737 -0.097477399 2.86272573 -2.80502939;
	setAttr -s 91 ".ed[0:90]"  0 1 0 1 2 0 2 3 0 3 4 0 20 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 0 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 10 0 0 34 1 1 33 1 2 32 1 3 42 1 4 41 1 20 40 1 5 39 1 6 38 1 7 37 1 8 36 1
		 9 35 1 20 0 1 20 1 1 20 2 1 20 3 1 20 4 0 20 6 1 20 7 1 20 8 1 20 9 1 10 17 1 11 17 1
		 12 17 1 13 17 1 14 17 1 15 17 1 19 17 1 21 10 1 22 19 1 21 22 1 23 18 1 22 23 1 24 17 1
		 23 24 1 25 17 1 24 25 1 26 16 1 25 26 1 27 15 1 26 27 1 28 14 1 27 28 1 29 13 1 28 29 1
		 30 12 1 29 30 1 31 11 1 30 31 1 31 21 1 32 30 1 33 31 1 32 33 1 34 21 1 33 34 1 35 22 1
		 34 35 1 36 23 1 35 36 1 37 24 1 36 37 1 38 25 1 37 38 1 39 26 1 38 39 1 40 27 1 39 40 1
		 41 28 1 40 41 1 42 29 1 41 42 1 42 32 1;
	setAttr -s 50 -ch 182 ".fc[0:49]" -type "polyFaces" 
		f 4 0 21 73 -21
		mu 0 4 10 11 57 59
		f 4 1 22 71 -22
		mu 0 4 11 12 56 57
		f 4 2 23 90 -23
		mu 0 4 12 13 67 56
		f 4 3 24 89 -24
		mu 0 4 13 14 66 67
		f 4 -36 25 87 -25
		mu 0 4 14 15 65 66
		f 4 4 26 85 -26
		mu 0 4 15 16 64 65
		f 4 5 27 83 -27
		mu 0 4 16 17 63 64
		f 4 6 28 81 -28
		mu 0 4 17 18 62 63
		f 4 7 29 79 -29
		mu 0 4 18 19 61 62
		f 4 8 30 77 -30
		mu 0 4 19 20 60 61
		f 4 9 20 75 -31
		mu 0 4 20 21 58 60
		f 3 -1 -32 32
		mu 0 3 1 0 43
		f 3 -2 -33 33
		mu 0 3 2 1 43
		f 3 -3 -34 34
		mu 0 3 3 2 43
		f 3 -4 -35 35
		mu 0 3 4 3 43
		f 3 -6 -5 36
		mu 0 3 6 5 43
		f 3 -7 -37 37
		mu 0 3 7 6 43
		f 3 -8 -38 38
		mu 0 3 8 7 43
		f 3 -9 -39 39
		mu 0 3 9 8 43
		f 3 -10 -40 31
		mu 0 3 0 9 43
		f 3 10 41 -41
		mu 0 3 42 41 35
		f 3 11 42 -42
		mu 0 3 41 40 35
		f 3 12 43 -43
		mu 0 3 40 39 35
		f 3 13 44 -44
		mu 0 3 39 38 35
		f 3 14 45 -45
		mu 0 3 38 37 35
		f 3 15 16 -46
		mu 0 3 37 36 35
		f 3 18 46 17
		mu 0 3 34 33 35
		f 3 19 40 -47
		mu 0 3 33 42 35
		f 4 -50 47 -20 -49
		mu 0 4 46 44 32 31
		f 4 -52 48 -19 -51
		mu 0 4 47 46 31 30
		f 4 -54 50 -18 -53
		mu 0 4 48 47 30 29
		f 3 -56 52 -55
		mu 0 3 49 48 29
		f 4 -58 54 -17 -57
		mu 0 4 50 49 29 28
		f 4 -60 56 -16 -59
		mu 0 4 51 50 28 27
		f 4 -62 58 -15 -61
		mu 0 4 52 51 27 26
		f 4 -64 60 -14 -63
		mu 0 4 53 52 26 25
		f 4 -66 62 -13 -65
		mu 0 4 54 53 25 24
		f 4 -68 64 -12 -67
		mu 0 4 55 54 24 23
		f 4 -69 66 -11 -48
		mu 0 4 45 55 23 22
		f 4 -72 69 67 -71
		mu 0 4 57 56 54 55
		f 4 -74 70 68 -73
		mu 0 4 59 57 55 45
		f 4 -76 72 49 -75
		mu 0 4 60 58 44 46
		f 4 -78 74 51 -77
		mu 0 4 61 60 46 47
		f 4 -80 76 53 -79
		mu 0 4 62 61 47 48
		f 4 -82 78 55 -81
		mu 0 4 63 62 48 49
		f 4 -84 80 57 -83
		mu 0 4 64 63 49 50
		f 4 -86 82 59 -85
		mu 0 4 65 64 50 51
		f 4 -88 84 61 -87
		mu 0 4 66 65 51 52
		f 4 -90 86 63 -89
		mu 0 4 67 66 52 53
		f 4 -91 88 65 -70
		mu 0 4 56 67 53 54;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder3" -p "pCylinder4";
	rename -uid "86A0B517-5C42-DA28-25B7-1C84398ADBE2";
	setAttr ".rp" -type "double3" 0.021734112349864509 1.6001611888277949 -3.6569482917038552 ;
	setAttr ".sp" -type "double3" 0.021734112349864509 1.6001611888277949 -3.6569482917038552 ;
createNode mesh -n "pCylinderShape3" -p "|Statue|L_Arm|pCylinder4|pCylinder3";
	rename -uid "4336291C-2649-213B-502E-AF855C6C968E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50018250942230225 0.49617629870772362 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 56 ".uvst[0].uvsp[0:55]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.54828393 0.0076473355 0.45171607 0.0076473504 0.37359107
		 0.064408526 0.37359107 0.24809146 0.4517161 0.3048526 0.5 0.3125 0.62640893 0.24809146
		 0.6486026 0.2045339 0.375 0.3125 0.38749999 0.3125 0.41249996 0.3125 0.43749994 0.3125
		 0.46249992 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.53749985 0.3125 0.54999983
		 0.3125 0.5874998 0.3125 0.59999979 0.3125 0.62499976 0.3125 0.375 0.68843985 0.38749999
		 0.68843985 0.41249996 0.68843985 0.43749994 0.68843985 0.46249992 0.68843985 0.49999988
		 0.68843985 0.51249987 0.68843985 0.54999983 0.68843985 0.5874998 0.68843985 0.59999979
		 0.68843985 0.62499976 0.68843985 0.64860266 0.79546607 0.62640899 0.75190848 0.5
		 0.68749994 0.37359107 0.75190854 0.3513974 0.79546607 0.37359107 0.93559146 0.4517161
		 0.9923526 0.54828387 0.9923526 0.62640893 0.93559146 0.6486026 0.89203393 0.3513974
		 0.20453392 0.62499976 0.53175598 0.375 0.53175598 0.59999979 0.53175598 0.5874998
		 0.53175598 0.54999983 0.53175598 0.54479009 0.53175598 0.51249987 0.53175598 0.49999988
		 0.53175598 0.46249992 0.53175598 0.43749994 0.53175598 0.41249996 0.53175598 0.38749999
		 0.53175598;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 32 ".pt[0:31]" -type "float3"  0 -2.1379616 4.369184 0 -2.2656684 
		4.3315716 0 -2.4320872 4.2825584 0 -2.4320872 4.2825584 0 -2.2656684 4.3315716 0 
		-1.7271254 4.4901795 0 -1.5607071 4.5391936 0 -1.5382859 4.5457978 0 -1.7271256 4.4901805 
		0 -1.8548329 4.452569 0 -0.96005678 0.089361086 0 -1.1380993 0.15342575 0 -1.3149786 
		-0.12265182 0 -1.3149786 -0.12265182 0 -1.138099 0.15342526 0 -0.53612518 0.21421523 
		0 -0.34490833 0.27053142 0 -0.062155582 0.35380578 0 -0.34490833 0.27053142 0 -0.53612518 
		0.21421523 0 -1.8548324 4.4525676 0.11948302 -1.4965374 1.8447298 0.11948293 -1.0584397 
		1.9976714 0.10163825 -0.86083364 2.0666571 -2.0746075e-08 -0.56863284 2.1686656 -0.012542521 
		-0.57984155 2.1647527 -0.10163829 -0.86083353 2.0666566 -0.119483 -1.0584397 1.9976714 
		-0.074679911 -1.6813533 1.849133 -0.028525205 -1.8951534 1.6419815 0.028525174 -1.8951534 
		1.6419815 0.074679926 -1.6813539 1.8491335;
	setAttr -s 32 ".vt[0:31]"  0.23541839 2.4430294 -6.10338783 0.20350483 2.51226044 -6.10283995
		 0.091164321 2.60247707 -6.1021266 -0.047696076 2.60247707 -6.1021266 -0.16003647 2.51226044 -6.10283995
		 -0.16003647 2.2203126 -6.10514832 -0.047696058 2.13009572 -6.10586262 0.021734128 2.1179409 -6.10595894
		 0.20350468 2.2203126 -6.10514879 0.23541825 2.28954339 -6.10460138 0.34168571 2.46596599 -3.79507089
		 0.18725853 2.54582787 -3.8525579 0.084958822 2.67373848 -3.73980784 -0.041490555 2.67373848 -3.73980784
		 -0.1437902 2.54582763 -3.85255766 -0.29821739 2.23614955 -3.79688811 -0.25043285 2.13248968 -3.7977078
		 0.021734104 1.97920752 -3.79891968 0.29390106 2.13248968 -3.7977078 0.34168553 2.23614955 -3.79688811
		 -0.19194999 2.28954339 -6.10460091 0.29739574 2.45640659 -4.75712872 0.29739556 2.25840306 -4.75869465
		 0.25622573 2.16909242 -4.75940084 0.021734113 2.037028551 -4.76044512 -0.0072029317 2.042094469 -4.76040506
		 -0.21275753 2.16909242 -4.75940084 -0.25392738 2.25840306 -4.75869465 -0.15056132 2.53183746 -4.79042816
		 -0.044076886 2.6440382 -4.72437239 0.087545149 2.6440382 -4.72437239 0.19402966 2.5318377 -4.79042864;
	setAttr -s 69 ".ed[0:68]"  0 1 0 1 2 0 2 3 0 3 4 0 20 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 0 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 10 0 0 21 1 1 31 1 2 30 1 3 29 1 4 28 1 20 27 1 5 26 1 6 25 1 7 24 1 8 23 1
		 9 22 1 20 0 1 20 1 1 20 2 1 20 3 1 20 4 0 20 6 1 20 7 1 20 8 1 20 9 1 10 17 1 11 17 1
		 12 17 1 13 17 1 14 17 1 15 17 1 19 17 1 21 10 1 22 19 1 21 22 1 23 18 1 22 23 1 24 17 1
		 23 24 1 25 17 1 24 25 1 26 16 1 25 26 1 27 15 1 26 27 1 28 14 1 27 28 1 29 13 1 28 29 1
		 30 12 1 29 30 1 31 11 1 30 31 1 31 21 1;
	setAttr -s 39 -ch 138 ".fc[0:38]" -type "polyFaces" 
		f 4 0 21 68 -21
		mu 0 4 10 11 55 45
		f 4 1 22 67 -22
		mu 0 4 11 12 54 55
		f 4 2 23 65 -23
		mu 0 4 12 13 53 54
		f 4 3 24 63 -24
		mu 0 4 13 14 52 53
		f 4 -36 25 61 -25
		mu 0 4 14 15 51 52
		f 4 4 26 59 -26
		mu 0 4 15 16 50 51
		f 4 5 27 57 -27
		mu 0 4 16 17 49 50
		f 4 6 28 55 -28
		mu 0 4 17 18 48 49
		f 4 7 29 53 -29
		mu 0 4 18 19 47 48
		f 4 8 30 51 -30
		mu 0 4 19 20 46 47
		f 4 9 20 49 -31
		mu 0 4 20 21 44 46
		f 3 -1 -32 32
		mu 0 3 1 0 43
		f 3 -2 -33 33
		mu 0 3 2 1 43
		f 3 -3 -34 34
		mu 0 3 3 2 43
		f 3 -4 -35 35
		mu 0 3 4 3 43
		f 3 -6 -5 36
		mu 0 3 6 5 43
		f 3 -7 -37 37
		mu 0 3 7 6 43
		f 3 -8 -38 38
		mu 0 3 8 7 43
		f 3 -9 -39 39
		mu 0 3 9 8 43
		f 3 -10 -40 31
		mu 0 3 0 9 43
		f 3 10 41 -41
		mu 0 3 42 41 35
		f 3 11 42 -42
		mu 0 3 41 40 35
		f 3 12 43 -43
		mu 0 3 40 39 35
		f 3 13 44 -44
		mu 0 3 39 38 35
		f 3 14 45 -45
		mu 0 3 38 37 35
		f 3 15 16 -46
		mu 0 3 37 36 35
		f 3 18 46 17
		mu 0 3 34 33 35
		f 3 19 40 -47
		mu 0 3 33 42 35
		f 4 -50 47 -20 -49
		mu 0 4 46 44 32 31
		f 4 -52 48 -19 -51
		mu 0 4 47 46 31 30
		f 4 -54 50 -18 -53
		mu 0 4 48 47 30 29
		f 3 -56 52 -55
		mu 0 3 49 48 29
		f 4 -58 54 -17 -57
		mu 0 4 50 49 29 28
		f 4 -60 56 -16 -59
		mu 0 4 51 50 28 27
		f 4 -62 58 -15 -61
		mu 0 4 52 51 27 26
		f 4 -64 60 -14 -63
		mu 0 4 53 52 26 25
		f 4 -66 62 -13 -65
		mu 0 4 54 53 25 24
		f 4 -68 64 -12 -67
		mu 0 4 55 54 24 23
		f 4 -69 66 -11 -48
		mu 0 4 45 55 23 22;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape2" -p "|Statue|L_Arm|pCylinder4|pCylinder3";
	rename -uid "0A76475D-5440-21D5-55A7-A49A62F81A12";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.43749994039535522 0.50046992301940918 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 44 ".uvst[0].uvsp[0:43]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.54828393 0.0076473355 0.45171607 0.0076473504 0.37359107
		 0.064408526 0.37359107 0.24809146 0.4517161 0.3048526 0.5 0.3125 0.62640893 0.24809146
		 0.6486026 0.2045339 0.375 0.3125 0.38749999 0.3125 0.41249996 0.3125 0.43749994 0.3125
		 0.46249992 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.53749985 0.3125 0.54999983
		 0.3125 0.5874998 0.3125 0.59999979 0.3125 0.62499976 0.3125 0.375 0.68843985 0.38749999
		 0.68843985 0.41249996 0.68843985 0.43749994 0.68843985 0.46249992 0.68843985 0.49999988
		 0.68843985 0.51249987 0.68843985 0.54999983 0.68843985 0.5874998 0.68843985 0.59999979
		 0.68843985 0.62499976 0.68843985 0.64860266 0.79546607 0.62640899 0.75190848 0.5
		 0.68749994 0.37359107 0.75190854 0.3513974 0.79546607 0.37359107 0.93559146 0.4517161
		 0.9923526 0.54828387 0.9923526 0.62640893 0.93559146 0.6486026 0.89203393 0.3513974
		 0.20453392;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 21 ".pt[0:20]" -type "float3"  -0.71563876 3.4430294 -5.7943707 
		-0.60551274 3.5122604 -5.5150542 -0.21785282 3.6024771 -5.1510692 0.26132107 3.6024771 
		-5.1510692 0.6489808 3.5122604 -5.5150542 0.64898074 3.2203126 -6.692934 0.26132101 
		3.1300957 -7.0569191 0.021734156 3.1179409 -7.1059589 -0.60551238 3.2203126 -6.692934 
		-0.71563828 3.2895434 -6.4136181 -0.60937142 1.4659659 -3.4860535 -0.62175906 1.5458277 
		-3.2647724 -0.22405833 1.6737384 -2.7887506 0.2675266 1.6737384 -2.7887509 0.66522706 
		1.5458276 -3.2647724 0.65283936 1.2361497 -4.1059051 0.55858433 1.1324896 -4.3854933 
		0.021734133 0.9792074 -4.7989202 -0.51511598 1.1324897 -4.3854933 -0.60937101 1.2361497 
		-4.1059051 0.75910676 3.2895434 -6.4136181;
	setAttr -s 21 ".vt[0:20]"  0.95105714 -1 -0.30901718 0.80901754 -1 -0.5877856
		 0.30901715 -1 -0.95105708 -0.30901715 -1 -0.95105696 -0.80901724 -1 -0.58778542 -0.80901718 -1 0.58778536
		 -0.30901706 -1 0.95105666 -2.9802322e-08 -1 1.000000119209 0.809017 -1 0.5877853
		 0.95105654 -1 0.309017 0.95105714 1 -0.30901718 0.80901754 1 -0.5877856 0.30901715 1 -0.95105708
		 -0.30901715 1 -0.95105696 -0.80901724 1 -0.58778542 -0.95105672 1 0.30901706 -0.80901718 1 0.58778536
		 -2.9802322e-08 1 1.000000119209 0.809017 1 0.5877853 0.95105654 1 0.309017 -0.95105672 -1 0.30901706;
	setAttr -s 47 ".ed[0:46]"  0 1 0 1 2 0 2 3 0 3 4 0 20 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 0 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 10 0 0 10 1 1 11 1 2 12 1 3 13 1 4 14 1 20 15 1 5 16 1 6 17 1 7 17 1 8 18 1
		 9 19 1 20 0 1 20 1 1 20 2 1 20 3 1 20 4 0 20 6 1 20 7 1 20 8 1 20 9 1 10 17 1 11 17 1
		 12 17 1 13 17 1 14 17 1 15 17 1 19 17 1;
	setAttr -s 28 -ch 94 ".fc[0:27]" -type "polyFaces" 
		f 4 0 21 -11 -21
		mu 0 4 10 11 23 22
		f 4 1 22 -12 -22
		mu 0 4 11 12 24 23
		f 4 2 23 -13 -23
		mu 0 4 12 13 25 24
		f 4 3 24 -14 -24
		mu 0 4 13 14 26 25
		f 4 -36 25 -15 -25
		mu 0 4 14 15 27 26
		f 4 4 26 -16 -26
		mu 0 4 15 16 28 27
		f 4 5 27 -17 -27
		mu 0 4 16 17 29 28
		f 3 6 28 -28
		mu 0 3 17 18 29
		f 4 7 29 -18 -29
		mu 0 4 18 19 30 29
		f 4 8 30 -19 -30
		mu 0 4 19 20 31 30
		f 4 9 20 -20 -31
		mu 0 4 20 21 32 31
		f 3 -1 -32 32
		mu 0 3 1 0 43
		f 3 -2 -33 33
		mu 0 3 2 1 43
		f 3 -3 -34 34
		mu 0 3 3 2 43
		f 3 -4 -35 35
		mu 0 3 4 3 43
		f 3 -6 -5 36
		mu 0 3 6 5 43
		f 3 -7 -37 37
		mu 0 3 7 6 43
		f 3 -8 -38 38
		mu 0 3 8 7 43
		f 3 -9 -39 39
		mu 0 3 9 8 43
		f 3 -10 -40 31
		mu 0 3 0 9 43
		f 3 10 41 -41
		mu 0 3 42 41 35
		f 3 11 42 -42
		mu 0 3 41 40 35
		f 3 12 43 -43
		mu 0 3 40 39 35
		f 3 13 44 -44
		mu 0 3 39 38 35
		f 3 14 45 -45
		mu 0 3 38 37 35
		f 3 15 16 -46
		mu 0 3 37 36 35
		f 3 18 46 17
		mu 0 3 34 33 35
		f 3 19 40 -47
		mu 0 3 33 42 35;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube21" -p "|Statue|L_Arm|pCylinder4|pCylinder3";
	rename -uid "5FE988DF-FE47-3171-124F-A19C382E0485";
	setAttr ".rp" -type "double3" 0 0.27842950841153424 -1.4542908467791267 ;
	setAttr ".sp" -type "double3" 0 0.27842950841153424 -1.4542908467791267 ;
createNode mesh -n "pCubeShape21" -p "|Statue|L_Arm|pCylinder4|pCylinder3|pCube21";
	rename -uid "428762D2-A04B-3A59-2DD3-A08BBA8E6AB2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.375 0.625 0.375 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75
		 0.375 0.875 0.625 0.875 0.625 1 0.375 1 0.75 0 0.875 0 0.875 0.25 0.75 0.25 0.125
		 0 0.25 0 0.25 0.25 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  0 0.11093845 -1.5028915 0 
		0.44592056 -1.4056902 0 0.51593614 -1.6756771 0 0.040922832 -1.2329047 0 0.23116896 
		-1.2720497 0 0.23116896 -1.2720497 0 0.44592056 -1.4056902 0 0.51593614 -1.6756771 
		0 0.32569003 -1.6365319 0 0.32569003 -1.6365319 0 0.11093845 -1.5028915 0 0.040922832 
		-1.2329047;
	setAttr -s 12 ".vt[0:11]"  -0.27777779 -0.27777779 0.27777779 -0.27777779 0.27777779 -0.27777779
		 -0.27777779 -0.27777779 -0.27777779 0.27777779 0.27777779 0.27777779 -0.375 0.375 0
		 0.375 0.375 0 0.27777779 0.27777779 -0.27777779 0.27777779 -0.27777779 -0.27777779
		 -0.375 -0.375 0 0.375 -0.375 0 0.27777779 -0.27777779 0.27777779 -0.27777779 0.27777779 0.27777779;
	setAttr -s 20 ".ed[0:19]"  0 10 1 1 6 1 2 7 1 0 11 1 10 3 1 1 2 1 6 7 1
		 2 8 1 8 0 1 7 9 1 9 10 1 3 11 1 5 4 1 9 8 1 9 5 1 5 3 1 6 5 1 8 4 1 4 1 1 11 4 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 4 11 -4
		mu 0 4 0 1 3 2
		f 4 -12 -16 12 -20
		mu 0 4 2 3 5 4
		f 4 -13 -17 -2 -19
		mu 0 4 4 5 6 7
		f 4 1 6 -3 -6
		mu 0 4 7 6 8 9
		f 4 2 9 13 -8
		mu 0 4 9 8 11 10
		f 4 -14 10 -1 -9
		mu 0 4 10 11 12 13
		f 4 -11 14 15 -5
		mu 0 4 1 14 17 3
		f 4 -10 -7 16 -15
		mu 0 4 14 15 16 17
		f 4 7 17 18 5
		mu 0 4 18 19 20 21
		f 4 8 3 19 -18
		mu 0 4 19 0 2 20;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube20" -p "pCylinder4";
	rename -uid "0C8C6442-EE47-8C48-9D00-D6981FDB1766";
	setAttr ".rp" -type "double3" 0.042347530868871636 1.5673917393820538 -3.4164606924529828 ;
	setAttr ".sp" -type "double3" 0.042347530868871636 1.5673917393820538 -3.4164606924529828 ;
createNode mesh -n "pCubeShape20" -p "|Statue|L_Arm|pCylinder4|pCube20";
	rename -uid "59190990-E046-7714-3A5D-A3B4ECF4F6BD";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.39607881009578705 0.49026936292648315 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 131 ".uvst[0].uvsp[0:130]" -type "float2" 0.39409629 0.98053873
		 0.375 0.97693866 0.375 0.90628415 0.39806134 0 0.39409629 0.019461371 0.52607405
		 0.97955525 0.47392592 0.97955525 0.53128415 0 0.52607411 0.020444723 0.625 0.97693866
		 0.60590369 0.98053867 0.625 0.90628415 0.64446139 0.019096341 0.375 0.27306134 0.375
		 0.34371585 0.35590366 0.23053859 0.3944613 0.23090369 0.47392589 0.22955528 0.52607411
		 0.22955528 0.625 0.27306134 0.60553873 0.23090369 0.375 0.52306134 0.375 0.59371585
		 0.375 0.47693866 0.375 0.40628415 0.39446136 0.48090371 0.47392592 0.47955525 0.52607405
		 0.47955525 0.625 0.52306134 0.60553861 0.48090369 0.625 0.40628415 0.375 0.77306134
		 0.375 0.84371585 0.37500003 0.72693866 0.375 0.65628415 0.3944613 0.73090369 0.47392589
		 0.72955525 0.52607411 0.72955525 0.625 0.77306134 0.60553873 0.73090369 0.625 0.65628409
		 0.35455525 0.15107411 0.39544472 0.098925859 0.47491357 0.10017169 0.47517169 0.15008646
		 0.64544475 0.098925874 0.60455525 0.15107414 0.52482831 0.15008646 0.52482831 0.09991356
		 0.22392587 0.22955525 0.27508649 0.14982834 0.39544472 0.34892586 0.47517169 0.34991348
		 0.47517166 0.40008652 0.72392583 0.22955526 0.72517157 0.15008646 0.60455525 0.40107411
		 0.52482831 0.40008652 0.52482831 0.34991351 0.14544474 0.098925874 0.22517161 0.15008648
		 0.39544472 0.59892583 0.47491354 0.60017169 0.47517169 0.65008646 0.85455525 0.15107411
		 0.77482837 0.15008648 0.60455525 0.65107417 0.52482831 0.65008646 0.52508646 0.60017169
		 0.27607411 0.020444743 0.27508649 0.10017167 0.22491351 0.10017167 0.39544475 0.84892583
		 0.47491354 0.85017157 0.47517169 0.90008646 0.77607411 0.020444743 0.77508646 0.10017167
		 0.72491348 0.10017167 0.60455525 0.90107411 0.52482831 0.90008646 0.52482831 0.84991354
		 0.47392589 0.020444734 0.60590374 0.019461373 0.60455525 0.098925859 0.39544472 0.15107414
		 0.39409629 0.26946133 0.47392589 0.27044475 0.52607411 0.27044475 0.60553861 0.26909631
		 0.60455525 0.34892589 0.39544475 0.40107411 0.39409629 0.51946133 0.47392589 0.52044475
		 0.52607411 0.52044475 0.60590369 0.51946127 0.60455525 0.59892583 0.39544472 0.65107417
		 0.39409629 0.76946133 0.47392592 0.77044475 0.52607405 0.77044475 0.60553861 0.76909631
		 0.60455531 0.84892595 0.39544475 0.90107411 0.72392589 0.020444738 0.85590369 0.019461401
		 0.85455525 0.098925874 0.85553873 0.2309037 0.77607411 0.22955526 0.64544475 0.15107411
		 0.64409631 0.23053862 0.14446135 0.019096341 0.22392587 0.020444738 0.35590369 0.019461401
		 0.35455525 0.098925874 0.27607411 0.22955526 0.14544474 0.15107413 0.14446133 0.23090371
		 0.5 0 0.46871585 0 0.60193872 -7.4505806e-09 0.62500006 0.47693866 0.625 0.72693861
		 0.375 0.375 0.625 0.375 0.625 0.34371585 0.375 0.625 0.625 0.625 0.625 0.59371585
		 0.375 0.875 0.625 0.875 0.625 0.84371585;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 96 ".pt[0:95]" -type "float3"  -0.00032980682 1.6221178 
		-3.0277381 -0.00032980682 1.6614124 -3.0277381 -0.014986444 1.6614124 -3.0277381 
		0.052721735 1.7436955 -3.0277381 0.052721735 1.6945072 -3.0277381 0.031973332 1.6945072 
		-3.0277381 0.031973332 1.7436955 -3.0277381 0.099681512 1.6614124 -3.0277381 0.085024871 
		1.6614124 -3.0277381 0.085024871 1.6411068 -3.0277381 -0.014986444 1.3746723 -3.0277381 
		-0.00032980682 1.3746723 -3.0277381 -0.00032980682 1.3254347 -3.0277381 0.031973332 
		1.292389 -3.0277381 0.031973332 1.3415773 -3.0277381 0.052721735 1.3415773 -3.0277381 
		0.052721735 1.292389 -3.0277381 0.085024871 1.3254347 -3.0277381 0.085024871 1.3746723 
		-3.0277381 0.099681512 1.3746723 -3.0277381 -0.10128182 1.621121 -3.4620042 -0.064564966 
		1.6398314 -3.4620042 -0.064564966 1.621121 -3.4807143 0.01635875 1.6336972 -3.4932718 
		0.016358748 1.6523886 -3.4745803 0.068336308 1.6523886 -3.4745803 0.068336308 1.6336972 
		-3.4932718 0.14926003 1.621121 -3.4807143 0.14926003 1.6398314 -3.4620042 0.18597689 
		1.621121 -3.4620042 -0.10128184 1.5121596 -3.4620042 -0.064564973 1.5121596 -3.4807143 
		-0.064564973 1.4934492 -3.4620042 0.01635875 1.4808918 -3.4745803 0.01635875 1.4995835 
		-3.4932718 0.068336308 1.4995835 -3.4932718 0.068336308 1.4808918 -3.4745803 0.14926004 
		1.4934492 -3.4620042 0.14926004 1.5121596 -3.4807143 0.18597691 1.5121596 -3.4620042 
		-0.024823204 1.5528934 -3.0277381 -0.010181239 1.5528934 -3.0277381 -0.010181239 
		1.4831913 -3.0277381 -0.024823204 1.4831913 -3.0277381 0.10951826 1.4831913 -3.0277381 
		0.094876297 1.4831913 -3.0277381 0.094876297 1.5528934 -3.0277381 0.10951826 1.5528934 
		-3.0277381 -0.024823204 1.3415773 -3.0277381 -0.010181239 1.292389 -3.0277381 -0.010181239 
		1.5673919 -3.4164605 -0.024823204 1.5673919 -3.4164605 0.10951826 1.5673919 -3.4164605 
		0.094876297 1.5673919 -3.4164605 0.094876297 1.292389 -3.0277381 0.097330242 1.3422775 
		-3.1464617 -0.12592424 1.5798837 -3.4745803 -0.08924415 1.5798837 -3.4932718 -0.08924415 
		1.5533969 -3.4932718 -0.12592424 1.5533969 -3.4745803 0.21061932 1.5533969 -3.4745803 
		0.17393921 1.5533969 -3.4932718 0.17393921 1.5798837 -3.4932718 0.21061932 1.5798837 
		-3.4745803 -0.024823204 1.5673919 -3.4164605 -0.010181239 1.5673919 -3.4164605 -0.010181239 
		1.6551633 -3.0277381 -0.024823204 1.6945072 -3.0277381 0.10951826 1.6945072 -3.0277381 
		0.094876297 1.6741524 -3.0277381 0.094876297 1.5673919 -3.4164605 0.10951826 1.5673919 
		-3.4164605 0.031983722 1.4832262 -3.0277381 0.031983722 1.5528585 -3.0277381 0.052711338 
		1.5528585 -3.0277381 0.052711338 1.4832262 -3.0277381 0.031983722 1.5673919 -3.4164605 
		0.031983722 1.2405146 -3.0277381 0.052711338 1.2405146 -3.0277381 0.052711338 1.5673919 
		-3.4164605 0.016384793 1.5534102 -3.5129843 0.016384793 1.5798705 -3.5129843 0.068310268 
		1.5798705 -3.5129843 0.068310268 1.5534102 -3.5129843 0.031983722 1.7955703 -3.0277381 
		0.031983722 1.5673919 -3.4164605 0.052711338 1.5673919 -3.4164605 0.052711338 1.7955703 
		-3.0277381 0.12495995 1.4832262 -3.0277381 0.12495995 1.5528585 -3.0277381 0.12495995 
		1.5673919 -3.4164605 0.12495995 1.5673919 -3.4164605 -0.040264882 1.5673919 -3.4164605 
		-0.040264882 1.5673919 -3.4164605 -0.040264882 1.5528585 -3.0277381 -0.040264882 
		1.4832262 -3.0277381;
	setAttr -s 96 ".vt[0:95]"  -0.23836331 -0.32022417 0.23836334 -0.23836331 -0.23836319 0.32022399
		 -0.3202242 -0.23836319 0.23836334 0.057942435 -0.37516487 0.29338592 0.057942435 -0.29338592 0.37516481
		 -0.057942435 -0.29338592 0.37516481 -0.057942435 -0.37516487 0.29338592 0.3202242 -0.23836319 0.23836334
		 0.23836331 -0.23836319 0.32022399 0.23836331 -0.32022417 0.23836334 -0.3202242 0.23836319 0.23836334
		 -0.23836331 0.23836319 0.32022399 -0.23836331 0.32022417 0.23836334 -0.057942435 0.37516481 0.29338592
		 -0.057942435 0.29338592 0.37516481 0.057942435 0.29338592 0.37516481 0.057942435 0.37516481 0.29338592
		 0.23836331 0.32022417 0.23836334 0.23836331 0.23836319 0.32022399 0.3202242 0.23836319 0.23836334
		 -0.32022417 0.23836334 -0.23836334 -0.23836328 0.32022417 -0.23836334 -0.23836328 0.23836334 -0.32022399
		 -0.057942439 0.29338592 -0.37516481 -0.057942443 0.37516496 -0.29338592 0.057942443 0.37516496 -0.29338592
		 0.057942439 0.29338592 -0.37516481 0.23836328 0.23836334 -0.32022399 0.23836328 0.32022417 -0.23836334
		 0.32022417 0.23836334 -0.23836334 -0.3202242 -0.23836319 -0.23836334 -0.23836331 -0.23836319 -0.32022399
		 -0.23836331 -0.32022417 -0.23836334 -0.057942435 -0.37516487 -0.29338592 -0.057942435 -0.29338592 -0.37516481
		 0.057942435 -0.29338592 -0.37516481 0.057942435 -0.37516487 -0.29338592 0.23836331 -0.32022417 -0.23836334
		 0.23836331 -0.23836319 -0.32022399 0.3202242 -0.23836319 -0.23836334 -0.37516487 -0.057942506 0.29338592
		 -0.29338595 -0.057942506 0.37516481 -0.29338595 0.057942506 0.37516481 -0.37516487 0.057942506 0.29338592
		 0.37516487 0.057942506 0.29338592 0.29338595 0.057942506 0.37516481 0.29338595 -0.057942506 0.37516481
		 0.37516487 -0.057942506 0.29338592 -0.37516487 0.29338592 0.057942506 -0.29338595 0.37516481 0.057942506
		 -0.29338595 0.37516496 -0.057942506 -0.37516487 0.29338592 -0.057942506 0.37516487 0.29338592 -0.057942506
		 0.29338595 0.37516496 -0.057942506 0.29338595 0.37516481 0.057942506 0.37516487 0.29338592 0.057942506
		 -0.37516487 0.057942506 -0.29338592 -0.29338595 0.057942506 -0.37516481 -0.29338595 -0.057942506 -0.37516481
		 -0.37516487 -0.057942506 -0.29338592 0.37516487 -0.057942506 -0.29338592 0.29338595 -0.057942506 -0.37516481
		 0.29338595 0.057942506 -0.37516481 0.37516487 0.057942506 -0.29338592 -0.37516487 -0.29338592 -0.057942506
		 -0.29338595 -0.37516487 -0.057942506 -0.29338595 -0.37516487 0.057942506 -0.37516487 -0.29338592 0.057942506
		 0.37516487 -0.29338592 0.057942506 0.29338595 -0.37516487 0.057942506 0.29338595 -0.37516487 -0.057942506
		 0.37516487 -0.29338592 -0.057942506 -0.05788438 0.057884369 0.46141052 -0.05788438 -0.057884369 0.46141052
		 0.05788438 -0.057884369 0.46141052 0.05788438 0.057884369 0.46141052 -0.05788438 0.46141037 -0.057884522
		 -0.05788438 0.46141037 0.057884522 0.05788438 0.46141037 0.057884522 0.05788438 0.46141037 -0.057884522
		 -0.05788438 -0.057884369 -0.46141052 -0.05788438 0.057884369 -0.46141052 0.05788438 0.057884369 -0.46141052
		 0.05788438 -0.057884369 -0.46141052 -0.05788438 -0.46141043 0.057884522 -0.05788438 -0.46141043 -0.057884522
		 0.05788438 -0.46141043 -0.057884522 0.05788438 -0.46141043 0.057884522 0.4614104 0.057884369 0.057884522
		 0.4614104 -0.057884369 0.057884522 0.4614104 -0.057884369 -0.057884522 0.4614104 0.057884369 -0.057884522
		 -0.4614104 0.057884369 -0.057884522 -0.4614104 -0.057884369 -0.057884522 -0.4614104 -0.057884369 0.057884522
		 -0.4614104 0.057884369 0.057884522;
	setAttr -s 192 ".ed";
	setAttr ".ed[0:165]"  0 2 1 2 67 1 67 66 1 66 0 1 1 0 1 0 6 1 6 5 1 5 1 1
		 2 1 1 1 41 1 41 40 1 40 2 1 3 6 1 6 84 1 84 87 1 87 3 1 4 3 1 3 9 1 9 8 1 8 4 1 5 4 1
		 4 74 1 74 73 1 73 5 1 7 9 1 9 69 1 69 68 1 68 7 1 8 7 1 7 47 1 47 46 1 46 8 1 10 12 1
		 12 49 1 49 48 1 48 10 1 11 10 1 10 43 1 43 42 1 42 11 1 12 11 1 11 14 1 14 13 1 13 12 1
		 13 16 1 16 78 1 78 77 1 77 13 1 15 14 1 14 72 1 72 75 1 75 15 1 16 15 1 15 18 1 18 17 1
		 17 16 1 17 19 1 19 55 1 55 54 1 54 17 1 19 18 1 18 45 1 45 44 1 44 19 1 20 22 1 22 57 1
		 57 56 1 56 20 1 21 20 1 20 51 1 51 50 1 50 21 1 22 21 1 21 24 1 24 23 1 23 22 1 23 26 1
		 26 82 1 82 81 1 81 23 1 25 24 1 24 76 1 76 79 1 79 25 1 26 25 1 25 28 1 28 27 1 27 26 1
		 27 29 1 29 63 1 63 62 1 62 27 1 29 28 1 28 53 1 53 52 1 52 29 1 30 32 1 32 65 1 65 64 1
		 64 30 1 31 30 1 30 59 1 59 58 1 58 31 1 32 31 1 31 34 1 34 33 1 33 32 1 33 36 1 36 86 1
		 86 85 1 85 33 1 35 34 1 34 80 1 80 83 1 83 35 1 36 35 1 35 38 1 38 37 1 37 36 1 37 39 1
		 39 71 1 71 70 1 70 37 1 39 38 1 38 61 1 61 60 1 60 39 1 40 43 1 43 95 1 95 94 1 94 40 1
		 42 41 1 41 73 1 73 72 1 72 42 1 44 47 1 47 89 1 89 88 1 88 44 1 46 45 1 45 75 1 75 74 1
		 74 46 1 48 51 1 51 92 1 92 95 1 95 48 1 50 49 1 49 77 1 77 76 1 76 50 1 52 55 1 55 88 1
		 88 91 1 91 52 1 54 53 1 53 79 1 79 78 1 78 54 1 56 59 1 59 93 1 93 92 1 92 56 1 58 57 1
		 57 81 1;
	setAttr ".ed[166:191]" 81 80 1 80 58 1 60 63 1 63 91 1 91 90 1 90 60 1 62 61 1
		 61 83 1 83 82 1 82 62 1 64 67 1 67 94 1 94 93 1 93 64 1 66 65 1 65 85 1 85 84 1 84 66 1
		 68 71 1 71 90 1 90 89 1 89 68 1 70 69 1 69 87 1 87 86 1 86 70 1;
	setAttr -s 98 -ch 384 ".fc[0:97]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 102
		f 4 4 5 6 7
		mu 0 4 4 3 118 81
		f 4 8 9 10 11
		mu 0 4 112 4 42 113
		f 4 12 13 14 15
		mu 0 4 5 6 74 79
		f 4 16 17 18 19
		mu 0 4 8 7 119 82
		f 4 20 21 22 23
		mu 0 4 81 8 48 43
		f 4 24 25 26 27
		mu 0 4 9 10 78 11
		f 4 28 29 30 31
		mu 0 4 82 12 45 83
		f 4 32 33 34 35
		mu 0 4 13 85 51 14
		f 4 36 37 38 39
		mu 0 4 16 15 41 84
		f 4 40 41 42 43
		mu 0 4 85 16 17 86
		f 4 44 45 46 47
		mu 0 4 86 87 58 52
		f 4 48 49 50 51
		mu 0 4 18 17 44 47
		f 4 52 53 54 55
		mu 0 4 87 18 20 88
		f 4 56 57 58 59
		mu 0 4 88 19 124 89
		f 4 60 61 62 63
		mu 0 4 109 20 46 108
		f 4 64 65 66 67
		mu 0 4 21 91 61 22
		f 4 68 69 70 71
		mu 0 4 25 23 24 90
		f 4 72 73 74 75
		mu 0 4 91 25 26 92
		f 4 76 77 78 79
		mu 0 4 92 93 68 62
		f 4 80 81 82 83
		mu 0 4 27 26 53 57
		f 4 84 85 86 87
		mu 0 4 93 27 29 94
		f 4 88 89 90 91
		mu 0 4 94 28 127 95
		f 4 92 93 94 95
		mu 0 4 120 29 56 30
		f 4 96 97 98 99
		mu 0 4 31 97 72 32
		f 4 100 101 102 103
		mu 0 4 35 33 34 96
		f 4 104 105 106 107
		mu 0 4 97 35 36 98
		f 4 108 109 110 111
		mu 0 4 98 99 80 73
		f 4 112 113 114 115
		mu 0 4 37 36 63 67
		f 4 116 117 118 119
		mu 0 4 99 37 39 100
		f 4 120 121 122 123
		mu 0 4 100 38 130 101
		f 4 124 125 126 127
		mu 0 4 121 39 66 40
		f 4 128 129 130 131
		mu 0 4 113 41 50 70
		f 4 132 133 134 135
		mu 0 4 84 42 43 44
		f 4 136 137 138 139
		mu 0 4 108 45 77 55
		f 4 140 141 142 143
		mu 0 4 83 46 47 48
		f 4 144 145 146 147
		mu 0 4 114 49 60 50
		f 4 148 149 150 151
		mu 0 4 90 51 52 53
		f 4 152 153 154 155
		mu 0 4 107 54 55 65
		f 4 156 157 158 159
		mu 0 4 89 56 57 58
		f 4 160 161 162 163
		mu 0 4 115 59 71 60
		f 4 164 165 166 167
		mu 0 4 96 61 62 63
		f 4 168 169 170 171
		mu 0 4 105 64 65 76
		f 4 172 173 174 175
		mu 0 4 95 66 67 68
		f 4 176 177 178 179
		mu 0 4 111 69 70 71
		f 4 180 181 182 183
		mu 0 4 102 72 73 74
		f 4 184 185 186 187
		mu 0 4 103 75 76 77
		f 4 188 189 190 191
		mu 0 4 101 78 79 80
		f 4 -8 -24 -134 -10
		mu 0 4 4 81 43 42
		f 4 -20 -32 -144 -22
		mu 0 4 8 82 83 48
		f 4 -142 -62 -54 -52
		mu 0 4 47 46 20 18
		f 4 -136 -50 -42 -40
		mu 0 4 84 44 17 16
		f 4 -44 -48 -150 -34
		mu 0 4 85 86 52 51
		f 4 -56 -60 -160 -46
		mu 0 4 87 88 89 58
		f 4 -158 -94 -86 -84
		mu 0 4 57 56 29 27
		f 4 -152 -82 -74 -72
		mu 0 4 90 53 26 25
		f 4 -76 -80 -166 -66
		mu 0 4 91 92 62 61
		f 4 -88 -92 -176 -78
		mu 0 4 93 94 95 68
		f 4 -174 -126 -118 -116
		mu 0 4 67 66 39 37
		f 4 -168 -114 -106 -104
		mu 0 4 96 63 36 35
		f 4 -108 -112 -182 -98
		mu 0 4 97 98 73 72
		f 4 -120 -124 -192 -110
		mu 0 4 99 100 101 80
		f 4 -190 -26 -18 -16
		mu 0 4 79 78 10 5
		f 4 -184 -14 -6 -4
		mu 0 4 102 74 6 0
		f 4 -28 -188 -138 -30
		mu 0 4 12 103 77 45
		f 4 -122 -128 -172 -186
		mu 0 4 75 104 105 76
		f 4 -170 -90 -96 -156
		mu 0 4 65 64 106 107
		f 4 -140 -154 -58 -64
		mu 0 4 108 55 54 109
		f 4 -100 -180 -162 -102
		mu 0 4 110 111 71 59
		f 4 -2 -12 -132 -178
		mu 0 4 69 112 113 70
		f 4 -130 -38 -36 -148
		mu 0 4 50 41 15 114
		f 4 -164 -146 -70 -68
		mu 0 4 115 60 49 116
		f 3 -5 -9 -1
		mu 0 3 3 4 112
		f 4 -17 -21 -7 -13
		mu 0 4 117 8 81 118
		f 3 -29 -19 -25
		mu 0 3 12 82 119
		f 3 -37 -41 -33
		mu 0 3 15 16 85
		f 4 -43 -49 -53 -45
		mu 0 4 86 17 18 87
		f 3 -55 -61 -57
		mu 0 3 88 20 109
		f 3 -69 -73 -65
		mu 0 3 23 25 91
		f 4 -75 -81 -85 -77
		mu 0 4 92 26 27 93
		f 3 -87 -93 -89
		mu 0 3 94 29 120
		f 3 -101 -105 -97
		mu 0 3 33 35 97
		f 4 -107 -113 -117 -109
		mu 0 4 98 36 37 99
		f 3 -119 -125 -121
		mu 0 3 100 39 121
		f 4 -11 -133 -39 -129
		mu 0 4 113 42 84 41
		f 4 -63 -141 -31 -137
		mu 0 4 108 46 83 45
		f 4 -35 -149 -71 -145
		mu 0 4 14 51 90 122
		f 4 -95 -157 -59 -153
		mu 0 4 123 56 89 124
		f 4 -67 -165 -103 -161
		mu 0 4 22 61 96 125
		f 4 -127 -173 -91 -169
		mu 0 4 126 66 95 127
		f 4 -99 -181 -3 -177
		mu 0 4 32 72 102 128
		f 4 -27 -189 -123 -185
		mu 0 4 129 78 101 130
		f 4 -135 -23 -143 -51
		mu 0 4 44 43 48 47
		f 4 -151 -47 -159 -83
		mu 0 4 53 52 58 57
		f 4 -167 -79 -175 -115
		mu 0 4 63 62 68 67
		f 4 -183 -111 -191 -15
		mu 0 4 74 73 80 79
		f 4 -139 -187 -171 -155
		mu 0 4 55 77 76 65
		f 4 -163 -179 -131 -147
		mu 0 4 60 71 70 50;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "AE1E16CB-6D49-D423-EEA4-8FBE3D4DCBA5";
	setAttr -s 5 ".lnk";
	setAttr -s 5 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "4DB705C1-7241-6467-48EB-FC9734E2DF68";
createNode displayLayer -n "defaultLayer";
	rename -uid "FB153B97-BB47-BD8C-4303-3D9F1C88BBFD";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "6864265A-5940-AD0B-E13F-E2946815FC51";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "C97AA01B-3B41-657C-DF23-1E89D8D0B2E6";
	setAttr ".g" yes;
createNode polyCube -n "polyCube2";
	rename -uid "48D94116-9B43-7AC1-1911-649698EC386C";
	setAttr ".cuv" 4;
createNode polySmoothFace -n "polySmoothFace1";
	rename -uid "3022CAF6-8040-4F0C-F84D-518C41B83A9A";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".sdt" 2;
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polySmoothFace -n "polySmoothFace2";
	rename -uid "EA5168FB-9E43-BFEA-8F7A-99B458124D3B";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".sdt" 2;
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polyReduce -n "polyReduce1";
	rename -uid "83EF2F35-B942-F9B8-B9E3-F2B6BE1B6717";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ver" 1;
	setAttr ".p" 50;
	setAttr ".vmp" -type "string" "";
	setAttr ".sym" -type "double4" 0 0.01 0 0 ;
	setAttr ".stl" 0.01;
	setAttr ".kqw" 1;
	setAttr ".cr" yes;
createNode polySplitRing -n "polySplitRing1";
	rename -uid "534B64AC-CC4C-5BF8-4410-15BFBD26CB7D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[9]" "e[14]" "e[25]" "e[27]" "e[32:33]" "e[46]" "e[48]" "e[70:71]" "e[78:79]";
	setAttr ".ix" -type "matrix" 1.3654665406542537 0 0 0 0 5.8607320635379194 0 0 0 0 5.0721126460971799 0
		 1.1935668229032699 1.3141302062065825 0 1;
	setAttr ".wt" 0.26184967160224915;
	setAttr ".re" 25;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing2";
	rename -uid "4A8B25E0-454F-8DE1-8624-74BAB9263C6C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[14]" "e[25]" "e[27]" "e[32:33]" "e[46]" "e[48]" "e[70:71]" "e[78:79]" "e[99]";
	setAttr ".ix" -type "matrix" 1.3654665406542537 0 0 0 0 5.8607320635379194 0 0 0 0 5.0721126460971799 0
		 1.1935668229032699 1.3141302062065825 0 1;
	setAttr ".wt" 0.47870010137557983;
	setAttr ".re" 48;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak1";
	rename -uid "9DAA7F2E-664F-0EBF-2C6F-4AB77B4BBDDC";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[45]" -type "float3" 0 -0.11403207 0.077637121 ;
	setAttr ".tk[51]" -type "float3" 0 -0.11403207 -0.077637121 ;
createNode polySplitRing -n "polySplitRing3";
	rename -uid "1FA8AF85-3D4B-8616-7302-2E862EFF99B5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[14]" "e[25]" "e[27]" "e[32:33]" "e[46]" "e[48]" "e[70:71]" "e[78:79]" "e[117]";
	setAttr ".ix" -type "matrix" 1.3654665406542537 0 0 0 0 5.8607320635379194 0 0 0 0 5.0721126460971799 0
		 1.1935668229032699 1.3141302062065825 0 1;
	setAttr ".wt" 0.89472353458404541;
	setAttr ".dr" no;
	setAttr ".re" 48;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing4";
	rename -uid "D02A4E16-AB44-C135-C6CB-229F9987B42F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[9]" "e[14]" "e[25]" "e[27]" "e[32:33]" "e[46]" "e[48]" "e[70:71]" "e[78:79]";
	setAttr ".ix" -type "matrix" 1.0654795311425675 0.31708827112927374 -0.7929106322119519 0
		 -0.38948310248792622 1.3087405344538978 1.8949654909870185e-17 0 0.75997049629501323 0.2261683342907857 1.111661640505571 0
		 1.1935668229032699 4.453384880545574 0 1;
	setAttr ".wt" 0.58212161064147949;
	setAttr ".dr" no;
	setAttr ".re" 71;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak2";
	rename -uid "6D51CA5B-7C4C-FD51-B227-6BBD7E943B28";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[8]" -type "float3" -0.012807311 -0.05286051 -0.0091350228 ;
	setAttr ".tk[10]" -type "float3" -0.012807311 -0.05286051 -0.0091350228 ;
	setAttr ".tk[16]" -type "float3" 0 0 -0.079301938 ;
	setAttr ".tk[23]" -type "float3" 0 0 0.079301938 ;
createNode polySplitRing -n "polySplitRing5";
	rename -uid "9E952BC6-CE44-A48A-D19A-F78DD8AE32F3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[9]" "e[80:81]" "e[83]" "e[85]" "e[87]" "e[89]" "e[91]" "e[93]" "e[95]" "e[97]" "e[99]";
	setAttr ".ix" -type "matrix" 1.0654795311425675 0.31708827112927374 -0.7929106322119519 0
		 -0.38948310248792622 1.3087405344538978 1.8949654909870185e-17 0 0.75997049629501323 0.2261683342907857 1.111661640505571 0
		 1.1935668229032699 4.453384880545574 0 1;
	setAttr ".wt" 0.4206065833568573;
	setAttr ".re" 80;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing6";
	rename -uid "8D901445-7E4C-6346-7646-28ADD5F812BF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[8]" "e[15]" "e[24]" "e[26]" "e[28]" "e[30]" "e[50:51]" "e[64]" "e[67]" "e[72]" "e[75]";
	setAttr ".ix" -type "matrix" 1.0654795311425675 0.31708827112927374 -0.7929106322119519 0
		 -0.38948310248792622 1.3087405344538978 1.8949654909870185e-17 0 0.75997049629501323 0.2261683342907857 1.111661640505571 0
		 1.1935668229032699 4.453384880545574 0 1;
	setAttr ".wt" 0.43227770924568176;
	setAttr ".re" 15;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing7";
	rename -uid "03606654-7543-A568-CABF-E1B0687C51D2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 14 "e[11]" "e[18]" "e[36]" "e[39]" "e[58]" "e[61]" "e[66]" "e[76]" "e[82]" "e[96]" "e[106]" "e[120]" "e[138]" "e[148]";
	setAttr ".ix" -type "matrix" 1.0654795311425675 0.31708827112927374 -0.7929106322119519 0
		 -0.38948310248792622 1.3087405344538978 1.8949654909870185e-17 0 0.75997049629501323 0.2261683342907857 1.111661640505571 0
		 1.1935668229032699 4.453384880545574 0 1;
	setAttr ".wt" 0.34024316072463989;
	setAttr ".re" 66;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing8";
	rename -uid "4D580856-F740-BBA9-3321-B78C96745FA0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 14 "e[12]" "e[17]" "e[40]" "e[43]" "e[54]" "e[57]" "e[68]" "e[74]" "e[84]" "e[94]" "e[108]" "e[118]" "e[136]" "e[150]";
	setAttr ".ix" -type "matrix" 1.0654795311425675 0.31708827112927374 -0.7929106322119519 0
		 -0.38948310248792622 1.3087405344538978 1.8949654909870185e-17 0 0.75997049629501323 0.2261683342907857 1.111661640505571 0
		 1.1935668229032699 4.453384880545574 0 1;
	setAttr ".wt" 0.6267009973526001;
	setAttr ".dr" no;
	setAttr ".re" 68;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyCube -n "polyCube4";
	rename -uid "FA997A8E-F24B-8E1A-2DB6-47B60EE2B4B8";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube6";
	rename -uid "FB8289D7-7D4A-253F-4090-E7AB786641E9";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".w" 1;
	setAttr ".h" 1;
	setAttr ".d" 1;
	setAttr ".cuv" 4;
createNode polyTweak -n "polyTweak3";
	rename -uid "CAE538C7-6741-4EBE-54A1-D6B442FF6F58";
	setAttr ".uopa" yes;
	setAttr -s 39 ".tk";
	setAttr ".tk[1]" -type "float3" 0.061068889 -0.0087913303 -0.034746978 ;
	setAttr ".tk[7]" -type "float3" 0.0024713068 -0.0038484077 0.018804334 ;
	setAttr ".tk[12]" -type "float3" 0.061068896 -0.0087913303 -0.03474699 ;
	setAttr ".tk[14]" -type "float3" 0.0047208676 -0.0011456694 0.0031052404 ;
	setAttr ".tk[15]" -type "float3" 0.004715709 -0.0011456694 0.00052959193 ;
	setAttr ".tk[16]" -type "float3" 0.0048717316 -0.0011456694 0.0018171092 ;
	setAttr ".tk[21]" -type "float3" 0.0021452112 -0.0011456694 0.0031103981 ;
	setAttr ".tk[22]" -type "float3" 0.0021400531 -0.0011456694 0.00053474866 ;
	setAttr ".tk[23]" -type "float3" 0.0019891886 -0.0011456694 0.0018228801 ;
	setAttr ".tk[25]" -type "float3" 0.061068889 -0.0087913303 -0.034746975 ;
	setAttr ".tk[27]" -type "float3" 0.061068889 -0.0087913303 -0.034746986 ;
	setAttr ".tk[28]" -type "float3" 0.053313784 -0.012008338 -0.0072629442 ;
	setAttr ".tk[29]" -type "float3" 0.0041293097 -0.0011456694 0.00017795432 ;
	setAttr ".tk[30]" -type "float3" 0.002725041 -0.0011456694 0.00018077064 ;
	setAttr ".tk[31]" -type "float3" 0.0034339817 -0.0011456694 0.0035788026 ;
	setAttr ".tk[32]" -type "float3" 0.0027316115 -0.0011456694 0.0034620268 ;
	setAttr ".tk[33]" -type "float3" 0.0041358783 -0.0011456694 0.0034592235 ;
	setAttr ".tk[42]" -type "float3" 0.078338496 0.001646578 -0.001763323 ;
	setAttr ".tk[43]" -type "float3" -0.0011314611 0 -0.017718166 ;
	setAttr ".tk[44]" -type "float3" 0.062480003 0.001646578 -0.0013824943 ;
	setAttr ".tk[45]" -type "float3" -0.015114363 0 -0.012749488 ;
	setAttr ".tk[46]" -type "float3" -0.01736732 0 0.0016638807 ;
	setAttr ".tk[47]" -type "float3" -0.014437449 0 0.0154387 ;
	setAttr ".tk[48]" -type "float3" -0.008191878 0 0.018652191 ;
	setAttr ".tk[49]" -type "float3" -0.0002321635 0 0.019730465 ;
	setAttr ".tk[50]" -type "float3" 0.0076666176 0 0.018271361 ;
	setAttr ".tk[51]" -type "float3" 0.013750739 0 0.014761785 ;
	setAttr ".tk[52]" -type "float3" 0.015649566 0 0.00087100803 ;
	setAttr ".tk[53]" -type "float3" 0.013073822 0 -0.013426401 ;
	setAttr ".tk[78]" -type "float3" 0.053552754 -0.012008338 -0.0072232047 ;
	setAttr ".tk[80]" -type "float3" 0.061068896 -0.0087913303 -0.034746982 ;
	setAttr ".tk[84]" -type "float3" 0.0036727972 -0.0011456694 0.0035381243 ;
	setAttr ".tk[86]" -type "float3" 0.0024553428 0 0.019234017 ;
	setAttr ".tk[90]" -type "float3" 0.073087022 0.001646578 -0.0024747227 ;
	setAttr ".tk[92]" -type "float3" 0.05305177 -0.012008338 -0.0072182976 ;
	setAttr ".tk[94]" -type "float3" 0.061068881 -0.0087913303 -0.034746986 ;
	setAttr ".tk[98]" -type "float3" 0.0031717881 -0.0011456694 0.0035352083 ;
	setAttr ".tk[100]" -type "float3" -0.0032035171 0 0.019327948 ;
	setAttr ".tk[104]" -type "float3" 0.067430176 0.001646578 -0.0022969153 ;
createNode transformGeometry -n "transformGeometry1";
	rename -uid "3AE851B3-974F-C6C7-2D7D-9CA24293B0E8";
	setAttr ".txf" -type "matrix" 167.45578457279018 0 0 0 0 167.45578457279018 0 0
		 0 0 167.45578457279018 0 1.1935668229032699 380.57345342374555 0 1;
createNode polyTweak -n "polyTweak4";
	rename -uid "C1CAE6C1-F645-9175-FFC5-758C235A6D53";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[54]" -type "float3" 0 0 0.098742135 ;
	setAttr ".tk[60]" -type "float3" 0 0 -0.098742135 ;
	setAttr ".tk[66]" -type "float3" 0 0 0.10110907 ;
	setAttr ".tk[72]" -type "float3" 0 0 -0.10110907 ;
createNode transformGeometry -n "transformGeometry2";
	rename -uid "9FD80D23-5B41-E7BA-F0AA-31B6881DCECA";
	setAttr ".txf" -type "matrix" 167.45578457279018 0 0 0 0 718.73858249240732 0 0
		 0 0 622.02520333219661 0 1.1935668229032699 1.3141302062065825 0 1;
createNode polyTweak -n "polyTweak5";
	rename -uid "5A41F3B0-634B-15D8-D816-F8AFB9B77B9C";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[0]" -type "float3" 0.17604944 -0.034104608 0 ;
	setAttr ".tk[1]" -type "float3" -0.17604944 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.042032979 3.0868175 0.72437763 ;
	setAttr ".tk[3]" -type "float3" -0.18808317 2.2786429 0.33526218 ;
	setAttr ".tk[6]" -type "float3" 0.17604944 0 0 ;
	setAttr ".tk[7]" -type "float3" -0.17604944 0 0 ;
createNode transformGeometry -n "transformGeometry3";
	rename -uid "B17F37B3-E540-3A16-D2C5-2088884977C5";
	setAttr ".txf" -type "matrix" 122.63631483240512 0 0 0 0 136.80833820897317 0 0
		 0 0 122.63631483240512 0 1.1370713031417288 -428.48427302078125 -0.010723742005059544 1;
createNode transformGeometry -n "transformGeometry4";
	rename -uid "52A5BD65-094C-B05A-E82C-798AF96F365C";
	setAttr ".txf" -type "matrix" 0.56795442841968324 0 0 0 0 0.56795442841968324 0 0
		 0 0 0.56795442841968324 0 0 322.99640016058919 0 1;
createNode polySmoothFace -n "polySmoothFace3";
	rename -uid "B43E9EF6-5348-C10C-AB01-6AAFE615D648";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".sdt" 2;
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polySplitRing -n "polySplitRing9";
	rename -uid "864E6626-A447-470C-FBEC-4F9153974E68";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[13]" "e[15]" "e[20]" "e[22]" "e[31]" "e[36]" "e[42]" "e[45]";
	setAttr ".ix" -type "matrix" 1.9036799210515492 0 0 0 0 0.80557885504979665 0 0 0 0 2.6266339641788545 0
		 0 87.409249128733819 0 1;
	setAttr ".wt" 0.5440819263458252;
	setAttr ".dr" no;
	setAttr ".re" 42;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak6";
	rename -uid "50F2CF16-5E48-8D4D-3FB9-5FB674DF17FA";
	setAttr ".uopa" yes;
	setAttr -s 26 ".tk[0:25]" -type "float3"  -10.98680782 -13.98752403
		 21.15063095 10.98680782 -13.98752403 21.15063095 -10.98680782 -22.88970947 21.15063095
		 10.98680782 -22.88970184 21.15063095 -10.98680782 -81.81464386 -47.76590729 10.98680782
		 -81.81464386 -47.76590729 -10.98680782 -72.9124527 -47.76591492 10.98680782 -72.9124527
		 -47.76591492 14.83219242 -18.43860817 28.55334282 0 -24.44758415 28.55334282 -14.83219242
		 -24.44758415 0 14.83219242 -24.44758415 0 0 -83.37252045 -55.16862869 -14.83219242
		 -77.36353302 -55.16862869 14.83219242 -77.36353302 -55.16862869 0 -71.35456848 -55.16862869
		 -14.83219242 -12.429636 0 14.83219242 -12.429636 0 0 -12.429636 28.55334282 -14.83219242
		 -18.43860817 28.55334282 0 -18.43860817 38.07113266 0 -26.45057487 0 0 -77.36353302
		 -64.686409 0 -10.42664528 0 19.77625656 -18.43860817 0 -19.77625656 -18.43860817
		 0;
createNode polySplitRing -n "polySplitRing10";
	rename -uid "B1DF5D3A-FA46-D726-4A1E-2D946C4AFBE7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[12]" "e[14]" "e[21]" "e[23]" "e[28]" "e[39]" "e[41]" "e[46]";
	setAttr ".ix" -type "matrix" 1.9036799210515492 0 0 0 0 0.80557885504979665 0 0 0 0 2.6266339641788545 0
		 0 87.409249128733819 0 1;
	setAttr ".wt" 0.47949239611625671;
	setAttr ".re" 41;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak7";
	rename -uid "829F08B9-F24C-A77B-C6F0-80B0372BA291";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk";
	setAttr ".tk[0]" -type "float3" -21.91641 -90.961487 32.991566 ;
	setAttr ".tk[1]" -type "float3" 21.91641 -90.961487 32.991566 ;
	setAttr ".tk[2]" -type "float3" 1.2079227e-13 -51.125961 32.991566 ;
	setAttr ".tk[3]" -type "float3" 1.2079227e-13 -51.125961 32.991566 ;
	setAttr ".tk[4]" -type "float3" 0 15.667783 -2.3874943 ;
	setAttr ".tk[5]" -type "float3" 0 15.667783 -2.3874943 ;
	setAttr ".tk[6]" -type "float3" -21.91641 -39.835541 0 ;
	setAttr ".tk[7]" -type "float3" 21.91641 -39.835537 0 ;
	setAttr ".tk[8]" -type "float3" 1.0658141e-13 -51.125961 32.991566 ;
	setAttr ".tk[9]" -type "float3" 1.1943903e-13 -51.125961 32.991566 ;
	setAttr ".tk[12]" -type "float3" 0 15.667783 -2.3874943 ;
	setAttr ".tk[16]" -type "float3" -29.587143 -39.835541 0 ;
	setAttr ".tk[17]" -type "float3" 29.587143 -39.835537 0 ;
	setAttr ".tk[18]" -type "float3" 1.1943903e-13 -51.125961 32.991566 ;
	setAttr ".tk[19]" -type "float3" 1.0658141e-13 -51.125961 32.991566 ;
	setAttr ".tk[20]" -type "float3" 1.1943903e-13 -51.125961 32.991566 ;
	setAttr ".tk[26]" -type "float3" 0 26.219322 -6.0789857 ;
	setAttr ".tk[27]" -type "float3" 26.089916 -13.616216 -6.0789857 ;
	setAttr ".tk[28]" -type "float3" 0 26.219322 -6.0789857 ;
	setAttr ".tk[29]" -type "float3" -26.089916 -13.61622 -6.0789857 ;
	setAttr ".tk[30]" -type "float3" 0 26.219322 -6.0789857 ;
	setAttr ".tk[31]" -type "float3" 0 26.219322 -6.0789857 ;
	setAttr ".tk[32]" -type "float3" 0 26.219322 -6.0789857 ;
	setAttr ".tk[33]" -type "float3" 0 26.219322 -6.0789857 ;
createNode polyPipe -n "polyPipe1";
	rename -uid "FFA12EF1-C147-0DFD-538C-4787BA8666C4";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 1;
	setAttr ".h" 2;
	setAttr ".t" 0.082798496611692946;
	setAttr ".sc" 0;
createNode polyTorus -n "polyTorus1";
	rename -uid "6AED270D-654A-EB15-26B9-18A1CEBF346F";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 0.40006000018624593;
	setAttr ".sr" 0.069058620561209733;
createNode polySphere -n "polySphere1";
	rename -uid "4B150123-9040-C85A-5131-24BD13CF4150";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 1;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "F0E08E33-3A4E-0FAF-1FD0-25977F0F6F9A";
	setAttr ".dc" -type "componentList" 18 "f[0:19]" "f[22:35]" "f[42:55]" "f[63:75]" "f[83:94]" "f[103:114]" "f[123:134]" "f[143:154]" "f[163:174]" "f[183:194]" "f[203:214]" "f[223:234]" "f[243:254]" "f[263:274]" "f[283:295]" "f[302:315]" "f[322:335]" "f[360:379]";
createNode deleteComponent -n "deleteComponent2";
	rename -uid "81A8B754-0C4E-39E9-3B47-B7B0C04C2285";
	setAttr ".dc" -type "componentList" 7 "f[2:4]" "f[8:10]" "f[15:16]" "f[22:23]" "f[30:31]" "f[38:39]" "f[70]";
createNode deleteComponent -n "deleteComponent3";
	rename -uid "E067B5BF-BB4A-0A21-5EA3-08873053BD34";
	setAttr ".dc" -type "componentList" 5 "f[3:4]" "f[6:8]" "f[12:13]" "f[19]" "f[25]";
createNode deleteComponent -n "deleteComponent4";
	rename -uid "32F5085A-4B4C-8875-5D6C-BCA324754E15";
	setAttr ".dc" -type "componentList" 3 "f[0]" "f[2:4]" "f[7]";
createNode deleteComponent -n "deleteComponent5";
	rename -uid "72DDC312-0241-1DA3-AD3B-A38ACD3CE0E8";
	setAttr ".dc" -type "componentList" 1 "f[1]";
createNode deleteComponent -n "deleteComponent6";
	rename -uid "2E4BC682-9D43-642E-C0B4-7AB2458DDE52";
	setAttr ".dc" -type "componentList" 1 "f[5]";
createNode polyCube -n "polyCube7";
	rename -uid "2BEF6FF0-9348-C6F6-B1FE-018535292548";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".w" 1;
	setAttr ".h" 1;
	setAttr ".d" 1;
	setAttr ".cuv" 4;
createNode polyBevel3 -n "polyBevel1";
	rename -uid "A2400F9D-1946-6DA6-5A6A-CEA4F8585CF8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[1:2]" "e[6:7]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1.614273067522584 0 -29.22732521416988 436.97360693933666 -2.7116715206891966 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyTweak -n "polyTweak8";
	rename -uid "2F6E3686-F64F-D5C1-D0AA-CE84E105025A";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[0]" -type "float3" 0.6517204 -1.0392945 0 ;
	setAttr ".tk[2]" -type "float3" -12.883674 23.692209 0 ;
	setAttr ".tk[3]" -type "float3" 26.408663 22.652912 0 ;
	setAttr ".tk[4]" -type "float3" -12.883674 23.692209 0 ;
	setAttr ".tk[5]" -type "float3" 26.408663 22.652912 0 ;
	setAttr ".tk[6]" -type "float3" 0.6517204 -1.0392945 0 ;
createNode polySplitRing -n "polySplitRing11";
	rename -uid "A15AC921-A342-4F69-D26A-C2B83A2AA46E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[2:3]" "e[5]" "e[7]" "e[9]" "e[16]" "e[18:19]";
	setAttr ".ix" -type "matrix" 1.1077113594248582 0 0 0 0 1.1077113594248582 0 0 0 0 1.7881486141083778 0
		 -29.22732521416988 436.97360693933666 -2.7116715206891966 1;
	setAttr ".wt" 0.74459511041641235;
	setAttr ".dr" no;
	setAttr ".re" 7;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak9";
	rename -uid "7194D4B2-1645-358E-6EB9-FAAEFC396345";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[0]" -type "float3" -4.4906263 0 -8.2451925 ;
	setAttr ".tk[1]" -type "float3" 0 0 -6.1276698 ;
	setAttr ".tk[2]" -type "float3" -4.4906263 0 13.750287 ;
	setAttr ".tk[3]" -type "float3" 0 0 11.632767 ;
	setAttr ".tk[7]" -type "float3" 64.648979 -20.729809 -6.8147049 ;
	setAttr ".tk[9]" -type "float3" 22.91029 -20.729809 -7.723917 ;
	setAttr ".tk[13]" -type "float3" 64.648979 -20.729809 6.8147049 ;
	setAttr ".tk[15]" -type "float3" 22.91029 -20.729809 7.723917 ;
createNode polySplitRing -n "polySplitRing12";
	rename -uid "0D7F70E1-4F43-E5AD-1A87-5DAEAA9CB957";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[0:1]" "e[11]" "e[13:14]" "e[21:23]" "e[34]" "e[42]";
	setAttr ".ix" -type "matrix" 1.1077113594248582 0 0 0 0 1.1077113594248582 0 0 0 0 1.7881486141083778 0
		 -29.22732521416988 436.97360693933666 -2.7116715206891966 1;
	setAttr ".wt" 0.30508261919021606;
	setAttr ".re" 14;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing13";
	rename -uid "950AB846-A440-97BE-1F7C-F89595F2D808";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[13]" "e[22]" "e[42]" "e[44:45]" "e[49]" "e[51]" "e[53]" "e[57]" "e[61]";
	setAttr ".ix" -type "matrix" 1.1077113594248582 0 0 0 0 1.1077113594248582 0 0 0 0 1.7881486141083778 0
		 -29.22732521416988 436.97360693933666 -2.7116715206891966 1;
	setAttr ".wt" 0.49810680747032166;
	setAttr ".re" 44;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing14";
	rename -uid "912BDCB3-844A-1637-A03A-28A4B0E2D4AC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[13]" "e[22]" "e[42]" "e[64:65]" "e[69]" "e[71]" "e[73]" "e[77]" "e[81]";
	setAttr ".ix" -type "matrix" 1.1077113594248582 0 0 0 0 1.1077113594248582 0 0 0 0 1.7881486141083778 0
		 -29.22732521416988 436.97360693933666 -2.7116715206891966 1;
	setAttr ".wt" 0.6940152645111084;
	setAttr ".dr" no;
	setAttr ".re" 64;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing15";
	rename -uid "FF611DCA-B94E-3218-9557-FABFC571BA44";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[0:1]" "e[11]" "e[14]" "e[21]" "e[23]" "e[34]" "e[47]" "e[55]" "e[59]";
	setAttr ".ix" -type "matrix" 1.1077113594248582 0 0 0 0 1.1077113594248582 0 0 0 0 1.7881486141083778 0
		 -29.22732521416988 436.97360693933666 -2.7116715206891966 1;
	setAttr ".wt" 0.5251617431640625;
	setAttr ".dr" no;
	setAttr ".re" 14;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing16";
	rename -uid "41FC3256-6C4B-7DE2-36CD-F4B6CF7044C3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 15 "e[2:3]" "e[7]" "e[18]" "e[29]" "e[31]" "e[35]" "e[37]" "e[52]" "e[60]" "e[72]" "e[80]" "e[92]" "e[100]" "e[112]" "e[120]";
	setAttr ".ix" -type "matrix" 1.1077113594248582 0 0 0 0 1.1077113594248582 0 0 0 0 1.7881486141083778 0
		 -29.22732521416988 436.97360693933666 -2.7116715206891966 1;
	setAttr ".wt" 0.67866617441177368;
	setAttr ".dr" no;
	setAttr ".re" 7;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing17";
	rename -uid "97274E96-8240-7436-2310-CCAC69CA8F9A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 15 "e[2:3]" "e[7]" "e[18]" "e[60]" "e[80]" "e[100]" "e[120]" "e[125]" "e[127]" "e[129]" "e[131]" "e[133]" "e[135]" "e[139]" "e[141]";
	setAttr ".ix" -type "matrix" 1.1077113594248582 0 0 0 0 1.1077113594248582 0 0 0 0 1.7881486141083778 0
		 -29.22732521416988 436.97360693933666 -2.7116715206891966 1;
	setAttr ".wt" 0.49730595946311951;
	setAttr ".re" 7;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing18";
	rename -uid "6DBE4CAD-944A-731A-9A70-3DBBB84EABC7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 15 "e[2:3]" "e[7]" "e[18]" "e[60]" "e[80]" "e[100]" "e[120]" "e[157]" "e[159]" "e[161]" "e[163]" "e[165]" "e[167]" "e[171]" "e[173]";
	setAttr ".ix" -type "matrix" 1.1077113594248582 0 0 0 0 1.1077113594248582 0 0 0 0 1.7881486141083778 0
		 -29.22732521416988 436.97360693933666 -2.7116715206891966 1;
	setAttr ".wt" 0.51522284746170044;
	setAttr ".dr" no;
	setAttr ".re" 7;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySmoothFace -n "polySmoothFace4";
	rename -uid "CB35DE2E-154F-F6D9-7E84-7EBACE0FF750";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".sdt" 2;
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode deleteComponent -n "deleteComponent7";
	rename -uid "4A9398E5-D944-D4D9-0465-81AF83A2F532";
	setAttr ".dc" -type "componentList" 10 "f[0]" "f[3:5]" "f[10:12]" "f[15]" "f[32:39]" "f[44:49]" "f[56:61]" "f[65]" "f[81:85]" "f[95:99]";
createNode polyTweak -n "polyTweak10";
	rename -uid "E3B4D25B-8143-FA00-A854-8685F36592EB";
	setAttr ".uopa" yes;
	setAttr -s 93 ".tk";
	setAttr ".tk[9]" -type "float3" 16.342014 11.638532 0 ;
	setAttr ".tk[15]" -type "float3" 16.342014 11.638532 0 ;
	setAttr ".tk[21]" -type "float3" 16.342014 11.638532 0 ;
	setAttr ".tk[64]" -type "float3" -18.216467 3.6298575 0 ;
	setAttr ".tk[65]" -type "float3" -16.757484 9.7112913 0 ;
	setAttr ".tk[66]" -type "float3" -13.0238 11.672124 0 ;
	setAttr ".tk[67]" -type "float3" -10.2213 11.889339 0 ;
	setAttr ".tk[68]" -type "float3" -7.4050884 11.868327 0 ;
	setAttr ".tk[69]" -type "float3" -2.3609099 11.830693 0 ;
	setAttr ".tk[70]" -type "float3" 1.5396534 11.801594 0 ;
	setAttr ".tk[71]" -type "float3" 5.5782843 10.990957 0 ;
	setAttr ".tk[72]" -type "float3" 18.216469 5.6400189 0 ;
	setAttr ".tk[73]" -type "float3" 16.342014 11.638532 2.220446e-16 ;
	setAttr ".tk[79]" -type "float3" -17.04262 -11.898895 0 ;
	setAttr ".tk[89]" -type "float3" 16.342014 11.638532 0 ;
	setAttr ".tk[105]" -type "float3" 16.342014 11.638532 0 ;
	setAttr ".tk[112]" -type "float3" 12.484183 -21.272905 0.24502771 ;
	setAttr ".tk[113]" -type "float3" 9.2995996 -17.460873 3.1974423e-14 ;
	setAttr ".tk[133]" -type "float3" 16.342014 11.638532 0 ;
	setAttr ".tk[163]" -type "float3" 16.342014 11.638532 0 ;
	setAttr ".tk[168]" -type "float3" 9.2995996 -17.460873 3.1974423e-14 ;
	setAttr ".tk[170]" -type "float3" 12.484183 -21.272905 0.24502771 ;
	setAttr ".tk[195]" -type "float3" 12.484183 -21.272905 0.24502771 ;
	setAttr ".tk[197]" -type "float3" 12.484183 -21.272905 0.24502771 ;
	setAttr ".tk[198]" -type "float3" 12.484183 -21.272905 0.24502771 ;
	setAttr ".tk[201]" -type "float3" 12.484183 -21.272905 0.24502771 ;
	setAttr ".tk[221]" -type "float3" 12.484183 -21.272905 0.24502771 ;
	setAttr ".tk[224]" -type "float3" 12.484183 -21.272905 0.24502771 ;
	setAttr ".tk[250]" -type "float3" -18.216469 3.6298563 0 ;
	setAttr ".tk[251]" -type "float3" -16.757484 9.7112913 0 ;
	setAttr ".tk[252]" -type "float3" -17.831984 7.8013964 0 ;
	setAttr ".tk[253]" -type "float3" -13.0238 11.672124 0 ;
	setAttr ".tk[254]" -type "float3" -14.9652 10.972228 0 ;
	setAttr ".tk[255]" -type "float3" -10.2213 11.889339 0 ;
	setAttr ".tk[256]" -type "float3" -11.501945 11.898895 0 ;
	setAttr ".tk[257]" -type "float3" -9.00352 11.880255 0 ;
	setAttr ".tk[258]" -type "float3" -7.4050884 11.868329 0 ;
	setAttr ".tk[259]" -type "float3" -4.9824896 11.850254 0 ;
	setAttr ".tk[260]" -type "float3" -2.3609099 11.830693 0 ;
	setAttr ".tk[261]" -type "float3" -0.16553792 11.814315 0 ;
	setAttr ".tk[262]" -type "float3" 1.5396534 11.801591 0 ;
	setAttr ".tk[263]" -type "float3" 2.6906931 11.793004 0 ;
	setAttr ".tk[264]" -type "float3" 5.5782843 10.990954 0 ;
	setAttr ".tk[265]" -type "float3" 18.216467 5.6400185 0 ;
	setAttr ".tk[266]" -type "float3" 12.493131 8.5978489 0 ;
	setAttr ".tk[267]" -type "float3" 16.342014 11.638532 0 ;
	setAttr ".tk[279]" -type "float3" 9.2995996 -17.460873 3.1974423e-14 ;
	setAttr ".tk[280]" -type "float3" -17.04262 -11.898895 0 ;
	setAttr ".tk[281]" -type "float3" -17.938705 -4.4160151 0 ;
	setAttr ".tk[282]" -type "float3" -18.216469 3.6298563 0 ;
	setAttr ".tk[283]" -type "float3" -16.757484 9.7112913 0 ;
	setAttr ".tk[285]" -type "float3" -13.0238 11.672124 0 ;
	setAttr ".tk[287]" -type "float3" -10.2213 11.889339 0 ;
	setAttr ".tk[290]" -type "float3" -7.4050884 11.868329 0 ;
	setAttr ".tk[292]" -type "float3" -2.3609099 11.830693 0 ;
	setAttr ".tk[294]" -type "float3" 1.5396534 11.801591 0 ;
	setAttr ".tk[296]" -type "float3" 5.5782843 10.990954 0 ;
	setAttr ".tk[297]" -type "float3" 18.216467 5.6400185 0 ;
	setAttr ".tk[299]" -type "float3" 16.342014 11.638532 0 ;
	setAttr ".tk[311]" -type "float3" 9.2995996 -17.460873 3.1974423e-14 ;
	setAttr ".tk[312]" -type "float3" -17.04262 -11.898895 0 ;
	setAttr ".tk[323]" -type "float3" 16.342014 11.638532 0 ;
	setAttr ".tk[332]" -type "float3" 12.484183 -21.272905 0.24502771 ;
	setAttr ".tk[352]" -type "float3" 12.484183 -21.272905 0.24502771 ;
	setAttr ".tk[361]" -type "float3" 12.484183 -21.272905 0.24502771 ;
	setAttr ".tk[362]" -type "float3" 12.484183 -21.272905 0.24502771 ;
	setAttr ".tk[371]" -type "float3" 12.484183 -21.272905 0.24502771 ;
	setAttr ".tk[372]" -type "float3" 12.484183 -21.272905 0.24502771 ;
	setAttr ".tk[381]" -type "float3" 12.484183 -21.272905 0.24502771 ;
	setAttr ".tk[382]" -type "float3" 12.484183 -21.272905 0.24502771 ;
	setAttr ".tk[391]" -type "float3" 12.484183 -21.272905 0.24502771 ;
	setAttr ".tk[392]" -type "float3" 12.484183 -21.272905 0.24502771 ;
	setAttr ".tk[394]" -type "float3" -17.831984 7.8013964 0 ;
	setAttr ".tk[395]" -type "float3" -14.9652 10.972228 0 ;
	setAttr ".tk[396]" -type "float3" -11.501945 11.898895 0 ;
	setAttr ".tk[397]" -type "float3" -9.00352 11.880255 0 ;
	setAttr ".tk[398]" -type "float3" -4.9824896 11.850254 0 ;
	setAttr ".tk[399]" -type "float3" -0.16553792 11.814315 0 ;
	setAttr ".tk[400]" -type "float3" 2.6906931 11.793004 0 ;
	setAttr ".tk[401]" -type "float3" 12.493131 8.5978489 0 ;
	setAttr ".tk[408]" -type "float3" 9.2995996 -17.460873 3.1974423e-14 ;
	setAttr ".tk[409]" -type "float3" -17.938705 -4.4160151 0 ;
	setAttr ".tk[410]" -type "float3" -17.831984 7.8013964 0 ;
	setAttr ".tk[411]" -type "float3" -14.9652 10.972228 0 ;
	setAttr ".tk[412]" -type "float3" -11.501945 11.898895 0 ;
	setAttr ".tk[413]" -type "float3" -9.00352 11.880255 0 ;
	setAttr ".tk[414]" -type "float3" -4.9824896 11.850254 0 ;
	setAttr ".tk[415]" -type "float3" -0.16553792 11.814315 0 ;
	setAttr ".tk[416]" -type "float3" 2.6906931 11.793004 0 ;
	setAttr ".tk[417]" -type "float3" 12.493131 8.5978489 0 ;
	setAttr ".tk[424]" -type "float3" 9.2995996 -17.460873 3.1974423e-14 ;
	setAttr ".tk[425]" -type "float3" -17.938705 -4.4160151 0 ;
	setAttr ".tk[440]" -type "float3" 9.2995996 -17.460873 3.1974423e-14 ;
createNode deleteComponent -n "deleteComponent8";
	rename -uid "3E67D89B-664D-09E2-EA5C-61981F8DD4FD";
	setAttr ".dc" -type "componentList" 9 "f[284:285]" "f[288:299]" "f[302:303]" "f[348:349]" "f[352:363]" "f[366:367]" "f[412:413]" "f[416:427]" "f[430:431]";
createNode deleteComponent -n "deleteComponent9";
	rename -uid "FB73699D-614A-0FE7-F9E2-039FDD210CC9";
	setAttr ".dc" -type "componentList" 4 "f[77:78]" "f[284:285]" "f[332:333]" "f[380:381]";
createNode polyCube -n "polyCube8";
	rename -uid "D82549FF-1B42-49EF-AD1E-4B968815779C";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".w" 1;
	setAttr ".h" 1;
	setAttr ".d" 1;
	setAttr ".sh" 2;
	setAttr ".sd" 4;
	setAttr ".cuv" 4;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "EAD3053D-2242-5F7B-B9DC-F28DD830B5A4";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 0\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1121\n                -height 532\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1121\n            -height 532\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\toutlinerPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n"
		+ "                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n"
		+ "                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n"
		+ "                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n"
		+ "                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n"
		+ "                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n"
		+ "                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n"
		+ "                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1121\\n    -height 532\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1121\\n    -height 532\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "E31CC41E-9E41-F42B-786C-75B13DE720E2";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polySplitRing -n "polySplitRing19";
	rename -uid "1CA541B5-DE40-5430-4F8E-F5BB45901DC1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 20 "e[1:3]" "e[5]" "e[18]" "e[20]" "e[26]" "e[29]" "e[32]" "e[35]" "e[42]" "e[45]" "e[68]" "e[71]" "e[81]" "e[84]" "e[88]" "e[96]" "e[110]" "e[117]" "e[129]" "e[136]";
	setAttr ".ix" -type "matrix" 1.1221861144367105 0 0 0 0 1.1221861144367105 0 0 0 0 1.1221861144367105 0
		 0 0 0 1;
	setAttr ".wt" 0.53730058670043945;
	setAttr ".dr" no;
	setAttr ".re" 42;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak11";
	rename -uid "46BD8EF0-7342-B61A-FCF1-22A052E8CF94";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[1]" -type "float3" 7.1054274e-15 0 3.5134099 ;
	setAttr ".tk[5]" -type "float3" 7.8467112 0 1.1115423 ;
	setAttr ".tk[10]" -type "float3" 0 0 3.5134099 ;
	setAttr ".tk[12]" -type "float3" 0 -6.7005925 -5.7100453 ;
	setAttr ".tk[13]" -type "float3" 0 -6.7005925 -6.4160757 ;
	setAttr ".tk[17]" -type "float3" 0 -6.7005925 5.75596 ;
	setAttr ".tk[18]" -type "float3" 0 -6.7005925 6.4160757 ;
	setAttr ".tk[20]" -type "float3" 7.1054274e-15 0 3.5134099 ;
	setAttr ".tk[22]" -type "float3" 7.1054274e-15 0 3.5134099 ;
	setAttr ".tk[23]" -type "float3" 0 -6.7005925 0.16191107 ;
	setAttr ".tk[24]" -type "float3" 0 -6.7005925 -3.0964389 ;
	setAttr ".tk[25]" -type "float3" 0 -6.7005925 3.1549311 ;
	setAttr ".tk[58]" -type "float3" 0 -6.7005925 -0.90229893 ;
	setAttr ".tk[60]" -type "float3" 0 0 3.5134099 ;
	setAttr ".tk[68]" -type "float3" 0 -6.7005925 1.3279396 ;
	setAttr ".tk[70]" -type "float3" 7.1054274e-15 0 3.5134099 ;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "980E8C97-314D-DB5A-4A0F-2CB97EFD7E16";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 1;
	setAttr ".h" 2;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyBevel3 -n "polyBevel2";
	rename -uid "15D31957-A04E-27E5-5112-D5A7BDBC84C9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:39]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 518.44058106903071 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".sg" 5;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyCube -n "polyCube9";
	rename -uid "CC98C730-5143-E357-CA7F-D6AF277998EE";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".w" 1;
	setAttr ".h" 1;
	setAttr ".d" 1;
	setAttr ".cuv" 4;
createNode polyTweak -n "polyTweak12";
	rename -uid "2F01BD6F-C442-C4D4-FBE7-FD972E06C535";
	setAttr ".uopa" yes;
	setAttr -s 26 ".tk";
	setAttr ".tk[9]" -type "float3" 0 0 17.65785 ;
	setAttr ".tk[11]" -type "float3" 0 0 -17.65785 ;
	setAttr ".tk[47]" -type "float3" 0 0 18.852272 ;
	setAttr ".tk[53]" -type "float3" 0 0 -18.852272 ;
	setAttr ".tk[78]" -type "float3" 0 14.206498 0 ;
	setAttr ".tk[79]" -type "float3" 0 11.434916 0 ;
	setAttr ".tk[80]" -type "float3" 0 4.8672662 0 ;
	setAttr ".tk[81]" -type "float3" 0 1.5408111 0 ;
	setAttr ".tk[82]" -type "float3" 0 -2.5802798 0 ;
	setAttr ".tk[83]" -type "float3" 0 -4.3952661 0 ;
	setAttr ".tk[84]" -type "float3" 0 -10.406479 0 ;
	setAttr ".tk[85]" -type "float3" 0 -14.206498 0 ;
	setAttr ".tk[86]" -type "float3" 0 -14.850653 0 ;
	setAttr ".tk[87]" -type "float3" 0 -15.234342 0 ;
	setAttr ".tk[88]" -type "float3" 0 -14.884626 0 ;
	setAttr ".tk[89]" -type "float3" 0 -14.206498 0 ;
	setAttr ".tk[90]" -type "float3" 0 -10.406479 0 ;
	setAttr ".tk[91]" -type "float3" 0 -4.3952661 0 ;
	setAttr ".tk[92]" -type "float3" 0 -2.5802798 0 ;
	setAttr ".tk[93]" -type "float3" 0 1.5408038 0 ;
	setAttr ".tk[94]" -type "float3" 0 4.8672662 0 ;
	setAttr ".tk[95]" -type "float3" 0 11.524978 0 ;
	setAttr ".tk[96]" -type "float3" 0 14.206498 0 ;
	setAttr ".tk[97]" -type "float3" 0 14.884619 0 ;
	setAttr ".tk[98]" -type "float3" 0 15.234342 0 ;
	setAttr ".tk[99]" -type "float3" 0 14.850646 0 ;
createNode transformGeometry -n "transformGeometry5";
	rename -uid "CE73E30C-5E44-85B8-C1B0-1BA32CE44F58";
	setAttr ".txf" -type "matrix" 1.1221861144367105 0 0 0 0 1.1221861144367105 0 0
		 0 0 1.1221861144367105 0 0 -5.6843418860808015e-14 0 1;
createNode polyTweak -n "polyTweak13";
	rename -uid "833454AC-3646-F5F4-87EA-DFB28E853E8A";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[73]" -type "float3" 2.6816785 0 0 ;
	setAttr ".tk[258]" -type "float3" 2.6816785 0 0 ;
	setAttr ".tk[282]" -type "float3" 2.6816785 0 0 ;
createNode transformGeometry -n "transformGeometry6";
	rename -uid "3CCF3A1F-7541-BD9B-0AC0-BCB54720FEF3";
	setAttr ".txf" -type "matrix" 1.1077113594248582 0 0 0 0 1.1077113594248582 0 0
		 0 0 1.7881486141083778 0 -26.315266621437022 426.22807543355066 -2.7116715206891966 1;
createNode polyTweak -n "polyTweak14";
	rename -uid "58E774CA-0343-4854-B1D8-A9AB51FE751B";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk";
	setAttr ".tk[0]" -type "float3" -422.52869 0 0 ;
	setAttr ".tk[1]" -type "float3" -422.52869 0 0 ;
	setAttr ".tk[2]" -type "float3" -422.52869 0 0 ;
	setAttr ".tk[3]" -type "float3" -422.52869 0 0 ;
	setAttr ".tk[4]" -type "float3" -422.52869 0 0 ;
	setAttr ".tk[5]" -type "float3" -37.027954 2.1316282e-13 2.1409261 ;
	setAttr ".tk[7]" -type "float3" 102.01366 2.1316282e-13 -2.1409261 ;
	setAttr ".tk[8]" -type "float3" 178.30009 -7.0156078 0 ;
	setAttr ".tk[9]" -type "float3" 178.30009 -7.0156078 0 ;
	setAttr ".tk[11]" -type "float3" 129.29961 3.4106051e-13 2.3002772 ;
	setAttr ".tk[12]" -type "float3" -422.52869 0 0 ;
	setAttr ".tk[13]" -type "float3" 48.806583 3.4106051e-13 -2.3002772 ;
	setAttr ".tk[14]" -type "float3" -422.52869 0 0 ;
	setAttr ".tk[15]" -type "float3" -422.52869 0 0 ;
	setAttr ".tk[16]" -type "float3" -422.52869 0 0 ;
	setAttr ".tk[17]" -type "float3" -422.52869 0 0 ;
	setAttr ".tk[20]" -type "float3" 178.30009 -7.0156078 0 ;
	setAttr ".tk[21]" -type "float3" 178.30009 -7.0156078 0 ;
	setAttr ".tk[25]" -type "float3" 178.30009 -7.0156078 0 ;
	setAttr ".tk[28]" -type "float3" 178.30009 -7.0156078 0 ;
createNode transformGeometry -n "transformGeometry7";
	rename -uid "883B523D-2A4D-70C1-6B44-1696B46AA9EA";
	setAttr ".txf" -type "matrix" 0.048171513625783473 0 0 0 0 0.30025168944942549 0 0
		 0 0 1.2607117288820091 0 85.246120257071254 446.87739003244985 0 1;
createNode transformGeometry -n "transformGeometry8";
	rename -uid "F9C0676A-424F-3D1F-8D1D-9DADF6B06B86";
	setAttr ".txf" -type "matrix" 0.54589877395636743 0 0 0 0 2.2204460492503131e-16 1 0
		 0 -0.54589877395636743 1.2121387759220058e-16 0 -14.817217441894147 432.72161263101526 0 1;
createNode polyTweak -n "polyTweak15";
	rename -uid "06C7A3E1-4D4B-A9C2-5B10-34BA9735210F";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[0]" -type "float3" 0 33.120235 0 ;
	setAttr ".tk[2]" -type "float3" 0 -33.120235 0 ;
	setAttr ".tk[4]" -type "float3" 0 -33.120235 0 ;
	setAttr ".tk[6]" -type "float3" 0 33.120235 0 ;
createNode transformGeometry -n "transformGeometry9";
	rename -uid "F2F8E54E-514D-5B1D-2763-16BA32818ECB";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 0.41545031349132294 0 0 0 0 0.11074190310373586 0
		 -58.797046244638501 429.16111872675543 104.04421967371626 1;
createNode polyCube -n "polyCube10";
	rename -uid "154EA748-B74B-D6FF-94C4-33BFF6DB7712";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".w" 1;
	setAttr ".h" 1;
	setAttr ".d" 1;
	setAttr ".cuv" 4;
createNode transformGeometry -n "transformGeometry10";
	rename -uid "9197A853-7A49-E0A6-779F-ABA94D2AE7F5";
	setAttr ".txf" -type "matrix" 0.096499911273798353 0 0 0 0 0.56417450695993576 0.56417450695993587 0
		 0 -0.56417450695993587 0.56417450695993576 0 127.93093384552117 0 0 1;
createNode polyCylinder -n "polyCylinder2";
	rename -uid "0727B4D3-524A-2473-9CE5-E5B976694873";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 1;
	setAttr ".h" 2;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyReduce -n "polyReduce2";
	rename -uid "0B968AFA-E847-CCD0-E5DF-EE95B42D2B37";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ver" 1;
	setAttr ".p" 50;
	setAttr ".vmp" -type "string" "";
	setAttr ".sym" -type "double4" 0 1 0 0 ;
	setAttr ".stl" 0.01;
	setAttr ".kqw" 1;
	setAttr ".cr" yes;
createNode polyTweak -n "polyTweak17";
	rename -uid "C92340F9-3241-8A30-DE9D-6CADC0789E8A";
	setAttr ".uopa" yes;
	setAttr -s 15 ".tk";
	setAttr ".tk[0]" -type "float3" -31.588003 0 11.076353 ;
	setAttr ".tk[1]" -type "float3" -26.870361 0 20.335251 ;
	setAttr ".tk[2]" -type "float3" -10.263558 0 32.400795 ;
	setAttr ".tk[3]" -type "float3" 10.263571 0 32.400791 ;
	setAttr ".tk[4]" -type "float3" 26.870363 0 20.335243 ;
	setAttr ".tk[5]" -type "float3" 26.870361 0 -18.709667 ;
	setAttr ".tk[6]" -type "float3" 10.263569 0 -30.775206 ;
	setAttr ".tk[7]" -type "float3" 7.3248289e-06 0 -32.400795 ;
	setAttr ".tk[8]" -type "float3" -26.870342 0 -18.709663 ;
	setAttr ".tk[9]" -type "float3" -31.587982 0 -9.4507723 ;
	setAttr ".tk[11]" -type "float3" -31.699564 -5.0359898 6.5235281 ;
	setAttr ".tk[12]" -type "float3" -12.10815 4.6461673 8.214633 ;
	setAttr ".tk[13]" -type "float3" 12.108163 4.6461673 8.214633 ;
	setAttr ".tk[14]" -type "float3" 31.699564 -5.0359898 6.5235281 ;
	setAttr ".tk[20]" -type "float3" 31.588003 0 -9.4507742 ;
createNode transformGeometry -n "transformGeometry11";
	rename -uid "BFB4EFF0-E641-9109-B37E-65B25959D197";
	setAttr ".txf" -type "matrix" 0.51082920097890883 0 0 0 0 -0.0091255480583041278 1.1539956137194407 0
		 0 -0.56463285192981616 -0.0044649946363102483 0 2.1734112349864496 236.01832926003391 -266.07533928359845 1;
createNode polyCube -n "polyCube12";
	rename -uid "F6201CF1-E144-8EAF-E144-AF990083174C";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".w" 1;
	setAttr ".h" 1;
	setAttr ".d" 1;
	setAttr ".cuv" 4;
createNode polySmoothFace -n "polySmoothFace5";
	rename -uid "F11CF9BC-1044-8751-ECE2-1D8048FF5693";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".sdt" 2;
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polyBevel3 -n "polyBevel3";
	rename -uid "61AF70B4-5D4A-235E-9458-8EB3E7E4382E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:47]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 162.27368289531233 -341.64606924529835 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyCube -n "polyCube13";
	rename -uid "4E015AC6-334F-137A-4F21-4DB815D27435";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".w" 1;
	setAttr ".h" 1;
	setAttr ".d" 1;
	setAttr ".cuv" 4;
createNode polySmoothFace -n "polySmoothFace6";
	rename -uid "7094B4F3-B84B-E3EB-BC2B-5E916DB611FE";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".sdt" 2;
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polyReduce -n "polyReduce3";
	rename -uid "092BF969-3343-B61D-F194-79AEEBB5C5E5";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ver" 1;
	setAttr ".p" 50;
	setAttr ".vmp" -type "string" "";
	setAttr ".sym" -type "double4" 0 1 0 0 ;
	setAttr ".stl" 0.01;
	setAttr ".kqw" 1;
	setAttr ".cr" yes;
createNode polySplitRing -n "polySplitRing20";
	rename -uid "0E395359-7E4E-964C-C48D-E9B9FD057348";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[20:30]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.94414219698486612 -0.32953833141622579 0
		 0 0.32953833141622579 0.94414219698486612 0 0 61.965362203346409 69.594358027407637 1;
	setAttr ".wt" 0.79354792833328247;
	setAttr ".dr" no;
	setAttr ".re" 20;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing21";
	rename -uid "A2719131-794A-A2E1-CBA3-1BA4DA875AF8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[20:30]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.94414219698486612 -0.32953833141622579 0
		 0 0.32953833141622579 0.94414219698486612 0 0 61.965362203346409 69.594358027407637 1;
	setAttr ".wt" 0.53705096244812012;
	setAttr ".re" 22;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak18";
	rename -uid "B6BB3448-7046-4AF6-12DA-C28096E89273";
	setAttr ".uopa" yes;
	setAttr -s 11 ".tk[21:31]" -type "float3"  15.3136282 6.42522001 0 15.31362152
		 -4.57431555 0 13.026543617 -9.53572941 0 -3.2249054e-06 -16.87217331 0 -0.73656857
		 -16.74322891 0 -13.026551247 -9.53572941 0 -15.3136282 -4.57431555 0 -8.67796898
		 10.40981293 0 -3.31469035 16.59503174 0 3.31468678 16.59503174 0 8.67796707 10.40982246
		 0;
createNode polySplitRing -n "polySplitRing22";
	rename -uid "27470F25-7D42-F183-2353-CB882CD3BFBC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[20:30]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 -0.84883487889014275 -0.5286580637610262 0
		 0 0.5286580637610262 -0.84883487889014275 0 0 560.54017225860525 -562.34454324117598 1;
	setAttr ".wt" 0.5832209587097168;
	setAttr ".dr" no;
	setAttr ".re" 20;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyCube -n "polyCube14";
	rename -uid "7A67C2D5-0E4A-F4FE-57C2-A3B683D6B76A";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".w" 1;
	setAttr ".h" 1;
	setAttr ".d" 1;
	setAttr ".cuv" 4;
createNode lambert -n "StatueBronze";
	rename -uid "3AB09C6B-8344-4CC6-93D4-BBB7D6DDE662";
createNode shadingEngine -n "lambert2SG";
	rename -uid "A1A5C011-2242-04F2-C881-55AA5A10635C";
	setAttr ".ihi" 0;
	setAttr -s 27 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "3BA7E3F4-2140-53F7-D27D-20A7914D335F";
createNode lambert -n "Crystal";
	rename -uid "CA5E6D22-EA43-4B8C-6D82-B4B9B93180E4";
createNode shadingEngine -n "lambert3SG";
	rename -uid "FA829519-734B-D1C1-83E2-CE83BA085C3A";
	setAttr ".ihi" 0;
	setAttr -s 12 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "39C95054-BD4B-0C47-1C2D-5A9130D42912";
createNode phong -n "EnergyOrb";
	rename -uid "82942900-0C43-2D46-3DBF-1781EFB94F59";
createNode shadingEngine -n "phong1SG";
	rename -uid "D5425284-4F4A-F9E8-9C28-BD9E2863D0FF";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "0B55168A-0A45-8F82-0DEF-3AA83B6E4CB7";
createNode animCurveTL -n "CrystalGroup1_translateX";
	rename -uid "B5EB8836-5442-A27A-6DD3-95B6200C7ABD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTL -n "CrystalGroup1_translateY";
	rename -uid "3706978A-0E40-44C5-98A2-98AC787C3D4A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTL -n "CrystalGroup1_translateZ";
	rename -uid "C22BB4D3-C84A-4C18-EB2D-8EAC83A0AC4B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTU -n "CrystalGroup1_visibility";
	rename -uid "461F9869-FA48-11E0-8CA6-2E9692D7449B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTA -n "CrystalGroup1_rotateX";
	rename -uid "99133672-6F47-E066-4E9E-E5ABA52BB89B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "CrystalGroup1_rotateY";
	rename -uid "618CDD78-B940-CF93-466E-FCA5E827C930";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 718;
createNode animCurveTA -n "CrystalGroup1_rotateZ";
	rename -uid "B1BE6F5B-3147-82CC-830F-2E9F3D4A4030";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTU -n "CrystalGroup1_scaleX";
	rename -uid "2D3C9C54-4A4C-F7ED-0114-A9AA8D781646";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "CrystalGroup1_scaleY";
	rename -uid "01B82F2E-9A49-F9C8-25C1-A8B505882F64";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.81930692644954184 120 0.81930692644954184;
createNode animCurveTU -n "CrystalGroup1_scaleZ";
	rename -uid "D5F31996-E24F-6DE9-5A9E-3EB4494CB96F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTL -n "CrystalGroup2_translateX";
	rename -uid "173556DE-3148-B13E-2CBB-2E936BD62413";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTL -n "CrystalGroup2_translateY";
	rename -uid "76CFA26E-E84B-653C-BFDB-FEB58656C006";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTL -n "CrystalGroup2_translateZ";
	rename -uid "D86FA004-8549-3813-7141-84A827F2FF88";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTU -n "CrystalGroup2_visibility";
	rename -uid "6AE7E4DE-8543-C73D-1A79-16A752562269";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTA -n "CrystalGroup2_rotateX";
	rename -uid "B4F125F3-5B49-E094-2104-1F857338165D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "CrystalGroup2_rotateY";
	rename -uid "240B74B7-2B45-646C-248D-F9B3ACA0927E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 -359;
createNode animCurveTA -n "CrystalGroup2_rotateZ";
	rename -uid "CF111ACB-1742-6863-60F3-85861A5C443A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTU -n "CrystalGroup2_scaleX";
	rename -uid "31135AB7-C042-A652-C89B-AB905D633D77";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "CrystalGroup2_scaleY";
	rename -uid "23AAC1DE-F742-2F5A-87FE-62920652D1AC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "CrystalGroup2_scaleZ";
	rename -uid "77F115CA-E843-586F-8BB0-5B82140FFB1C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
select -ne :time1;
	setAttr ".o" 63;
	setAttr ".unw" 63;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 5 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 7 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "CrystalGroup1_translateX.o" "CrystalGroup1.tx";
connectAttr "CrystalGroup1_translateY.o" "CrystalGroup1.ty";
connectAttr "CrystalGroup1_translateZ.o" "CrystalGroup1.tz";
connectAttr "CrystalGroup1_visibility.o" "CrystalGroup1.v";
connectAttr "CrystalGroup1_rotateX.o" "CrystalGroup1.rx";
connectAttr "CrystalGroup1_rotateY.o" "CrystalGroup1.ry";
connectAttr "CrystalGroup1_rotateZ.o" "CrystalGroup1.rz";
connectAttr "CrystalGroup1_scaleX.o" "CrystalGroup1.sx";
connectAttr "CrystalGroup1_scaleY.o" "CrystalGroup1.sy";
connectAttr "CrystalGroup1_scaleZ.o" "CrystalGroup1.sz";
connectAttr "transformGeometry3.og" "|Statue|CrystalGroup1|pCube5|pCubeShape5.i"
		;
connectAttr "CrystalGroup2_translateX.o" "CrystalGroup2.tx";
connectAttr "CrystalGroup2_translateY.o" "CrystalGroup2.ty";
connectAttr "CrystalGroup2_translateZ.o" "CrystalGroup2.tz";
connectAttr "CrystalGroup2_visibility.o" "CrystalGroup2.v";
connectAttr "CrystalGroup2_rotateX.o" "CrystalGroup2.rx";
connectAttr "CrystalGroup2_rotateY.o" "CrystalGroup2.ry";
connectAttr "CrystalGroup2_rotateZ.o" "CrystalGroup2.rz";
connectAttr "CrystalGroup2_scaleX.o" "CrystalGroup2.sx";
connectAttr "CrystalGroup2_scaleY.o" "CrystalGroup2.sy";
connectAttr "CrystalGroup2_scaleZ.o" "CrystalGroup2.sz";
connectAttr "deleteComponent6.og" "pSphereShape1.i";
connectAttr "polySplitRing10.out" "ChestArmorShape.i";
connectAttr "polyCube14.out" "pCubeShape22.i";
connectAttr "polyTorus1.out" "pTorusShape1.i";
connectAttr "transformGeometry2.og" "ChestShape.i";
connectAttr "polyPipe1.out" "BeltShape.i";
connectAttr "transformGeometry10.og" "pCubeShape17.i";
connectAttr "transformGeometry5.og" "SkullShape.i";
connectAttr "transformGeometry6.og" "pCubeShape13.i";
connectAttr "transformGeometry7.og" "pCubeShape14.i";
connectAttr "transformGeometry8.og" "pCylinderShape1.i";
connectAttr "transformGeometry9.og" "pCubeShape15.i";
connectAttr "polySplitRing21.out" "pCylinderShape2.i";
connectAttr "polySplitRing22.out" "|Statue|R_Arm|pCylinder2|pCylinder3|pCylinderShape3.i"
		;
connectAttr "polyReduce3.out" "|Statue|R_Arm|pCylinder2|pCylinder3|pCube21|pCubeShape21.i"
		;
connectAttr "polyBevel3.out" "|Statue|R_Arm|pCylinder2|pCube20|pCubeShape20.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phong1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phong1SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCube2.out" "polySmoothFace1.ip";
connectAttr "polySmoothFace1.out" "polySmoothFace2.ip";
connectAttr "polySmoothFace2.out" "polyReduce1.ip";
connectAttr "polySurfaceShape1.o" "polySplitRing1.ip";
connectAttr "ChestShape.wm" "polySplitRing1.mp";
connectAttr "polyTweak1.out" "polySplitRing2.ip";
connectAttr "ChestShape.wm" "polySplitRing2.mp";
connectAttr "polySplitRing1.out" "polyTweak1.ip";
connectAttr "polySplitRing2.out" "polySplitRing3.ip";
connectAttr "ChestShape.wm" "polySplitRing3.mp";
connectAttr "polyTweak2.out" "polySplitRing4.ip";
connectAttr "SkullShape.wm" "polySplitRing4.mp";
connectAttr "polyReduce1.out" "polyTweak2.ip";
connectAttr "polySplitRing4.out" "polySplitRing5.ip";
connectAttr "SkullShape.wm" "polySplitRing5.mp";
connectAttr "polySplitRing5.out" "polySplitRing6.ip";
connectAttr "SkullShape.wm" "polySplitRing6.mp";
connectAttr "polySplitRing6.out" "polySplitRing7.ip";
connectAttr "SkullShape.wm" "polySplitRing7.mp";
connectAttr "polySplitRing7.out" "polySplitRing8.ip";
connectAttr "SkullShape.wm" "polySplitRing8.mp";
connectAttr "polySplitRing8.out" "polyTweak3.ip";
connectAttr "polyTweak3.out" "transformGeometry1.ig";
connectAttr "polySplitRing3.out" "polyTweak4.ip";
connectAttr "polyTweak4.out" "transformGeometry2.ig";
connectAttr "polyCube4.out" "polyTweak5.ip";
connectAttr "polyTweak5.out" "transformGeometry3.ig";
connectAttr "polyCube6.out" "transformGeometry4.ig";
connectAttr "transformGeometry4.og" "polySmoothFace3.ip";
connectAttr "polyTweak6.out" "polySplitRing9.ip";
connectAttr "ChestArmorShape.wm" "polySplitRing9.mp";
connectAttr "polySmoothFace3.out" "polyTweak6.ip";
connectAttr "polyTweak7.out" "polySplitRing10.ip";
connectAttr "ChestArmorShape.wm" "polySplitRing10.mp";
connectAttr "polySplitRing9.out" "polyTweak7.ip";
connectAttr "polySphere1.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "deleteComponent6.ig";
connectAttr "polyTweak8.out" "polyBevel1.ip";
connectAttr "pCubeShape13.wm" "polyBevel1.mp";
connectAttr "polyCube7.out" "polyTweak8.ip";
connectAttr "polyTweak9.out" "polySplitRing11.ip";
connectAttr "pCubeShape13.wm" "polySplitRing11.mp";
connectAttr "polyBevel1.out" "polyTweak9.ip";
connectAttr "polySplitRing11.out" "polySplitRing12.ip";
connectAttr "pCubeShape13.wm" "polySplitRing12.mp";
connectAttr "polySplitRing12.out" "polySplitRing13.ip";
connectAttr "pCubeShape13.wm" "polySplitRing13.mp";
connectAttr "polySplitRing13.out" "polySplitRing14.ip";
connectAttr "pCubeShape13.wm" "polySplitRing14.mp";
connectAttr "polySplitRing14.out" "polySplitRing15.ip";
connectAttr "pCubeShape13.wm" "polySplitRing15.mp";
connectAttr "polySplitRing15.out" "polySplitRing16.ip";
connectAttr "pCubeShape13.wm" "polySplitRing16.mp";
connectAttr "polySplitRing16.out" "polySplitRing17.ip";
connectAttr "pCubeShape13.wm" "polySplitRing17.mp";
connectAttr "polySplitRing17.out" "polySplitRing18.ip";
connectAttr "pCubeShape13.wm" "polySplitRing18.mp";
connectAttr "polySplitRing18.out" "polySmoothFace4.ip";
connectAttr "transformGeometry1.og" "deleteComponent7.ig";
connectAttr "polySmoothFace4.out" "polyTweak10.ip";
connectAttr "polyTweak10.out" "deleteComponent8.ig";
connectAttr "deleteComponent8.og" "deleteComponent9.ig";
connectAttr "polyTweak11.out" "polySplitRing19.ip";
connectAttr "SkullShape.wm" "polySplitRing19.mp";
connectAttr "deleteComponent7.og" "polyTweak11.ip";
connectAttr "polyCylinder1.out" "polyBevel2.ip";
connectAttr "pCylinderShape1.wm" "polyBevel2.mp";
connectAttr "polySplitRing19.out" "polyTweak12.ip";
connectAttr "polyTweak12.out" "transformGeometry5.ig";
connectAttr "deleteComponent9.og" "polyTweak13.ip";
connectAttr "polyTweak13.out" "transformGeometry6.ig";
connectAttr "polyCube8.out" "polyTweak14.ip";
connectAttr "polyTweak14.out" "transformGeometry7.ig";
connectAttr "polyBevel2.out" "transformGeometry8.ig";
connectAttr "polyCube9.out" "polyTweak15.ip";
connectAttr "polyTweak15.out" "transformGeometry9.ig";
connectAttr "polyCube10.out" "transformGeometry10.ig";
connectAttr "polyCylinder2.out" "polyReduce2.ip";
connectAttr "polyReduce2.out" "polyTweak17.ip";
connectAttr "polyTweak17.out" "transformGeometry11.ig";
connectAttr "polyCube12.out" "polySmoothFace5.ip";
connectAttr "polySmoothFace5.out" "polyBevel3.ip";
connectAttr "|Statue|R_Arm|pCylinder2|pCube20|pCubeShape20.wm" "polyBevel3.mp";
connectAttr "polyCube13.out" "polySmoothFace6.ip";
connectAttr "polySmoothFace6.out" "polyReduce3.ip";
connectAttr "transformGeometry11.og" "polySplitRing20.ip";
connectAttr "pCylinderShape2.wm" "polySplitRing20.mp";
connectAttr "polyTweak18.out" "polySplitRing21.ip";
connectAttr "pCylinderShape2.wm" "polySplitRing21.mp";
connectAttr "polySplitRing20.out" "polyTweak18.ip";
connectAttr "|Statue|R_Arm|pCylinder2|pCylinder3|polySurfaceShape2.o" "polySplitRing22.ip"
		;
connectAttr "|Statue|R_Arm|pCylinder2|pCylinder3|pCylinderShape3.wm" "polySplitRing22.mp"
		;
connectAttr "StatueBronze.oc" "lambert2SG.ss";
connectAttr "|Statue|L_Arm|pCylinder4|pCube20|pCubeShape20.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|Statue|L_Arm|pCylinder4|pCylinder3|pCube21|pCubeShape21.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|Statue|L_Arm|pCylinder4|pCylinder3|pCylinderShape3.iog" "lambert2SG.dsm"
		 -na;
connectAttr "pCylinderShape4.iog" "lambert2SG.dsm" -na;
connectAttr "|Statue|R_Arm|pCylinder2|pCube20|pCubeShape20.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|Statue|R_Arm|pCylinder2|pCylinder3|pCube21|pCubeShape21.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|Statue|R_Arm|pCylinder2|pCylinder3|pCylinderShape3.iog" "lambert2SG.dsm"
		 -na;
connectAttr "pCylinderShape2.iog" "lambert2SG.dsm" -na;
connectAttr "pCubeShape16.iog" "lambert2SG.dsm" -na;
connectAttr "pCubeShape15.iog" "lambert2SG.dsm" -na;
connectAttr "pCylinderShape1.iog" "lambert2SG.dsm" -na;
connectAttr "pCubeShape13.iog" "lambert2SG.dsm" -na;
connectAttr "SkullShape.iog" "lambert2SG.dsm" -na;
connectAttr "pCubeShape17.iog" "lambert2SG.dsm" -na;
connectAttr "pCubeShape18.iog" "lambert2SG.dsm" -na;
connectAttr "BeltShape.iog" "lambert2SG.dsm" -na;
connectAttr "ChestShape.iog" "lambert2SG.dsm" -na;
connectAttr "pTorusShape1.iog" "lambert2SG.dsm" -na;
connectAttr "pCubeShape25.iog" "lambert2SG.dsm" -na;
connectAttr "pCubeShape24.iog" "lambert2SG.dsm" -na;
connectAttr "pCubeShape23.iog" "lambert2SG.dsm" -na;
connectAttr "pCubeShape22.iog" "lambert2SG.dsm" -na;
connectAttr "pCubeShape29.iog" "lambert2SG.dsm" -na;
connectAttr "pCubeShape28.iog" "lambert2SG.dsm" -na;
connectAttr "pCubeShape27.iog" "lambert2SG.dsm" -na;
connectAttr "pCubeShape26.iog" "lambert2SG.dsm" -na;
connectAttr "ChestArmorShape.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "StatueBronze.msg" "materialInfo1.m";
connectAttr "Crystal.oc" "lambert3SG.ss";
connectAttr "|Statue|CrystalGroup2|pCube10|pCubeShape10.iog" "lambert3SG.dsm" -na
		;
connectAttr "|Statue|CrystalGroup2|pCube9|pCubeShape9.iog" "lambert3SG.dsm" -na;
connectAttr "|Statue|CrystalGroup2|pCube8|pCubeShape8.iog" "lambert3SG.dsm" -na;
connectAttr "|Statue|CrystalGroup2|pCube7|pCubeShape7.iog" "lambert3SG.dsm" -na;
connectAttr "|Statue|CrystalGroup2|pCube6|pCubeShape6.iog" "lambert3SG.dsm" -na;
connectAttr "|Statue|CrystalGroup2|pCube5|pCubeShape5.iog" "lambert3SG.dsm" -na;
connectAttr "|Statue|CrystalGroup1|pCube10|pCubeShape10.iog" "lambert3SG.dsm" -na
		;
connectAttr "|Statue|CrystalGroup1|pCube9|pCubeShape9.iog" "lambert3SG.dsm" -na;
connectAttr "|Statue|CrystalGroup1|pCube8|pCubeShape8.iog" "lambert3SG.dsm" -na;
connectAttr "|Statue|CrystalGroup1|pCube7|pCubeShape7.iog" "lambert3SG.dsm" -na;
connectAttr "|Statue|CrystalGroup1|pCube6|pCubeShape6.iog" "lambert3SG.dsm" -na;
connectAttr "|Statue|CrystalGroup1|pCube5|pCubeShape5.iog" "lambert3SG.dsm" -na;
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "Crystal.msg" "materialInfo2.m";
connectAttr "EnergyOrb.oc" "phong1SG.ss";
connectAttr "pSphereShape1.iog" "phong1SG.dsm" -na;
connectAttr "phong1SG.msg" "materialInfo3.sg";
connectAttr "EnergyOrb.msg" "materialInfo3.m";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "phong1SG.pa" ":renderPartition.st" -na;
connectAttr "StatueBronze.msg" ":defaultShaderList1.s" -na;
connectAttr "Crystal.msg" ":defaultShaderList1.s" -na;
connectAttr "EnergyOrb.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCubeShape14.iog" ":initialShadingGroup.dsm" -na;
// End of Statue1.ma

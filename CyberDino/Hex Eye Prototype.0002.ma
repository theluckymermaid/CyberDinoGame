//Maya ASCII 2017 scene
//Name: Hex Eye Prototype.0002.ma
//Last modified: Thu, Mar 02, 2017 03:09:41 PM
//Codeset: 1252
requires maya "2017";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2017";
fileInfo "version" "2017";
fileInfo "cutIdentifier" "201606150345-997974";
fileInfo "osv" "Microsoft Windows 7 Enterprise Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "A7089BC7-4957-7EC6-2F12-BD832FDC678F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -4.145865191471783 4.1656809692633825 11.599084692777515 ;
	setAttr ".r" -type "double3" -15.338352729607449 -20.200000000001022 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "2459AF41-45EE-3CAF-0E40-25A468DD94BA";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 13.183626857274531;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "3E9D1A29-475D-4B20-74B7-9D927F5DB1D9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 7.1440897325280428 1000.1 1.6048317515099235 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "3D74F958-42D4-B86B-359B-D6BC2161A70F";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 32.943240519506517;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "22B18A8B-4A79-9B95-B03C-F38762699377";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "BCB866D0-4188-2F95-E31C-97A70CD5C683";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 3.5612812107974126;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "3352EEE5-4847-A4D3-A066-D2A340724B49";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0.079270245699287006 2.991687344268509 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "D7EA3A37-47AF-59E9-0F5D-449AE545C2DB";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 3.5064184808812748;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "pSphere1";
	rename -uid "C80719B8-4505-E8CD-87B2-92B04EF27941";
createNode mesh -n "pSphereShape1" -p "pSphere1";
	rename -uid "1F0D298A-4A2D-135F-6214-B788192CFB17";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Hex_Pixels" -p "pSphere1";
	rename -uid "FD320D2C-4ECA-5733-B23C-C294144EFAE1";
	setAttr ".s" -type "double3" 0.33333333333333331 0.33333333333333331 0.33333333333333331 ;
createNode transform -n "InnerRing" -p "Hex_Pixels";
	rename -uid "A4C54DDC-41BC-565E-36AC-1E8757C16E40";
createNode transform -n "pCylinder5" -p "InnerRing";
	rename -uid "954F6BBD-4B2C-29DE-D24E-7FA229FEC1A4";
	setAttr ".r" -type "double3" -8.7610781119108605 0 0 ;
	setAttr ".s" -type "double3" 0.5 0.5 1 ;
createNode mesh -n "pCylinderShape5" -p "|pSphere1|Hex_Pixels|InnerRing|pCylinder5";
	rename -uid "3C804BD9-48AC-5519-1095-509D5BAFC69F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder1" -p "InnerRing";
	rename -uid "96999062-4244-D286-BC92-F895EA133F5F";
	setAttr ".s" -type "double3" 0.5 0.5 1 ;
createNode mesh -n "pCylinderShape1" -p "|pSphere1|Hex_Pixels|InnerRing|pCylinder1";
	rename -uid "D98A7CC4-48BA-22ED-B905-7BACABB03897";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder4" -p "InnerRing";
	rename -uid "768D061F-40BE-00C4-E2AC-8899CC7E4C9B";
	setAttr ".r" -type "double3" 9.0990513469597385 0 0 ;
	setAttr ".s" -type "double3" 0.5 0.5 1 ;
createNode mesh -n "pCylinderShape4" -p "|pSphere1|Hex_Pixels|InnerRing|pCylinder4";
	rename -uid "AC3BE722-4586-F2E1-CA31-6D9033A609C2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder10" -p "InnerRing";
	rename -uid "7F236693-4DC0-866B-4BD9-B0ACD8A9FAE1";
	setAttr ".r" -type "double3" -17.846044725283029 0 0 ;
	setAttr ".s" -type "double3" 0.5 0.5 1 ;
createNode mesh -n "pCylinderShape10" -p "|pSphere1|Hex_Pixels|InnerRing|pCylinder10";
	rename -uid "3A1C41D9-4289-0E18-90C7-DBACE915314E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder9" -p "InnerRing";
	rename -uid "C473409B-4E28-DDBF-A8ED-ABB5F9540576";
	setAttr ".r" -type "double3" 18.247027877276743 0 0 ;
	setAttr ".s" -type "double3" 0.5 0.49999999999999994 0.99999999999999989 ;
createNode mesh -n "pCylinderShape9" -p "|pSphere1|Hex_Pixels|InnerRing|pCylinder9";
	rename -uid "3E89D10A-43E4-E517-13D3-DBB435E99CA2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "MiddleRing" -p "Hex_Pixels";
	rename -uid "3E8C227A-46E4-3BB5-2B04-40B3B7EE4F86";
createNode transform -n "pCylinder13" -p "MiddleRing";
	rename -uid "51241089-4F03-B37B-96C2-58B97D8073AB";
	setAttr ".r" -type "double3" -13.84900223950312 -7.6321834694183091 1.8642002549890579 ;
	setAttr ".s" -type "double3" 0.49999999999999989 0.49999999999999989 0.99999999999999989 ;
createNode mesh -n "pCylinderShape13" -p "|pSphere1|Hex_Pixels|MiddleRing|pCylinder13";
	rename -uid "357FB7DB-478D-D7DB-CE51-BCB1A138B993";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder12" -p "MiddleRing";
	rename -uid "B1E13C7D-4529-EC3E-2F0A-C986459E12E5";
	setAttr ".r" -type "double3" -13.444691551529756 7.5874662360759411 -1.8676893658710567 ;
	setAttr ".s" -type "double3" 0.49999999999999994 0.5 1 ;
createNode mesh -n "pCylinderShape12" -p "|pSphere1|Hex_Pixels|MiddleRing|pCylinder12";
	rename -uid "D4034C52-4901-3A3E-FB44-EE8A484286B3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder2" -p "MiddleRing";
	rename -uid "132CA1B3-4635-37CE-46EA-69A75272D178";
	setAttr ".r" -type "double3" -3.9037176262967326 8.1377854300399175 0.32510119615417282 ;
	setAttr ".s" -type "double3" 0.49999999999999989 0.49999999999999994 0.99999999999999989 ;
createNode mesh -n "pCylinderShape2" -p "|pSphere1|Hex_Pixels|MiddleRing|pCylinder2";
	rename -uid "8FC74C22-4325-F5D5-A6ED-B4B94AED8809";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder7" -p "MiddleRing";
	rename -uid "16F5C146-422B-1E0E-CC29-43BE1383362F";
	setAttr ".r" -type "double3" -3.9462155456709227 -7.8249789065785516 0.050368208019018638 ;
	setAttr ".s" -type "double3" 0.49999999999999994 0.5 0.99999999999999989 ;
createNode mesh -n "pCylinderShape7" -p "|pSphere1|Hex_Pixels|MiddleRing|pCylinder7";
	rename -uid "398C3C52-43DB-259C-8012-ECBCE027C881";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder6" -p "MiddleRing";
	rename -uid "2B3C8243-42C3-C750-7594-89AC3A3FDE00";
	setAttr ".r" -type "double3" 4.7479952078434247 -7.6662617596433087 0.21961542924036603 ;
	setAttr ".s" -type "double3" 0.49999999999999994 0.49999999999999994 0.99999999999999989 ;
createNode mesh -n "pCylinderShape6" -p "|pSphere1|Hex_Pixels|MiddleRing|pCylinder6";
	rename -uid "BC349E2B-4F60-3C5A-A925-6DB923998FCB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder3" -p "MiddleRing";
	rename -uid "064D0FBF-4BC6-7429-976A-06AFA1B4EFD7";
	setAttr ".r" -type "double3" 4.8914826542704688 7.6587821117519441 0.36407704146347541 ;
	setAttr ".s" -type "double3" 0.5 0.5 1 ;
createNode mesh -n "pCylinderShape3" -p "|pSphere1|Hex_Pixels|MiddleRing|pCylinder3";
	rename -uid "DB3E1CF7-4BF5-7273-127C-E0AA11F6A122";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder8" -p "MiddleRing";
	rename -uid "DFBB2A6E-4CBC-4E69-2B80-FE8D3D1A5FEF";
	setAttr ".r" -type "double3" 13.868240090832186 7.3695911814534307 1.8138358819067035 ;
	setAttr ".s" -type "double3" 0.49999999999999989 0.5 0.99999999999999989 ;
createNode mesh -n "pCylinderShape8" -p "|pSphere1|Hex_Pixels|MiddleRing|pCylinder8";
	rename -uid "FC128E3A-4A89-8B0A-0810-F1AF426AD0C5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder11" -p "MiddleRing";
	rename -uid "5295587E-4358-6A75-7039-73A745133BA4";
	setAttr ".r" -type "double3" 13.882009843199143 -7.4789875230341032 -2.0230784166629845 ;
	setAttr ".s" -type "double3" 0.49999999999999994 0.49999999999999994 0.99999999999999989 ;
createNode mesh -n "pCylinderShape11" -p "|pSphere1|Hex_Pixels|MiddleRing|pCylinder11";
	rename -uid "57953605-41B4-4C98-CEF5-AF937A11A04C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder19" -p "MiddleRing";
	rename -uid "C283A323-4C18-E998-B234-30902C1B18CF";
	setAttr ".r" -type "double3" 22.958592072447654 7.369591181453413 1.8138358819066995 ;
	setAttr ".s" -type "double3" 0.49999999999999989 0.49999999999999994 1 ;
createNode mesh -n "pCylinderShape19" -p "|pSphere1|Hex_Pixels|MiddleRing|pCylinder19";
	rename -uid "DD6D7CA1-48FD-B19D-602E-CAB4630403E9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder17" -p "MiddleRing";
	rename -uid "5AB13727-4382-0D9F-7EB5-C9ACDC6589AB";
	setAttr ".r" -type "double3" 22.972361824814666 -7.4789875230340783 -2.0230784166629951 ;
	setAttr ".s" -type "double3" 0.49999999999999994 0.49999999999999983 0.99999999999999978 ;
createNode mesh -n "pCylinderShape17" -p "|pSphere1|Hex_Pixels|MiddleRing|pCylinder17";
	rename -uid "8786B36B-47F5-5DE3-50C7-AE940C25E641";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder14" -p "MiddleRing";
	rename -uid "0E7D23D4-4083-BD8D-9B39-FF9020E9E908";
	setAttr ".r" -type "double3" -22.84567587384706 -7.6321834694182984 1.8642002549890484 ;
	setAttr ".s" -type "double3" 0.5 0.49999999999999994 1 ;
createNode mesh -n "pCylinderShape14" -p "|pSphere1|Hex_Pixels|MiddleRing|pCylinder14";
	rename -uid "F3B85376-4DFD-3F39-BACE-32BDBF53865A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder16" -p "MiddleRing";
	rename -uid "CA846B09-4519-36C0-8497-07983C8CAD40";
	setAttr ".r" -type "double3" -26.842718359627082 0 0 ;
	setAttr ".s" -type "double3" 0.5 0.49999999999999994 0.99999999999999989 ;
createNode mesh -n "pCylinderShape16" -p "|pSphere1|Hex_Pixels|MiddleRing|pCylinder16";
	rename -uid "D6527096-40F0-400C-0B75-4FBB25DA3946";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder15" -p "MiddleRing";
	rename -uid "2524264F-48DC-741B-689E-AD8A87D4EABA";
	setAttr ".r" -type "double3" -22.441365185873831 7.5874662360759269 -1.8676893658710598 ;
	setAttr ".s" -type "double3" 0.5 0.49999999999999994 1 ;
createNode mesh -n "pCylinderShape15" -p "|pSphere1|Hex_Pixels|MiddleRing|pCylinder15";
	rename -uid "2CC6C8B5-424C-925E-4B91-C19954C8EA02";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder18" -p "MiddleRing";
	rename -uid "E497009F-4905-AD9D-1EB8-EC885A70566E";
	setAttr ".r" -type "double3" 27.337379858892195 0 0 ;
	setAttr ".s" -type "double3" 0.5 0.5 1 ;
createNode mesh -n "pCylinderShape18" -p "|pSphere1|Hex_Pixels|MiddleRing|pCylinder18";
	rename -uid "76781047-484F-07A1-258A-1180FBB93D51";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "OutterRing" -p "Hex_Pixels";
	rename -uid "0F01F9E9-4222-851F-C6A0-E28D4D71A26E";
createNode transform -n "pCylinder26" -p "OutterRing";
	rename -uid "68B898BA-4318-C966-2B2D-01ADE9DA35FF";
	setAttr ".r" -type "double3" -17.812708317648116 15.597649057006063 -1.7658677974126045 ;
	setAttr ".s" -type "double3" 0.49999999999999994 0.49999999999999994 0.99999999999999989 ;
createNode mesh -n "pCylinderShape26" -p "|pSphere1|Hex_Pixels|OutterRing|pCylinder26";
	rename -uid "7166A715-438E-8C65-FF21-93B5BF031FC8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder29" -p "OutterRing";
	rename -uid "A9C9DCF4-4130-FCA7-56C9-58BDF5147FBC";
	setAttr ".r" -type "double3" -18.194983845236912 -15.881509218020149 1.8720121711565558 ;
	setAttr ".s" -type "double3" 0.49999999999999994 0.5 0.99999999999999989 ;
createNode mesh -n "pCylinderShape29" -p "|pSphere1|Hex_Pixels|OutterRing|pCylinder29";
	rename -uid "214FC8D0-44BD-1997-D1F6-74850B01A634";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder23" -p "OutterRing";
	rename -uid "27AADA74-4495-FD5B-562A-7499C709CA6F";
	setAttr ".r" -type "double3" -8.4936289114245582 -15.664155057604923 0 ;
	setAttr ".s" -type "double3" 0.5 0.49999999999999994 1 ;
createNode mesh -n "pCylinderShape23" -p "|pSphere1|Hex_Pixels|OutterRing|pCylinder23";
	rename -uid "1B5EEA88-4251-919E-2DE2-CD8424565E07";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder22" -p "OutterRing";
	rename -uid "1EF3AA42-4D2F-AD06-F08D-FCA628ADE0A2";
	setAttr ".r" -type "double3" -8.7520155136718838 15.795696476123389 -0.12680946473780458 ;
	setAttr ".s" -type "double3" 0.5 0.49999999999999994 0.99999999999999989 ;
createNode mesh -n "pCylinderShape22" -p "|pSphere1|Hex_Pixels|OutterRing|pCylinder22";
	rename -uid "E3A43B3D-4F13-4655-4E82-BB9F3601E1CA";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder20" -p "OutterRing";
	rename -uid "3699852A-4CA1-1457-A445-58ACA321966A";
	setAttr ".r" -type "double3" 0.29708507023453967 16.056054273625165 -0.0018721012648912694 ;
	setAttr ".s" -type "double3" 0.49999999999999994 0.49999999999999994 0.99999999999999978 ;
createNode mesh -n "pCylinderShape20" -p "|pSphere1|Hex_Pixels|OutterRing|pCylinder20";
	rename -uid "CB30E0D2-415D-BABC-A39D-4297700B869A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder21" -p "OutterRing";
	rename -uid "8DE1E507-4045-4055-255D-FF90A7069C91";
	setAttr ".r" -type "double3" 0.31664623419486121 -15.662985096150397 0.20369543763054471 ;
	setAttr ".s" -type "double3" 0.49999999999999989 0.5 0.99999999999999989 ;
createNode mesh -n "pCylinderShape21" -p "|pSphere1|Hex_Pixels|OutterRing|pCylinder21";
	rename -uid "727F7A71-4785-6547-923C-2593EA9EF3BD";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder24" -p "OutterRing";
	rename -uid "B68AC0F3-4592-6B4E-7294-A49853E602DD";
	setAttr ".r" -type "double3" 9.3261223952989685 -15.475622600098344 -1.3704178989817344 ;
	setAttr ".s" -type "double3" 0.49999999999999994 0.49999999999999994 0.99999999999999989 ;
createNode mesh -n "pCylinderShape24" -p "|pSphere1|Hex_Pixels|OutterRing|pCylinder24";
	rename -uid "66E87D3A-45B7-541D-9D5A-66B90D3032E7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder25" -p "OutterRing";
	rename -uid "E444013B-4B75-FCB2-836C-4CB5324BC08D";
	setAttr ".r" -type "double3" 9.7117767763387928 15.920807113713172 1.558160275536367 ;
	setAttr ".s" -type "double3" 0.5 0.49999999999999994 1 ;
createNode mesh -n "pCylinderShape25" -p "|pSphere1|Hex_Pixels|OutterRing|pCylinder25";
	rename -uid "E8BB87A6-4A2E-FC30-1425-6FAA1DF40A83";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder27" -p "OutterRing";
	rename -uid "A04B3415-4A60-C154-9AF0-748E781879B8";
	setAttr ".r" -type "double3" 19.259932068619008 15.454695896067481 3.9987529483924238 ;
	setAttr ".s" -type "double3" 0.49999999999999989 0.49999999999999994 1 ;
createNode mesh -n "pCylinderShape27" -p "|pSphere1|Hex_Pixels|OutterRing|pCylinder27";
	rename -uid "521914E1-4307-0021-282F-E1A634F51D57";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder28" -p "OutterRing";
	rename -uid "13A8428F-4579-F9A8-D650-23A185DA1EA9";
	setAttr ".r" -type "double3" 18.345474884884474 -15.33909503429461 -2.5834415783555125 ;
	setAttr ".s" -type "double3" 0.5 0.49999999999999994 0.99999999999999989 ;
createNode mesh -n "pCylinderShape28" -p "|pSphere1|Hex_Pixels|OutterRing|pCylinder28";
	rename -uid "531251FD-430E-759A-435F-13A324171F70";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder35" -p "OutterRing";
	rename -uid "E38542EE-47BD-1E92-D480-9996AFE330C7";
	setAttr ".r" -type "double3" -27.57550548961748 -15.575062095091472 3.8537246226542345 ;
	setAttr ".s" -type "double3" 0.49999999999999994 0.5 0.99999999999999989 ;
createNode mesh -n "pCylinderShape35" -p "pCylinder35";
	rename -uid "20833EB9-4E96-472D-EC1E-9FAE80BF9AAA";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder33" -p "OutterRing";
	rename -uid "315DDBBF-4E1A-87BB-02C7-93B1AD64D390";
	setAttr ".r" -type "double3" -32.123414482052176 -7.4656652093943574 2.7020669196654001 ;
	setAttr ".s" -type "double3" 0.49999999999999994 0.49999999999999989 1 ;
createNode mesh -n "pCylinderShape33" -p "pCylinder33";
	rename -uid "5DBD730E-45AB-052C-022D-5C84448B7224";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder30" -p "OutterRing";
	rename -uid "20561621-4FFA-A86A-AA4D-5D9B9EF231E0";
	setAttr ".r" -type "double3" -36.26068243740729 0 0 ;
	setAttr ".s" -type "double3" 0.5 0.49999999999999994 0.99999999999999989 ;
createNode mesh -n "pCylinderShape30" -p "pCylinder30";
	rename -uid "60654668-44E0-CD77-E27E-83843E690D0C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder32" -p "OutterRing";
	rename -uid "4AA883E3-46AE-689F-B5E4-ADA6692AA2B9";
	setAttr ".r" -type "double3" -31.813078782833124 7.7770611241622731 -2.5391433597210695 ;
	setAttr ".s" -type "double3" 0.5 0.5 0.99999999999999989 ;
createNode mesh -n "pCylinderShape32" -p "pCylinder32";
	rename -uid "CE02DDC5-45B2-1D21-1563-62BBB1B8B2C6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder34" -p "OutterRing";
	rename -uid "8B311D53-45F5-5F06-D030-908266C2D475";
	setAttr ".r" -type "double3" -27.470701128438623 15.299574292968067 -4.2528008310308332 ;
	setAttr ".s" -type "double3" 0.49999999999999994 0.49999999999999989 1 ;
createNode mesh -n "pCylinderShape34" -p "pCylinder34";
	rename -uid "010FA2D4-4483-D51A-1FD6-F0BA5D7F270E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder39" -p "OutterRing";
	rename -uid "12F440AB-4889-E0C3-AAEA-83AB9B10CC5B";
	setAttr ".r" -type "double3" 28.345098973749433 14.218980087451909 6.1304624527611349 ;
	setAttr ".s" -type "double3" 0.49999999999999994 0.49999999999999994 0.99999999999999989 ;
createNode mesh -n "pCylinderShape39" -p "pCylinder39";
	rename -uid "1163FC23-4A54-13CF-8BCA-A791054B4F5B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder36" -p "OutterRing";
	rename -uid "1CC2D031-4029-6DAD-C127-DABB0C601681";
	setAttr ".r" -type "double3" 32.018469316371849 7.0941349899777935 3.3717819916823819 ;
	setAttr ".s" -type "double3" 0.49999999999999989 0.5 1 ;
createNode mesh -n "pCylinderShape36" -p "pCylinder36";
	rename -uid "3B490A8A-4DFB-5729-CCC1-48B77A88579A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder31" -p "OutterRing";
	rename -uid "2AC77080-454B-893D-F6D2-29A0E92B3294";
	setAttr ".r" -type "double3" 36.491369395945974 0 0 ;
	setAttr ".s" -type "double3" 0.5 0.5 1 ;
createNode mesh -n "pCylinderShape31" -p "pCylinder31";
	rename -uid "06D416E0-4322-7806-D7CB-8DA814F0DF64";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder37" -p "OutterRing";
	rename -uid "FD1E67E6-465C-528E-62A2-71AC26356454";
	setAttr ".r" -type "double3" 32.241643952022201 -7.9958573409040232 -2.3308807589415381 ;
	setAttr ".s" -type "double3" 0.49999999999999994 0.49999999999999994 1 ;
createNode mesh -n "pCylinderShape37" -p "pCylinder37";
	rename -uid "98DBC392-4DCD-B273-A4F2-849D898AA395";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder38" -p "OutterRing";
	rename -uid "CB916189-4ECB-6BA0-8CBA-4298822D82BE";
	setAttr ".r" -type "double3" 27.626089453357888 -15.757422549923978 -3.4755680040010208 ;
	setAttr ".s" -type "double3" 0.49999999999999994 0.49999999999999989 0.99999999999999989 ;
createNode mesh -n "pCylinderShape38" -p "pCylinder38";
	rename -uid "DD2F565A-43B5-4E8B-714A-E6AC5DCC6B61";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Dark_Grp" -p "Hex_Pixels";
	rename -uid "37E0A7A1-448D-438C-3924-139414883F15";
createNode transform -n "DarkOutterRing" -p "Dark_Grp";
	rename -uid "45929107-499A-4654-017B-D8AEC73CAC80";
	setAttr ".t" -type "double3" 0 0 -0.06023949546336782 ;
createNode transform -n "pCylinder16" -p "DarkOutterRing";
	rename -uid "87A65309-4472-AD36-3D51-F28834B15C26";
	setAttr ".r" -type "double3" -26.842718359627082 0 0 ;
	setAttr ".s" -type "double3" 0.5 0.5 1 ;
createNode mesh -n "pCylinderShape16" -p "|pSphere1|Hex_Pixels|Dark_Grp|DarkOutterRing|pCylinder16";
	rename -uid "86E44579-46C1-A5A6-AE58-6BBF2F4325AF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder14" -p "DarkOutterRing";
	rename -uid "E62A09BC-4AAD-6227-DA1D-1A83E998757B";
	setAttr ".r" -type "double3" -22.845675873847046 -7.6321834694182966 1.864200254989048 ;
	setAttr ".s" -type "double3" 0.5 0.49999999999999994 1 ;
createNode mesh -n "pCylinderShape14" -p "|pSphere1|Hex_Pixels|Dark_Grp|DarkOutterRing|pCylinder14";
	rename -uid "E31D80E0-456B-3A75-409F-61A1A243A634";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder15" -p "DarkOutterRing";
	rename -uid "E1618738-4607-DF15-F352-FAAEAFA634C2";
	setAttr ".r" -type "double3" -22.441365185873824 7.5874662360759269 -1.8676893658710596 ;
	setAttr ".s" -type "double3" 0.5 0.49999999999999994 0.99999999999999989 ;
createNode mesh -n "pCylinderShape15" -p "|pSphere1|Hex_Pixels|Dark_Grp|DarkOutterRing|pCylinder15";
	rename -uid "9F5C3909-40F7-1622-0FDF-4A80B6E5F917";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder26" -p "DarkOutterRing";
	rename -uid "9B544C4B-4343-690A-FA9B-F8B1307F7CD2";
	setAttr ".r" -type "double3" -17.812708317648116 15.597649057006063 -1.7658677974126045 ;
	setAttr ".s" -type "double3" 0.49999999999999994 0.49999999999999994 0.99999999999999989 ;
createNode mesh -n "pCylinderShape26" -p "|pSphere1|Hex_Pixels|Dark_Grp|DarkOutterRing|pCylinder26";
	rename -uid "EF99D2BB-4CED-0EFA-64D3-5CA66CA14B94";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder29" -p "DarkOutterRing";
	rename -uid "FE87B7F9-4B1F-09B0-8DB0-9F945C8C0523";
	setAttr ".r" -type "double3" -18.194983845236912 -15.881509218020149 1.8720121711565558 ;
	setAttr ".s" -type "double3" 0.49999999999999994 0.5 0.99999999999999989 ;
createNode mesh -n "pCylinderShape29" -p "|pSphere1|Hex_Pixels|Dark_Grp|DarkOutterRing|pCylinder29";
	rename -uid "BCF8A070-4278-2EDD-5B44-2B9AA539C734";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder23" -p "DarkOutterRing";
	rename -uid "09264CC2-43DC-2435-9C8F-5697A828EF80";
	setAttr ".r" -type "double3" -8.4936289114245582 -15.664155057604923 0 ;
	setAttr ".s" -type "double3" 0.5 0.49999999999999994 1 ;
createNode mesh -n "pCylinderShape23" -p "|pSphere1|Hex_Pixels|Dark_Grp|DarkOutterRing|pCylinder23";
	rename -uid "9DC8C2A6-4900-9F02-50AC-DDB3D668AA59";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder22" -p "DarkOutterRing";
	rename -uid "59B5AC6F-4B59-791E-DFF8-4482BD8217CC";
	setAttr ".r" -type "double3" -8.7520155136718838 15.795696476123389 -0.12680946473780458 ;
	setAttr ".s" -type "double3" 0.5 0.49999999999999994 0.99999999999999989 ;
createNode mesh -n "pCylinderShape22" -p "|pSphere1|Hex_Pixels|Dark_Grp|DarkOutterRing|pCylinder22";
	rename -uid "037AC345-4078-2740-3517-2D962C1FE8CE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder20" -p "DarkOutterRing";
	rename -uid "BD28C888-4071-67A7-6D9F-EF9FF707C1F9";
	setAttr ".r" -type "double3" 0.29708507023453967 16.056054273625165 -0.0018721012648912694 ;
	setAttr ".s" -type "double3" 0.49999999999999994 0.49999999999999994 0.99999999999999978 ;
createNode mesh -n "pCylinderShape20" -p "|pSphere1|Hex_Pixels|Dark_Grp|DarkOutterRing|pCylinder20";
	rename -uid "B8C102EE-45D4-DF46-3C3A-4F9F0322AC09";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder21" -p "DarkOutterRing";
	rename -uid "963512E0-4B39-B18F-1869-2C9ED0A91BFF";
	setAttr ".r" -type "double3" 0.31664623419486121 -15.662985096150397 0.20369543763054471 ;
	setAttr ".s" -type "double3" 0.49999999999999989 0.5 0.99999999999999989 ;
createNode mesh -n "pCylinderShape21" -p "|pSphere1|Hex_Pixels|Dark_Grp|DarkOutterRing|pCylinder21";
	rename -uid "C9B001B1-440B-752C-7402-CFB574ADFF32";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder24" -p "DarkOutterRing";
	rename -uid "C39FD804-44EF-B280-6A8A-A4BA79098DF7";
	setAttr ".r" -type "double3" 9.3261223952989685 -15.475622600098344 -1.3704178989817344 ;
	setAttr ".s" -type "double3" 0.49999999999999994 0.49999999999999994 0.99999999999999989 ;
createNode mesh -n "pCylinderShape24" -p "|pSphere1|Hex_Pixels|Dark_Grp|DarkOutterRing|pCylinder24";
	rename -uid "1D0BCE68-4A06-AA48-5F5D-B6A8F07B67E6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder25" -p "DarkOutterRing";
	rename -uid "9780D7D6-432C-7493-8989-DAB6FECA74A6";
	setAttr ".r" -type "double3" 9.5416916387435347 15.645974063046738 3.2360362080340139 ;
	setAttr ".s" -type "double3" 0.5 0.49999999999999994 1 ;
createNode mesh -n "pCylinderShape25" -p "|pSphere1|Hex_Pixels|Dark_Grp|DarkOutterRing|pCylinder25";
	rename -uid "05A60036-472A-57DF-E67D-94BC8D17DC35";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder27" -p "DarkOutterRing";
	rename -uid "742F8124-4970-D7BB-4C1A-448109DC7894";
	setAttr ".r" -type "double3" 18.216625042583551 16.021550942885533 2.1125024024562737 ;
	setAttr ".s" -type "double3" 0.49999999999999989 0.49999999999999994 1 ;
createNode mesh -n "pCylinderShape27" -p "|pSphere1|Hex_Pixels|Dark_Grp|DarkOutterRing|pCylinder27";
	rename -uid "90C3D48B-45B3-3635-EA51-1084E78DB1B1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder28" -p "DarkOutterRing";
	rename -uid "40E9C997-4BB8-7543-97AF-CBAD040DBBAE";
	setAttr ".r" -type "double3" 18.345474884884474 -15.33909503429461 -2.5834415783555125 ;
	setAttr ".s" -type "double3" 0.5 0.49999999999999994 0.99999999999999989 ;
createNode mesh -n "pCylinderShape28" -p "|pSphere1|Hex_Pixels|Dark_Grp|DarkOutterRing|pCylinder28";
	rename -uid "32D5616A-4804-A1BD-7E6C-408E1C709CA8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder17" -p "DarkOutterRing";
	rename -uid "226CB20B-471F-AA9B-DE3E-F3B6EA8B4BD7";
	setAttr ".r" -type "double3" 22.972361824814659 -7.4789875230340828 -2.0230784166629951 ;
	setAttr ".s" -type "double3" 0.49999999999999994 0.49999999999999994 0.99999999999999989 ;
createNode mesh -n "pCylinderShape17" -p "|pSphere1|Hex_Pixels|Dark_Grp|DarkOutterRing|pCylinder17";
	rename -uid "DCB1608A-4E39-5B79-E362-53BC63765F0F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder18" -p "DarkOutterRing";
	rename -uid "ADABCED9-4A79-9ECF-ADE8-9794FDF7F4F4";
	setAttr ".r" -type "double3" 27.337379858892195 0 0 ;
	setAttr ".s" -type "double3" 0.5 0.5 1 ;
createNode mesh -n "pCylinderShape18" -p "|pSphere1|Hex_Pixels|Dark_Grp|DarkOutterRing|pCylinder18";
	rename -uid "85604D3A-413F-1ACE-A23E-E48B4967AFC8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder19" -p "DarkOutterRing";
	rename -uid "763DF892-447F-7153-70C0-B0B5DA976A96";
	setAttr ".r" -type "double3" 22.958592072447647 7.3695911814534147 1.8138358819066986 ;
	setAttr ".s" -type "double3" 0.49999999999999994 0.49999999999999994 1 ;
createNode mesh -n "pCylinderShape19" -p "|pSphere1|Hex_Pixels|Dark_Grp|DarkOutterRing|pCylinder19";
	rename -uid "887CD1C4-4FF2-FEED-1764-E7BECDA3DC92";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "DarkMiddleRing" -p "Dark_Grp";
	rename -uid "83CD9AAB-4437-DC5D-7001-ABB10350E3B2";
	setAttr ".t" -type "double3" 0 0 -0.06023949546336782 ;
createNode transform -n "pCylinder10" -p "DarkMiddleRing";
	rename -uid "BC288A3C-4229-82DD-D02C-298EFF3FD289";
	setAttr ".r" -type "double3" -17.846044725283026 0 0 ;
	setAttr ".s" -type "double3" 0.5 0.5 1 ;
createNode mesh -n "pCylinderShape10" -p "|pSphere1|Hex_Pixels|Dark_Grp|DarkMiddleRing|pCylinder10";
	rename -uid "811D77D1-48FA-8A04-24DA-079D806B7068";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder13" -p "DarkMiddleRing";
	rename -uid "139F7169-429A-D7B7-1FEB-82B9A15842D2";
	setAttr ".r" -type "double3" -13.84900223950312 -7.6321834694183091 1.8642002549890579 ;
	setAttr ".s" -type "double3" 0.49999999999999989 0.49999999999999989 0.99999999999999989 ;
createNode mesh -n "pCylinderShape13" -p "|pSphere1|Hex_Pixels|Dark_Grp|DarkMiddleRing|pCylinder13";
	rename -uid "B9FAE272-44D8-E506-EEF7-7D9D851376EF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder12" -p "DarkMiddleRing";
	rename -uid "4EA3E09B-4742-BDB7-F7A3-64A519B11D2C";
	setAttr ".r" -type "double3" -13.444691551529756 7.5874662360759411 -1.8676893658710567 ;
	setAttr ".s" -type "double3" 0.49999999999999994 0.5 1 ;
createNode mesh -n "pCylinderShape12" -p "|pSphere1|Hex_Pixels|Dark_Grp|DarkMiddleRing|pCylinder12";
	rename -uid "4A4D9ACB-4E58-1A8B-3B56-D08241242456";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder2" -p "DarkMiddleRing";
	rename -uid "14644303-4FCB-1198-D411-01B312B9C547";
	setAttr ".r" -type "double3" -3.9037176262967326 8.1377854300399175 0.32510119615417282 ;
	setAttr ".s" -type "double3" 0.49999999999999989 0.49999999999999994 0.99999999999999989 ;
createNode mesh -n "pCylinderShape2" -p "|pSphere1|Hex_Pixels|Dark_Grp|DarkMiddleRing|pCylinder2";
	rename -uid "C5F2C3F1-44CF-7CFD-63C2-7EB0269FC39A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder7" -p "DarkMiddleRing";
	rename -uid "95E7F6F8-44E4-BC3F-ADAC-3DA95EAA228C";
	setAttr ".r" -type "double3" -3.9462155456709227 -7.8249789065785516 0.050368208019018638 ;
	setAttr ".s" -type "double3" 0.49999999999999994 0.5 0.99999999999999989 ;
createNode mesh -n "pCylinderShape7" -p "|pSphere1|Hex_Pixels|Dark_Grp|DarkMiddleRing|pCylinder7";
	rename -uid "FED3DFBF-4A3F-7A05-F73F-AD8FF39A83C5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder6" -p "DarkMiddleRing";
	rename -uid "5DF39A7E-463A-8B9A-B837-87B9A879A2A9";
	setAttr ".r" -type "double3" 4.7479952078434247 -7.6662617596433087 0.21961542924036603 ;
	setAttr ".s" -type "double3" 0.49999999999999994 0.49999999999999994 0.99999999999999989 ;
createNode mesh -n "pCylinderShape6" -p "|pSphere1|Hex_Pixels|Dark_Grp|DarkMiddleRing|pCylinder6";
	rename -uid "2475C84C-4DF2-B7CB-8A0B-6FA0191C9EB4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder3" -p "DarkMiddleRing";
	rename -uid "20ADFF5A-4CAF-D282-03B6-EB9B80A4F7D4";
	setAttr ".r" -type "double3" 4.8914826542704688 7.6587821117519441 0.36407704146347541 ;
	setAttr ".s" -type "double3" 0.5 0.5 1 ;
createNode mesh -n "pCylinderShape3" -p "|pSphere1|Hex_Pixels|Dark_Grp|DarkMiddleRing|pCylinder3";
	rename -uid "BE090B7D-4BD2-B7B6-99CE-228232264438";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder8" -p "DarkMiddleRing";
	rename -uid "54797584-4C86-5220-A6E8-8CA427528DA5";
	setAttr ".r" -type "double3" 13.868240090832186 7.3695911814534307 1.8138358819067035 ;
	setAttr ".s" -type "double3" 0.49999999999999989 0.5 0.99999999999999989 ;
createNode mesh -n "pCylinderShape8" -p "|pSphere1|Hex_Pixels|Dark_Grp|DarkMiddleRing|pCylinder8";
	rename -uid "5453A063-46B5-F480-4F71-D9B71F17D9BD";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder11" -p "DarkMiddleRing";
	rename -uid "78132633-4CF2-EAD1-AB48-3686FECECD01";
	setAttr ".r" -type "double3" 13.882009843199143 -7.4789875230341032 -2.0230784166629845 ;
	setAttr ".s" -type "double3" 0.49999999999999994 0.49999999999999994 0.99999999999999989 ;
createNode mesh -n "pCylinderShape11" -p "|pSphere1|Hex_Pixels|Dark_Grp|DarkMiddleRing|pCylinder11";
	rename -uid "AD1CD777-44CA-2985-85DD-8F9ECD787C64";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder9" -p "DarkMiddleRing";
	rename -uid "8C3E9193-4E4B-E516-1D21-E8BA99EA0172";
	setAttr ".r" -type "double3" 18.247027877276746 0 0 ;
	setAttr ".s" -type "double3" 0.5 0.49999999999999994 0.99999999999999989 ;
createNode mesh -n "pCylinderShape9" -p "|pSphere1|Hex_Pixels|Dark_Grp|DarkMiddleRing|pCylinder9";
	rename -uid "CAE3AD43-4AA1-7514-0D56-85BC18B7BF45";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "DarkInnerRing" -p "Dark_Grp";
	rename -uid "28D6387D-43CF-24DA-2CEF-9890A0A362B6";
	setAttr ".t" -type "double3" 0 0 -0.06023949546336782 ;
createNode transform -n "pCylinder5" -p "DarkInnerRing";
	rename -uid "8B74772C-4E77-0C04-1880-80B5B6AA7550";
	setAttr ".r" -type "double3" -8.7610781119108605 0 0 ;
	setAttr ".s" -type "double3" 0.5 0.5 1 ;
createNode mesh -n "pCylinderShape5" -p "|pSphere1|Hex_Pixels|Dark_Grp|DarkInnerRing|pCylinder5";
	rename -uid "30560DBA-4C5B-01FA-CE0D-B3AD3780FA0E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder1" -p "DarkInnerRing";
	rename -uid "55FE0B88-4737-9512-A936-CCAD2F8A5897";
	setAttr ".s" -type "double3" 0.5 0.5 1 ;
createNode mesh -n "pCylinderShape1" -p "|pSphere1|Hex_Pixels|Dark_Grp|DarkInnerRing|pCylinder1";
	rename -uid "F3B68B1B-463A-4ACE-38B2-938B4336FDBF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder4" -p "DarkInnerRing";
	rename -uid "6BBFE621-4CB6-D92C-F622-2DA83ECD9483";
	setAttr ".r" -type "double3" 9.0990513469597385 0 0 ;
	setAttr ".s" -type "double3" 0.5 0.5 1 ;
createNode mesh -n "pCylinderShape4" -p "|pSphere1|Hex_Pixels|Dark_Grp|DarkInnerRing|pCylinder4";
	rename -uid "FA17F2BA-45A9-3C5C-1713-6A94C99F5113";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder49" -p "Dark_Grp";
	rename -uid "AA4D328E-4957-C47B-4B03-468DC9467B63";
	setAttr ".t" -type "double3" -0.0076853469608776804 0.012989357295844845 -0.024682084400445031 ;
	setAttr ".r" -type "double3" 28.34509897374944 14.218980087451904 6.1304624527611349 ;
	setAttr ".s" -type "double3" 0.49999999999999994 0.49999999999999994 0.99999999999999978 ;
createNode mesh -n "pCylinderShape49" -p "pCylinder49";
	rename -uid "7FA00E23-4FCB-0E34-C793-3DADDBB4C014";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder48" -p "Dark_Grp";
	rename -uid "DCAA33B8-4CE5-57B1-E312-B9A598CD11CB";
	setAttr ".t" -type "double3" -0.0039263374422665656 0.015134187188342172 -0.024342011084882792 ;
	setAttr ".r" -type "double3" 32.018469316371842 7.0941349899777935 3.3717819916823819 ;
	setAttr ".s" -type "double3" 0.49999999999999983 0.5 0.99999999999999989 ;
createNode mesh -n "pCylinderShape48" -p "pCylinder48";
	rename -uid "C34DC46D-4F06-9D42-17CC-72857E51F805";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder47" -p "Dark_Grp";
	rename -uid "AC63FED2-4673-12DA-B040-11B51B4DAB12";
	setAttr ".t" -type "double3" -7.1123662515049054e-017 0.017205216941029597 -0.023258842645991422 ;
	setAttr ".r" -type "double3" 36.491369395945974 0 0 ;
	setAttr ".s" -type "double3" 0.5 0.5 1 ;
createNode mesh -n "pCylinderShape47" -p "pCylinder47";
	rename -uid "039E0996-41C8-7ABF-00EB-B5ADC9AFD888";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder46" -p "Dark_Grp";
	rename -uid "C36DEBC8-47CE-5E7F-A5E3-6483B2509C88";
	setAttr ".t" -type "double3" 0.0040286983768000693 0.015283141822640803 -0.024231970960627559 ;
	setAttr ".r" -type "double3" 32.241643952022201 -7.9958573409040197 -2.3308807589415377 ;
	setAttr ".s" -type "double3" 0.49999999999999994 0.49999999999999994 1 ;
createNode mesh -n "pCylinderShape46" -p "pCylinder46";
	rename -uid "124723A9-43A1-F4D5-C745-3E8D8F6DDD38";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder45" -p "Dark_Grp";
	rename -uid "54F72EAF-4451-3D93-63E4-30B834FC3598";
	setAttr ".t" -type "double3" 0.0077613608283871854 0.012968550772795127 -0.024669236310917549 ;
	setAttr ".r" -type "double3" 27.626089453357888 -15.757422549923978 -3.4755680040010208 ;
	setAttr ".s" -type "double3" 0.49999999999999989 0.49999999999999983 0.99999999999999978 ;
createNode mesh -n "pCylinderShape45" -p "pCylinder45";
	rename -uid "4AF7FF74-44A2-D4AD-061D-C4A8FC951946";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder44" -p "Dark_Grp";
	rename -uid "1FBD787E-4BCB-3FF1-ADC4-C3A5F1AFDEAB";
	setAttr ".t" -type "double3" 0.014305116699684203 -0.023748753100516488 -0.045479000195378413 ;
	setAttr ".r" -type "double3" -27.575505489617488 -15.575062095091468 3.8537246226542354 ;
	setAttr ".s" -type "double3" 0.49999999999999994 0.5 0.99999999999999967 ;
createNode mesh -n "pCylinderShape44" -p "pCylinder44";
	rename -uid "673E603B-4AB8-E0AE-6E74-50A5F8956271";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder43" -p "Dark_Grp";
	rename -uid "9302267F-410D-4746-EB66-6B88A1BA8C4C";
	setAttr ".t" -type "double3" 0.0071897718969899426 -0.028014682092348035 -0.044726545403440621 ;
	setAttr ".r" -type "double3" -32.123414482052176 -7.4656652093943574 2.7020669196654006 ;
	setAttr ".s" -type "double3" 0.49999999999999989 0.49999999999999989 1 ;
createNode mesh -n "pCylinderShape43" -p "pCylinder43";
	rename -uid "A2A72BFF-4BD3-3584-57EE-47ACA5F733A3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder42" -p "Dark_Grp";
	rename -uid "EF9B6AEC-46DF-726B-2EB0-77974B8C504A";
	setAttr ".t" -type "double3" 3.6429192995512961e-017 -0.031503110961323105 -0.042948027849374765 ;
	setAttr ".r" -type "double3" -36.26068243740729 0 0 ;
	setAttr ".s" -type "double3" 0.5 0.49999999999999989 0.99999999999999978 ;
createNode mesh -n "pCylinderShape42" -p "pCylinder42";
	rename -uid "7C22E3F9-4B80-A853-04E8-E2AE211FF00B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder41" -p "Dark_Grp";
	rename -uid "ADA0C055-4AB9-C86A-5AC3-7F9B66405CAF";
	setAttr ".t" -type "double3" -0.0073626451606061145 -0.027778831339508602 -0.04484536856847364 ;
	setAttr ".r" -type "double3" -31.813078782833124 7.7770611241622749 -2.5391433597210709 ;
	setAttr ".s" -type "double3" 0.5 0.5 0.99999999999999989 ;
createNode mesh -n "pCylinderShape41" -p "pCylinder41";
	rename -uid "59F3E865-4C95-EABD-1B95-7893C68A2340";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder40" -p "Dark_Grp";
	rename -uid "9161CC74-4641-417F-0738-67A528B7EB29";
	setAttr ".t" -type "double3" -0.014257408907515397 -0.023577721942649538 -0.045582852210355483 ;
	setAttr ".r" -type "double3" -27.470701128438634 15.299574292968067 -4.2528008310308332 ;
	setAttr ".s" -type "double3" 0.49999999999999994 0.49999999999999983 1 ;
createNode mesh -n "pCylinderShape40" -p "pCylinder40";
	rename -uid "31B7B4BF-49FA-E0E1-D780-408787086BC0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57812506 0.020933539
		 0.42187503 0.020933509 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.375 0.3125 0.41666666 0.3125 0.45833331 0.3125 0.49999997 0.3125
		 0.54166663 0.3125 0.58333331 0.3125 0.625 0.3125 0.375 0.68843985 0.41666666 0.68843985
		 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663 0.68843985 0.58333331 0.68843985
		 0.625 0.68843985 0.57812506 0.70843351 0.42187503 0.70843351 0.34375 0.84375 0.421875
		 0.97906649 0.578125 0.97906649 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.4901161e-008 -0.38449687 
		3.5404143 0 -0.38116986 3.5414453 0 0.049448255 3.1084328 5.9604645e-008 0.48460364 
		2.6750317 -1.1920929e-007 0.48460364 2.6750312 -5.9604645e-008 0.051849358 3.1081917 
		1.4901161e-008 -0.48105019 3.4407592 -1.4901161e-008 -0.48116988 3.4414454 7.1054274e-015 
		-0.048157156 3.0084329 0 0.38449645 2.5790234 0 0.38449693 2.5790229 0 -0.04827702 
		3.0094988 -5.9604645e-008 0.051842932 3.1084328 0 -0.048156977 3.0084324;
	setAttr -s 14 ".vt[0:13]"  0.25000012 -0.050000001 -0.43301266 -0.24999993 -0.050000001 -0.43301275
		 -0.5 -0.050000001 -7.4505806e-008 -0.25000006 -0.050000001 0.43301269 0.24999999 -0.050000001 0.43301272
		 0.5 -0.050000001 0 0.25000012 0.050000001 -0.43301266 -0.24999993 0.050000001 -0.43301275
		 -0.5 0.050000001 -7.4505806e-008 -0.25000006 0.050000001 0.43301269 0.24999999 0.050000001 0.43301272
		 0.5 0.050000001 0 0 -0.050000001 0 0 0.050000001 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 6 7 14 13
		f 4 1 14 -8 -14
		mu 0 4 7 8 15 14
		f 4 2 15 -9 -15
		mu 0 4 8 9 16 15
		f 4 3 16 -10 -16
		mu 0 4 9 10 17 16
		f 4 4 17 -11 -17
		mu 0 4 10 11 18 17
		f 4 5 12 -12 -18
		mu 0 4 11 12 19 18
		f 3 -1 -19 19
		mu 0 3 1 0 26
		f 3 -2 -20 20
		mu 0 3 2 1 26
		f 3 -3 -21 21
		mu 0 3 3 2 26
		f 3 -4 -22 22
		mu 0 3 4 3 26
		f 3 -5 -23 23
		mu 0 3 5 4 26
		f 3 -6 -24 18
		mu 0 3 0 5 26
		f 3 6 25 -25
		mu 0 3 24 23 27
		f 3 7 26 -26
		mu 0 3 23 22 27
		f 3 8 27 -27
		mu 0 3 22 21 27
		f 3 9 28 -28
		mu 0 3 21 20 27
		f 3 10 29 -29
		mu 0 3 20 25 27
		f 3 11 24 -30
		mu 0 3 25 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode parentConstraint -n "pSphere1_parentConstraint1" -p "pSphere1";
	rename -uid "38A06825-4EC0-F9BE-553C-01962B6B20CB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Eye_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode scaleConstraint -n "pSphere1_scaleConstraint1" -p "pSphere1";
	rename -uid "46FFDD2D-47F1-DD52-682E-DEA4904E205C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Eye_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "Eye_Ctrl_Grp";
	rename -uid "3E003E02-4149-62F9-CC4F-B98A4F2D9B90";
createNode transform -n "Eye_Ctrl" -p "Eye_Ctrl_Grp";
	rename -uid "75926AB6-4B4B-3EBB-EB6E-808DDA124DD8";
	setAttr ".s" -type "double3" 2 2 2 ;
createNode nurbsCurve -n "Eye_CtrlShape" -p "Eye_Ctrl";
	rename -uid "28F24478-4F81-1F27-CE96-2B9CDAE61E32";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -1.9290100705121385 -1.1811780041878484e-016 
		1.9290100705121369 3.1123585525025001e-016 -1.6704379530992425e-016 2.728032203672548 
		1.9290100705121378 -1.1811780041878494e-016 1.9290100705121378 2.728032203672548 
		-6.3576457925352531e-032 1.0638181401102507e-015 1.9290100705121382 1.1811780041878489e-016 
		-1.9290100705121374 8.2200934356587724e-016 1.670437953099243e-016 -2.728032203672548 
		-1.9290100705121369 1.1811780041878494e-016 -1.9290100705121378 -2.728032203672548 
		7.4548203168718272e-032 -1.1919287607960118e-015 0 0 0 0 0 0 0 0 0;
createNode transform -n "Pupil_Ctrl_Grp";
	rename -uid "A64F77BE-4078-9268-2D81-0C84546A5283";
	setAttr ".rp" -type "double3" 0 4 0 ;
	setAttr ".sp" -type "double3" 0 4 0 ;
createNode transform -n "Pupil_Ctrl" -p "Pupil_Ctrl_Grp";
	rename -uid "962FAE7F-4EC0-CA03-458C-D09C7CB98773";
	setAttr ".t" -type "double3" -1 0 -1 ;
	setAttr ".rp" -type "double3" 0 4 0 ;
	setAttr ".sp" -type "double3" 0 4 0 ;
	setAttr ".mxtl" -type "double3" 3 1 1 ;
	setAttr ".mtxe" yes;
	setAttr ".xtxe" yes;
createNode nurbsCurve -n "Pupil_CtrlShape" -p "Pupil_Ctrl";
	rename -uid "9883D548-45CF-5557-6F69-408D6EB3F8FC";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.43545981753744084 0 0 
		0 0 0 0.43545981753744051 0 0 0.615833179829962 0 0 0.43545981753744062 0 0 0 0 0 
		-0.4354598175374404 0 0 -0.615833179829962 0 0 0 0 0 0 0 0 0 0 0;
createNode transform -n "pSphere2";
	rename -uid "DFC864EF-42FA-FCA1-3F67-8E801F9A097F";
	setAttr ".t" -type "double3" 3.5527136788005009e-015 0 0 ;
	setAttr ".s" -type "double3" 2.1394308993380218 2.1394308993380218 2.1394308993380218 ;
createNode mesh -n "pSphereShape2" -p "pSphere2";
	rename -uid "69E0C2CC-4D4C-9592-F904-36954B67164B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.05000000074505806 0.32500001788139343 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 49 ".pt";
	setAttr ".pt[287]" -type "float3" 0.011415273 0.089087449 0.018214822 ;
	setAttr ".pt[288]" -type "float3" 0.02254948 0.08578334 0.010125346 ;
	setAttr ".pt[289]" -type "float3" -0.011415287 0.089087449 0.018214822 ;
	setAttr ".pt[290]" -type "float3" -0.022549491 0.08578334 0.010125351 ;
	setAttr ".pt[291]" -type "float3" 0.03312844 0.080366932 0.0024392887 ;
	setAttr ".pt[292]" -type "float3" -0.033128459 0.080366932 0.002439291 ;
	setAttr ".pt[293]" -type "float3" 0.042891663 0.072971642 -0.0046541123 ;
	setAttr ".pt[294]" -type "float3" -0.042891685 0.072971642 -0.004654109 ;
	setAttr ".pt[295]" -type "float3" 0.051598772 0.06377957 -0.010980179 ;
	setAttr ".pt[296]" -type "float3" -0.051598776 0.06377957 -0.010980173 ;
	setAttr ".pt[297]" -type "float3" 0.059035297 0.05301702 -0.016383156 ;
	setAttr ".pt[298]" -type "float3" -0.059035297 0.05301702 -0.016383154 ;
	setAttr ".pt[299]" -type "float3" 0.065018244 0.040948998 -0.020729996 ;
	setAttr ".pt[300]" -type "float3" -0.065018244 0.040948998 -0.020729987 ;
	setAttr ".pt[301]" -type "float3" 0.069400154 0.02787268 -0.023913663 ;
	setAttr ".pt[302]" -type "float3" -0.069400154 0.02787268 -0.023913659 ;
	setAttr ".pt[303]" -type "float3" 0.072073258 0.014110055 -0.025855767 ;
	setAttr ".pt[304]" -type "float3" -0.072073258 0.014110055 -0.025855765 ;
	setAttr ".pt[305]" -type "float3" 0.072971649 0 -0.026508516 ;
	setAttr ".pt[306]" -type "float3" -0.072971649 0 -0.026508516 ;
	setAttr ".pt[307]" -type "float3" 0.072073258 -0.014110055 -0.025855767 ;
	setAttr ".pt[308]" -type "float3" -0.072073258 -0.014110055 -0.025855765 ;
	setAttr ".pt[309]" -type "float3" 0.069400154 -0.02787268 -0.023913663 ;
	setAttr ".pt[310]" -type "float3" -0.069400154 -0.02787268 -0.023913659 ;
	setAttr ".pt[311]" -type "float3" 0.065018244 -0.040948998 -0.020729996 ;
	setAttr ".pt[312]" -type "float3" -0.065018244 -0.040948998 -0.020729987 ;
	setAttr ".pt[313]" -type "float3" 0.059035297 -0.05301702 -0.016383156 ;
	setAttr ".pt[314]" -type "float3" -0.059035297 -0.05301702 -0.016383154 ;
	setAttr ".pt[315]" -type "float3" 0.051598772 -0.06377957 -0.010980179 ;
	setAttr ".pt[316]" -type "float3" -0.051598776 -0.06377957 -0.010980173 ;
	setAttr ".pt[317]" -type "float3" 0.042891663 -0.072971642 -0.0046541123 ;
	setAttr ".pt[318]" -type "float3" -0.042891685 -0.072971642 -0.004654109 ;
	setAttr ".pt[319]" -type "float3" 0.03312844 -0.080366932 0.0024392887 ;
	setAttr ".pt[320]" -type "float3" -0.033128459 -0.080366932 0.002439291 ;
	setAttr ".pt[321]" -type "float3" 0.02254948 -0.08578334 0.010125346 ;
	setAttr ".pt[322]" -type "float3" -0.022549491 -0.08578334 0.010125351 ;
	setAttr ".pt[323]" -type "float3" 0.011415273 -0.089087449 0.018214822 ;
	setAttr ".pt[324]" -type "float3" -0.011415287 -0.089087449 0.018214822 ;
	setAttr ".pt[325]" -type "float3" -8.0643217e-009 0.090197951 0.026508516 ;
	setAttr ".pt[326]" -type "float3" -8.0643217e-009 -0.090197951 0.026508516 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "D25E1691-497F-992A-0794-83873F17B4C9";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "B505205C-40A2-3B4B-02C5-938F96BC00DB";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "4D8C792E-4987-E1BB-2477-6A88BBFCF83A";
createNode displayLayerManager -n "layerManager";
	rename -uid "637C2131-43F8-5A87-B5A0-FC8F99BE2B3A";
	setAttr ".cdl" 3;
	setAttr -s 5 ".dli[1:4]"  1 2 3 4;
	setAttr -s 3 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "69AB8BE4-4168-1CD3-93C4-24A63D32347C";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "8EAD21BD-4483-7BCF-3549-AA909E4510D7";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "518021E5-48B8-D458-96AD-B9BB55BCDD61";
	setAttr ".g" yes;
createNode timeEditor -s -n "timeEditor";
	rename -uid "B62C2202-4F6B-8579-0006-11BF14B2F400";
	setAttr ".ac" 0;
createNode timeEditorTracks -n "Composition1";
	rename -uid "29CC0B50-43C6-1EFF-8007-71BABF5A00C8";
createNode polyCylinder -n "polyCylinder1";
	rename -uid "E45BA5A2-463E-9E74-77D1-C7866CC5C9D8";
	setAttr ".r" 0.5;
	setAttr ".h" 0.1;
	setAttr ".sa" 6;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polySphere -n "polySphere1";
	rename -uid "C56FE8AE-457D-FDD5-9197-E0BA35E64D5C";
createNode blinn -n "blinn1";
	rename -uid "60A6048C-4EDA-6F6E-F673-8EBDAD0CCC01";
	setAttr ".dc" 0.96969699859619141;
	setAttr ".c" -type "float3" 0 1 1 ;
	setAttr ".it" -type "float3" 0.48701298 0.48701298 0.48701298 ;
	setAttr ".ambc" -type "float3" 0.21428572 0.21428572 0.21428572 ;
	setAttr ".sc" -type "float3" 0 0.51298702 0.51298702 ;
createNode shadingEngine -n "blinn1SG";
	rename -uid "143A0AE0-4805-377D-F684-0EA3AB6AE375";
	setAttr ".ihi" 0;
	setAttr -s 39 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "E71F738E-4EF5-9D5F-A3F3-F5A00A934742";
createNode makeNurbCircle -n "makeNurbCircle2";
	rename -uid "A40C8D3E-4CED-C65D-7250-58BAB11AD5BC";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode transformGeometry -n "transformGeometry2";
	rename -uid "F663FFEA-4C17-11C5-C515-A8BA265923CC";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 -4.4408920985006262e-016 1 0 0 -1 -4.4408920985006262e-016 0
		 0 4 0 1;
createNode displayLayer -n "LED";
	rename -uid "DDD53A79-449B-72E2-4E76-1186E1D2EF8A";
	setAttr ".do" 1;
createNode lambert -n "lambert2";
	rename -uid "7B324F0B-432E-2A4E-E815-3E833EDFDD79";
	setAttr ".c" -type "float3" 0.014319999 0.039999999 0.039999999 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "A69E154D-4D75-AD92-C82E-B7A31CBCBF65";
	setAttr ".ihi" 0;
	setAttr -s 39 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "B193F0BC-4108-74F9-A017-4AB520C20777";
createNode displayLayer -n "DarkLED";
	rename -uid "953F53D7-496C-E8B1-4FCC-4DA40BFE1031";
	setAttr ".do" 2;
createNode animCurveUU -n "OutterRing_visibility";
	rename -uid "135F00CA-4701-4256-1FB0-EDA3833D77E7";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  -1 1 0 0;
createNode animCurveUU -n "MiddleRing_visibility";
	rename -uid "E0566801-49E2-FDD5-EF7E-0280EF649FEF";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 1 0;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "8476A6C7-4F2D-9E58-23AC-9E90A677F816";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"timeEditorPanel\" -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n"
		+ "                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 576\n                -height 348\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n"
		+ "            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n"
		+ "            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n"
		+ "            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 576\n            -height 348\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n"
		+ "                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n"
		+ "                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 576\n                -height 348\n"
		+ "                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n"
		+ "            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n"
		+ "            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n"
		+ "            -captureSequenceNumber -1\n            -width 576\n            -height 348\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n"
		+ "                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 576\n                -height 348\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 576\n            -height 348\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n"
		+ "                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n"
		+ "                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n"
		+ "                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1159\n                -height 741\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n"
		+ "            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n"
		+ "            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n"
		+ "            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1159\n            -height 741\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n"
		+ "                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 1\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -renderFilterIndex 0\n                -selectionOrder \"chronological\" \n                -expandAttribute 0\n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n"
		+ "            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"0\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n"
		+ "            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n"
		+ "                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n"
		+ "            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n"
		+ "            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n"
		+ "                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n"
		+ "                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n"
		+ "                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n"
		+ "                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n"
		+ "            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n"
		+ "                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n"
		+ "                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n"
		+ "                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tshapePanel -unParent -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tposePanel -unParent -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"contentBrowserPanel\" -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1159\\n    -height 741\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1159\\n    -height 741\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "C58EE2E0-4651-CBEC-EB3C-EA9E480696B8";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode transformGeometry -n "transformGeometry1";
	rename -uid "FD825F10-4861-9124-D9C6-14A508A31520";
	setAttr ".txf" -type "matrix" 4 0 0 0 0 4 0 0 0 0 4 0 0 0 0 1;
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "81CBB43A-4C5A-A4FC-1E00-C0B29397C483";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode polySphere -n "polySphere2";
	rename -uid "B7AD33BA-4323-3BD5-3D6E-7DA9B36F1214";
createNode deleteComponent -n "deleteComponent1";
	rename -uid "9683F397-4FC4-6C0B-B7BC-64B42C524778";
	setAttr ".dc" -type "componentList" 20 "f[13:14]" "f[33:34]" "f[53:54]" "f[73:74]" "f[93:94]" "f[113:114]" "f[133:134]" "f[153:154]" "f[173:174]" "f[193:194]" "f[213:214]" "f[233:234]" "f[253:254]" "f[273:274]" "f[293:294]" "f[313:314]" "f[333:334]" "f[353:354]" "f[373:374]" "f[393:394]";
createNode deleteComponent -n "deleteComponent2";
	rename -uid "CB15FC4A-4EFB-872D-A113-3BB6E35A5B1B";
	setAttr ".dc" -type "componentList" 16 "f[30:31]" "f[47:50]" "f[65:68]" "f[83:86]" "f[101:103]" "f[120:121]" "f[138:139]" "f[156:157]" "f[174:175]" "f[192:193]" "f[210:211]" "f[227:229]" "f[245:248]" "f[263:266]" "f[281:284]" "f[300:301]";
createNode deleteComponent -n "deleteComponent3";
	rename -uid "3130C898-4E93-C0AB-31C5-83AA2C4502AD";
	setAttr ".dc" -type "componentList" 6 "f[102]" "f[118]" "f[134]" "f[150]" "f[166]" "f[182]";
createNode deleteComponent -n "deleteComponent4";
	rename -uid "83F9A0EB-417C-D6CE-8E1D-28A367224A00";
	setAttr ".dc" -type "componentList" 8 "f[87]" "f[102]" "f[117]" "f[132]" "f[147]" "f[162]" "f[177]" "f[192]";
createNode deleteComponent -n "deleteComponent5";
	rename -uid "8F2D23F0-4364-7D73-D1FB-FDAD2C16CEF2";
	setAttr ".dc" -type "componentList" 4 "f[13:14]" "f[30]" "f[242]" "f[259:260]";
createNode deleteComponent -n "deleteComponent6";
	rename -uid "5AEA0E29-4F4B-836A-252B-90B1C6688B04";
	setAttr ".dc" -type "componentList" 2 "f[271:272]" "f[289:290]";
createNode deleteComponent -n "deleteComponent7";
	rename -uid "437C3F4F-4A97-DF0C-A45F-229439185520";
	setAttr ".dc" -type "componentList" 4 "f[11:12]" "f[27]" "f[238]" "f[253:254]";
createNode deleteComponent -n "deleteComponent8";
	rename -uid "ABF4DB92-4136-B143-D4D9-EB8DD1C0DC00";
	setAttr ".dc" -type "componentList" 2 "f[263:264]" "f[279:280]";
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	rename -uid "FC4AE47F-4F40-00BE-BFB7-449260094E2D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 20 "e[277:278]" "e[292:293]" "e[307:308]" "e[322:323]" "e[337:338]" "e[352:353]" "e[367:368]" "e[382:383]" "e[397:398]" "e[412:413]" "e[427:428]" "e[442:443]" "e[457:458]" "e[472:473]" "e[487:488]" "e[502:503]" "e[517:518]" "e[532:533]" "e[547:548]" "e[562:563]";
	setAttr ".ix" -type "matrix" 2.1394308993380218 0 0 0 0 2.1394308993380218 0 0 0 0 2.1394308993380218 0
		 3.5527136788005009e-015 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.9128002e-007 0 0.62876308 ;
	setAttr ".rs" 65017;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.7308363559749884 -2.1394308993380218 0 ;
	setAttr ".cbx" -type "double3" 1.7308359734149392 2.1394308993380218 1.2575261682029824 ;
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
	setAttr -s 4 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 6 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :lambert1;
	setAttr ".c" -type "float3" 0.122 0.122 0.122 ;
select -ne :initialShadingGroup;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "pSphere1_parentConstraint1.ctx" "pSphere1.tx";
connectAttr "pSphere1_parentConstraint1.cty" "pSphere1.ty";
connectAttr "pSphere1_parentConstraint1.ctz" "pSphere1.tz";
connectAttr "pSphere1_parentConstraint1.crx" "pSphere1.rx";
connectAttr "pSphere1_parentConstraint1.cry" "pSphere1.ry";
connectAttr "pSphere1_parentConstraint1.crz" "pSphere1.rz";
connectAttr "pSphere1_scaleConstraint1.csx" "pSphere1.sx";
connectAttr "pSphere1_scaleConstraint1.csy" "pSphere1.sy";
connectAttr "pSphere1_scaleConstraint1.csz" "pSphere1.sz";
connectAttr "polySphere1.out" "pSphereShape1.i";
connectAttr "LED.di" "InnerRing.do";
connectAttr "polyCylinder1.out" "|pSphere1|Hex_Pixels|InnerRing|pCylinder1|pCylinderShape1.i"
		;
connectAttr "MiddleRing_visibility.o" "MiddleRing.v";
connectAttr "LED.di" "MiddleRing.do";
connectAttr "OutterRing_visibility.o" "OutterRing.v";
connectAttr "LED.di" "OutterRing.do";
connectAttr "DarkLED.di" "|pSphere1|Hex_Pixels|Dark_Grp|DarkOutterRing|pCylinder16.do"
		;
connectAttr "DarkLED.di" "|pSphere1|Hex_Pixels|Dark_Grp|DarkOutterRing|pCylinder14.do"
		;
connectAttr "DarkLED.di" "|pSphere1|Hex_Pixels|Dark_Grp|DarkOutterRing|pCylinder15.do"
		;
connectAttr "DarkLED.di" "|pSphere1|Hex_Pixels|Dark_Grp|DarkOutterRing|pCylinder26.do"
		;
connectAttr "DarkLED.di" "|pSphere1|Hex_Pixels|Dark_Grp|DarkOutterRing|pCylinder29.do"
		;
connectAttr "DarkLED.di" "|pSphere1|Hex_Pixels|Dark_Grp|DarkOutterRing|pCylinder23.do"
		;
connectAttr "DarkLED.di" "|pSphere1|Hex_Pixels|Dark_Grp|DarkOutterRing|pCylinder22.do"
		;
connectAttr "DarkLED.di" "|pSphere1|Hex_Pixels|Dark_Grp|DarkOutterRing|pCylinder20.do"
		;
connectAttr "DarkLED.di" "|pSphere1|Hex_Pixels|Dark_Grp|DarkOutterRing|pCylinder21.do"
		;
connectAttr "DarkLED.di" "|pSphere1|Hex_Pixels|Dark_Grp|DarkOutterRing|pCylinder24.do"
		;
connectAttr "DarkLED.di" "|pSphere1|Hex_Pixels|Dark_Grp|DarkOutterRing|pCylinder25.do"
		;
connectAttr "DarkLED.di" "|pSphere1|Hex_Pixels|Dark_Grp|DarkOutterRing|pCylinder27.do"
		;
connectAttr "DarkLED.di" "|pSphere1|Hex_Pixels|Dark_Grp|DarkOutterRing|pCylinder28.do"
		;
connectAttr "DarkLED.di" "|pSphere1|Hex_Pixels|Dark_Grp|DarkOutterRing|pCylinder17.do"
		;
connectAttr "DarkLED.di" "|pSphere1|Hex_Pixels|Dark_Grp|DarkOutterRing|pCylinder18.do"
		;
connectAttr "DarkLED.di" "|pSphere1|Hex_Pixels|Dark_Grp|DarkOutterRing|pCylinder19.do"
		;
connectAttr "DarkLED.di" "|pSphere1|Hex_Pixels|Dark_Grp|DarkMiddleRing|pCylinder10.do"
		;
connectAttr "DarkLED.di" "|pSphere1|Hex_Pixels|Dark_Grp|DarkMiddleRing|pCylinder13.do"
		;
connectAttr "DarkLED.di" "|pSphere1|Hex_Pixels|Dark_Grp|DarkMiddleRing|pCylinder12.do"
		;
connectAttr "DarkLED.di" "|pSphere1|Hex_Pixels|Dark_Grp|DarkMiddleRing|pCylinder2.do"
		;
connectAttr "DarkLED.di" "|pSphere1|Hex_Pixels|Dark_Grp|DarkMiddleRing|pCylinder7.do"
		;
connectAttr "DarkLED.di" "|pSphere1|Hex_Pixels|Dark_Grp|DarkMiddleRing|pCylinder6.do"
		;
connectAttr "DarkLED.di" "|pSphere1|Hex_Pixels|Dark_Grp|DarkMiddleRing|pCylinder3.do"
		;
connectAttr "DarkLED.di" "|pSphere1|Hex_Pixels|Dark_Grp|DarkMiddleRing|pCylinder8.do"
		;
connectAttr "DarkLED.di" "|pSphere1|Hex_Pixels|Dark_Grp|DarkMiddleRing|pCylinder11.do"
		;
connectAttr "DarkLED.di" "|pSphere1|Hex_Pixels|Dark_Grp|DarkMiddleRing|pCylinder9.do"
		;
connectAttr "DarkLED.di" "|pSphere1|Hex_Pixels|Dark_Grp|DarkInnerRing|pCylinder5.do"
		;
connectAttr "DarkLED.di" "|pSphere1|Hex_Pixels|Dark_Grp|DarkInnerRing|pCylinder1.do"
		;
connectAttr "DarkLED.di" "|pSphere1|Hex_Pixels|Dark_Grp|DarkInnerRing|pCylinder4.do"
		;
connectAttr "DarkLED.di" "pCylinder49.do";
connectAttr "DarkLED.di" "pCylinder48.do";
connectAttr "DarkLED.di" "pCylinder47.do";
connectAttr "DarkLED.di" "pCylinder46.do";
connectAttr "DarkLED.di" "pCylinder45.do";
connectAttr "DarkLED.di" "pCylinder44.do";
connectAttr "DarkLED.di" "pCylinder43.do";
connectAttr "DarkLED.di" "pCylinder42.do";
connectAttr "DarkLED.di" "pCylinder41.do";
connectAttr "DarkLED.di" "pCylinder40.do";
connectAttr "pSphere1.ro" "pSphere1_parentConstraint1.cro";
connectAttr "pSphere1.pim" "pSphere1_parentConstraint1.cpim";
connectAttr "pSphere1.rp" "pSphere1_parentConstraint1.crp";
connectAttr "pSphere1.rpt" "pSphere1_parentConstraint1.crt";
connectAttr "Eye_Ctrl.t" "pSphere1_parentConstraint1.tg[0].tt";
connectAttr "Eye_Ctrl.rp" "pSphere1_parentConstraint1.tg[0].trp";
connectAttr "Eye_Ctrl.rpt" "pSphere1_parentConstraint1.tg[0].trt";
connectAttr "Eye_Ctrl.r" "pSphere1_parentConstraint1.tg[0].tr";
connectAttr "Eye_Ctrl.ro" "pSphere1_parentConstraint1.tg[0].tro";
connectAttr "Eye_Ctrl.s" "pSphere1_parentConstraint1.tg[0].ts";
connectAttr "Eye_Ctrl.pm" "pSphere1_parentConstraint1.tg[0].tpm";
connectAttr "pSphere1_parentConstraint1.w0" "pSphere1_parentConstraint1.tg[0].tw"
		;
connectAttr "pSphere1.pim" "pSphere1_scaleConstraint1.cpim";
connectAttr "Eye_Ctrl.s" "pSphere1_scaleConstraint1.tg[0].ts";
connectAttr "Eye_Ctrl.pm" "pSphere1_scaleConstraint1.tg[0].tpm";
connectAttr "pSphere1_scaleConstraint1.w0" "pSphere1_scaleConstraint1.tg[0].tw";
connectAttr "transformGeometry1.og" "Eye_CtrlShape.cr";
connectAttr "transformGeometry2.og" "Pupil_CtrlShape.cr";
connectAttr "polyExtrudeEdge1.out" "pSphereShape2.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":timeEditor.cmp[0]" "Composition1.cmp";
connectAttr "blinn1.oc" "blinn1SG.ss";
connectAttr "|pSphere1|Hex_Pixels|InnerRing|pCylinder1|pCylinderShape1.iog" "blinn1SG.dsm"
		 -na;
connectAttr "|pSphere1|Hex_Pixels|MiddleRing|pCylinder2|pCylinderShape2.iog" "blinn1SG.dsm"
		 -na;
connectAttr "|pSphere1|Hex_Pixels|MiddleRing|pCylinder3|pCylinderShape3.iog" "blinn1SG.dsm"
		 -na;
connectAttr "|pSphere1|Hex_Pixels|InnerRing|pCylinder4|pCylinderShape4.iog" "blinn1SG.dsm"
		 -na;
connectAttr "|pSphere1|Hex_Pixels|InnerRing|pCylinder5|pCylinderShape5.iog" "blinn1SG.dsm"
		 -na;
connectAttr "|pSphere1|Hex_Pixels|MiddleRing|pCylinder6|pCylinderShape6.iog" "blinn1SG.dsm"
		 -na;
connectAttr "|pSphere1|Hex_Pixels|MiddleRing|pCylinder7|pCylinderShape7.iog" "blinn1SG.dsm"
		 -na;
connectAttr "|pSphere1|Hex_Pixels|MiddleRing|pCylinder8|pCylinderShape8.iog" "blinn1SG.dsm"
		 -na;
connectAttr "|pSphere1|Hex_Pixels|InnerRing|pCylinder9|pCylinderShape9.iog" "blinn1SG.dsm"
		 -na;
connectAttr "|pSphere1|Hex_Pixels|InnerRing|pCylinder10|pCylinderShape10.iog" "blinn1SG.dsm"
		 -na;
connectAttr "|pSphere1|Hex_Pixels|MiddleRing|pCylinder11|pCylinderShape11.iog" "blinn1SG.dsm"
		 -na;
connectAttr "|pSphere1|Hex_Pixels|MiddleRing|pCylinder12|pCylinderShape12.iog" "blinn1SG.dsm"
		 -na;
connectAttr "|pSphere1|Hex_Pixels|MiddleRing|pCylinder13|pCylinderShape13.iog" "blinn1SG.dsm"
		 -na;
connectAttr "|pSphere1|Hex_Pixels|MiddleRing|pCylinder14|pCylinderShape14.iog" "blinn1SG.dsm"
		 -na;
connectAttr "|pSphere1|Hex_Pixels|MiddleRing|pCylinder15|pCylinderShape15.iog" "blinn1SG.dsm"
		 -na;
connectAttr "|pSphere1|Hex_Pixels|MiddleRing|pCylinder16|pCylinderShape16.iog" "blinn1SG.dsm"
		 -na;
connectAttr "|pSphere1|Hex_Pixels|MiddleRing|pCylinder17|pCylinderShape17.iog" "blinn1SG.dsm"
		 -na;
connectAttr "|pSphere1|Hex_Pixels|MiddleRing|pCylinder18|pCylinderShape18.iog" "blinn1SG.dsm"
		 -na;
connectAttr "|pSphere1|Hex_Pixels|MiddleRing|pCylinder19|pCylinderShape19.iog" "blinn1SG.dsm"
		 -na;
connectAttr "|pSphere1|Hex_Pixels|OutterRing|pCylinder20|pCylinderShape20.iog" "blinn1SG.dsm"
		 -na;
connectAttr "|pSphere1|Hex_Pixels|OutterRing|pCylinder21|pCylinderShape21.iog" "blinn1SG.dsm"
		 -na;
connectAttr "|pSphere1|Hex_Pixels|OutterRing|pCylinder22|pCylinderShape22.iog" "blinn1SG.dsm"
		 -na;
connectAttr "|pSphere1|Hex_Pixels|OutterRing|pCylinder23|pCylinderShape23.iog" "blinn1SG.dsm"
		 -na;
connectAttr "|pSphere1|Hex_Pixels|OutterRing|pCylinder24|pCylinderShape24.iog" "blinn1SG.dsm"
		 -na;
connectAttr "|pSphere1|Hex_Pixels|OutterRing|pCylinder25|pCylinderShape25.iog" "blinn1SG.dsm"
		 -na;
connectAttr "|pSphere1|Hex_Pixels|OutterRing|pCylinder26|pCylinderShape26.iog" "blinn1SG.dsm"
		 -na;
connectAttr "|pSphere1|Hex_Pixels|OutterRing|pCylinder27|pCylinderShape27.iog" "blinn1SG.dsm"
		 -na;
connectAttr "|pSphere1|Hex_Pixels|OutterRing|pCylinder28|pCylinderShape28.iog" "blinn1SG.dsm"
		 -na;
connectAttr "|pSphere1|Hex_Pixels|OutterRing|pCylinder29|pCylinderShape29.iog" "blinn1SG.dsm"
		 -na;
connectAttr "pCylinderShape30.iog" "blinn1SG.dsm" -na;
connectAttr "pCylinderShape31.iog" "blinn1SG.dsm" -na;
connectAttr "pCylinderShape32.iog" "blinn1SG.dsm" -na;
connectAttr "pCylinderShape33.iog" "blinn1SG.dsm" -na;
connectAttr "pCylinderShape34.iog" "blinn1SG.dsm" -na;
connectAttr "pCylinderShape35.iog" "blinn1SG.dsm" -na;
connectAttr "pCylinderShape36.iog" "blinn1SG.dsm" -na;
connectAttr "pCylinderShape37.iog" "blinn1SG.dsm" -na;
connectAttr "pCylinderShape38.iog" "blinn1SG.dsm" -na;
connectAttr "pCylinderShape39.iog" "blinn1SG.dsm" -na;
connectAttr "blinn1SG.msg" "materialInfo1.sg";
connectAttr "blinn1.msg" "materialInfo1.m";
connectAttr "makeNurbCircle2.oc" "transformGeometry2.ig";
connectAttr "layerManager.dli[3]" "LED.id";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "|pSphere1|Hex_Pixels|Dark_Grp|DarkInnerRing|pCylinder4|pCylinderShape4.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|pSphere1|Hex_Pixels|Dark_Grp|DarkInnerRing|pCylinder1|pCylinderShape1.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|pSphere1|Hex_Pixels|Dark_Grp|DarkInnerRing|pCylinder5|pCylinderShape5.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|pSphere1|Hex_Pixels|Dark_Grp|DarkMiddleRing|pCylinder9|pCylinderShape9.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|pSphere1|Hex_Pixels|Dark_Grp|DarkMiddleRing|pCylinder11|pCylinderShape11.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|pSphere1|Hex_Pixels|Dark_Grp|DarkMiddleRing|pCylinder8|pCylinderShape8.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|pSphere1|Hex_Pixels|Dark_Grp|DarkMiddleRing|pCylinder3|pCylinderShape3.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|pSphere1|Hex_Pixels|Dark_Grp|DarkMiddleRing|pCylinder6|pCylinderShape6.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|pSphere1|Hex_Pixels|Dark_Grp|DarkMiddleRing|pCylinder7|pCylinderShape7.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|pSphere1|Hex_Pixels|Dark_Grp|DarkMiddleRing|pCylinder2|pCylinderShape2.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|pSphere1|Hex_Pixels|Dark_Grp|DarkMiddleRing|pCylinder12|pCylinderShape12.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|pSphere1|Hex_Pixels|Dark_Grp|DarkMiddleRing|pCylinder13|pCylinderShape13.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|pSphere1|Hex_Pixels|Dark_Grp|DarkMiddleRing|pCylinder10|pCylinderShape10.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|pSphere1|Hex_Pixels|Dark_Grp|DarkOutterRing|pCylinder19|pCylinderShape19.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|pSphere1|Hex_Pixels|Dark_Grp|DarkOutterRing|pCylinder18|pCylinderShape18.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|pSphere1|Hex_Pixels|Dark_Grp|DarkOutterRing|pCylinder17|pCylinderShape17.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|pSphere1|Hex_Pixels|Dark_Grp|DarkOutterRing|pCylinder28|pCylinderShape28.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|pSphere1|Hex_Pixels|Dark_Grp|DarkOutterRing|pCylinder27|pCylinderShape27.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|pSphere1|Hex_Pixels|Dark_Grp|DarkOutterRing|pCylinder25|pCylinderShape25.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|pSphere1|Hex_Pixels|Dark_Grp|DarkOutterRing|pCylinder24|pCylinderShape24.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|pSphere1|Hex_Pixels|Dark_Grp|DarkOutterRing|pCylinder21|pCylinderShape21.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|pSphere1|Hex_Pixels|Dark_Grp|DarkOutterRing|pCylinder20|pCylinderShape20.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|pSphere1|Hex_Pixels|Dark_Grp|DarkOutterRing|pCylinder22|pCylinderShape22.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|pSphere1|Hex_Pixels|Dark_Grp|DarkOutterRing|pCylinder23|pCylinderShape23.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|pSphere1|Hex_Pixels|Dark_Grp|DarkOutterRing|pCylinder29|pCylinderShape29.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|pSphere1|Hex_Pixels|Dark_Grp|DarkOutterRing|pCylinder26|pCylinderShape26.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|pSphere1|Hex_Pixels|Dark_Grp|DarkOutterRing|pCylinder15|pCylinderShape15.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|pSphere1|Hex_Pixels|Dark_Grp|DarkOutterRing|pCylinder14|pCylinderShape14.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|pSphere1|Hex_Pixels|Dark_Grp|DarkOutterRing|pCylinder16|pCylinderShape16.iog" "lambert2SG.dsm"
		 -na;
connectAttr "pCylinderShape45.iog" "lambert2SG.dsm" -na;
connectAttr "pCylinderShape46.iog" "lambert2SG.dsm" -na;
connectAttr "pCylinderShape47.iog" "lambert2SG.dsm" -na;
connectAttr "pCylinderShape48.iog" "lambert2SG.dsm" -na;
connectAttr "pCylinderShape49.iog" "lambert2SG.dsm" -na;
connectAttr "pCylinderShape44.iog" "lambert2SG.dsm" -na;
connectAttr "pCylinderShape43.iog" "lambert2SG.dsm" -na;
connectAttr "pCylinderShape42.iog" "lambert2SG.dsm" -na;
connectAttr "pCylinderShape41.iog" "lambert2SG.dsm" -na;
connectAttr "pCylinderShape40.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo2.sg";
connectAttr "lambert2.msg" "materialInfo2.m";
connectAttr "layerManager.dli[4]" "DarkLED.id";
connectAttr "Pupil_Ctrl.tx" "OutterRing_visibility.i";
connectAttr "Pupil_Ctrl.tx" "MiddleRing_visibility.i";
connectAttr "makeNurbCircle1.oc" "transformGeometry1.ig";
connectAttr "polySphere2.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "deleteComponent6.ig";
connectAttr "deleteComponent6.og" "deleteComponent7.ig";
connectAttr "deleteComponent7.og" "deleteComponent8.ig";
connectAttr "deleteComponent8.og" "polyExtrudeEdge1.ip";
connectAttr "pSphereShape2.wm" "polyExtrudeEdge1.mp";
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "blinn1.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pSphereShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape2.iog" ":initialShadingGroup.dsm" -na;
// End of Hex Eye Prototype.0002.ma

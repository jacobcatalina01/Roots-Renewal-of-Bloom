//Maya ASCII 2023 scene
//Name: tree.ma
//Last modified: Sat, Feb 04, 2023 12:39:11 PM
//Codeset: UTF-8
requires maya "2023";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.2.0";
requires -nodeType "polyPlatonic" "modelingToolkit" "0.0.0.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202208031415-1dee56799d";
fileInfo "osv" "Mac OS X 10.16";
fileInfo "UUID" "61EE8E60-9A4A-931E-1E41-149D83F791C8";
createNode transform -s -n "persp";
	rename -uid "76E3FFB2-9749-C036-2BF2-20922A282E27";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -25.764194131863416 9.00092976794196 15.647382079741167 ;
	setAttr ".r" -type "double3" -6.3383527320512654 -2940.5999999948108 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "3E626A6F-2A4A-0102-66BA-AA95C41CF031";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 30.846381156544574;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "53177091-4D4E-427D-4743-8DBEA4B5EB25";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "BE92903A-9746-E2CA-F905-1396AB46C87B";
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
	rename -uid "A5F1F536-034A-5999-A8FA-499719C04916";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "7143E3A8-4441-7081-551D-41894237F61D";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "C9A5AE6F-C84B-A831-2055-16BA6BAD6FFF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "EAF692D0-274C-BB46-0AB3-74BFB5CD9B18";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "root";
	rename -uid "ED4898DD-D542-CA12-17D7-19899684DAE7";
createNode transform -n "leaves" -p "root";
	rename -uid "E5100BCD-9746-E3CF-218F-A3BEB84AF52C";
	setAttr ".t" -type "double3" 3.2388195465888798 8.2087672600665762 0.8855159915834685 ;
	setAttr ".s" -type "double3" 0.83902682404309559 0.83902682404309559 0.83902682404309559 ;
createNode mesh -n "leavesShape" -p "leaves";
	rename -uid "0E1DC4EF-AB45-ADD0-5DAE-3A9644C72700";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape2" -p "leaves";
	rename -uid "F1AD3556-C648-5B11-205F-299C0E73D5CF";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 70 ".uvst[0].uvsp[0:69]" -type "float2" 1 0.5 0.83810407
		 0.67620814 0.088104114 0.8237918 0.1762082 0.5 0.088104114 0.17620823 0.83810407
		 0.32379177 0.6762082 0.5 0.58810407 0.82379186 0.33810407 0.67620814 0.3381041 0.32379177
		 0.58810413 0.17620823 0.5 0.5 0.030034225 0.66666669 0.9262082 0.79999995 0.92620814
		 0.59999996 0.96310407 0.69591331 0.088104114 0.5 0.14617397 0.66666669 0.088104114
		 0.61613971 0.030034225 0.33333331 0.14617397 0.33333331 0.088104114 0.38386026 0.9262082
		 0.39999998 0.9262082 0.19999997 0.96310407 0.30408669 0.83810413 0.5 0.89617395 0.5
		 0.25 1 0.75 0.80000001 0.83810407 0.88386029 0.25 0.59999996 0.25 0.79999995 0.21310411
		 0.69591326 0.25 0.19999997 0.25 0.39999998 0.21310408 0.30408669 0.75 0.20000005
		 0.75 4.8063455e-08 0.83810407 0.11613975 0.75 0.59999996 0.75 0.39999998 0.78003418
		 0.5 0.64617395 0.66666669 0.71310413 0.69591326 0.42620817 0.80000001 0.33810407
		 0.88386023 0.3381041 0.49999994 0.28003421 0.49999994 0.42620823 0.19999997 0.3381041
		 0.11613975 0.64617401 0.33333331 0.71310413 0.30408674 0.53003424 0.66666669 0.58810413
		 0.5 0.58810407 0.61613977 0.42620817 0.59999996 0.4631041 0.69591326 0.4262082 0.39999998
		 0.39617398 0.5 0.53003424 0.33333331 0.4631041 0.30408669 0.58810413 0.38386026 1.030034184
		 0.66666669 1.088104129 0.8237918 1.088104129 0.5 1.088104129 0.61613971 1.030034184
		 0.33333331 1.088104129 0.38386026 1.088104129 0.17620823 1.25 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 62 ".vt[0:61]"  0 0 -3 2.17082047 1.57719326 -1.34164071
		 -0.8291797 2.55195236 -1.34164071 -2.68328166 -2.3457996e-07 -1.34164083 -0.82917988 -2.55195236 -1.34164071
		 2.17082024 -1.5771935 -1.34164071 2.68328166 0 1.34164083 0.82917947 2.55195236 1.34164059
		 -2.17082071 1.57719326 1.34164083 -2.17082024 -1.57719362 1.34164071 0.82918 -2.55195236 1.34164071
		 0 0 3 -0.48737958 1.5 -2.55195212 0.78859669 2.42705107 -1.57719338 1.2759763 0.92705095 -2.55195212
		 0.56277746 1.7320509 -2.38396335 -1.57719338 -1.3788264e-07 -2.55195236 -2.06457305 1.5 -1.57719338
		 -1.47337067 1.07046628 -2.38396335 -0.4873797 -1.5 -2.55195212 -2.064572811 -1.50000012 -1.57719326
		 -1.47337067 -1.070466518 -2.38396335 1.27597606 -0.92705107 -2.55195212 0.78859651 -2.42705107 -1.57719338
		 0.56277728 -1.7320509 -2.38396335 2.55195236 -1.4013894e-07 -1.57719338 1.82118607 -1.0000934e-07 -2.38396335
		 -1.0510419e-07 3 0 1.76335573 2.42705083 0 0.91059303 2.80251718 -0.56277746 -2.85316968 0.92705065 0
		 -1.76335585 2.42705083 0 -2.38396382 1.73205078 -0.56277746 -1.76335549 -2.42705083 0
		 -2.85316944 -0.92705125 0 -2.38396311 -1.7320509 -0.56277734 1.76335585 -2.42705083 0
		 7.0069461e-08 -3 0 0.91059303 -2.80251718 -0.56277746 2.8531692 0.92705083 0 2.85316944 -0.92705107 0
		 2.94674087 -1.0000934e-07 -0.56277746 2.064572811 1.50000012 1.57719326 2.38396358 1.7320509 0.56277746
		 -0.78859675 2.42705083 1.57719326 -0.91059327 2.80251718 0.56277746 -2.55195236 -3.5034734e-07 1.57719338
		 -2.94674063 -3.5003262e-07 0.56277734 -0.78859633 -2.42705107 1.57719326 -0.91059285 -2.80251694 0.56277734
		 2.06457305 -1.5 1.57719326 2.38396335 -1.73205054 0.56277734 0.48737949 1.50000012 2.55195212
		 1.57719338 0 2.55195236 1.47337043 1.070466518 2.38396358 -1.27597642 0.92705089 2.55195236
		 -0.56277752 1.7320509 2.38396358 -1.27597606 -0.92705113 2.55195212 -1.82118607 -2.5002336e-07 2.38396358
		 0.48737976 -1.5 2.55195212 -0.5627771 -1.7320509 2.38396311 1.47337031 -1.070466161 2.38396311;
	setAttr -s 120 ".ed[0:119]"  14 0 1 0 12 1 12 15 0 15 14 0 12 2 1 2 13 1
		 13 15 0 13 1 1 1 14 1 0 16 1 16 18 0 18 12 0 16 3 1 3 17 1 17 18 0 17 2 1 0 19 1
		 19 21 0 21 16 0 19 4 1 4 20 1 20 21 0 20 3 1 0 22 1 22 24 0 24 19 0 22 5 1 5 23 1
		 23 24 0 23 4 1 14 26 0 26 22 0 1 25 1 25 26 0 25 5 1 28 1 1 13 29 0 29 28 0 2 27 1
		 27 29 0 27 7 1 7 28 1 31 2 1 17 32 0 32 31 0 3 30 1 30 32 0 30 8 1 8 31 1 34 3 1
		 20 35 0 35 34 0 4 33 1 33 35 0 33 9 1 9 34 1 37 4 1 23 38 0 38 37 0 5 36 1 36 38 0
		 36 10 1 10 37 1 40 5 1 25 41 0 41 40 0 1 39 1 39 41 0 39 6 1 6 40 1 28 43 0 43 39 0
		 7 42 1 42 43 0 42 6 1 31 45 0 45 27 0 8 44 1 44 45 0 44 7 1 34 47 0 47 30 0 9 46 1
		 46 47 0 46 8 1 37 49 0 49 33 0 10 48 1 48 49 0 48 9 1 40 51 0 51 36 0 6 50 1 50 51 0
		 50 10 1 53 6 1 42 54 0 54 53 0 7 52 1 52 54 0 52 11 1 11 53 1 44 56 0 56 52 0 8 55 1
		 55 56 0 55 11 1 46 58 0 58 55 0 9 57 1 57 58 0 57 11 1 48 60 0 60 57 0 10 59 1 59 60 0
		 59 11 1 50 61 0 61 59 0 53 61 0;
	setAttr -s 60 -ch 240 ".fc[0:59]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 14 0 62 15
		f 4 4 5 6 -3
		mu 0 4 62 63 13 15
		f 4 7 8 -4 -7
		mu 0 4 13 1 14 15
		f 4 -2 9 10 11
		mu 0 4 62 0 64 65
		f 4 12 13 14 -11
		mu 0 4 16 3 17 18
		f 4 15 -5 -12 -15
		mu 0 4 17 2 12 18
		f 4 -10 16 17 18
		mu 0 4 64 0 66 67
		f 4 19 20 21 -18
		mu 0 4 19 4 20 21
		f 4 22 -13 -19 -22
		mu 0 4 20 3 16 21
		f 4 -17 23 24 25
		mu 0 4 66 0 22 24
		f 4 26 27 28 -25
		mu 0 4 22 5 23 24
		f 4 29 -20 -26 -29
		mu 0 4 23 68 66 24
		f 4 -24 -1 30 31
		mu 0 4 22 0 14 26
		f 4 -9 32 33 -31
		mu 0 4 14 1 25 26
		f 4 34 -27 -32 -34
		mu 0 4 25 5 22 26
		f 4 35 -8 36 37
		mu 0 4 28 1 13 29
		f 4 -6 38 39 -37
		mu 0 4 13 63 69 29
		f 4 40 41 -38 -40
		mu 0 4 69 7 28 29
		f 4 42 -16 43 44
		mu 0 4 31 2 17 32
		f 4 -14 45 46 -44
		mu 0 4 17 3 30 32
		f 4 47 48 -45 -47
		mu 0 4 30 8 31 32
		f 4 49 -23 50 51
		mu 0 4 34 3 20 35
		f 4 -21 52 53 -51
		mu 0 4 20 4 33 35
		f 4 54 55 -52 -54
		mu 0 4 33 9 34 35
		f 4 56 -30 57 58
		mu 0 4 37 68 23 38
		f 4 -28 59 60 -58
		mu 0 4 23 5 36 38
		f 4 61 62 -59 -61
		mu 0 4 36 10 37 38
		f 4 63 -35 64 65
		mu 0 4 40 5 25 41
		f 4 -33 66 67 -65
		mu 0 4 25 1 39 41
		f 4 68 69 -66 -68
		mu 0 4 39 6 40 41
		f 4 -67 -36 70 71
		mu 0 4 39 1 28 43
		f 4 -42 72 73 -71
		mu 0 4 28 7 42 43
		f 4 74 -69 -72 -74
		mu 0 4 42 6 39 43
		f 4 -39 -43 75 76
		mu 0 4 27 2 31 45
		f 4 -49 77 78 -76
		mu 0 4 31 8 44 45
		f 4 79 -41 -77 -79
		mu 0 4 44 7 27 45
		f 4 -46 -50 80 81
		mu 0 4 30 3 34 47
		f 4 -56 82 83 -81
		mu 0 4 34 9 46 47
		f 4 84 -48 -82 -84
		mu 0 4 46 8 30 47
		f 4 -53 -57 85 86
		mu 0 4 33 68 37 49
		f 4 -63 87 88 -86
		mu 0 4 37 10 48 49
		f 4 89 -55 -87 -89
		mu 0 4 48 9 33 49
		f 4 -60 -64 90 91
		mu 0 4 36 5 40 51
		f 4 -70 92 93 -91
		mu 0 4 40 6 50 51
		f 4 94 -62 -92 -94
		mu 0 4 50 10 36 51
		f 4 95 -75 96 97
		mu 0 4 53 6 42 54
		f 4 -73 98 99 -97
		mu 0 4 42 7 52 54
		f 4 100 101 -98 -100
		mu 0 4 52 11 53 54
		f 4 -99 -80 102 103
		mu 0 4 52 7 44 56
		f 4 -78 104 105 -103
		mu 0 4 44 8 55 56
		f 4 106 -101 -104 -106
		mu 0 4 55 11 52 56
		f 4 -105 -85 107 108
		mu 0 4 55 8 46 58
		f 4 -83 109 110 -108
		mu 0 4 46 9 57 58
		f 4 111 -107 -109 -111
		mu 0 4 57 11 55 58
		f 4 -110 -90 112 113
		mu 0 4 57 9 48 60
		f 4 -88 114 115 -113
		mu 0 4 48 10 59 60
		f 4 116 -112 -114 -116
		mu 0 4 59 11 57 60
		f 4 -115 -95 117 118
		mu 0 4 59 10 50 61
		f 4 -93 -96 119 -118
		mu 0 4 50 6 53 61
		f 4 -102 -117 -119 -120
		mu 0 4 53 11 59 61;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "leaves1" -p "root";
	rename -uid "F590DAE1-3948-8058-6C93-EB9D100450F7";
	setAttr ".t" -type "double3" -0.31564572340348418 9.9075756867354077 2.4975561435137017 ;
	setAttr ".s" -type "double3" 0.83902682404309559 0.83902682404309559 0.83902682404309559 ;
createNode mesh -n "leavesShape1" -p "leaves1";
	rename -uid "0A92E910-9B43-350A-4F16-5EAD3468080D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape1" -p "leaves1";
	rename -uid "259D75A5-DE4D-8CCE-6982-3EB5F4871598";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 70 ".uvst[0].uvsp[0:69]" -type "float2" 1 0.5 0.83810407
		 0.67620814 0.088104114 0.8237918 0.1762082 0.5 0.088104114 0.17620823 0.83810407
		 0.32379177 0.6762082 0.5 0.58810407 0.82379186 0.33810407 0.67620814 0.3381041 0.32379177
		 0.58810413 0.17620823 0.5 0.5 0.030034225 0.66666669 0.9262082 0.79999995 0.92620814
		 0.59999996 0.96310407 0.69591331 0.088104114 0.5 0.14617397 0.66666669 0.088104114
		 0.61613971 0.030034225 0.33333331 0.14617397 0.33333331 0.088104114 0.38386026 0.9262082
		 0.39999998 0.9262082 0.19999997 0.96310407 0.30408669 0.83810413 0.5 0.89617395 0.5
		 0.25 1 0.75 0.80000001 0.83810407 0.88386029 0.25 0.59999996 0.25 0.79999995 0.21310411
		 0.69591326 0.25 0.19999997 0.25 0.39999998 0.21310408 0.30408669 0.75 0.20000005
		 0.75 4.8063455e-08 0.83810407 0.11613975 0.75 0.59999996 0.75 0.39999998 0.78003418
		 0.5 0.64617395 0.66666669 0.71310413 0.69591326 0.42620817 0.80000001 0.33810407
		 0.88386023 0.3381041 0.49999994 0.28003421 0.49999994 0.42620823 0.19999997 0.3381041
		 0.11613975 0.64617401 0.33333331 0.71310413 0.30408674 0.53003424 0.66666669 0.58810413
		 0.5 0.58810407 0.61613977 0.42620817 0.59999996 0.4631041 0.69591326 0.4262082 0.39999998
		 0.39617398 0.5 0.53003424 0.33333331 0.4631041 0.30408669 0.58810413 0.38386026 1.030034184
		 0.66666669 1.088104129 0.8237918 1.088104129 0.5 1.088104129 0.61613971 1.030034184
		 0.33333331 1.088104129 0.38386026 1.088104129 0.17620823 1.25 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 62 ".vt[0:61]"  0 0 -3 2.17082047 1.57719326 -1.34164071
		 -0.8291797 2.55195236 -1.34164071 -2.68328166 -2.3457996e-07 -1.34164083 -0.82917988 -2.55195236 -1.34164071
		 2.17082024 -1.5771935 -1.34164071 2.68328166 0 1.34164083 0.82917947 2.55195236 1.34164059
		 -2.17082071 1.57719326 1.34164083 -2.17082024 -1.57719362 1.34164071 0.82918 -2.55195236 1.34164071
		 0 0 3 -0.48737958 1.5 -2.55195212 0.78859669 2.42705107 -1.57719338 1.2759763 0.92705095 -2.55195212
		 0.56277746 1.7320509 -2.38396335 -1.57719338 -1.3788264e-07 -2.55195236 -2.06457305 1.5 -1.57719338
		 -1.47337067 1.07046628 -2.38396335 -0.4873797 -1.5 -2.55195212 -2.064572811 -1.50000012 -1.57719326
		 -1.47337067 -1.070466518 -2.38396335 1.27597606 -0.92705107 -2.55195212 0.78859651 -2.42705107 -1.57719338
		 0.56277728 -1.7320509 -2.38396335 2.55195236 -1.4013894e-07 -1.57719338 1.82118607 -1.0000934e-07 -2.38396335
		 -1.0510419e-07 3 0 1.76335573 2.42705083 0 0.91059303 2.80251718 -0.56277746 -2.85316968 0.92705065 0
		 -1.76335585 2.42705083 0 -2.38396382 1.73205078 -0.56277746 -1.76335549 -2.42705083 0
		 -2.85316944 -0.92705125 0 -2.38396311 -1.7320509 -0.56277734 1.76335585 -2.42705083 0
		 7.0069461e-08 -3 0 0.91059303 -2.80251718 -0.56277746 2.8531692 0.92705083 0 2.85316944 -0.92705107 0
		 2.94674087 -1.0000934e-07 -0.56277746 2.064572811 1.50000012 1.57719326 2.38396358 1.7320509 0.56277746
		 -0.78859675 2.42705083 1.57719326 -0.91059327 2.80251718 0.56277746 -2.55195236 -3.5034734e-07 1.57719338
		 -2.94674063 -3.5003262e-07 0.56277734 -0.78859633 -2.42705107 1.57719326 -0.91059285 -2.80251694 0.56277734
		 2.06457305 -1.5 1.57719326 2.38396335 -1.73205054 0.56277734 0.48737949 1.50000012 2.55195212
		 1.57719338 0 2.55195236 1.47337043 1.070466518 2.38396358 -1.27597642 0.92705089 2.55195236
		 -0.56277752 1.7320509 2.38396358 -1.27597606 -0.92705113 2.55195212 -1.82118607 -2.5002336e-07 2.38396358
		 0.48737976 -1.5 2.55195212 -0.5627771 -1.7320509 2.38396311 1.47337031 -1.070466161 2.38396311;
	setAttr -s 120 ".ed[0:119]"  14 0 1 0 12 1 12 15 0 15 14 0 12 2 1 2 13 1
		 13 15 0 13 1 1 1 14 1 0 16 1 16 18 0 18 12 0 16 3 1 3 17 1 17 18 0 17 2 1 0 19 1
		 19 21 0 21 16 0 19 4 1 4 20 1 20 21 0 20 3 1 0 22 1 22 24 0 24 19 0 22 5 1 5 23 1
		 23 24 0 23 4 1 14 26 0 26 22 0 1 25 1 25 26 0 25 5 1 28 1 1 13 29 0 29 28 0 2 27 1
		 27 29 0 27 7 1 7 28 1 31 2 1 17 32 0 32 31 0 3 30 1 30 32 0 30 8 1 8 31 1 34 3 1
		 20 35 0 35 34 0 4 33 1 33 35 0 33 9 1 9 34 1 37 4 1 23 38 0 38 37 0 5 36 1 36 38 0
		 36 10 1 10 37 1 40 5 1 25 41 0 41 40 0 1 39 1 39 41 0 39 6 1 6 40 1 28 43 0 43 39 0
		 7 42 1 42 43 0 42 6 1 31 45 0 45 27 0 8 44 1 44 45 0 44 7 1 34 47 0 47 30 0 9 46 1
		 46 47 0 46 8 1 37 49 0 49 33 0 10 48 1 48 49 0 48 9 1 40 51 0 51 36 0 6 50 1 50 51 0
		 50 10 1 53 6 1 42 54 0 54 53 0 7 52 1 52 54 0 52 11 1 11 53 1 44 56 0 56 52 0 8 55 1
		 55 56 0 55 11 1 46 58 0 58 55 0 9 57 1 57 58 0 57 11 1 48 60 0 60 57 0 10 59 1 59 60 0
		 59 11 1 50 61 0 61 59 0 53 61 0;
	setAttr -s 60 -ch 240 ".fc[0:59]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 14 0 62 15
		f 4 4 5 6 -3
		mu 0 4 62 63 13 15
		f 4 7 8 -4 -7
		mu 0 4 13 1 14 15
		f 4 -2 9 10 11
		mu 0 4 62 0 64 65
		f 4 12 13 14 -11
		mu 0 4 16 3 17 18
		f 4 15 -5 -12 -15
		mu 0 4 17 2 12 18
		f 4 -10 16 17 18
		mu 0 4 64 0 66 67
		f 4 19 20 21 -18
		mu 0 4 19 4 20 21
		f 4 22 -13 -19 -22
		mu 0 4 20 3 16 21
		f 4 -17 23 24 25
		mu 0 4 66 0 22 24
		f 4 26 27 28 -25
		mu 0 4 22 5 23 24
		f 4 29 -20 -26 -29
		mu 0 4 23 68 66 24
		f 4 -24 -1 30 31
		mu 0 4 22 0 14 26
		f 4 -9 32 33 -31
		mu 0 4 14 1 25 26
		f 4 34 -27 -32 -34
		mu 0 4 25 5 22 26
		f 4 35 -8 36 37
		mu 0 4 28 1 13 29
		f 4 -6 38 39 -37
		mu 0 4 13 63 69 29
		f 4 40 41 -38 -40
		mu 0 4 69 7 28 29
		f 4 42 -16 43 44
		mu 0 4 31 2 17 32
		f 4 -14 45 46 -44
		mu 0 4 17 3 30 32
		f 4 47 48 -45 -47
		mu 0 4 30 8 31 32
		f 4 49 -23 50 51
		mu 0 4 34 3 20 35
		f 4 -21 52 53 -51
		mu 0 4 20 4 33 35
		f 4 54 55 -52 -54
		mu 0 4 33 9 34 35
		f 4 56 -30 57 58
		mu 0 4 37 68 23 38
		f 4 -28 59 60 -58
		mu 0 4 23 5 36 38
		f 4 61 62 -59 -61
		mu 0 4 36 10 37 38
		f 4 63 -35 64 65
		mu 0 4 40 5 25 41
		f 4 -33 66 67 -65
		mu 0 4 25 1 39 41
		f 4 68 69 -66 -68
		mu 0 4 39 6 40 41
		f 4 -67 -36 70 71
		mu 0 4 39 1 28 43
		f 4 -42 72 73 -71
		mu 0 4 28 7 42 43
		f 4 74 -69 -72 -74
		mu 0 4 42 6 39 43
		f 4 -39 -43 75 76
		mu 0 4 27 2 31 45
		f 4 -49 77 78 -76
		mu 0 4 31 8 44 45
		f 4 79 -41 -77 -79
		mu 0 4 44 7 27 45
		f 4 -46 -50 80 81
		mu 0 4 30 3 34 47
		f 4 -56 82 83 -81
		mu 0 4 34 9 46 47
		f 4 84 -48 -82 -84
		mu 0 4 46 8 30 47
		f 4 -53 -57 85 86
		mu 0 4 33 68 37 49
		f 4 -63 87 88 -86
		mu 0 4 37 10 48 49
		f 4 89 -55 -87 -89
		mu 0 4 48 9 33 49
		f 4 -60 -64 90 91
		mu 0 4 36 5 40 51
		f 4 -70 92 93 -91
		mu 0 4 40 6 50 51
		f 4 94 -62 -92 -94
		mu 0 4 50 10 36 51
		f 4 95 -75 96 97
		mu 0 4 53 6 42 54
		f 4 -73 98 99 -97
		mu 0 4 42 7 52 54
		f 4 100 101 -98 -100
		mu 0 4 52 11 53 54
		f 4 -99 -80 102 103
		mu 0 4 52 7 44 56
		f 4 -78 104 105 -103
		mu 0 4 44 8 55 56
		f 4 106 -101 -104 -106
		mu 0 4 55 11 52 56
		f 4 -105 -85 107 108
		mu 0 4 55 8 46 58
		f 4 -83 109 110 -108
		mu 0 4 46 9 57 58
		f 4 111 -107 -109 -111
		mu 0 4 57 11 55 58
		f 4 -110 -90 112 113
		mu 0 4 57 9 48 60
		f 4 -88 114 115 -113
		mu 0 4 48 10 59 60
		f 4 116 -112 -114 -116
		mu 0 4 59 11 57 60
		f 4 -115 -95 117 118
		mu 0 4 59 10 50 61
		f 4 -93 -96 119 -118
		mu 0 4 50 6 53 61
		f 4 -102 -117 -119 -120
		mu 0 4 53 11 59 61;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "leaves2" -p "root";
	rename -uid "8E1D3FA3-324B-EADD-5CA0-EAB829A00F71";
	setAttr ".t" -type "double3" 0.46402789476018258 9.8860573947299972 -1.9629505244336629 ;
	setAttr ".s" -type "double3" 0.83902682404309559 0.83902682404309559 0.83902682404309559 ;
createNode mesh -n "leavesShape2" -p "leaves2";
	rename -uid "4682BB38-3E42-776B-CF10-57AF3A79C825";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape3" -p "leaves2";
	rename -uid "E07201AC-EA49-EB97-C583-798CA25A9B55";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 70 ".uvst[0].uvsp[0:69]" -type "float2" 1 0.5 0.83810407
		 0.67620814 0.088104114 0.8237918 0.1762082 0.5 0.088104114 0.17620823 0.83810407
		 0.32379177 0.6762082 0.5 0.58810407 0.82379186 0.33810407 0.67620814 0.3381041 0.32379177
		 0.58810413 0.17620823 0.5 0.5 0.030034225 0.66666669 0.9262082 0.79999995 0.92620814
		 0.59999996 0.96310407 0.69591331 0.088104114 0.5 0.14617397 0.66666669 0.088104114
		 0.61613971 0.030034225 0.33333331 0.14617397 0.33333331 0.088104114 0.38386026 0.9262082
		 0.39999998 0.9262082 0.19999997 0.96310407 0.30408669 0.83810413 0.5 0.89617395 0.5
		 0.25 1 0.75 0.80000001 0.83810407 0.88386029 0.25 0.59999996 0.25 0.79999995 0.21310411
		 0.69591326 0.25 0.19999997 0.25 0.39999998 0.21310408 0.30408669 0.75 0.20000005
		 0.75 4.8063455e-08 0.83810407 0.11613975 0.75 0.59999996 0.75 0.39999998 0.78003418
		 0.5 0.64617395 0.66666669 0.71310413 0.69591326 0.42620817 0.80000001 0.33810407
		 0.88386023 0.3381041 0.49999994 0.28003421 0.49999994 0.42620823 0.19999997 0.3381041
		 0.11613975 0.64617401 0.33333331 0.71310413 0.30408674 0.53003424 0.66666669 0.58810413
		 0.5 0.58810407 0.61613977 0.42620817 0.59999996 0.4631041 0.69591326 0.4262082 0.39999998
		 0.39617398 0.5 0.53003424 0.33333331 0.4631041 0.30408669 0.58810413 0.38386026 1.030034184
		 0.66666669 1.088104129 0.8237918 1.088104129 0.5 1.088104129 0.61613971 1.030034184
		 0.33333331 1.088104129 0.38386026 1.088104129 0.17620823 1.25 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 62 ".vt[0:61]"  0 0 -3 2.17082047 1.57719326 -1.34164071
		 -0.8291797 2.55195236 -1.34164071 -2.68328166 -2.3457996e-07 -1.34164083 -0.82917988 -2.55195236 -1.34164071
		 2.17082024 -1.5771935 -1.34164071 2.68328166 0 1.34164083 0.82917947 2.55195236 1.34164059
		 -2.17082071 1.57719326 1.34164083 -2.17082024 -1.57719362 1.34164071 0.82918 -2.55195236 1.34164071
		 0 0 3 -0.48737958 1.5 -2.55195212 0.78859669 2.42705107 -1.57719338 1.2759763 0.92705095 -2.55195212
		 0.56277746 1.7320509 -2.38396335 -1.57719338 -1.3788264e-07 -2.55195236 -2.06457305 1.5 -1.57719338
		 -1.47337067 1.07046628 -2.38396335 -0.4873797 -1.5 -2.55195212 -2.064572811 -1.50000012 -1.57719326
		 -1.47337067 -1.070466518 -2.38396335 1.27597606 -0.92705107 -2.55195212 0.78859651 -2.42705107 -1.57719338
		 0.56277728 -1.7320509 -2.38396335 2.55195236 -1.4013894e-07 -1.57719338 1.82118607 -1.0000934e-07 -2.38396335
		 -1.0510419e-07 3 0 1.76335573 2.42705083 0 0.91059303 2.80251718 -0.56277746 -2.85316968 0.92705065 0
		 -1.76335585 2.42705083 0 -2.38396382 1.73205078 -0.56277746 -1.76335549 -2.42705083 0
		 -2.85316944 -0.92705125 0 -2.38396311 -1.7320509 -0.56277734 1.76335585 -2.42705083 0
		 7.0069461e-08 -3 0 0.91059303 -2.80251718 -0.56277746 2.8531692 0.92705083 0 2.85316944 -0.92705107 0
		 2.94674087 -1.0000934e-07 -0.56277746 2.064572811 1.50000012 1.57719326 2.38396358 1.7320509 0.56277746
		 -0.78859675 2.42705083 1.57719326 -0.91059327 2.80251718 0.56277746 -2.55195236 -3.5034734e-07 1.57719338
		 -2.94674063 -3.5003262e-07 0.56277734 -0.78859633 -2.42705107 1.57719326 -0.91059285 -2.80251694 0.56277734
		 2.06457305 -1.5 1.57719326 2.38396335 -1.73205054 0.56277734 0.48737949 1.50000012 2.55195212
		 1.57719338 0 2.55195236 1.47337043 1.070466518 2.38396358 -1.27597642 0.92705089 2.55195236
		 -0.56277752 1.7320509 2.38396358 -1.27597606 -0.92705113 2.55195212 -1.82118607 -2.5002336e-07 2.38396358
		 0.48737976 -1.5 2.55195212 -0.5627771 -1.7320509 2.38396311 1.47337031 -1.070466161 2.38396311;
	setAttr -s 120 ".ed[0:119]"  14 0 1 0 12 1 12 15 0 15 14 0 12 2 1 2 13 1
		 13 15 0 13 1 1 1 14 1 0 16 1 16 18 0 18 12 0 16 3 1 3 17 1 17 18 0 17 2 1 0 19 1
		 19 21 0 21 16 0 19 4 1 4 20 1 20 21 0 20 3 1 0 22 1 22 24 0 24 19 0 22 5 1 5 23 1
		 23 24 0 23 4 1 14 26 0 26 22 0 1 25 1 25 26 0 25 5 1 28 1 1 13 29 0 29 28 0 2 27 1
		 27 29 0 27 7 1 7 28 1 31 2 1 17 32 0 32 31 0 3 30 1 30 32 0 30 8 1 8 31 1 34 3 1
		 20 35 0 35 34 0 4 33 1 33 35 0 33 9 1 9 34 1 37 4 1 23 38 0 38 37 0 5 36 1 36 38 0
		 36 10 1 10 37 1 40 5 1 25 41 0 41 40 0 1 39 1 39 41 0 39 6 1 6 40 1 28 43 0 43 39 0
		 7 42 1 42 43 0 42 6 1 31 45 0 45 27 0 8 44 1 44 45 0 44 7 1 34 47 0 47 30 0 9 46 1
		 46 47 0 46 8 1 37 49 0 49 33 0 10 48 1 48 49 0 48 9 1 40 51 0 51 36 0 6 50 1 50 51 0
		 50 10 1 53 6 1 42 54 0 54 53 0 7 52 1 52 54 0 52 11 1 11 53 1 44 56 0 56 52 0 8 55 1
		 55 56 0 55 11 1 46 58 0 58 55 0 9 57 1 57 58 0 57 11 1 48 60 0 60 57 0 10 59 1 59 60 0
		 59 11 1 50 61 0 61 59 0 53 61 0;
	setAttr -s 60 -ch 240 ".fc[0:59]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 14 0 62 15
		f 4 4 5 6 -3
		mu 0 4 62 63 13 15
		f 4 7 8 -4 -7
		mu 0 4 13 1 14 15
		f 4 -2 9 10 11
		mu 0 4 62 0 64 65
		f 4 12 13 14 -11
		mu 0 4 16 3 17 18
		f 4 15 -5 -12 -15
		mu 0 4 17 2 12 18
		f 4 -10 16 17 18
		mu 0 4 64 0 66 67
		f 4 19 20 21 -18
		mu 0 4 19 4 20 21
		f 4 22 -13 -19 -22
		mu 0 4 20 3 16 21
		f 4 -17 23 24 25
		mu 0 4 66 0 22 24
		f 4 26 27 28 -25
		mu 0 4 22 5 23 24
		f 4 29 -20 -26 -29
		mu 0 4 23 68 66 24
		f 4 -24 -1 30 31
		mu 0 4 22 0 14 26
		f 4 -9 32 33 -31
		mu 0 4 14 1 25 26
		f 4 34 -27 -32 -34
		mu 0 4 25 5 22 26
		f 4 35 -8 36 37
		mu 0 4 28 1 13 29
		f 4 -6 38 39 -37
		mu 0 4 13 63 69 29
		f 4 40 41 -38 -40
		mu 0 4 69 7 28 29
		f 4 42 -16 43 44
		mu 0 4 31 2 17 32
		f 4 -14 45 46 -44
		mu 0 4 17 3 30 32
		f 4 47 48 -45 -47
		mu 0 4 30 8 31 32
		f 4 49 -23 50 51
		mu 0 4 34 3 20 35
		f 4 -21 52 53 -51
		mu 0 4 20 4 33 35
		f 4 54 55 -52 -54
		mu 0 4 33 9 34 35
		f 4 56 -30 57 58
		mu 0 4 37 68 23 38
		f 4 -28 59 60 -58
		mu 0 4 23 5 36 38
		f 4 61 62 -59 -61
		mu 0 4 36 10 37 38
		f 4 63 -35 64 65
		mu 0 4 40 5 25 41
		f 4 -33 66 67 -65
		mu 0 4 25 1 39 41
		f 4 68 69 -66 -68
		mu 0 4 39 6 40 41
		f 4 -67 -36 70 71
		mu 0 4 39 1 28 43
		f 4 -42 72 73 -71
		mu 0 4 28 7 42 43
		f 4 74 -69 -72 -74
		mu 0 4 42 6 39 43
		f 4 -39 -43 75 76
		mu 0 4 27 2 31 45
		f 4 -49 77 78 -76
		mu 0 4 31 8 44 45
		f 4 79 -41 -77 -79
		mu 0 4 44 7 27 45
		f 4 -46 -50 80 81
		mu 0 4 30 3 34 47
		f 4 -56 82 83 -81
		mu 0 4 34 9 46 47
		f 4 84 -48 -82 -84
		mu 0 4 46 8 30 47
		f 4 -53 -57 85 86
		mu 0 4 33 68 37 49
		f 4 -63 87 88 -86
		mu 0 4 37 10 48 49
		f 4 89 -55 -87 -89
		mu 0 4 48 9 33 49
		f 4 -60 -64 90 91
		mu 0 4 36 5 40 51
		f 4 -70 92 93 -91
		mu 0 4 40 6 50 51
		f 4 94 -62 -92 -94
		mu 0 4 50 10 36 51
		f 4 95 -75 96 97
		mu 0 4 53 6 42 54
		f 4 -73 98 99 -97
		mu 0 4 42 7 52 54
		f 4 100 101 -98 -100
		mu 0 4 52 11 53 54
		f 4 -99 -80 102 103
		mu 0 4 52 7 44 56
		f 4 -78 104 105 -103
		mu 0 4 44 8 55 56
		f 4 106 -101 -104 -106
		mu 0 4 55 11 52 56
		f 4 -105 -85 107 108
		mu 0 4 55 8 46 58
		f 4 -83 109 110 -108
		mu 0 4 46 9 57 58
		f 4 111 -107 -109 -111
		mu 0 4 57 11 55 58
		f 4 -110 -90 112 113
		mu 0 4 57 9 48 60
		f 4 -88 114 115 -113
		mu 0 4 48 10 59 60
		f 4 116 -112 -114 -116
		mu 0 4 59 11 57 60
		f 4 -115 -95 117 118
		mu 0 4 59 10 50 61
		f 4 -93 -96 119 -118
		mu 0 4 50 6 53 61
		f 4 -102 -117 -119 -120
		mu 0 4 53 11 59 61;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "leaves3" -p "root";
	rename -uid "6498E7F9-6D4B-8280-194C-02B67663AB5D";
	setAttr ".t" -type "double3" -3.700088441868405 7.9578679882384318 0 ;
	setAttr ".s" -type "double3" 0.83902682404309559 0.83902682404309559 0.83902682404309559 ;
createNode mesh -n "leavesShape3" -p "leaves3";
	rename -uid "8302CF91-2F43-576B-8DFE-B7A40C0B3251";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "trunk" -p "root";
	rename -uid "ABF69258-1B47-99AF-0F38-C691431FDC5E";
	setAttr ".s" -type "double3" 1 1.4460274324782434 1 ;
createNode mesh -n "trunkShape" -p "trunk";
	rename -uid "06B1A3FA-564C-4B9D-2BCE-92826F7EB4BE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.84375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "F7FE4985-2445-2645-37EB-BC807A8CFDC5";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "02CD2826-C24D-30E9-16D8-3D9832207AA4";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "A13FC68E-944C-AF26-A7BB-E983EE0AE7DB";
createNode displayLayerManager -n "layerManager";
	rename -uid "EA1E9647-3948-0759-DDD7-88B5FBDF29E0";
createNode displayLayer -n "defaultLayer";
	rename -uid "B01BA52D-EA47-D5D7-03E2-1EB9AC48A181";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "44D6F13D-1049-E90C-CCD1-B7B347767395";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "567A1C0B-3E42-F370-6E64-92B03991FCD0";
	setAttr ".g" yes;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "F0EE7941-1245-4225-E5A6-D58E40B7DB6A";
	setAttr ".sa" 5;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "2514A1EC-A84D-E824-3C90-08A566BF4A4F";
	setAttr ".ics" -type "componentList" 1 "f[10:14]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.095491469 1 -2.9802322e-08 ;
	setAttr ".rs" 1323596194;
	setAttr ".lt" -type "double3" -0.41650001933488223 0.19028958116413539 1.3736923707826794 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.80901706218719482 1 -0.95105659961700439 ;
	setAttr ".cbx" -type "double3" 1 1 0.95105654001235962 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "7228D6D6-E644-18E5-11A1-269BA090699A";
	setAttr ".ics" -type "componentList" 1 "f[10:14]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.32100862 2.3736925 -0.19028962 ;
	setAttr ".rs" 473150866;
	setAttr ".lt" -type "double3" 0.52289035051149546 -0.38849526113464172 1.8176854528728514 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.2255171537399292 2.373692512512207 -1.1413460969924927 ;
	setAttr ".cbx" -type "double3" 0.58349990844726562 2.373692512512207 0.76076686382293701 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "0409C2C1-2D44-7A57-B551-C7852C87E545";
	setAttr ".ics" -type "componentList" 1 "f[10:14]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.20188168 4.1913781 0.19820546 ;
	setAttr ".rs" 973716702;
	setAttr ".lt" -type "double3" -6.9388939039072284e-18 -3.052903677064735e-16 1.4037431486101815 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.38050121068954468 4.191378116607666 -0.41414812207221985 ;
	setAttr ".cbx" -type "double3" 0.78426456451416016 4.191378116607666 0.81055903434753418 ;
createNode polyTweak -n "polyTweak1";
	rename -uid "A32AA84C-C146-B0CD-EE70-E98B5DCE7813";
	setAttr ".uopa" yes;
	setAttr -s 21 ".tk";
	setAttr ".tk[0]" -type "float3" 0.10586023 0 -0.47150809 ;
	setAttr ".tk[1]" -type "float3" -0.4484309 0 -0.29140809 ;
	setAttr ".tk[2]" -type "float3" -0.4484309 0 0.29140809 ;
	setAttr ".tk[3]" -type "float3" 0.10586016 0 0.47150809 ;
	setAttr ".tk[4]" -type "float3" 0.4484309 0 1.4775183e-08 ;
	setAttr ".tk[10]" -type "float3" -0.047342099 0 1.4775183e-08 ;
	setAttr ".tk[11]" -type "float3" -0.015832009 0 0.070516728 ;
	setAttr ".tk[12]" -type "float3" 0.067065395 0 0.043581747 ;
	setAttr ".tk[13]" -type "float3" 0.067065403 0 -0.043581735 ;
	setAttr ".tk[14]" -type "float3" -0.015831998 0 -0.070516728 ;
	setAttr ".tk[15]" -type "float3" -0.067065403 0 1.133808e-09 ;
	setAttr ".tk[16]" -type "float3" -0.076043636 0 0.33870289 ;
	setAttr ".tk[17]" -type "float3" 0.32212549 0 0.20933007 ;
	setAttr ".tk[19]" -type "float3" 0.32212561 0 -0.20932998 ;
	setAttr ".tk[20]" -type "float3" -0.076043583 0 -0.33870289 ;
	setAttr ".tk[21]" -type "float3" -0.32212564 0 -1.6243982e-08 ;
	setAttr ".tk[22]" -type "float3" -2.9802322e-08 -2.3841858e-07 -5.9604645e-08 ;
	setAttr ".tk[23]" -type "float3" -1.7881393e-07 -2.3841858e-07 2.9802322e-08 ;
	setAttr ".tk[24]" -type "float3" -1.1920929e-07 -2.3841858e-07 0 ;
	setAttr ".tk[25]" -type "float3" 0 -2.3841858e-07 5.9604645e-08 ;
	setAttr ".tk[26]" -type "float3" 1.1920929e-07 -2.3841858e-07 3.5527137e-15 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "D7270F6D-2941-952F-B6A6-70A35BB6E6D5";
	setAttr ".ics" -type "componentList" 1 "f[10:14]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.43898615 5.5951209 0.10967049 ;
	setAttr ".rs" 1161741677;
	setAttr ".lt" -type "double3" -2.3265559841331693e-17 -5.8410682652563226e-16 1.3664927489908849 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.01012149453163147 5.595120906829834 -0.34126430749893188 ;
	setAttr ".cbx" -type "double3" 0.86785084009170532 5.5951213836669922 0.56060528755187988 ;
createNode polyTweak -n "polyTweak2";
	rename -uid "426074D8-7346-723E-B9BA-26B49670B4C6";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[21:26]" -type "float3"  0.20086375 0 0.072883457 0.39062271
		 0 0.011227289 0.26227638 0 -0.088535063 0.39062271 0 -0.18829723 0.20086381 0 -0.24995357
		 0.083586298 0 -0.08853519;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "7EEE32BB-264F-F7A7-90A8-44BD2C3A1E9F";
	setAttr ".ics" -type "componentList" 1 "f[10:14]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.60771102 6.9616141 0.036455415 ;
	setAttr ".rs" 2114385906;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.37755465507507324 6.961613655090332 -0.20554535090923309 ;
	setAttr ".cbx" -type "double3" 0.83786743879318237 6.9616141319274902 0.2784561812877655 ;
createNode polyTweak -n "polyTweak3";
	rename -uid "00ACD595-874D-F3E1-EB3F-E38EC5B4A4A0";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[26:31]" -type "float3"  0.12181571 0 0.1357208 0.36743432
		 0 0.05591435 0.20130651 0 -0.073214777 0.36743432 0 -0.20234373 0.12181571 0 -0.28215018
		 -0.029984716 0 -0.073214956;
createNode polyMergeVert -n "polyMergeVert1";
	rename -uid "110F4146-0D49-9AB9-B2F6-51959DB2A7E2";
	setAttr ".ics" -type "componentList" 1 "vtx[31:36]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak4";
	rename -uid "77198544-7A46-C1E7-34A5-DCB7BF28A917";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[31:36]" -type "float3"  -0.080870807 1.19151545 0.24200076
		 0.20361823 1.19151545 0.14956459 0.011199772 1.19151545 3.7252903e-09 0.20361823
		 1.19151545 -0.1495644 -0.080870807 1.19151545 -0.24200077 -0.25669456 1.19151545
		 -1.8253922e-07;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "9F08A48B-444A-4642-9C8F-C6AA3DCE5F5E";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n"
		+ "            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n"
		+ "            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n"
		+ "            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n"
		+ "            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 1\n            -captureSequenceNumber -1\n            -width 1870\n            -height 1246\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n"
		+ "            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n"
		+ "            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n"
		+ "            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n"
		+ "            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n"
		+ "                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n"
		+ "                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n"
		+ "                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n"
		+ "                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n"
		+ "                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n"
		+ "                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 1\\n    -captureSequenceNumber -1\\n    -width 1870\\n    -height 1246\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 1\\n    -captureSequenceNumber -1\\n    -width 1870\\n    -height 1246\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "8160B7ED-D140-1996-3280-3FB93557722D";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polySplitRing -n "polySplitRing1";
	rename -uid "DF22DE57-5B49-3F28-B9C2-E792707B796F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[10:14]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.4429774284362793;
	setAttr ".dr" no;
	setAttr ".re" 13;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak5";
	rename -uid "71755E86-664A-8DB1-347C-158BFE2921FB";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk[21:25]" -type "float3"  -0.31198648 0 -0.16442819
		 -0.31198648 0 -0.16442819 -0.31198648 0 -0.16442819 -0.31198648 0 -0.16442819 -0.31198648
		 0 -0.16442819;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "73B65826-B845-FAEE-70CB-9E988D47BFE8";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.42128542 -0.55702257 1.0863353 ;
	setAttr ".rs" 11497003;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.2574479579925537 -1 0.7501060962677002 ;
	setAttr ".cbx" -type "double3" 0.41487711668014526 -0.11404514312744141 1.4225646257400513 ;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "8CB749D0-134D-E8ED-29C2-DEA4B7E2AA84";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.42128545 -0.55702257 1.0863353 ;
	setAttr ".rs" 1804649528;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.2574479579925537 -1 0.7501060962677002 ;
	setAttr ".cbx" -type "double3" 0.41487705707550049 -0.11404514312744141 1.4225646257400513 ;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	rename -uid "B8C9726C-9B4A-8BE9-5269-4E8013A304F3";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.1581255 -0.55702257 -5.9604645e-08 ;
	setAttr ".rs" 1919974889;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.2574479579925537 -1 -0.87919342517852783 ;
	setAttr ".cbx" -type "double3" -1.0588030815124512 -0.11404514312744141 0.87919330596923828 ;
createNode polyTweak -n "polyTweak6";
	rename -uid "011B0D31-714C-10D4-B6E4-3CA04B9D0A88";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[37]" -type "float3" 5.9604645e-08 0 0 ;
	setAttr ".tk[38]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".tk[40]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".tk[41]" -type "float3" 0.49716634 0.26338586 0 ;
	setAttr ".tk[42]" -type "float3" -0.49716634 0.26338586 0 ;
	setAttr ".tk[43]" -type "float3" -0.46928397 -0.26338586 0 ;
	setAttr ".tk[44]" -type "float3" 0.37905577 -0.26338586 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	rename -uid "3BAAC2C5-5642-93A6-8683-EFA6B37A11B8";
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.4212853 -0.55702257 -1.0863354 ;
	setAttr ".rs" 1915699867;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.2574479579925537 -1 -1.4225647449493408 ;
	setAttr ".cbx" -type "double3" 0.41487735509872437 -0.11404514312744141 -0.75010621547698975 ;
createNode polyTweak -n "polyTweak7";
	rename -uid "8C91B082-1E4A-DD0F-6C81-5C9FEEFF74F3";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[45:48]" -type "float3"  0.057682991 0.25726557 0.53787094
		 0.057682991 0.25726557 -0.53787094 -0.063843131 -0.28474209 -0.45889834 -0.063843131
		 -0.28474212 0.45889828;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	rename -uid "AE0F354D-254F-0FF7-4F35-949D52FD222E";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.90820718 -0.55702257 0.71128231 ;
	setAttr ".rs" 1259463173;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.36798346042633057 -1 8.2301099268988764e-09 ;
	setAttr ".cbx" -type "double3" 1.4484308958053589 -0.11404514312744141 1.4225646257400513 ;
createNode polyTweak -n "polyTweak8";
	rename -uid "AE7CC720-664B-0921-A8D0-DB942AA14E5E";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[49:52]" -type "float3"  -0.25808549 0.13548505 0.11346793
		 0.2807405 0.13548523 -0.061607003 0.21673566 -0.14997134 -0.10319865 -0.24297714
		 -0.1499722 0.046169758;
createNode polyExtrudeFace -n "polyExtrudeFace11";
	rename -uid "BE966A66-5D4D-98E1-7E0F-B39E0A898AB7";
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.90820724 -0.55702257 -0.71128237 ;
	setAttr ".rs" 1488098083;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.36798363924026489 -1 -1.4225647449493408 ;
	setAttr ".cbx" -type "double3" 1.4484308958053589 -0.11404514312744141 1.477518285497581e-08 ;
createNode polyTweak -n "polyTweak9";
	rename -uid "4F1AF91D-3241-0EE3-3822-D695966A925B";
	setAttr ".uopa" yes;
	setAttr -s 13 ".tk";
	setAttr ".tk[10]" -type "float3" 0 -0.92011064 0 ;
	setAttr ".tk[45]" -type "float3" -0.25916797 0 0 ;
	setAttr ".tk[46]" -type "float3" -0.25916797 0 0 ;
	setAttr ".tk[47]" -type "float3" -0.25916797 0 0 ;
	setAttr ".tk[48]" -type "float3" -0.25916797 0 0 ;
	setAttr ".tk[49]" -type "float3" 0 0 -0.28593552 ;
	setAttr ".tk[50]" -type "float3" 0 0 -0.28593552 ;
	setAttr ".tk[51]" -type "float3" 0 0 -0.28593552 ;
	setAttr ".tk[52]" -type "float3" 0 0 -0.28593552 ;
	setAttr ".tk[53]" -type "float3" 0.5863288 0.30751812 -0.38081211 ;
	setAttr ".tk[54]" -type "float3" -0.1696043 0.30751806 0.65964001 ;
	setAttr ".tk[55]" -type "float3" -0.024317376 -0.34046242 0.65964001 ;
	setAttr ".tk[56]" -type "float3" 0.62062615 -0.34046242 -0.22804862 ;
createNode polyExtrudeFace -n "polyExtrudeFace12";
	rename -uid "58F7D182-A04D-BD70-F321-D7A5AD3BF13C";
	setAttr ".ics" -type "componentList" 1 "f[0:4]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.090053141 -0.56426573 -0.086233854 ;
	setAttr ".rs" 944311549;
	setAttr ".lt" -type "double3" -1.6653345369377348e-16 -1.1102230246251565e-16 1.3165399525073584 ;
	setAttr ".ls" -type "double3" 0.65791971725537046 0.61499251379695519 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.4589328765869141 -0.86451494693756104 -1.5950323343276978 ;
	setAttr ".cbx" -type "double3" 1.2788265943527222 -0.26401647925376892 1.4225646257400513 ;
createNode polyTweak -n "polyTweak10";
	rename -uid "2939EB6F-0447-1DB9-D37C-BFB2A8881A2C";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[57:60]" -type "float3"  -0.22356637 0.29378992 -0.44453719
		 0.55287975 0.29378998 0.51487786 0.57812124 -0.32526383 0.36675608 -0.084323391 -0.3252638
		 -0.45179304;
createNode polyExtrudeFace -n "polyExtrudeFace13";
	rename -uid "822AE133-7F4B-829D-6534-1C9CE5D2EBAF";
	setAttr ".ics" -type "componentList" 1 "f[0:4]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.21209252 -0.21198563 -0.24628162 ;
	setAttr ".rs" 1973227449;
	setAttr ".lt" -type "double3" -0.57164194835095716 0.31752009610982757 1.2985832870542828 ;
	setAttr ".ls" -type "double3" 0.53119958495555375 1 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.731055736541748 -0.48857396841049194 -2.7362606525421143 ;
	setAttr ".cbx" -type "double3" 2.306870698928833 0.064602702856063843 2.2436974048614502 ;
createNode polyExtrudeFace -n "polyExtrudeFace14";
	rename -uid "BD4E58C6-C54F-8BB4-3436-A389B2901880";
	setAttr ".ics" -type "componentList" 1 "f[0:4]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.51244795 0.044663846 -0.50836062 ;
	setAttr ".rs" 966909051;
	setAttr ".lt" -type "double3" -6.6613381477509392e-16 -5.5511151231257827e-17 1.2718907777514099 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -4.1119403839111328 -0.62211346626281738 -3.7923142910003662 ;
	setAttr ".cbx" -type "double3" 3.0870444774627686 0.71144115924835205 2.7755930423736572 ;
createNode polyMergeVert -n "polyMergeVert2";
	rename -uid "9B6E7E90-B348-9297-5DBE-98B7ECDD4163";
	setAttr ".ics" -type "componentList" 1 "vtx[109:112]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak11";
	rename -uid "1F5A8D93-0841-4700-F3D0-5094B9968DCC";
	setAttr ".uopa" yes;
	setAttr -s 48 ".tk";
	setAttr ".tk[61]" -type "float3" 0 -0.27722022 0 ;
	setAttr ".tk[62]" -type "float3" 0 -0.27722022 0 ;
	setAttr ".tk[63]" -type "float3" 0 -0.27722022 0 ;
	setAttr ".tk[64]" -type "float3" 0 -0.27722022 0 ;
	setAttr ".tk[69]" -type "float3" 0.011258036 -0.75439817 -0.21992518 ;
	setAttr ".tk[70]" -type "float3" 0.044954304 -0.68831319 -0.2768324 ;
	setAttr ".tk[71]" -type "float3" -0.041538853 -0.6815719 -0.21084686 ;
	setAttr ".tk[72]" -type "float3" -0.07028766 -0.73795408 -0.16229498 ;
	setAttr ".tk[73]" -type "float3" -0.067524828 -0.28068194 -0.089766107 ;
	setAttr ".tk[74]" -type "float3" -0.067537822 -0.21499975 -0.082247756 ;
	setAttr ".tk[75]" -type "float3" -0.040451221 -0.22391759 -0.024110138 ;
	setAttr ".tk[76]" -type "float3" -0.040440112 -0.27995566 -0.030524548 ;
	setAttr ".tk[77]" -type "float3" -0.03696306 -0.12139745 0 ;
	setAttr ".tk[78]" -type "float3" -0.030602962 -0.081508666 0 ;
	setAttr ".tk[79]" -type "float3" 0.0088190995 -0.082822338 0 ;
	setAttr ".tk[80]" -type "float3" 0.0033928701 -0.11685427 0 ;
	setAttr ".tk[81]" -type "float3" 0 -0.27722022 0 ;
	setAttr ".tk[82]" -type "float3" 0 -0.27722022 0 ;
	setAttr ".tk[83]" -type "float3" 0 -0.27722022 0 ;
	setAttr ".tk[84]" -type "float3" 0 -0.27722022 0 ;
	setAttr ".tk[89]" -type "float3" -0.013897417 -1.2950786 0.045667592 ;
	setAttr ".tk[90]" -type "float3" 0.029344071 -1.26252 -0.00363578 ;
	setAttr ".tk[91]" -type "float3" -0.057416748 -1.2548386 0.062136512 ;
	setAttr ".tk[92]" -type "float3" -0.09430933 -1.2826167 0.10420095 ;
	setAttr ".tk[93]" -type "float3" 0.022504397 -0.87116224 0.039029893 ;
	setAttr ".tk[94]" -type "float3" 0.028242094 -0.83548594 0.055661246 ;
	setAttr ".tk[95]" -type "float3" 0.054223433 -0.83863664 0.11204743 ;
	setAttr ".tk[96]" -type "float3" 0.049328167 -0.86907488 0.09785796 ;
	setAttr ".tk[97]" -type "float3" -0.027568163 -0.31002396 0 ;
	setAttr ".tk[98]" -type "float3" -0.034563545 -0.28758863 0 ;
	setAttr ".tk[99]" -type "float3" 0.0037337786 -0.29037204 0 ;
	setAttr ".tk[100]" -type "float3" 0.0097020846 -0.30951333 0 ;
	setAttr ".tk[101]" -type "float3" 0 -0.66500843 0.067240186 ;
	setAttr ".tk[102]" -type "float3" 0 -0.62342787 0.053690806 ;
	setAttr ".tk[103]" -type "float3" 0 -0.62197053 -0.067240164 ;
	setAttr ".tk[104]" -type "float3" 0 -0.65744668 -0.055679932 ;
	setAttr ".tk[109]" -type "float3" 0.15519276 -1.6789491 0.2764076 ;
	setAttr ".tk[110]" -type "float3" -0.081756487 -1.6186887 0.054021433 ;
	setAttr ".tk[111]" -type "float3" -0.075112566 -1.8412733 0.17933902 ;
	setAttr ".tk[112]" -type "float3" 0.12704699 -1.8926861 0.36907348 ;
	setAttr ".tk[113]" -type "float3" 0.035432037 -1.3513309 0.012096097 ;
	setAttr ".tk[114]" -type "float3" 0.041169725 -1.3156544 0.02872744 ;
	setAttr ".tk[115]" -type "float3" 0.067151077 -1.3188051 0.085113592 ;
	setAttr ".tk[116]" -type "float3" 0.062255815 -1.3492435 0.070924155 ;
	setAttr ".tk[117]" -type "float3" -0.0049372218 -0.57570565 0 ;
	setAttr ".tk[118]" -type "float3" -0.011932596 -0.55327016 0 ;
	setAttr ".tk[119]" -type "float3" 0.026364718 -0.55605364 0 ;
	setAttr ".tk[120]" -type "float3" 0.032333024 -0.5751949 0 ;
createNode polyMergeVert -n "polyMergeVert3";
	rename -uid "6E8B2D50-2E4C-EFC4-4132-70BB34938242";
	setAttr ".ics" -type "componentList" 1 "vtx[105:108]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak12";
	rename -uid "F294BA7C-3C48-9F3E-73BF-1EA47A400ACE";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[105:108]" -type "float3"  0.013475895 0.060102522 0.20991069
		 0.013475895 0.060102522 -0.20991078 -0.013475895 -0.060102537 -0.17909065 -0.013475895
		 -0.060102478 0.17909068;
createNode polyMergeVert -n "polyMergeVert4";
	rename -uid "66D15890-FB4A-B3A8-F436-229D501B1E07";
	setAttr ".ics" -type "componentList" 1 "vtx[101:104]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak13";
	rename -uid "B51FFED3-D94D-59E6-DCD9-05BE74B83842";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[101:104]" -type "float3"  -0.18908501 0.21743184 0.036183834
		 0.20705819 0.15545404 -0.083438873 0.16000319 -0.21288246 -0.027402401 -0.17797637
		 -0.16000342 0.074657917;
createNode polyMergeVert -n "polyMergeVert5";
	rename -uid "7A487DC1-4542-F4CB-8B39-8B8C967C741C";
	setAttr ".ics" -type "componentList" 1 "vtx[108:111]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak14";
	rename -uid "13F85E05-C24D-FDBB-0C72-72B2C3CBA876";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[108:111]" -type "float3"  -0.036615372 0.069379747 -0.07174015
		 0.0602355 0.087269604 0.10519576 0.029505253 -0.070693016 0.058750868 -0.053124905
		 -0.085956395 -0.092206478;
createNode polyMergeVert -n "polyMergeVert6";
	rename -uid "4BEBA2D5-8F42-E570-3858-4F8D622BCD88";
	setAttr ".ics" -type "componentList" 1 "vtx[104:107]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak15";
	rename -uid "8EC0D335-C149-A364-E22E-C4B16A16B10F";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[104:107]" -type "float3"  0.058820009 0.10334402 -0.048191071
		 -0.043942213 0.039081037 0.077542782 -0.051275969 -0.098626435 0.038960457 0.036398411
		 -0.043798745 -0.068312645;
createNode polyExtrudeFace -n "polyExtrudeFace15";
	rename -uid "446D7124-4348-A6D6-E39D-A28B6C6589E1";
	setAttr ".ics" -type "componentList" 1 "f[11]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.76947647 3.2825353 -0.078916252 ;
	setAttr ".rs" 1456471970;
	setAttr ".lt" -type "double3" 4.3529068837592462e-17 6.9445253495174894e-18 0.31856829810323173 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.1584517955780029 2.373692512512207 -0.73449325561523438 ;
	setAttr ".cbx" -type "double3" -0.38050121068954468 4.191378116607666 0.57666075229644775 ;
createNode polyExtrudeFace -n "polyExtrudeFace16";
	rename -uid "A2FD8B95-8E40-7692-2941-B4811C95CAE9";
	setAttr ".ics" -type "componentList" 1 "f[11]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.0769645 3.3737316 -0.034231976 ;
	setAttr ".rs" 476716550;
	setAttr ".lt" -type "double3" -1.8944696416350265e-16 2.4900036968021535e-16 1.6500332976834351 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.2063169479370117 3.0714983940124512 -0.25224241614341736 ;
	setAttr ".cbx" -type "double3" -0.94761216640472412 3.6759645938873291 0.18377846479415894 ;
createNode polyTweak -n "polyTweak16";
	rename -uid "5905FF41-AF41-4E35-B52F-19892383992F";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[106:109]" -type "float3"  0.24500701 0.5724597 0.48225084
		 0.24500707 0.5724597 -0.24420944 -0.27423885 -0.64075971 -0.39288229 -0.27423885
		 -0.64075971 0.11231974;
createNode polyExtrudeFace -n "polyExtrudeFace17";
	rename -uid "170B30E8-024C-E9EA-CD03-ED8E6A96664B";
	setAttr ".ics" -type "componentList" 1 "f[11]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.5967054 3.5826585 -0.025666628 ;
	setAttr ".rs" 1833371287;
	setAttr ".lt" -type "double3" 1.4432899320127035e-15 -2.9076465267206123e-16 1.4383567664064714 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.6762890815734863 3.3967113494873047 -0.15979669988155365 ;
	setAttr ".cbx" -type "double3" -2.5171217918395996 3.7686059474945068 0.10846344381570816 ;
createNode polyTweak -n "polyTweak17";
	rename -uid "A093BC28-A241-906D-4588-B1905CBF5108";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[110:113]" -type "float3"  0.046967506 -0.32402027 0.092446193
		 0.046967506 -0.32402027 -0.04681427 -0.052569866 -0.55659175 -0.075314544 -0.052569866
		 -0.55659175 0.021531418;
createNode polyExtrudeFace -n "polyExtrudeFace18";
	rename -uid "CABAD1C6-8A45-D8F6-181F-A888A86471EE";
	setAttr ".ics" -type "componentList" 1 "f[11]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -3.8617251 4.7348661 -0.019496493 ;
	setAttr ".rs" 866498374;
	setAttr ".lt" -type "double3" 9.4368957093138306e-16 5.3275370071573814e-17 1.0099399119312762 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -3.9054598808288574 4.6326818466186523 -0.093205913901329041 ;
	setAttr ".cbx" -type "double3" -3.8179905414581299 4.8370504379272461 0.05421292781829834 ;
createNode polyTweak -n "polyTweak18";
	rename -uid "7ABD7952-F742-7DEB-9F88-3D8AA5066F42";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[114:117]" -type "float3"  0.093165509 0.6700229 0.066590786
		 0.093165509 0.6700229 -0.033721201 0.021467548 0.5024966 -0.054250516 0.021467548
		 0.5024966 0.015509462;
createNode polyMergeVert -n "polyMergeVert7";
	rename -uid "3079630C-054C-A017-E267-D8A8DF05EEB9";
	setAttr ".ics" -type "componentList" 1 "vtx[118:121]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak19";
	rename -uid "5009CFA1-3642-C010-0B21-81A3AFBC64F9";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[118:121]" -type "float3"  0.04373455 0.1021843 0.083027303
		 0.04373455 0.1021843 -0.039347053 -0.04373455 -0.1021843 -0.064391539 -0.04373455
		 -0.1021843 0.020711295;
createNode polyExtrudeFace -n "polyExtrudeFace19";
	rename -uid "04DB1CAA-484E-4AED-F6D5-A3AE86515CD2";
	setAttr ".ics" -type "componentList" 1 "f[12]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.33047476 3.2825353 0.31013471 ;
	setAttr ".rs" 285890841;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.12331505864858627 2.373692512512207 -0.19028963148593903 ;
	setAttr ".cbx" -type "double3" 0.78426456451416016 4.191378116607666 0.81055903434753418 ;
createNode polyExtrudeFace -n "polyExtrudeFace20";
	rename -uid "6EEC3480-5246-FA7D-212A-8CAFD79695FD";
	setAttr ".ics" -type "componentList" 1 "f[12]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.77552438 3.1587965 0.37167281 ;
	setAttr ".rs" 361956444;
	setAttr ".lt" -type "double3" -3.3306690738754696e-16 -3.8857805861880479e-16 1.4535760531002762 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.64347332715988159 2.8943257331848145 0.22605083882808685 ;
	setAttr ".cbx" -type "double3" 0.90757548809051514 3.4232673645019531 0.51729476451873779 ;
createNode polyTweak -n "polyTweak20";
	rename -uid "369B4CF7-D243-E449-A20C-59AE42BBAA70";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[119:122]" -type "float3"  0.76678836 0.52063322 -0.2079649
		 0.31320351 0.52063322 0.41634047 0.12331092 -0.76811075 0.14089602 0.43874753 -0.76811099
		 -0.29326427;
createNode polyExtrudeFace -n "polyExtrudeFace21";
	rename -uid "4FF5EE06-1247-2A5E-FC5E-C0BD08290FDA";
	setAttr ".ics" -type "componentList" 1 "f[12]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.0439219 3.4204333 1.2971066 ;
	setAttr ".rs" 1427002891;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.9668385982513428 3.266049861907959 1.2121009826660156 ;
	setAttr ".cbx" -type "double3" 2.1210052967071533 3.5748164653778076 1.3821123838424683 ;
createNode polyTweak -n "polyTweak21";
	rename -uid "E5B5AC32-2C4D-C68D-545A-D2BA6FBAD9C2";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[123:126]" -type "float3"  0.18113232 0.71739769 0.049512982
		 0.10363889 0.71739769 0.15617263 0.071196795 0.49722266 0.10911489 0.12508798 0.49722266
		 0.034940004;
createNode polyExtrudeFace -n "polyExtrudeFace22";
	rename -uid "EAFD260D-1247-3A29-B5C5-DDB10C42BBA8";
	setAttr ".ics" -type "componentList" 1 "f[12]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.1142554 4.0686936 1.8520795 ;
	setAttr ".rs" 1911030023;
	setAttr ".lt" -type "double3" -6.6613381477509392e-16 6.6613381477509392e-16 1.0290991845992505 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.9978775978088379 3.903256893157959 1.7670737504959106 ;
	setAttr ".cbx" -type "double3" 3.2306332588195801 4.234130859375 1.9370853900909424 ;
createNode polyTweak -n "polyTweak22";
	rename -uid "F40864B6-F24C-4085-8081-8F99FA73F573";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[127:130]" -type "float3"  1.18438327 0.63720697 0.55497313
		 1.15512347 0.7113905 0.55497277 0.93209714 0.65931439 0.55497277 0.95244539 0.60772514
		 0.55497301;
createNode polyMergeVert -n "polyMergeVert8";
	rename -uid "C102B44E-B940-30D3-546D-AA86B83D1587";
	setAttr ".ics" -type "componentList" 1 "vtx[131:134]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak23";
	rename -uid "63C51398-E94B-630B-25A5-569A805CFF24";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[131:134]" -type "float3"  -0.043013096 0.17108536 -0.053180218
		 -0.1224246 0.096901894 0.096395016 0.055106163 -0.15978861 0.030401945 0.11033106
		 -0.10819912 -0.073616743;
createNode polyExtrudeFace -n "polyExtrudeFace23";
	rename -uid "7DA42BE8-E64C-5DB5-1C56-31AFFD81A699";
	setAttr ".ics" -type "componentList" 1 "f[13]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.020568699 4.8932495 -0.34297124 ;
	setAttr ".rs" 1473376485;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.38050121068954468 4.191378116607666 -0.50569248199462891 ;
	setAttr ".cbx" -type "double3" 0.33936381340026855 5.595120906829834 -0.18025000393390656 ;
createNode polyExtrudeFace -n "polyExtrudeFace24";
	rename -uid "525C0595-B64D-CE9F-899D-A2A39139DDBD";
	setAttr ".ics" -type "componentList" 1 "f[13]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.11039729 4.8529644 -0.61361974 ;
	setAttr ".rs" 1183792977;
	setAttr ".lt" -type "double3" 1.1102230246251565e-16 3.8857805861880479e-16 1.6198486436615394 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.29784530401229858 4.4874396324157715 -0.69836276769638062 ;
	setAttr ".cbx" -type "double3" 0.077050715684890747 5.2184891700744629 -0.5288766622543335 ;
createNode polyTweak -n "polyTweak24";
	rename -uid "6291D896-4D4D-ED19-075C-FF91C84CFA55";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[132:135]" -type "float3"  -0.2623131 0.29606152 -0.23653957
		 0.082655907 0.29606152 -0.34862664 0.044972271 -0.37663174 -0.27521074 -0.20906149
		 -0.37663174 -0.19267029;
createNode polyExtrudeFace -n "polyExtrudeFace25";
	rename -uid "E688BE9D-514E-7811-4714-F0B89921A1E0";
	setAttr ".ics" -type "componentList" 1 "f[13]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.70648378 5.2803535 -2.4297395 ;
	setAttr ".rs" 47629626;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.89393174648284912 5.1391911506652832 -2.4960293769836426 ;
	setAttr ".cbx" -type "double3" -0.51903581619262695 5.4215154647827148 -2.3634498119354248 ;
createNode polyTweak -n "polyTweak25";
	rename -uid "3A5AFEB1-2A4C-B291-6275-85B3FB05883D";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[136:139]" -type "float3"  -0.097388655 0.79132366 -0.29973483
		 -0.097388566 0.79132366 -0.29973483 -0.085397005 0.34259844 -0.26282835 -0.085397124
		 0.34259844 -0.26282835;
createNode polyExtrudeFace -n "polyExtrudeFace26";
	rename -uid "E890A3D9-264F-631C-9406-1D9E89BD138E";
	setAttr ".ics" -type "componentList" 1 "f[13]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.1467599 5.8677707 -3.7900558 ;
	setAttr ".rs" 1962097465;
	setAttr ".lt" -type "double3" 0 -0.50892061151125756 0.33051506600344632 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.2357707023620605 5.8007378578186035 -3.8215343952178955 ;
	setAttr ".cbx" -type "double3" -1.0577491521835327 5.9348039627075195 -3.7585768699645996 ;
createNode polyTweak -n "polyTweak26";
	rename -uid "AF286604-2942-7822-B735-279192196CF2";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[140:143]" -type "float3"  -0.53871334 0.66154671 -1.33116055
		 -0.34183896 0.66154671 -1.39512706 -0.36964256 0.5132885 -1.37260985 -0.51461923
		 0.5132885 -1.32550502;
createNode polyMergeVert -n "polyMergeVert9";
	rename -uid "94CB1B93-4F49-6C84-50D8-D99AAF42E879";
	setAttr ".ics" -type "componentList" 1 "vtx[144:147]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak27";
	rename -uid "ED17FC64-0243-7A85-1B0A-D5AC9AB40407";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[144:147]" -type "float3"  -0.088172078 0.067033291 0.022553921
		 0.089849472 0.067033291 -0.035290718 0.064708948 -0.067032814 -0.014929295 -0.06638658
		 -0.067032814 0.027666569;
createNode polyPlatonic -n "polyPlatonic1";
	rename -uid "C42B3D3D-874C-1B33-5191-67A4A7F277AA";
	setAttr ".subdivisions" 1;
	setAttr ".radius" 3;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "1AAD2DB0-3045-9942-9331-9CA79779000B";
	setAttr ".version" -type "string" "5.2.0";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "665E31C4-0E46-8871-0FCC-D0824BFE82A6";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "D4A46287-294D-C7BC-FC77-00BD4830FD8D";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "7FC53943-514B-CCAD-4F27-52878F219AB6";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode polySoftEdge -n "polySoftEdge1";
	rename -uid "A6439B25-4E4A-8584-D95E-2D857A7A86F4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0.83902682404309559 0 0 0 0 0.83902682404309559 0 0
		 0 0 0.83902682404309559 0 -0.31564572340348418 9.9075756867354077 2.4975561435137017 1;
	setAttr ".a" 0;
createNode polySoftEdge -n "polySoftEdge2";
	rename -uid "97A9560F-5447-A58D-659D-91B3F9040446";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0.83902682404309559 0 0 0 0 0.83902682404309559 0 0
		 0 0 0.83902682404309559 0 3.2388195465888798 8.2087672600665762 0.8855159915834685 1;
	setAttr ".a" 0;
createNode polySoftEdge -n "polySoftEdge3";
	rename -uid "246FCE13-4049-0A86-0A7C-47A59AD40B2F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0.83902682404309559 0 0 0 0 0.83902682404309559 0 0
		 0 0 0.83902682404309559 0 -3.700088441868405 7.9578679882384318 0 1;
	setAttr ".a" 0;
createNode polySoftEdge -n "polySoftEdge4";
	rename -uid "05B22B64-1841-9FC4-0608-188F337C3652";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0.83902682404309559 0 0 0 0 0.83902682404309559 0 0
		 0 0 0.83902682404309559 0 0.46402789476018258 9.8860573947299972 -1.9629505244336629 1;
	setAttr ".a" 0;
createNode polySoftEdge -n "polySoftEdge5";
	rename -uid "B81EFD00-024F-29F6-5BF0-E09F13297D62";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.4460274324782434 0 0 0 0 1 0 0 0 0 1;
	setAttr ".a" 0;
createNode polyTweak -n "polyTweak28";
	rename -uid "72C8B1CF-A747-573B-43FC-939FAEDAC333";
	setAttr ".uopa" yes;
	setAttr -s 11 ".tk";
	setAttr ".tk[10]" -type "float3" 0 0.48730031 0 ;
	setAttr ".tk[31]" -type "float3" 0 -0.45662877 0 ;
	setAttr ".tk[136]" -type "float3" 0.47688034 0.0545398 0.80466759 ;
	setAttr ".tk[137]" -type "float3" 0.47138861 0.045790553 0.78587937 ;
	setAttr ".tk[138]" -type "float3" 0.48415223 0.045411587 0.85195261 ;
	setAttr ".tk[139]" -type "float3" 0.4881964 0.051853895 0.86578816 ;
	setAttr ".tk[140]" -type "float3" 0.57132655 0.35667503 0.96374112 ;
	setAttr ".tk[141]" -type "float3" 0.56871855 0.35252011 0.95481926 ;
	setAttr ".tk[142]" -type "float3" 0.57477963 0.3523401 0.98619545 ;
	setAttr ".tk[143]" -type "float3" 0.57670003 0.35539961 0.99276531 ;
	setAttr ".tk[144]" -type "float3" 0.60961258 0.42595077 1.0857724 ;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".aoon" yes;
	setAttr ".msaa" yes;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 5 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "mayaHardware2";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "polySoftEdge2.out" "leavesShape.i";
connectAttr "polySoftEdge1.out" "leavesShape1.i";
connectAttr "polySoftEdge4.out" "leavesShape2.i";
connectAttr "polySoftEdge3.out" "leavesShape3.i";
connectAttr "polySoftEdge5.out" "trunkShape.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCylinder1.out" "polyExtrudeFace1.ip";
connectAttr "trunkShape.wm" "polyExtrudeFace1.mp";
connectAttr "polyExtrudeFace1.out" "polyExtrudeFace2.ip";
connectAttr "trunkShape.wm" "polyExtrudeFace2.mp";
connectAttr "polyTweak1.out" "polyExtrudeFace3.ip";
connectAttr "trunkShape.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polyExtrudeFace4.ip";
connectAttr "trunkShape.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polyExtrudeFace5.ip";
connectAttr "trunkShape.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polyMergeVert1.ip";
connectAttr "trunkShape.wm" "polyMergeVert1.mp";
connectAttr "polyExtrudeFace5.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polySplitRing1.ip";
connectAttr "trunkShape.wm" "polySplitRing1.mp";
connectAttr "polyMergeVert1.out" "polyTweak5.ip";
connectAttr "polySplitRing1.out" "polyExtrudeFace6.ip";
connectAttr "trunkShape.wm" "polyExtrudeFace6.mp";
connectAttr "polyExtrudeFace6.out" "polyExtrudeFace7.ip";
connectAttr "trunkShape.wm" "polyExtrudeFace7.mp";
connectAttr "polyTweak6.out" "polyExtrudeFace8.ip";
connectAttr "trunkShape.wm" "polyExtrudeFace8.mp";
connectAttr "polyExtrudeFace7.out" "polyTweak6.ip";
connectAttr "polyTweak7.out" "polyExtrudeFace9.ip";
connectAttr "trunkShape.wm" "polyExtrudeFace9.mp";
connectAttr "polyExtrudeFace8.out" "polyTweak7.ip";
connectAttr "polyTweak8.out" "polyExtrudeFace10.ip";
connectAttr "trunkShape.wm" "polyExtrudeFace10.mp";
connectAttr "polyExtrudeFace9.out" "polyTweak8.ip";
connectAttr "polyTweak9.out" "polyExtrudeFace11.ip";
connectAttr "trunkShape.wm" "polyExtrudeFace11.mp";
connectAttr "polyExtrudeFace10.out" "polyTweak9.ip";
connectAttr "polyTweak10.out" "polyExtrudeFace12.ip";
connectAttr "trunkShape.wm" "polyExtrudeFace12.mp";
connectAttr "polyExtrudeFace11.out" "polyTweak10.ip";
connectAttr "polyExtrudeFace12.out" "polyExtrudeFace13.ip";
connectAttr "trunkShape.wm" "polyExtrudeFace13.mp";
connectAttr "polyExtrudeFace13.out" "polyExtrudeFace14.ip";
connectAttr "trunkShape.wm" "polyExtrudeFace14.mp";
connectAttr "polyTweak11.out" "polyMergeVert2.ip";
connectAttr "trunkShape.wm" "polyMergeVert2.mp";
connectAttr "polyExtrudeFace14.out" "polyTweak11.ip";
connectAttr "polyTweak12.out" "polyMergeVert3.ip";
connectAttr "trunkShape.wm" "polyMergeVert3.mp";
connectAttr "polyMergeVert2.out" "polyTweak12.ip";
connectAttr "polyTweak13.out" "polyMergeVert4.ip";
connectAttr "trunkShape.wm" "polyMergeVert4.mp";
connectAttr "polyMergeVert3.out" "polyTweak13.ip";
connectAttr "polyTweak14.out" "polyMergeVert5.ip";
connectAttr "trunkShape.wm" "polyMergeVert5.mp";
connectAttr "polyMergeVert4.out" "polyTweak14.ip";
connectAttr "polyTweak15.out" "polyMergeVert6.ip";
connectAttr "trunkShape.wm" "polyMergeVert6.mp";
connectAttr "polyMergeVert5.out" "polyTweak15.ip";
connectAttr "polyMergeVert6.out" "polyExtrudeFace15.ip";
connectAttr "trunkShape.wm" "polyExtrudeFace15.mp";
connectAttr "polyTweak16.out" "polyExtrudeFace16.ip";
connectAttr "trunkShape.wm" "polyExtrudeFace16.mp";
connectAttr "polyExtrudeFace15.out" "polyTweak16.ip";
connectAttr "polyTweak17.out" "polyExtrudeFace17.ip";
connectAttr "trunkShape.wm" "polyExtrudeFace17.mp";
connectAttr "polyExtrudeFace16.out" "polyTweak17.ip";
connectAttr "polyTweak18.out" "polyExtrudeFace18.ip";
connectAttr "trunkShape.wm" "polyExtrudeFace18.mp";
connectAttr "polyExtrudeFace17.out" "polyTweak18.ip";
connectAttr "polyTweak19.out" "polyMergeVert7.ip";
connectAttr "trunkShape.wm" "polyMergeVert7.mp";
connectAttr "polyExtrudeFace18.out" "polyTweak19.ip";
connectAttr "polyMergeVert7.out" "polyExtrudeFace19.ip";
connectAttr "trunkShape.wm" "polyExtrudeFace19.mp";
connectAttr "polyTweak20.out" "polyExtrudeFace20.ip";
connectAttr "trunkShape.wm" "polyExtrudeFace20.mp";
connectAttr "polyExtrudeFace19.out" "polyTweak20.ip";
connectAttr "polyTweak21.out" "polyExtrudeFace21.ip";
connectAttr "trunkShape.wm" "polyExtrudeFace21.mp";
connectAttr "polyExtrudeFace20.out" "polyTweak21.ip";
connectAttr "polyTweak22.out" "polyExtrudeFace22.ip";
connectAttr "trunkShape.wm" "polyExtrudeFace22.mp";
connectAttr "polyExtrudeFace21.out" "polyTweak22.ip";
connectAttr "polyTweak23.out" "polyMergeVert8.ip";
connectAttr "trunkShape.wm" "polyMergeVert8.mp";
connectAttr "polyExtrudeFace22.out" "polyTweak23.ip";
connectAttr "polyMergeVert8.out" "polyExtrudeFace23.ip";
connectAttr "trunkShape.wm" "polyExtrudeFace23.mp";
connectAttr "polyTweak24.out" "polyExtrudeFace24.ip";
connectAttr "trunkShape.wm" "polyExtrudeFace24.mp";
connectAttr "polyExtrudeFace23.out" "polyTweak24.ip";
connectAttr "polyTweak25.out" "polyExtrudeFace25.ip";
connectAttr "trunkShape.wm" "polyExtrudeFace25.mp";
connectAttr "polyExtrudeFace24.out" "polyTweak25.ip";
connectAttr "polyTweak26.out" "polyExtrudeFace26.ip";
connectAttr "trunkShape.wm" "polyExtrudeFace26.mp";
connectAttr "polyExtrudeFace25.out" "polyTweak26.ip";
connectAttr "polyTweak27.out" "polyMergeVert9.ip";
connectAttr "trunkShape.wm" "polyMergeVert9.mp";
connectAttr "polyExtrudeFace26.out" "polyTweak27.ip";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "polySurfaceShape1.o" "polySoftEdge1.ip";
connectAttr "leavesShape1.wm" "polySoftEdge1.mp";
connectAttr "polySurfaceShape2.o" "polySoftEdge2.ip";
connectAttr "leavesShape.wm" "polySoftEdge2.mp";
connectAttr "polyPlatonic1.output" "polySoftEdge3.ip";
connectAttr "leavesShape3.wm" "polySoftEdge3.mp";
connectAttr "polySurfaceShape3.o" "polySoftEdge4.ip";
connectAttr "leavesShape2.wm" "polySoftEdge4.mp";
connectAttr "polyTweak28.out" "polySoftEdge5.ip";
connectAttr "trunkShape.wm" "polySoftEdge5.mp";
connectAttr "polyMergeVert9.out" "polyTweak28.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "trunkShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "leavesShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "leavesShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "leavesShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "leavesShape.iog" ":initialShadingGroup.dsm" -na;
// End of tree.ma

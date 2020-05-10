//Maya ASCII 2018 scene
//Name: Ribbonleg.ma
//Last modified: Mon, Apr 01, 2019 10:56:38 AM
//Codeset: 1252
requires maya "2018";
requires "mtoa" "3.1.1";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "081C0ABC-48E2-3253-8069-8EA98CE8AA48";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 22.978401801453671 15.363398709034321 160.72293923917306 ;
	setAttr ".r" -type "double3" -6.9383527296040368 7.0000000000002363 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "5D1812D4-44E2-C6A7-9EDD-84A128F38732";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 176.14924528735099;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "6FE5A0AF-420F-366B-18DD-F1A879007F4C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "E7A4E459-450A-8908-64D8-E592EDC36B6B";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "759DC8B7-4188-1E46-B06A-DB804B376358";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "A8461218-4979-42B8-2119-0DB6F8AA8F88";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "3EDEA795-44E4-C991-0059-69BC8988DA89";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "015EE355-4229-E439-4CC6-EA9AF8BE9352";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "R_RibbonLegs";
	rename -uid "333CBF9F-43E5-B5F9-DA93-BFAC7F389FA9";
createNode transform -n "R_RibbonSystem" -p "R_RibbonLegs";
	rename -uid "E095CB9A-434E-3441-C40F-E6A2377CE203";
createNode transform -n "R_KneeFollowGRP" -p "R_RibbonSystem";
	rename -uid "A5A39CA2-47CD-CBBD-504D-15885E73BA6C";
	setAttr ".rp" -type "double3" 38.425437955047492 -1.7763568394002505e-15 -1.3322676295501878e-15 ;
	setAttr ".sp" -type "double3" 38.425437955047492 -1.7763568394002505e-15 -1.3322676295501878e-15 ;
createNode transform -n "grpR_KneeUp_CCZERO1" -p "R_KneeFollowGRP";
	rename -uid "905BC93B-4DF3-0379-EDDB-88ADB4E99BB7";
createNode transform -n "R_KneeUP_CC" -p "grpR_KneeUp_CCZERO1";
	rename -uid "57D308C2-4BC5-A479-051C-EDB526FFA3F1";
createNode nurbsCurve -n "R_KneeUP_CCShape" -p "R_KneeUP_CC";
	rename -uid "25594737-441B-00E7-0954-0386B8E2DF30";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.919294936395389e-16 3.1344464995648984 -3.134446499564898
		1.6620250738737023e-32 4.4327767502175508 -2.7142929292443649e-16
		-1.919294936395389e-16 3.1344464995648975 3.134446499564898
		-2.7142929292443659e-16 2.2979592950099322e-16 4.4327767502175526
		-1.919294936395389e-16 -3.134446499564898 3.134446499564898
		-2.7189257911234355e-32 -4.4327767502175535 4.4403427878412899e-16
		1.919294936395389e-16 -3.1344464995648975 -3.134446499564898
		2.7142929292443659e-16 -6.044962003119836e-16 -4.4327767502175526
		1.919294936395389e-16 3.1344464995648984 -3.134446499564898
		1.6620250738737023e-32 4.4327767502175508 -2.7142929292443649e-16
		-1.919294936395389e-16 3.1344464995648975 3.134446499564898
		;
createNode joint -n "R_KneeUPController" -p "R_KneeUP_CC";
	rename -uid "4251E27A-4418-9493-7FEF-668B27624800";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-16 1 0 0 -2.2204460492503131e-16 0 1 0
		 1 -2.2204460492503131e-16 2.2204460492503131e-16 0 38.425437955047492 5.3563035026147086 3.1031370386203406e-15 1;
	setAttr ".radi" 3.6;
createNode pointConstraint -n "grpR_KneeUp_CCZERO1_pointConstraint1" -p "grpR_KneeUp_CCZERO1";
	rename -uid "3B812ACF-4A88-A628-A1C4-C780722861B8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Knee_CCW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "L_Hip_CCW1" -dv 1 -min 0 -at "double";
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
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" 38.425437955047492 5.3563035026147086 1.7708694090701531e-15 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode aimConstraint -n "grpR_KneeUp_CCZERO1_aimConstraint1" -p "grpR_KneeUp_CCZERO1";
	rename -uid "8ABD6F11-4771-54AE-A5C8-A28422B3653C";
	addAttr -dcb 0 -ci true -sn "w0" -ln "L_Knee_CCW0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" -1 0 0 ;
	setAttr ".u" -type "double3" 0 0 0 ;
	setAttr ".o" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".rsrr" -type "double3" 89.999999999999986 0 89.999999999999986 ;
	setAttr -k on ".w0";
createNode transform -n "grpR_KneeDOWN_CCZERO2" -p "R_KneeFollowGRP";
	rename -uid "640A4908-4A36-303D-AC31-A39C5C1AA5FC";
createNode transform -n "R_KneeDOWN_CC" -p "grpR_KneeDOWN_CCZERO2";
	rename -uid "35B8EFD2-43F2-00AA-D97F-8F9D9CA6F06D";
createNode nurbsCurve -n "R_KneeDOWN_CCShape" -p "R_KneeDOWN_CC";
	rename -uid "999AF3B2-473F-02E6-E01E-3390BF7B2952";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.919294936395389e-16 3.1344464995648984 -3.134446499564898
		1.6620250738737023e-32 4.4327767502175508 -2.7142929292443649e-16
		-1.919294936395389e-16 3.1344464995648975 3.134446499564898
		-2.7142929292443659e-16 2.2979592950099322e-16 4.4327767502175526
		-1.919294936395389e-16 -3.134446499564898 3.134446499564898
		-2.7189257911234355e-32 -4.4327767502175535 4.4403427878412899e-16
		1.919294936395389e-16 -3.1344464995648975 -3.134446499564898
		2.7142929292443659e-16 -6.044962003119836e-16 -4.4327767502175526
		1.919294936395389e-16 3.1344464995648984 -3.134446499564898
		1.6620250738737023e-32 4.4327767502175508 -2.7142929292443649e-16
		-1.919294936395389e-16 3.1344464995648975 3.134446499564898
		;
createNode joint -n "R_KneeDOWNController" -p "R_KneeDOWN_CC";
	rename -uid "63799A4F-4180-7A5A-2D1D-8A9C47900AD2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-16 1 0 0 -2.2204460492503131e-16 0 1 0
		 1 -2.2204460492503131e-16 2.2204460492503131e-16 0 38.425437955047492 -5.3563035026147121 -1.7708694090701547e-15 1;
	setAttr ".radi" 3.6;
createNode pointConstraint -n "grpR_KneeDOWN_CCZERO2_pointConstraint1" -p "grpR_KneeDOWN_CCZERO2";
	rename -uid "A7AD2F84-445F-8276-CB1B-DCB5ABCE84ED";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Knee_CCW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "L_Ankle_CCW1" -dv 1 -min 0 -at "double";
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
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" 38.425437955047492 -5.3563035026147121 -3.1031370386203421e-15 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode aimConstraint -n "grpR_KneeDOWN_CCZERO2_aimConstraint1" -p "grpR_KneeDOWN_CCZERO2";
	rename -uid "8195CE79-430C-1093-6ACC-0E91E01149B3";
	addAttr -dcb 0 -ci true -sn "w0" -ln "L_Knee_CCW0" -dv 1 -at "double";
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
	setAttr ".u" -type "double3" 0 0 0 ;
	setAttr ".o" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".rsrr" -type "double3" 89.999999999999986 0 89.999999999999986 ;
	setAttr -k on ".w0";
createNode transform -n "grpR_Knee_CCZERO" -p "R_KneeFollowGRP";
	rename -uid "9E015041-4B07-EE44-B1F8-5395B5E5C81C";
	setAttr ".t" -type "double3" 38.425437955047492 -1.7763568394002505e-15 -7.8886090522101181e-31 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 89.999999999999986 ;
createNode transform -n "R_Knee_CC" -p "grpR_Knee_CCZERO";
	rename -uid "EC4133C1-4085-3B41-611A-27A7CD18DD18";
createNode nurbsCurve -n "R_Knee_CCShape" -p "R_Knee_CC";
	rename -uid "A63CAE53-4B92-5BF2-3013-97A28CA95381";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".tw" yes;
createNode joint -n "R_KneeController" -p "R_Knee_CC";
	rename -uid "64D24886-4DA5-52C4-340D-63A9B20E3A89";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-16 1 0 0 -2.2204460492503131e-16 0 1 0
		 1 -2.2204460492503131e-16 2.2204460492503131e-16 0 38.425437955047492 -1.7763568394002505e-15 1.3322676295501867e-15 1;
	setAttr ".radi" 3.6;
createNode pointConstraint -n "KneeFollowGRP_pointConstraint1" -p "R_KneeFollowGRP";
	rename -uid "7437B993-4F19-2DB8-0D8E-5997A315F2B5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Ankle_CCW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "L_Hip_CCW1" -dv 1 -min 0 -at "double";
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
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" 0 0 1.3322676295501875e-15 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "grpR_Hip_CCZERO" -p "R_RibbonSystem";
	rename -uid "CCD251FA-451C-E780-DDF7-3B9501C0239A";
	setAttr ".t" -type "double3" -44.544890739825121 10.712607005229438 -4.3375504800859917e-15 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 89.999999999999986 ;
createNode transform -n "R_Hip_CC" -p "grpR_Hip_CCZERO";
	rename -uid "271D60BD-41EF-0B56-AA98-B78FC4B98D77";
	setAttr ".t" -type "double3" 0 -7.8886090522101181e-31 0 ;
createNode nurbsCurve -n "R_Hip_CCShape" -p "R_Hip_CC";
	rename -uid "C8533C53-4F62-A2DF-D542-CA948562C0FA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".tw" yes;
createNode joint -n "R_HipController" -p "R_Hip_CC";
	rename -uid "7752D9F6-492D-1D3F-FE25-A4B82803C807";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 -7.8886090522101181e-31 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-16 1 0 0 -2.2204460492503131e-16 0 1 0
		 1 -2.2204460492503131e-16 2.2204460492503131e-16 0 38.425437955047492 10.712607005229419 4.8740064476904941e-15 1;
	setAttr ".radi" 3.6;
createNode transform -n "grpR_Ankle_CCZERO" -p "R_RibbonSystem";
	rename -uid "CC8C8B47-479C-3220-5348-DC8AA119AD85";
	setAttr ".t" -type "double3" -44.544890739825121 -10.712607005229463 -1.4085563375466969e-14 ;
	setAttr ".r" -type "double3" 90 3.1805546814635168e-15 90.000000000000057 ;
createNode transform -n "R_Ankle_CC" -p "grpR_Ankle_CCZERO";
	rename -uid "9C2960DA-46AB-0A57-A440-18B2E328A651";
	setAttr ".t" -type "double3" 0 1.5777218104420236e-30 0 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000002 ;
createNode nurbsCurve -n "R_Ankle_CCShape" -p "R_Ankle_CC";
	rename -uid "C1BD015C-46C2-E563-A848-88BD1732990F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".tw" yes;
createNode joint -n "R_AnkleController" -p "R_Ankle_CC";
	rename -uid "C793F219-4794-C5C9-BC0E-1B8B4448F9AB";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" -1.7763568394002505e-15 -1.5777218104420236e-30 7.1054273576010019e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -9.5416640443905487e-15 -1.2722218725854059e-14 3.1805546814635168e-15 ;
	setAttr ".bps" -type "matrix" -6.6613381477509422e-16 1.0000000000000002 5.5511151231257852e-17 0
		 -1.1102230246251568e-16 0 1.0000000000000002 0 1.0000000000000002 7.2164496600635195e-16 2.2204460492503136e-16 0
		 38.425437955047499 -10.712607005229424 -4.8740064476904957e-15 1;
	setAttr ".radi" 3.6;
createNode transform -n "R_hairSystem1Follicles" -p "R_RibbonLegs";
	rename -uid "0A5ABD75-4BF5-FFE1-3210-78B6206BA129";
createNode transform -n "R_nurbsPlane1Follicle5008" -p "R_hairSystem1Follicles";
	rename -uid "9826C2DD-43B4-2814-75E5-BDBC7325EB97";
createNode follicle -n "R_nurbsPlane1FollicleShape5008" -p "R_nurbsPlane1Follicle5008";
	rename -uid "7E0306B1-4B2A-17A8-E91B-7D8ED190E74B";
	setAttr -k off ".v";
	setAttr ".pu" 0.5;
	setAttr ".pv" 0.083333333333333329;
	setAttr ".sim" 0;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode joint -n "R_BindJoint01" -p "R_nurbsPlane1Follicle5008";
	rename -uid "337BFF27-4C26-EC42-4FB7-D695D6EC5655";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90 -9.5416640443905535e-15 90.000000000000028 ;
createNode transform -n "R_nurbsPlane1Follicle5025" -p "R_hairSystem1Follicles";
	rename -uid "C64DD714-4BC8-9B62-8F92-11975AB0063C";
createNode follicle -n "R_nurbsPlane1FollicleShape5025" -p "R_nurbsPlane1Follicle5025";
	rename -uid "BE06F442-4E29-2C02-BDE2-39BB6CD4E561";
	setAttr -k off ".v";
	setAttr ".pu" 0.5;
	setAttr ".pv" 0.25;
	setAttr ".sim" 0;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode joint -n "R_BindJoint02" -p "R_nurbsPlane1Follicle5025";
	rename -uid "C93E39AB-4046-10C4-1059-C3976EFA2772";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90 -2.8624992133171654e-14 90 ;
createNode transform -n "R_nurbsPlane1Follicle5041" -p "R_hairSystem1Follicles";
	rename -uid "639A3D9C-4693-BB47-56EE-E3AC38AC5486";
createNode follicle -n "R_nurbsPlane1FollicleShape5041" -p "R_nurbsPlane1Follicle5041";
	rename -uid "DCA6F689-4E98-2959-E76B-F99F186C81EB";
	setAttr -k off ".v";
	setAttr ".pu" 0.5;
	setAttr ".pv" 0.41666666666666669;
	setAttr ".sim" 0;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode joint -n "R_BindJoint03" -p "R_nurbsPlane1Follicle5041";
	rename -uid "532BD1B8-4D44-433D-4515-EFA07FD0C575";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90 -2.8624992133171654e-14 90 ;
createNode transform -n "R_nurbsPlane1Follicle5058" -p "R_hairSystem1Follicles";
	rename -uid "C662E808-466F-9387-9750-9BA7EE358F44";
createNode follicle -n "R_nurbsPlane1FollicleShape5058" -p "R_nurbsPlane1Follicle5058";
	rename -uid "48A8B89D-48B8-D5B6-5F0C-EABF58F42429";
	setAttr -k off ".v";
	setAttr ".pu" 0.5;
	setAttr ".pv" 0.58333333333333337;
	setAttr ".sim" 0;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode joint -n "R_BindJoint04" -p "R_nurbsPlane1Follicle5058";
	rename -uid "9D62B875-4179-2C19-B266-728F8B769083";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90 -2.8624992133171654e-14 90 ;
createNode transform -n "R_nurbsPlane1Follicle5074" -p "R_hairSystem1Follicles";
	rename -uid "B9704BC4-4D94-2373-68EF-06BC27BFB55E";
createNode follicle -n "R_nurbsPlane1FollicleShape5074" -p "R_nurbsPlane1Follicle5074";
	rename -uid "AF9C4D5C-425E-3AE7-4953-279406BB4AE5";
	setAttr -k off ".v";
	setAttr ".pu" 0.5;
	setAttr ".pv" 0.75;
	setAttr ".sim" 0;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode joint -n "R_BindJoint05" -p "R_nurbsPlane1Follicle5074";
	rename -uid "B2256303-40A8-E9B4-6AC9-6FB7D396918E";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90 -2.8624992133171654e-14 90 ;
createNode transform -n "R_nurbsPlane1Follicle5091" -p "R_hairSystem1Follicles";
	rename -uid "25A93CF6-46F0-19AC-8983-FDBA1D33D8F5";
createNode follicle -n "R_nurbsPlane1FollicleShape5091" -p "R_nurbsPlane1Follicle5091";
	rename -uid "60D7007B-4E1C-BB42-50C1-3C814B132BD9";
	setAttr -k off ".v";
	setAttr ".pu" 0.5;
	setAttr ".pv" 0.91666666666666663;
	setAttr ".sim" 0;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode joint -n "R_BindJoint06" -p "R_nurbsPlane1Follicle5091";
	rename -uid "5ED66E06-4000-B376-2377-0C89F19233A5";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90 -2.8624992133171654e-14 90 ;
createNode transform -n "R_nurbsPlane1" -p "R_RibbonLegs";
	rename -uid "2EAF87A7-482A-7412-1FBE-158D64B07369";
	setAttr ".t" -type "double3" 38.425437955047492 0 0 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 90.000000000000028 0 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 4.5722218312141267 4.5722218312141267 25.710256812550607 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsSurface -n "R_nurbsPlaneShape1" -p "R_nurbsPlane1";
	rename -uid "6280ACA7-4D6D-FAE1-D35A-C7A03E5BED8F";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode nurbsSurface -n "R_nurbsPlaneShape1Orig1" -p "R_nurbsPlane1";
	rename -uid "F5B44E67-4592-6E63-DE46-0DBC83A560AE";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
createNode transform -n "L_RibbonLegs";
	rename -uid "7203E885-49F8-79AC-7BC5-B4A9C78E3CDA";
createNode transform -n "L_RibbonSystem" -p "L_RibbonLegs";
	rename -uid "DD6F276C-40B6-34BD-44A3-D3A4408134F4";
createNode transform -n "L_KneeFollowGRP" -p "L_RibbonSystem";
	rename -uid "69DEBD5E-43E6-5CB2-B985-14B222E7A6F6";
	setAttr ".rp" -type "double3" 38.425437955047492 -1.7763568394002505e-15 -1.3322676295501878e-15 ;
	setAttr ".sp" -type "double3" 38.425437955047492 -1.7763568394002505e-15 -1.3322676295501878e-15 ;
createNode transform -n "grpL_KneeUp_CCZERO1" -p "L_KneeFollowGRP";
	rename -uid "1875CB57-40DC-D959-C84E-5B9727E777D5";
createNode transform -n "L_KneeUP_CC" -p "grpL_KneeUp_CCZERO1";
	rename -uid "B354A262-4EC8-0CBC-A7F2-209B55632955";
createNode nurbsCurve -n "L_KneeUP_CCShape" -p "L_KneeUP_CC";
	rename -uid "66321E30-4FEA-0151-A002-BA9BFE24B3A5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.919294936395389e-16 3.1344464995648984 -3.134446499564898
		1.6620250738737023e-32 4.4327767502175508 -2.7142929292443649e-16
		-1.919294936395389e-16 3.1344464995648975 3.134446499564898
		-2.7142929292443659e-16 2.2979592950099322e-16 4.4327767502175526
		-1.919294936395389e-16 -3.134446499564898 3.134446499564898
		-2.7189257911234355e-32 -4.4327767502175535 4.4403427878412899e-16
		1.919294936395389e-16 -3.1344464995648975 -3.134446499564898
		2.7142929292443659e-16 -6.044962003119836e-16 -4.4327767502175526
		1.919294936395389e-16 3.1344464995648984 -3.134446499564898
		1.6620250738737023e-32 4.4327767502175508 -2.7142929292443649e-16
		-1.919294936395389e-16 3.1344464995648975 3.134446499564898
		;
createNode joint -n "L_KneeUPController" -p "L_KneeUP_CC";
	rename -uid "56AAAD97-4B0F-99CC-76C6-928187EE1CA0";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-16 1 0 0 -2.2204460492503131e-16 0 1 0
		 1 -2.2204460492503131e-16 2.2204460492503131e-16 0 38.425437955047492 5.3563035026147086 3.1031370386203406e-15 1;
	setAttr ".radi" 3.6;
createNode pointConstraint -n "grpL_KneeUp_CCZERO1_pointConstraint1" -p "grpL_KneeUp_CCZERO1";
	rename -uid "A43947C2-4FC2-5FE7-A4CD-91BDC7714B5F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Knee_CCW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "L_Hip_CCW1" -dv 1 -min 0 -at "double";
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
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" 38.425437955047492 5.3563035026147086 1.7708694090701531e-15 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode aimConstraint -n "grpL_KneeUp_CCZERO1_aimConstraint1" -p "grpL_KneeUp_CCZERO1";
	rename -uid "682B0790-45B8-616C-360A-20863E706707";
	addAttr -dcb 0 -ci true -sn "w0" -ln "L_Knee_CCW0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" -1 0 0 ;
	setAttr ".u" -type "double3" 0 0 0 ;
	setAttr ".o" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".rsrr" -type "double3" 89.999999999999986 0 89.999999999999986 ;
	setAttr -k on ".w0";
createNode transform -n "grpL_KneeDOWN_CCZERO2" -p "L_KneeFollowGRP";
	rename -uid "B3585940-4430-978C-3B6C-D39F57013A07";
createNode transform -n "L_KneeDOWN_CC" -p "grpL_KneeDOWN_CCZERO2";
	rename -uid "85C7E6A2-4881-1B18-81F3-C8BD4C9E07E3";
createNode nurbsCurve -n "L_KneeDOWN_CCShape" -p "L_KneeDOWN_CC";
	rename -uid "A0D47489-451C-1A4E-A1DC-FC8493CCCFFE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.919294936395389e-16 3.1344464995648984 -3.134446499564898
		1.6620250738737023e-32 4.4327767502175508 -2.7142929292443649e-16
		-1.919294936395389e-16 3.1344464995648975 3.134446499564898
		-2.7142929292443659e-16 2.2979592950099322e-16 4.4327767502175526
		-1.919294936395389e-16 -3.134446499564898 3.134446499564898
		-2.7189257911234355e-32 -4.4327767502175535 4.4403427878412899e-16
		1.919294936395389e-16 -3.1344464995648975 -3.134446499564898
		2.7142929292443659e-16 -6.044962003119836e-16 -4.4327767502175526
		1.919294936395389e-16 3.1344464995648984 -3.134446499564898
		1.6620250738737023e-32 4.4327767502175508 -2.7142929292443649e-16
		-1.919294936395389e-16 3.1344464995648975 3.134446499564898
		;
createNode joint -n "L_KneeDOWNController" -p "L_KneeDOWN_CC";
	rename -uid "D6FC2FFF-4207-DFB6-874F-FEB2EE1F57B6";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-16 1 0 0 -2.2204460492503131e-16 0 1 0
		 1 -2.2204460492503131e-16 2.2204460492503131e-16 0 38.425437955047492 -5.3563035026147121 -1.7708694090701547e-15 1;
	setAttr ".radi" 3.6;
createNode pointConstraint -n "grpL_KneeDOWN_CCZERO2_pointConstraint1" -p "grpL_KneeDOWN_CCZERO2";
	rename -uid "8CF5CDE6-4DDF-C9A3-D7E5-029CA6401A66";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Knee_CCW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "L_Ankle_CCW1" -dv 1 -min 0 -at "double";
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
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" 38.425437955047492 -5.3563035026147121 -3.1031370386203421e-15 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode aimConstraint -n "grpL_KneeDOWN_CCZERO2_aimConstraint1" -p "grpL_KneeDOWN_CCZERO2";
	rename -uid "EAC644A0-4A92-C9CE-01A4-5DAF1F9E8FB7";
	addAttr -dcb 0 -ci true -sn "w0" -ln "L_Knee_CCW0" -dv 1 -at "double";
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
	setAttr ".u" -type "double3" 0 0 0 ;
	setAttr ".o" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".rsrr" -type "double3" 89.999999999999986 0 89.999999999999986 ;
	setAttr -k on ".w0";
createNode transform -n "grpL_Knee_CCZERO" -p "L_KneeFollowGRP";
	rename -uid "027504AF-44D9-C10F-8139-FDBF5BDE276E";
	setAttr ".t" -type "double3" 38.425437955047492 -1.7763568394002505e-15 -7.8886090522101181e-31 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 89.999999999999986 ;
createNode transform -n "L_Knee_CC" -p "grpL_Knee_CCZERO";
	rename -uid "9DB1543A-4814-C2F0-7FD0-27B5AFE270A3";
createNode nurbsCurve -n "L_Knee_CCShape" -p "L_Knee_CC";
	rename -uid "361E0DDF-438F-F95C-E742-B89652D36503";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".tw" yes;
createNode joint -n "L_KneeController" -p "L_Knee_CC";
	rename -uid "B26A14CF-4833-4293-3177-45A9BEEEF255";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-16 1 0 0 -2.2204460492503131e-16 0 1 0
		 1 -2.2204460492503131e-16 2.2204460492503131e-16 0 38.425437955047492 -1.7763568394002505e-15 1.3322676295501867e-15 1;
	setAttr ".radi" 3.6;
createNode pointConstraint -n "KneeFollowGRP_pointConstraint1" -p "L_KneeFollowGRP";
	rename -uid "7A3600DC-4D0C-E12E-B485-388CBAE853BB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Ankle_CCW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "L_Hip_CCW1" -dv 1 -min 0 -at "double";
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
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" 0 0 1.3322676295501875e-15 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "grpL_Hip_CCZERO" -p "L_RibbonSystem";
	rename -uid "BAA76DE0-4AE0-A118-0DF5-7C851CB33C7F";
	setAttr ".t" -type "double3" 38.425437955047492 10.712607005229419 4.8740064476904957e-15 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 89.999999999999986 ;
createNode transform -n "L_Hip_CC" -p "grpL_Hip_CCZERO";
	rename -uid "513358A9-4183-2FA9-5825-ADB8C30F373C";
	setAttr ".t" -type "double3" 0 -7.8886090522101181e-31 0 ;
createNode nurbsCurve -n "L_Hip_CCShape" -p "L_Hip_CC";
	rename -uid "2F3428CC-46F2-C971-B339-4895DA119BB0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".tw" yes;
createNode joint -n "L_HipController" -p "L_Hip_CC";
	rename -uid "47C0D615-483C-1CF6-9CC8-C1BCF85A5BCA";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 -7.8886090522101181e-31 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-16 1 0 0 -2.2204460492503131e-16 0 1 0
		 1 -2.2204460492503131e-16 2.2204460492503131e-16 0 38.425437955047492 10.712607005229419 4.8740064476904941e-15 1;
	setAttr ".radi" 3.6;
createNode transform -n "grpL_Ankle_CCZERO" -p "L_RibbonSystem";
	rename -uid "41CA7E75-4C42-4724-3035-AFBE41A3286F";
	setAttr ".t" -type "double3" 38.425437955047492 -10.712607005229422 -4.8740064476904972e-15 ;
	setAttr ".r" -type "double3" 90 3.1805546814635168e-15 90.000000000000057 ;
createNode transform -n "L_Ankle_CC" -p "grpL_Ankle_CCZERO";
	rename -uid "E5F0EA90-4D02-EFB3-2852-6EB27E8CDC9A";
	setAttr ".t" -type "double3" 0 1.5777218104420236e-30 0 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000002 ;
createNode nurbsCurve -n "L_Ankle_CCShape" -p "L_Ankle_CC";
	rename -uid "F77CF362-4636-89C5-51D2-5186825CEBCF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".tw" yes;
createNode joint -n "L_AnkleController" -p "L_Ankle_CC";
	rename -uid "3BE7B2DB-4C78-A67F-EC5F-1CAF907E70A2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" -1.7763568394002505e-15 -1.5777218104420236e-30 7.1054273576010019e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -9.5416640443905487e-15 -1.2722218725854061e-14 3.1805546814635168e-15 ;
	setAttr ".bps" -type "matrix" -6.6613381477509422e-16 1.0000000000000002 5.5511151231257852e-17 0
		 -1.1102230246251568e-16 0 1.0000000000000002 0 1.0000000000000002 7.2164496600635195e-16 2.2204460492503136e-16 0
		 38.425437955047499 -10.712607005229424 -4.8740064476904957e-15 1;
	setAttr ".radi" 3.6;
createNode transform -n "L_hairSystem1Follicles" -p "L_RibbonLegs";
	rename -uid "126E96DD-4C6B-F41F-E7F6-569E0A1CF0FD";
createNode transform -n "L_nurbsPlane1Follicle5008" -p "L_hairSystem1Follicles";
	rename -uid "5C37107B-48C8-3840-1F44-7CB36FCF978B";
createNode follicle -n "L_nurbsPlane1FollicleShape5008" -p "L_nurbsPlane1Follicle5008";
	rename -uid "71D68174-407B-FE2C-2A25-7EB456DD1341";
	setAttr -k off ".v";
	setAttr ".pu" 0.5;
	setAttr ".pv" 0.083333333333333329;
	setAttr ".sim" 0;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode joint -n "L_BindJoint01" -p "L_nurbsPlane1Follicle5008";
	rename -uid "B0D0B47C-4805-0C1C-85E8-4789795515A4";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90 -9.5416640443905535e-15 90.000000000000028 ;
createNode transform -n "L_nurbsPlane1Follicle5025" -p "L_hairSystem1Follicles";
	rename -uid "88F9E133-461D-CED3-EEF2-C1885C00ABBE";
createNode follicle -n "L_nurbsPlane1FollicleShape5025" -p "L_nurbsPlane1Follicle5025";
	rename -uid "3442AA5E-40EB-EB68-3F7A-1CA4703211ED";
	setAttr -k off ".v";
	setAttr ".pu" 0.5;
	setAttr ".pv" 0.25;
	setAttr ".sim" 0;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode joint -n "L_BindJoint02" -p "L_nurbsPlane1Follicle5025";
	rename -uid "E5E0BA0A-4E31-1E5B-B855-08915199D4F4";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90 -2.8624992133171654e-14 90 ;
createNode transform -n "L_nurbsPlane1Follicle5041" -p "L_hairSystem1Follicles";
	rename -uid "343F39B4-4233-79B9-2FA7-C39C0F4DFF92";
createNode follicle -n "L_nurbsPlane1FollicleShape5041" -p "L_nurbsPlane1Follicle5041";
	rename -uid "9024CE58-49C2-C88A-2909-2BA7DECDF46A";
	setAttr -k off ".v";
	setAttr ".pu" 0.5;
	setAttr ".pv" 0.41666666666666669;
	setAttr ".sim" 0;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode joint -n "L_BindJoint03" -p "L_nurbsPlane1Follicle5041";
	rename -uid "F5783E5C-4528-D470-A67D-8FABE30FEE64";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90 -2.8624992133171654e-14 90 ;
createNode transform -n "L_nurbsPlane1Follicle5058" -p "L_hairSystem1Follicles";
	rename -uid "922EAE18-44D1-C9C5-6096-FFACB736BF84";
createNode follicle -n "L_nurbsPlane1FollicleShape5058" -p "L_nurbsPlane1Follicle5058";
	rename -uid "E335EE97-4595-EC34-1057-46A89C62A1FF";
	setAttr -k off ".v";
	setAttr ".pu" 0.5;
	setAttr ".pv" 0.58333333333333337;
	setAttr ".sim" 0;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode joint -n "L_BindJoint04" -p "L_nurbsPlane1Follicle5058";
	rename -uid "B5BA3517-4070-2C6B-7B64-64856A952799";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90 -2.8624992133171654e-14 90 ;
createNode transform -n "L_nurbsPlane1Follicle5074" -p "L_hairSystem1Follicles";
	rename -uid "DBBCD227-497E-AC25-8259-449E18D4DE6D";
createNode follicle -n "L_nurbsPlane1FollicleShape5074" -p "L_nurbsPlane1Follicle5074";
	rename -uid "5E43D299-4CB5-81B3-9BDD-0882BD987CE1";
	setAttr -k off ".v";
	setAttr ".pu" 0.5;
	setAttr ".pv" 0.75;
	setAttr ".sim" 0;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode joint -n "L_BindJoint05" -p "L_nurbsPlane1Follicle5074";
	rename -uid "FB4F191B-482A-FF4C-F43C-95B3860C79C1";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90 -2.8624992133171654e-14 90 ;
createNode transform -n "L_nurbsPlane1Follicle5091" -p "L_hairSystem1Follicles";
	rename -uid "E29F9845-495D-9872-F743-A3AE9DD29A3F";
createNode follicle -n "L_nurbsPlane1FollicleShape5091" -p "L_nurbsPlane1Follicle5091";
	rename -uid "56627CF5-4EF1-BB0C-65C5-9F81B72D86CE";
	setAttr -k off ".v";
	setAttr ".pu" 0.5;
	setAttr ".pv" 0.91666666666666663;
	setAttr ".sim" 0;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode joint -n "L_BindJoint06" -p "L_nurbsPlane1Follicle5091";
	rename -uid "3C3402E1-412F-E594-BFCE-F0AD92BC8E23";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90 -2.8624992133171654e-14 90 ;
createNode transform -n "L_nurbsPlane1" -p "L_RibbonLegs";
	rename -uid "811FE0F2-496F-4CF7-0F6A-9B9737929AF9";
	setAttr ".t" -type "double3" 38.425437955047492 0 0 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 90.000000000000028 0 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 4.5722218312141267 4.5722218312141267 25.710256812550607 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsSurface -n "L_nurbsPlaneShape1" -p "L_nurbsPlane1";
	rename -uid "AE884B6B-499E-46EA-9313-5F9E51612A7A";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode nurbsSurface -n "L_nurbsPlaneShape1Orig1" -p "L_nurbsPlane1";
	rename -uid "7FFD52FF-461F-123C-2DE5-63BB9FBB6876";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "FC241461-472B-9995-4080-E6A7F5B96C24";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "DB2CC223-4F00-26CA-B249-DFB1D9BF461A";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "4842597E-4C33-B3D9-3E51-948945A5FB07";
createNode displayLayerManager -n "layerManager";
	rename -uid "8463EF90-4B03-930C-B31B-D491E4B4EECF";
createNode displayLayer -n "defaultLayer";
	rename -uid "B43D664F-42B3-6EE9-C190-55B18BBA0E49";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "662CBEEF-4AB7-BC44-5C5C-1C8D0222618A";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "A9D7E57C-41E2-4313-2902-C0BF5480DD97";
	setAttr ".g" yes;
createNode makeNurbPlane -n "makeNurbPlane1";
	rename -uid "AD03D7D8-4426-5606-24E9-0EB0BC9E778B";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".v" 6;
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "45E5D948-41D0-C3E7-5A52-548C50A87ED8";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 4;
createNode makeNurbCircle -n "makeNurbCircle2";
	rename -uid "72DB1E16-42C0-C359-AFBF-0A9019C63884";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 4;
createNode makeNurbCircle -n "makeNurbCircle3";
	rename -uid "C69F337B-412B-264B-E32E-EF994B3F4461";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 4;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "F15AF8DD-45E1-A811-08FA-6F870E55FAD1";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 982\n            -height 836\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n"
		+ "            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n"
		+ "            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n"
		+ "                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n"
		+ "                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n"
		+ "                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n"
		+ "                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n"
		+ "                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 982\\n    -height 836\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 982\\n    -height 836\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "849A08B7-4476-76A0-CAD2-84B2FF2126F2";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode skinCluster -n "skinCluster1";
	rename -uid "80F6AFF8-4B95-8C4D-6CFF-0F8264A24C2D";
	setAttr -s 36 ".wl";
	setAttr ".wl[0:35].w"
		1 0 1
		5 0 0.97952398484520065 1 0.018205242320963332 2 0.0017478397834335821 
		3 0.00039158878118457499 4 0.00013134426921785914
		1 0 1
		1 1 1
		1 2 1
		1 3 1
		1 4 1
		5 0 0.00013134426921786088 1 0.00039158878118458003 2 0.0017478397834336053 
		3 0.018205242320963561 4 0.97952398484520042
		1 4 1
		1 0 1
		5 0 0.99906270885759996 1 0.00084833392843554779 2 6.9101726048093583e-05 
		3 1.491979656178592e-05 4 4.9356913546779878e-06
		1 0 1
		1 1 1
		1 2 1
		1 3 1
		1 4 1
		1 4 1
		1 4 1
		5 0 0.99050538454308323 1 0.0082058926573402163 2 0.00096309670712616295 
		3 0.00023995320715668677 4 8.5672885293813493e-05
		5 0 0.99906270885759996 1 0.00084833392843554779 2 6.9101726048093583e-05 
		3 1.491979656178592e-05 4 4.9356913546779878e-06
		1 0 1
		1 1 1
		1 2 1
		1 3 1
		1 4 1
		1 4 1
		1 4 1
		5 0 0.97088827662629518 1 0.024770453684047952 2 0.0032192174237823945 
		3 0.00082441017814007911 4 0.00029764208773442582
		5 0 0.97952398484520065 1 0.018205242320963332 2 0.0017478397834335821 
		3 0.00039158878118457499 4 0.00013134426921785914
		1 0 1
		1 1 1
		1 2 1
		1 3 1
		1 4 1
		1 4 1
		1 4 1;
	setAttr -s 5 ".pm";
	setAttr ".pm[0]" -type "matrix" -7.2164496600635165e-16 -2.2204460492503121e-16 0.99999999999999978 -0
		 0.99999999999999978 -5.5511151231257975e-17 6.6613381477509392e-16 0 -8.0118685686509001e-32 0.99999999999999978 1.1102230246251563e-16 -0
		 10.712607005229449 1.2811498489941991e-14 -38.425437955047478 1;
	setAttr ".pm[1]" -type "matrix" 2.2204460492503131e-16 -2.2204460492503131e-16 1 -0
		 1 4.9303806576313238e-32 -2.2204460492503131e-16 0 4.9303806576313238e-32 1 2.2204460492503131e-16 -0
		 5.3563035026147032 1.0303030598869978e-14 -38.425437955047492 1;
	setAttr ".pm[2]" -type "matrix" 2.2204460492503131e-16 -2.2204460492503131e-16 1 -0
		 1 4.9303806576313238e-32 -2.2204460492503131e-16 0 4.9303806576313238e-32 1 2.2204460492503131e-16 -0
		 -6.7558043503995729e-15 7.1998935602496371e-15 -38.425437955047492 1;
	setAttr ".pm[3]" -type "matrix" 2.2204460492503131e-16 -2.2204460492503131e-16 1 -0
		 1 4.9303806576313238e-32 -2.2204460492503131e-16 0 4.9303806576313238e-32 1 2.2204460492503131e-16 -0
		 -5.3563035026147174 5.4290241511794828e-15 -38.425437955047492 1;
	setAttr ".pm[4]" -type "matrix" 2.2204460492503131e-16 -2.2204460492503131e-16 1 -0
		 1 4.9303806576313238e-32 -2.2204460492503131e-16 0 4.9303806576313238e-32 1 2.2204460492503131e-16 -0
		 -10.712607005229428 3.6581547421093285e-15 -38.425437955047492 1;
	setAttr ".gm" -type "matrix" 4.5722218312141267 0 0 0 0 -2.0304743802830879e-15 4.5722218312141267 0
		 0 -25.710256812550607 -1.1417647632927789e-14 0 38.425437955047492 0 0 1;
	setAttr -s 5 ".ma";
	setAttr -s 5 ".dpf[0:4]"  4 4 4 4 4;
	setAttr -s 5 ".lw";
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 5 ".ifcl";
	setAttr -s 5 ".ifcl";
createNode tweak -n "tweak1";
	rename -uid "EE1978A9-4103-17F7-8B6A-C29A19CBDD7D";
createNode objectSet -n "skinCluster1Set";
	rename -uid "12DB4E2C-4C30-3FE6-69ED-E49AE12DBB51";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "69E2B16D-4EF7-DE29-D30A-9B82F9873232";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "98A33EB1-4426-E005-B306-D69E0B8551A9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*][*]";
createNode objectSet -n "tweakSet1";
	rename -uid "6DA0EC5F-43FA-2EF8-845D-6687C31F3A86";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	rename -uid "B650FC78-49BE-F4ED-914E-50A784149EE8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "A230486A-456C-D82B-F1C5-9DB1E9388064";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*][*]";
createNode dagPose -n "bindPose1";
	rename -uid "9B1189CB-41A3-8228-9E11-81AED1CCDD45";
	setAttr -s 16 ".wm";
	setAttr ".wm[0]" -type "matrix" -6.6613381477509392e-16 0.99999999999999989 5.5511151231257827e-17 0
		 -1.1102230246251565e-16 0 1 0 1 7.2164496600635175e-16 2.2204460492503131e-16 0 38.425437955047492 -10.712607005229422 -4.8740064476904972e-15 1;
	setAttr ".wm[1]" -type "matrix" -6.6613381477509422e-16 1.0000000000000002 5.5511151231257852e-17 0
		 -1.1102230246251568e-16 0 1.0000000000000002 0 1.0000000000000002 7.2164496600635195e-16 2.2204460492503136e-16 0
		 38.425437955047492 -10.712607005229422 -4.8740064476904957e-15 1;
	setAttr ".wm[3]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 1.3322676295501875e-15 1;
	setAttr ".wm[4]" -type "matrix" 2.2204460492503131e-16 1 0 0 -2.2204460492503131e-16 0 1 0
		 1 -2.2204460492503131e-16 2.2204460492503131e-16 0 38.425437955047492 -5.3563035026147121 -1.7708694090701547e-15 1;
	setAttr ".wm[5]" -type "matrix" 2.2204460492503131e-16 1 0 0 -2.2204460492503131e-16 0 1 0
		 1 -2.2204460492503131e-16 2.2204460492503131e-16 0 38.425437955047492 -5.3563035026147121 -1.7708694090701547e-15 1;
	setAttr ".wm[7]" -type "matrix" 2.2204460492503131e-16 1 0 0 -2.2204460492503131e-16 0 1 0
		 1 -2.2204460492503131e-16 2.2204460492503131e-16 0 38.425437955047492 -1.7763568394002505e-15 1.3322676295501867e-15 1;
	setAttr ".wm[8]" -type "matrix" 2.2204460492503131e-16 1 0 0 -2.2204460492503131e-16 0 1 0
		 1 -2.2204460492503131e-16 2.2204460492503131e-16 0 38.425437955047492 -1.7763568394002505e-15 1.3322676295501867e-15 1;
	setAttr ".wm[10]" -type "matrix" 2.2204460492503131e-16 1 0 0 -2.2204460492503131e-16 0 1 0
		 1 -2.2204460492503131e-16 2.2204460492503131e-16 0 38.425437955047492 5.3563035026147086 3.1031370386203406e-15 1;
	setAttr ".wm[11]" -type "matrix" 2.2204460492503131e-16 1 0 0 -2.2204460492503131e-16 0 1 0
		 1 -2.2204460492503131e-16 2.2204460492503131e-16 0 38.425437955047492 5.3563035026147086 3.1031370386203406e-15 1;
	setAttr ".wm[13]" -type "matrix" 2.2204460492503131e-16 1 0 0 -2.2204460492503131e-16 0 1 0
		 1 -2.2204460492503131e-16 2.2204460492503131e-16 0 38.425437955047492 10.712607005229419 4.8740064476904957e-15 1;
	setAttr ".wm[14]" -type "matrix" 2.2204460492503131e-16 1 0 0 -2.2204460492503131e-16 0 1 0
		 1 -2.2204460492503131e-16 2.2204460492503131e-16 0 38.425437955047492 10.712607005229419 4.8740064476904949e-15 1;
	setAttr -s 16 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 1.5707963267948966 5.5511151231257827e-17
		 1.5707963267948974 0 38.425437955047492 -10.712607005229422 -4.8740064476904972e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1.0000000000000004 1.0000000000000002 1.0000000000000002 0
		 0 0 0 0 1.5777218104420236e-30 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.7763568394002505e-15
		 -1.5777218104420236e-30 7.1054273576010019e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 1.3322676295501875e-15 0
		 0 0 38.425437955047492 -1.7763568394002505e-15 -1.3322676295501878e-15 0 0 0 38.425437955047492
		 -1.7763568394002505e-15 -1.3322676295501878e-15 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 1.5707963267948963 0 1.5707963267948963 0 38.425437955047492
		 -5.3563035026147121 -3.1031370386203421e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 1.5707963267948963 0 1.5707963267948963 0 38.425437955047492
		 -1.7763568394002505e-15 -7.8886090522101181e-31 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 1.5707963267948963 0 1.5707963267948963 0 38.425437955047492
		 5.3563035026147086 1.7708694090701531e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 1.5707963267948963 0 1.5707963267948963 0 38.425437955047492
		 10.712607005229419 4.8740064476904957e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -7.8886090522101181e-31
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -7.8886090522101181e-31
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 16 ".m";
	setAttr -s 16 ".p";
	setAttr -s 16 ".g[0:15]" yes yes no yes yes yes no yes yes no yes yes 
		no yes yes no;
	setAttr ".bp" yes;
createNode renderLayerManager -n "renderLayerManager1";
	rename -uid "A49F79C5-4E50-5A85-BA74-92B81431B1A3";
createNode renderLayer -n "defaultRenderLayer1";
	rename -uid "16628D3A-44BD-C4E7-06C7-F9B38DBE5AD2";
	setAttr ".g" yes;
createNode makeNurbPlane -n "makeNurbPlane2";
	rename -uid "115BFDD6-48FC-A6E9-0D92-51B4F3B80062";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".v" 6;
createNode makeNurbCircle -n "makeNurbCircle4";
	rename -uid "5F333242-4F00-4A9F-E318-068C81513841";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 4;
createNode makeNurbCircle -n "makeNurbCircle5";
	rename -uid "5F4343E4-4D05-148C-F7AB-ECB007953BB4";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 4;
createNode makeNurbCircle -n "makeNurbCircle6";
	rename -uid "62A81338-425E-460A-BB2D-4F8287D79D9F";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 4;
createNode skinCluster -n "skinCluster2";
	rename -uid "6D3B9310-479E-5115-DD5D-419733E3BFCF";
	setAttr -s 36 ".wl";
	setAttr ".wl[0:35].w"
		1 0 1
		5 0 0.97952398484520065 1 0.018205242320963332 2 0.0017478397834335821 
		3 0.00039158878118457499 4 0.00013134426921785914
		1 0 1
		1 1 1
		1 2 1
		1 3 1
		1 4 1
		5 0 0.00013134426921786088 1 0.00039158878118458003 2 0.0017478397834336053 
		3 0.018205242320963561 4 0.97952398484520042
		1 4 1
		1 0 1
		5 0 0.99906270885759996 1 0.00084833392843554779 2 6.9101726048093583e-05 
		3 1.491979656178592e-05 4 4.9356913546779878e-06
		1 0 1
		1 1 1
		1 2 1
		1 3 1
		1 4 1
		1 4 1
		1 4 1
		5 0 0.99050538454308323 1 0.0082058926573402163 2 0.00096309670712616295 
		3 0.00023995320715668677 4 8.5672885293813493e-05
		5 0 0.99906270885759996 1 0.00084833392843554779 2 6.9101726048093583e-05 
		3 1.491979656178592e-05 4 4.9356913546779878e-06
		1 0 1
		1 1 1
		1 2 1
		1 3 1
		1 4 1
		1 4 1
		1 4 1
		5 0 0.97088827662629518 1 0.024770453684047952 2 0.0032192174237823945 
		3 0.00082441017814007911 4 0.00029764208773442582
		5 0 0.97952398484520065 1 0.018205242320963332 2 0.0017478397834335821 
		3 0.00039158878118457499 4 0.00013134426921785914
		1 0 1
		1 1 1
		1 2 1
		1 3 1
		1 4 1
		1 4 1
		1 4 1;
	setAttr -s 5 ".pm";
	setAttr ".pm[0]" -type "matrix" -7.2164496600635165e-16 -2.2204460492503121e-16 0.99999999999999978 0
		 0.99999999999999978 -5.5511151231257975e-17 6.6613381477509392e-16 0 -8.0118685686509001e-32 0.99999999999999978 1.1102230246251563e-16 0
		 10.712607005229449 1.2811498489941991e-14 -38.425437955047478 1;
	setAttr ".pm[1]" -type "matrix" 2.2204460492503131e-16 -2.2204460492503131e-16 1 0
		 1 4.9303806576313238e-32 -2.2204460492503131e-16 0 4.9303806576313238e-32 1 2.2204460492503131e-16 0
		 5.3563035026147032 1.0303030598869978e-14 -38.425437955047492 1;
	setAttr ".pm[2]" -type "matrix" 2.2204460492503131e-16 -2.2204460492503131e-16 1 0
		 1 4.9303806576313238e-32 -2.2204460492503131e-16 0 4.9303806576313238e-32 1 2.2204460492503131e-16 0
		 -6.7558043503995729e-15 7.1998935602496371e-15 -38.425437955047492 1;
	setAttr ".pm[3]" -type "matrix" 2.2204460492503131e-16 -2.2204460492503131e-16 1 0
		 1 4.9303806576313238e-32 -2.2204460492503131e-16 0 4.9303806576313238e-32 1 2.2204460492503131e-16 0
		 -5.3563035026147174 5.4290241511794828e-15 -38.425437955047492 1;
	setAttr ".pm[4]" -type "matrix" 2.2204460492503131e-16 -2.2204460492503131e-16 1 0
		 1 4.9303806576313238e-32 -2.2204460492503131e-16 0 4.9303806576313238e-32 1 2.2204460492503131e-16 0
		 -10.712607005229428 3.6581547421093285e-15 -38.425437955047492 1;
	setAttr ".gm" -type "matrix" 4.5722218312141267 0 0 0 0 -2.0304743802830879e-15 4.5722218312141267 0
		 0 -25.710256812550607 -1.1417647632927789e-14 0 38.425437955047492 0 0 1;
	setAttr -s 5 ".ma";
	setAttr -s 5 ".dpf[0:4]"  4 4 4 4 4;
	setAttr -s 5 ".lw";
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 5 ".ifcl";
	setAttr -s 5 ".ifcl";
createNode tweak -n "tweak2";
	rename -uid "BC240559-482D-D121-B7E3-BFA07CC76525";
createNode objectSet -n "skinCluster1Set1";
	rename -uid "11E7DFA0-4358-1117-8A86-60AE5C3F28BA";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId1";
	rename -uid "68159C43-45A9-F7E6-EF39-4D8366F9165B";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts1";
	rename -uid "FC2EEE82-4270-1A84-FA82-C7B3537E68A6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*][*]";
createNode objectSet -n "tweakSet2";
	rename -uid "0259BE5B-4E54-C26A-58D3-778C7607A8C9";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId3";
	rename -uid "320936A0-4893-7F7E-F131-F4BA8DF55374";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "E9A7A298-41BF-8D40-290F-A0B8308E0619";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*][*]";
createNode dagPose -n "bindPose2";
	rename -uid "35D9F0FB-48A3-58EB-ACE4-1FA03567A45E";
	setAttr -s 16 ".wm";
	setAttr ".wm[0]" -type "matrix" -6.6613381477509392e-16 0.99999999999999989 5.5511151231257827e-17 0
		 -1.1102230246251565e-16 0 1 0 1 7.2164496600635175e-16 2.2204460492503131e-16 0 38.425437955047492 -10.712607005229422 -4.8740064476904972e-15 1;
	setAttr ".wm[1]" -type "matrix" -6.6613381477509422e-16 1.0000000000000002 5.5511151231257852e-17 0
		 -1.1102230246251568e-16 0 1.0000000000000002 0 1.0000000000000002 7.2164496600635195e-16 2.2204460492503136e-16 0
		 38.425437955047492 -10.712607005229422 -4.8740064476904957e-15 1;
	setAttr ".wm[3]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 1.3322676295501875e-15 1;
	setAttr ".wm[4]" -type "matrix" 2.2204460492503131e-16 1 0 0 -2.2204460492503131e-16 0 1 0
		 1 -2.2204460492503131e-16 2.2204460492503131e-16 0 38.425437955047492 -5.3563035026147121 -1.7708694090701547e-15 1;
	setAttr ".wm[5]" -type "matrix" 2.2204460492503131e-16 1 0 0 -2.2204460492503131e-16 0 1 0
		 1 -2.2204460492503131e-16 2.2204460492503131e-16 0 38.425437955047492 -5.3563035026147121 -1.7708694090701547e-15 1;
	setAttr ".wm[7]" -type "matrix" 2.2204460492503131e-16 1 0 0 -2.2204460492503131e-16 0 1 0
		 1 -2.2204460492503131e-16 2.2204460492503131e-16 0 38.425437955047492 -1.7763568394002505e-15 1.3322676295501867e-15 1;
	setAttr ".wm[8]" -type "matrix" 2.2204460492503131e-16 1 0 0 -2.2204460492503131e-16 0 1 0
		 1 -2.2204460492503131e-16 2.2204460492503131e-16 0 38.425437955047492 -1.7763568394002505e-15 1.3322676295501867e-15 1;
	setAttr ".wm[10]" -type "matrix" 2.2204460492503131e-16 1 0 0 -2.2204460492503131e-16 0 1 0
		 1 -2.2204460492503131e-16 2.2204460492503131e-16 0 38.425437955047492 5.3563035026147086 3.1031370386203406e-15 1;
	setAttr ".wm[11]" -type "matrix" 2.2204460492503131e-16 1 0 0 -2.2204460492503131e-16 0 1 0
		 1 -2.2204460492503131e-16 2.2204460492503131e-16 0 38.425437955047492 5.3563035026147086 3.1031370386203406e-15 1;
	setAttr ".wm[13]" -type "matrix" 2.2204460492503131e-16 1 0 0 -2.2204460492503131e-16 0 1 0
		 1 -2.2204460492503131e-16 2.2204460492503131e-16 0 38.425437955047492 10.712607005229419 4.8740064476904957e-15 1;
	setAttr ".wm[14]" -type "matrix" 2.2204460492503131e-16 1 0 0 -2.2204460492503131e-16 0 1 0
		 1 -2.2204460492503131e-16 2.2204460492503131e-16 0 38.425437955047492 10.712607005229419 4.8740064476904949e-15 1;
	setAttr -s 16 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 1.5707963267948966 5.5511151231257827e-17
		 1.5707963267948974 0 38.425437955047492 -10.712607005229422 -4.8740064476904972e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1.0000000000000004 1.0000000000000002 1.0000000000000002 0
		 0 0 0 0 1.5777218104420236e-30 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.7763568394002505e-15
		 -1.5777218104420236e-30 7.1054273576010019e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 1.3322676295501875e-15 0
		 0 0 38.425437955047492 -1.7763568394002505e-15 -1.3322676295501878e-15 0 0 0 38.425437955047492
		 -1.7763568394002505e-15 -1.3322676295501878e-15 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 1.5707963267948963 0 1.5707963267948963 0 38.425437955047492
		 -5.3563035026147121 -3.1031370386203421e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 1.5707963267948963 0 1.5707963267948963 0 38.425437955047492
		 -1.7763568394002505e-15 -7.8886090522101181e-31 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 1.5707963267948963 0 1.5707963267948963 0 38.425437955047492
		 5.3563035026147086 1.7708694090701531e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 1.5707963267948963 0 1.5707963267948963 0 38.425437955047492
		 10.712607005229419 4.8740064476904957e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -7.8886090522101181e-31
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -7.8886090522101181e-31
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 16 ".m";
	setAttr -s 16 ".p";
	setAttr -s 16 ".g[0:15]" yes yes no yes yes yes no yes yes no yes yes 
		no yes yes no;
	setAttr ".bp" yes;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".o" 1;
	setAttr -av ".unw" 1;
	setAttr -k on ".etw";
	setAttr -k on ".tps";
	setAttr -k on ".tms";
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
select -ne :renderPartition;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :initialShadingGroup;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".dsm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr -k on ".clip";
	setAttr -k on ".edm";
	setAttr -k on ".edl";
	setAttr ".ren" -type "string" "arnold";
	setAttr -av -k on ".esr";
	setAttr -k on ".ors";
	setAttr -k on ".outf";
	setAttr -k on ".gama";
	setAttr -cb on ".ar";
	setAttr -av -k on ".bfs";
	setAttr -cb on ".me";
	setAttr -cb on ".se";
	setAttr -k on ".be";
	setAttr -k on ".fec";
	setAttr -k on ".ofc";
	setAttr -cb on ".umfn";
	setAttr -cb on ".ufe";
	setAttr -k on ".comp";
	setAttr -k on ".cth";
	setAttr -k on ".soll";
	setAttr -k on ".rd";
	setAttr -k on ".lp";
	setAttr -k on ".sp";
	setAttr -k on ".shs";
	setAttr -k on ".lpr";
	setAttr -k on ".mm";
	setAttr -k on ".npu";
	setAttr -k on ".itf";
	setAttr -k on ".shp";
	setAttr -k on ".uf";
	setAttr -k on ".oi";
	setAttr -k on ".rut";
	setAttr -k on ".mbf";
	setAttr -k on ".afp";
	setAttr -k on ".pfb";
	setAttr -av -k on ".bll";
	setAttr -k on ".bls";
	setAttr -k on ".smv";
	setAttr -k on ".ubc";
	setAttr -k on ".mbc";
	setAttr -k on ".udbx";
	setAttr -k on ".smc";
	setAttr -k on ".kmv";
	setAttr -k on ".rlen";
	setAttr -av -k on ".frts";
	setAttr -k on ".tlwd";
	setAttr -k on ".tlht";
	setAttr -k on ".jfc";
select -ne :defaultResolution;
	setAttr -av -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av ".w";
	setAttr -av ".h";
	setAttr -av ".pa" 1;
	setAttr -av -k on ".al";
	setAttr -av ".dar";
	setAttr -av -k on ".ldar";
	setAttr -k on ".dpi";
	setAttr -av -k on ".off";
	setAttr -av -k on ".fld";
	setAttr -av -k on ".zsl";
	setAttr -k on ".isu";
	setAttr -k on ".pdu";
select -ne :hardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".ctrs" 256;
	setAttr -av ".btrs" 512;
	setAttr -k off ".fbfm";
	setAttr -k off -cb on ".ehql";
	setAttr -k off -cb on ".eams";
	setAttr -k off -cb on ".eeaa";
	setAttr -k off -cb on ".engm";
	setAttr -k off -cb on ".mes";
	setAttr -k off -cb on ".emb";
	setAttr -av -k off -cb on ".mbbf";
	setAttr -k off -cb on ".mbs";
	setAttr -k off -cb on ".trm";
	setAttr -k off -cb on ".tshc";
	setAttr -k off ".enpt";
	setAttr -k off -cb on ".clmt";
	setAttr -k off -cb on ".tcov";
	setAttr -k off -cb on ".lith";
	setAttr -k off -cb on ".sobc";
	setAttr -k off -cb on ".cuth";
	setAttr -k off -cb on ".hgcd";
	setAttr -k off -cb on ".hgci";
	setAttr -k off -cb on ".mgcs";
	setAttr -k off -cb on ".twa";
	setAttr -k off -cb on ".twz";
	setAttr -cb on ".hwcc";
	setAttr -cb on ".hwdp";
	setAttr -cb on ".hwql";
	setAttr -k on ".hwfr";
	setAttr -k on ".soll";
	setAttr -k on ".sosl";
	setAttr -k on ".bswa";
	setAttr -k on ".shml";
	setAttr -k on ".hwel";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "|R_RibbonLegs|R_RibbonSystem|R_KneeFollowGRP|KneeFollowGRP_pointConstraint1.ctx" "R_KneeFollowGRP.tx"
		;
connectAttr "|R_RibbonLegs|R_RibbonSystem|R_KneeFollowGRP|KneeFollowGRP_pointConstraint1.cty" "R_KneeFollowGRP.ty"
		;
connectAttr "|R_RibbonLegs|R_RibbonSystem|R_KneeFollowGRP|KneeFollowGRP_pointConstraint1.ctz" "R_KneeFollowGRP.tz"
		;
connectAttr "grpR_KneeUp_CCZERO1_pointConstraint1.ctx" "grpR_KneeUp_CCZERO1.tx";
connectAttr "grpR_KneeUp_CCZERO1_pointConstraint1.cty" "grpR_KneeUp_CCZERO1.ty";
connectAttr "grpR_KneeUp_CCZERO1_pointConstraint1.ctz" "grpR_KneeUp_CCZERO1.tz";
connectAttr "grpR_KneeUp_CCZERO1_aimConstraint1.crx" "grpR_KneeUp_CCZERO1.rx";
connectAttr "grpR_KneeUp_CCZERO1_aimConstraint1.cry" "grpR_KneeUp_CCZERO1.ry";
connectAttr "grpR_KneeUp_CCZERO1_aimConstraint1.crz" "grpR_KneeUp_CCZERO1.rz";
connectAttr "grpR_KneeUp_CCZERO1.pim" "grpR_KneeUp_CCZERO1_pointConstraint1.cpim"
		;
connectAttr "grpR_KneeUp_CCZERO1.rp" "grpR_KneeUp_CCZERO1_pointConstraint1.crp";
connectAttr "grpR_KneeUp_CCZERO1.rpt" "grpR_KneeUp_CCZERO1_pointConstraint1.crt"
		;
connectAttr "R_Knee_CC.t" "grpR_KneeUp_CCZERO1_pointConstraint1.tg[0].tt";
connectAttr "R_Knee_CC.rp" "grpR_KneeUp_CCZERO1_pointConstraint1.tg[0].trp";
connectAttr "R_Knee_CC.rpt" "grpR_KneeUp_CCZERO1_pointConstraint1.tg[0].trt";
connectAttr "R_Knee_CC.pm" "grpR_KneeUp_CCZERO1_pointConstraint1.tg[0].tpm";
connectAttr "grpR_KneeUp_CCZERO1_pointConstraint1.w0" "grpR_KneeUp_CCZERO1_pointConstraint1.tg[0].tw"
		;
connectAttr "R_Hip_CC.t" "grpR_KneeUp_CCZERO1_pointConstraint1.tg[1].tt";
connectAttr "R_Hip_CC.rp" "grpR_KneeUp_CCZERO1_pointConstraint1.tg[1].trp";
connectAttr "R_Hip_CC.rpt" "grpR_KneeUp_CCZERO1_pointConstraint1.tg[1].trt";
connectAttr "R_Hip_CC.pm" "grpR_KneeUp_CCZERO1_pointConstraint1.tg[1].tpm";
connectAttr "grpR_KneeUp_CCZERO1_pointConstraint1.w1" "grpR_KneeUp_CCZERO1_pointConstraint1.tg[1].tw"
		;
connectAttr "grpR_KneeUp_CCZERO1.pim" "grpR_KneeUp_CCZERO1_aimConstraint1.cpim";
connectAttr "grpR_KneeUp_CCZERO1.t" "grpR_KneeUp_CCZERO1_aimConstraint1.ct";
connectAttr "grpR_KneeUp_CCZERO1.rp" "grpR_KneeUp_CCZERO1_aimConstraint1.crp";
connectAttr "grpR_KneeUp_CCZERO1.rpt" "grpR_KneeUp_CCZERO1_aimConstraint1.crt";
connectAttr "grpR_KneeUp_CCZERO1.ro" "grpR_KneeUp_CCZERO1_aimConstraint1.cro";
connectAttr "R_Knee_CC.t" "grpR_KneeUp_CCZERO1_aimConstraint1.tg[0].tt";
connectAttr "R_Knee_CC.rp" "grpR_KneeUp_CCZERO1_aimConstraint1.tg[0].trp";
connectAttr "R_Knee_CC.rpt" "grpR_KneeUp_CCZERO1_aimConstraint1.tg[0].trt";
connectAttr "R_Knee_CC.pm" "grpR_KneeUp_CCZERO1_aimConstraint1.tg[0].tpm";
connectAttr "grpR_KneeUp_CCZERO1_aimConstraint1.w0" "grpR_KneeUp_CCZERO1_aimConstraint1.tg[0].tw"
		;
connectAttr "grpR_KneeDOWN_CCZERO2_pointConstraint1.ctx" "grpR_KneeDOWN_CCZERO2.tx"
		;
connectAttr "grpR_KneeDOWN_CCZERO2_pointConstraint1.cty" "grpR_KneeDOWN_CCZERO2.ty"
		;
connectAttr "grpR_KneeDOWN_CCZERO2_pointConstraint1.ctz" "grpR_KneeDOWN_CCZERO2.tz"
		;
connectAttr "grpR_KneeDOWN_CCZERO2_aimConstraint1.crx" "grpR_KneeDOWN_CCZERO2.rx"
		;
connectAttr "grpR_KneeDOWN_CCZERO2_aimConstraint1.cry" "grpR_KneeDOWN_CCZERO2.ry"
		;
connectAttr "grpR_KneeDOWN_CCZERO2_aimConstraint1.crz" "grpR_KneeDOWN_CCZERO2.rz"
		;
connectAttr "grpR_KneeDOWN_CCZERO2.pim" "grpR_KneeDOWN_CCZERO2_pointConstraint1.cpim"
		;
connectAttr "grpR_KneeDOWN_CCZERO2.rp" "grpR_KneeDOWN_CCZERO2_pointConstraint1.crp"
		;
connectAttr "grpR_KneeDOWN_CCZERO2.rpt" "grpR_KneeDOWN_CCZERO2_pointConstraint1.crt"
		;
connectAttr "R_Knee_CC.t" "grpR_KneeDOWN_CCZERO2_pointConstraint1.tg[0].tt";
connectAttr "R_Knee_CC.rp" "grpR_KneeDOWN_CCZERO2_pointConstraint1.tg[0].trp";
connectAttr "R_Knee_CC.rpt" "grpR_KneeDOWN_CCZERO2_pointConstraint1.tg[0].trt";
connectAttr "R_Knee_CC.pm" "grpR_KneeDOWN_CCZERO2_pointConstraint1.tg[0].tpm";
connectAttr "grpR_KneeDOWN_CCZERO2_pointConstraint1.w0" "grpR_KneeDOWN_CCZERO2_pointConstraint1.tg[0].tw"
		;
connectAttr "R_Ankle_CC.t" "grpR_KneeDOWN_CCZERO2_pointConstraint1.tg[1].tt";
connectAttr "R_Ankle_CC.rp" "grpR_KneeDOWN_CCZERO2_pointConstraint1.tg[1].trp";
connectAttr "R_Ankle_CC.rpt" "grpR_KneeDOWN_CCZERO2_pointConstraint1.tg[1].trt";
connectAttr "R_Ankle_CC.pm" "grpR_KneeDOWN_CCZERO2_pointConstraint1.tg[1].tpm";
connectAttr "grpR_KneeDOWN_CCZERO2_pointConstraint1.w1" "grpR_KneeDOWN_CCZERO2_pointConstraint1.tg[1].tw"
		;
connectAttr "grpR_KneeDOWN_CCZERO2.pim" "grpR_KneeDOWN_CCZERO2_aimConstraint1.cpim"
		;
connectAttr "grpR_KneeDOWN_CCZERO2.t" "grpR_KneeDOWN_CCZERO2_aimConstraint1.ct";
connectAttr "grpR_KneeDOWN_CCZERO2.rp" "grpR_KneeDOWN_CCZERO2_aimConstraint1.crp"
		;
connectAttr "grpR_KneeDOWN_CCZERO2.rpt" "grpR_KneeDOWN_CCZERO2_aimConstraint1.crt"
		;
connectAttr "grpR_KneeDOWN_CCZERO2.ro" "grpR_KneeDOWN_CCZERO2_aimConstraint1.cro"
		;
connectAttr "R_Knee_CC.t" "grpR_KneeDOWN_CCZERO2_aimConstraint1.tg[0].tt";
connectAttr "R_Knee_CC.rp" "grpR_KneeDOWN_CCZERO2_aimConstraint1.tg[0].trp";
connectAttr "R_Knee_CC.rpt" "grpR_KneeDOWN_CCZERO2_aimConstraint1.tg[0].trt";
connectAttr "R_Knee_CC.pm" "grpR_KneeDOWN_CCZERO2_aimConstraint1.tg[0].tpm";
connectAttr "grpR_KneeDOWN_CCZERO2_aimConstraint1.w0" "grpR_KneeDOWN_CCZERO2_aimConstraint1.tg[0].tw"
		;
connectAttr "makeNurbCircle2.oc" "R_Knee_CCShape.cr";
connectAttr "R_KneeFollowGRP.pim" "|R_RibbonLegs|R_RibbonSystem|R_KneeFollowGRP|KneeFollowGRP_pointConstraint1.cpim"
		;
connectAttr "R_KneeFollowGRP.rp" "|R_RibbonLegs|R_RibbonSystem|R_KneeFollowGRP|KneeFollowGRP_pointConstraint1.crp"
		;
connectAttr "R_KneeFollowGRP.rpt" "|R_RibbonLegs|R_RibbonSystem|R_KneeFollowGRP|KneeFollowGRP_pointConstraint1.crt"
		;
connectAttr "R_Ankle_CC.t" "|R_RibbonLegs|R_RibbonSystem|R_KneeFollowGRP|KneeFollowGRP_pointConstraint1.tg[0].tt"
		;
connectAttr "R_Ankle_CC.rp" "|R_RibbonLegs|R_RibbonSystem|R_KneeFollowGRP|KneeFollowGRP_pointConstraint1.tg[0].trp"
		;
connectAttr "R_Ankle_CC.rpt" "|R_RibbonLegs|R_RibbonSystem|R_KneeFollowGRP|KneeFollowGRP_pointConstraint1.tg[0].trt"
		;
connectAttr "R_Ankle_CC.pm" "|R_RibbonLegs|R_RibbonSystem|R_KneeFollowGRP|KneeFollowGRP_pointConstraint1.tg[0].tpm"
		;
connectAttr "|R_RibbonLegs|R_RibbonSystem|R_KneeFollowGRP|KneeFollowGRP_pointConstraint1.w0" "|R_RibbonLegs|R_RibbonSystem|R_KneeFollowGRP|KneeFollowGRP_pointConstraint1.tg[0].tw"
		;
connectAttr "R_Hip_CC.t" "|R_RibbonLegs|R_RibbonSystem|R_KneeFollowGRP|KneeFollowGRP_pointConstraint1.tg[1].tt"
		;
connectAttr "R_Hip_CC.rp" "|R_RibbonLegs|R_RibbonSystem|R_KneeFollowGRP|KneeFollowGRP_pointConstraint1.tg[1].trp"
		;
connectAttr "R_Hip_CC.rpt" "|R_RibbonLegs|R_RibbonSystem|R_KneeFollowGRP|KneeFollowGRP_pointConstraint1.tg[1].trt"
		;
connectAttr "R_Hip_CC.pm" "|R_RibbonLegs|R_RibbonSystem|R_KneeFollowGRP|KneeFollowGRP_pointConstraint1.tg[1].tpm"
		;
connectAttr "|R_RibbonLegs|R_RibbonSystem|R_KneeFollowGRP|KneeFollowGRP_pointConstraint1.w1" "|R_RibbonLegs|R_RibbonSystem|R_KneeFollowGRP|KneeFollowGRP_pointConstraint1.tg[1].tw"
		;
connectAttr "makeNurbCircle3.oc" "R_Hip_CCShape.cr";
connectAttr "makeNurbCircle1.oc" "R_Ankle_CCShape.cr";
connectAttr "R_nurbsPlane1FollicleShape5008.ot" "R_nurbsPlane1Follicle5008.t" -l
		 on;
connectAttr "R_nurbsPlane1FollicleShape5008.or" "R_nurbsPlane1Follicle5008.r" -l
		 on;
connectAttr "R_nurbsPlaneShape1.wm" "R_nurbsPlane1FollicleShape5008.iwm";
connectAttr "R_nurbsPlaneShape1.l" "R_nurbsPlane1FollicleShape5008.is";
connectAttr "R_nurbsPlane1FollicleShape5025.ot" "R_nurbsPlane1Follicle5025.t" -l
		 on;
connectAttr "R_nurbsPlane1FollicleShape5025.or" "R_nurbsPlane1Follicle5025.r" -l
		 on;
connectAttr "R_nurbsPlaneShape1.wm" "R_nurbsPlane1FollicleShape5025.iwm";
connectAttr "R_nurbsPlaneShape1.l" "R_nurbsPlane1FollicleShape5025.is";
connectAttr "R_nurbsPlane1FollicleShape5041.ot" "R_nurbsPlane1Follicle5041.t" -l
		 on;
connectAttr "R_nurbsPlane1FollicleShape5041.or" "R_nurbsPlane1Follicle5041.r" -l
		 on;
connectAttr "R_nurbsPlaneShape1.wm" "R_nurbsPlane1FollicleShape5041.iwm";
connectAttr "R_nurbsPlaneShape1.l" "R_nurbsPlane1FollicleShape5041.is";
connectAttr "R_nurbsPlane1FollicleShape5058.ot" "R_nurbsPlane1Follicle5058.t" -l
		 on;
connectAttr "R_nurbsPlane1FollicleShape5058.or" "R_nurbsPlane1Follicle5058.r" -l
		 on;
connectAttr "R_nurbsPlaneShape1.wm" "R_nurbsPlane1FollicleShape5058.iwm";
connectAttr "R_nurbsPlaneShape1.l" "R_nurbsPlane1FollicleShape5058.is";
connectAttr "R_nurbsPlane1FollicleShape5074.ot" "R_nurbsPlane1Follicle5074.t" -l
		 on;
connectAttr "R_nurbsPlane1FollicleShape5074.or" "R_nurbsPlane1Follicle5074.r" -l
		 on;
connectAttr "R_nurbsPlaneShape1.wm" "R_nurbsPlane1FollicleShape5074.iwm";
connectAttr "R_nurbsPlaneShape1.l" "R_nurbsPlane1FollicleShape5074.is";
connectAttr "R_nurbsPlane1FollicleShape5091.ot" "R_nurbsPlane1Follicle5091.t" -l
		 on;
connectAttr "R_nurbsPlane1FollicleShape5091.or" "R_nurbsPlane1Follicle5091.r" -l
		 on;
connectAttr "R_nurbsPlaneShape1.wm" "R_nurbsPlane1FollicleShape5091.iwm";
connectAttr "R_nurbsPlaneShape1.l" "R_nurbsPlane1FollicleShape5091.is";
connectAttr "skinCluster1GroupId.id" "R_nurbsPlaneShape1.iog.og[2].gid";
connectAttr "skinCluster1Set.mwc" "R_nurbsPlaneShape1.iog.og[2].gco";
connectAttr "groupId2.id" "R_nurbsPlaneShape1.iog.og[3].gid";
connectAttr "tweakSet1.mwc" "R_nurbsPlaneShape1.iog.og[3].gco";
connectAttr "skinCluster1.og[0]" "R_nurbsPlaneShape1.cr";
connectAttr "tweak1.pl[0].cp[0]" "R_nurbsPlaneShape1.twl";
connectAttr "makeNurbPlane1.os" "R_nurbsPlaneShape1Orig1.cr";
connectAttr "|L_RibbonLegs|L_RibbonSystem|L_KneeFollowGRP|KneeFollowGRP_pointConstraint1.ctx" "L_KneeFollowGRP.tx"
		;
connectAttr "|L_RibbonLegs|L_RibbonSystem|L_KneeFollowGRP|KneeFollowGRP_pointConstraint1.cty" "L_KneeFollowGRP.ty"
		;
connectAttr "|L_RibbonLegs|L_RibbonSystem|L_KneeFollowGRP|KneeFollowGRP_pointConstraint1.ctz" "L_KneeFollowGRP.tz"
		;
connectAttr "grpL_KneeUp_CCZERO1_pointConstraint1.ctx" "grpL_KneeUp_CCZERO1.tx";
connectAttr "grpL_KneeUp_CCZERO1_pointConstraint1.cty" "grpL_KneeUp_CCZERO1.ty";
connectAttr "grpL_KneeUp_CCZERO1_pointConstraint1.ctz" "grpL_KneeUp_CCZERO1.tz";
connectAttr "grpL_KneeUp_CCZERO1_aimConstraint1.crx" "grpL_KneeUp_CCZERO1.rx";
connectAttr "grpL_KneeUp_CCZERO1_aimConstraint1.cry" "grpL_KneeUp_CCZERO1.ry";
connectAttr "grpL_KneeUp_CCZERO1_aimConstraint1.crz" "grpL_KneeUp_CCZERO1.rz";
connectAttr "grpL_KneeUp_CCZERO1.pim" "grpL_KneeUp_CCZERO1_pointConstraint1.cpim"
		;
connectAttr "grpL_KneeUp_CCZERO1.rp" "grpL_KneeUp_CCZERO1_pointConstraint1.crp";
connectAttr "grpL_KneeUp_CCZERO1.rpt" "grpL_KneeUp_CCZERO1_pointConstraint1.crt"
		;
connectAttr "L_Knee_CC.t" "grpL_KneeUp_CCZERO1_pointConstraint1.tg[0].tt";
connectAttr "L_Knee_CC.rp" "grpL_KneeUp_CCZERO1_pointConstraint1.tg[0].trp";
connectAttr "L_Knee_CC.rpt" "grpL_KneeUp_CCZERO1_pointConstraint1.tg[0].trt";
connectAttr "L_Knee_CC.pm" "grpL_KneeUp_CCZERO1_pointConstraint1.tg[0].tpm";
connectAttr "grpL_KneeUp_CCZERO1_pointConstraint1.w0" "grpL_KneeUp_CCZERO1_pointConstraint1.tg[0].tw"
		;
connectAttr "L_Hip_CC.t" "grpL_KneeUp_CCZERO1_pointConstraint1.tg[1].tt";
connectAttr "L_Hip_CC.rp" "grpL_KneeUp_CCZERO1_pointConstraint1.tg[1].trp";
connectAttr "L_Hip_CC.rpt" "grpL_KneeUp_CCZERO1_pointConstraint1.tg[1].trt";
connectAttr "L_Hip_CC.pm" "grpL_KneeUp_CCZERO1_pointConstraint1.tg[1].tpm";
connectAttr "grpL_KneeUp_CCZERO1_pointConstraint1.w1" "grpL_KneeUp_CCZERO1_pointConstraint1.tg[1].tw"
		;
connectAttr "grpL_KneeUp_CCZERO1.pim" "grpL_KneeUp_CCZERO1_aimConstraint1.cpim";
connectAttr "grpL_KneeUp_CCZERO1.t" "grpL_KneeUp_CCZERO1_aimConstraint1.ct";
connectAttr "grpL_KneeUp_CCZERO1.rp" "grpL_KneeUp_CCZERO1_aimConstraint1.crp";
connectAttr "grpL_KneeUp_CCZERO1.rpt" "grpL_KneeUp_CCZERO1_aimConstraint1.crt";
connectAttr "grpL_KneeUp_CCZERO1.ro" "grpL_KneeUp_CCZERO1_aimConstraint1.cro";
connectAttr "L_Knee_CC.t" "grpL_KneeUp_CCZERO1_aimConstraint1.tg[0].tt";
connectAttr "L_Knee_CC.rp" "grpL_KneeUp_CCZERO1_aimConstraint1.tg[0].trp";
connectAttr "L_Knee_CC.rpt" "grpL_KneeUp_CCZERO1_aimConstraint1.tg[0].trt";
connectAttr "L_Knee_CC.pm" "grpL_KneeUp_CCZERO1_aimConstraint1.tg[0].tpm";
connectAttr "grpL_KneeUp_CCZERO1_aimConstraint1.w0" "grpL_KneeUp_CCZERO1_aimConstraint1.tg[0].tw"
		;
connectAttr "grpL_KneeDOWN_CCZERO2_pointConstraint1.ctx" "grpL_KneeDOWN_CCZERO2.tx"
		;
connectAttr "grpL_KneeDOWN_CCZERO2_pointConstraint1.cty" "grpL_KneeDOWN_CCZERO2.ty"
		;
connectAttr "grpL_KneeDOWN_CCZERO2_pointConstraint1.ctz" "grpL_KneeDOWN_CCZERO2.tz"
		;
connectAttr "grpL_KneeDOWN_CCZERO2_aimConstraint1.crx" "grpL_KneeDOWN_CCZERO2.rx"
		;
connectAttr "grpL_KneeDOWN_CCZERO2_aimConstraint1.cry" "grpL_KneeDOWN_CCZERO2.ry"
		;
connectAttr "grpL_KneeDOWN_CCZERO2_aimConstraint1.crz" "grpL_KneeDOWN_CCZERO2.rz"
		;
connectAttr "grpL_KneeDOWN_CCZERO2.pim" "grpL_KneeDOWN_CCZERO2_pointConstraint1.cpim"
		;
connectAttr "grpL_KneeDOWN_CCZERO2.rp" "grpL_KneeDOWN_CCZERO2_pointConstraint1.crp"
		;
connectAttr "grpL_KneeDOWN_CCZERO2.rpt" "grpL_KneeDOWN_CCZERO2_pointConstraint1.crt"
		;
connectAttr "L_Knee_CC.t" "grpL_KneeDOWN_CCZERO2_pointConstraint1.tg[0].tt";
connectAttr "L_Knee_CC.rp" "grpL_KneeDOWN_CCZERO2_pointConstraint1.tg[0].trp";
connectAttr "L_Knee_CC.rpt" "grpL_KneeDOWN_CCZERO2_pointConstraint1.tg[0].trt";
connectAttr "L_Knee_CC.pm" "grpL_KneeDOWN_CCZERO2_pointConstraint1.tg[0].tpm";
connectAttr "grpL_KneeDOWN_CCZERO2_pointConstraint1.w0" "grpL_KneeDOWN_CCZERO2_pointConstraint1.tg[0].tw"
		;
connectAttr "L_Ankle_CC.t" "grpL_KneeDOWN_CCZERO2_pointConstraint1.tg[1].tt";
connectAttr "L_Ankle_CC.rp" "grpL_KneeDOWN_CCZERO2_pointConstraint1.tg[1].trp";
connectAttr "L_Ankle_CC.rpt" "grpL_KneeDOWN_CCZERO2_pointConstraint1.tg[1].trt";
connectAttr "L_Ankle_CC.pm" "grpL_KneeDOWN_CCZERO2_pointConstraint1.tg[1].tpm";
connectAttr "grpL_KneeDOWN_CCZERO2_pointConstraint1.w1" "grpL_KneeDOWN_CCZERO2_pointConstraint1.tg[1].tw"
		;
connectAttr "grpL_KneeDOWN_CCZERO2.pim" "grpL_KneeDOWN_CCZERO2_aimConstraint1.cpim"
		;
connectAttr "grpL_KneeDOWN_CCZERO2.t" "grpL_KneeDOWN_CCZERO2_aimConstraint1.ct";
connectAttr "grpL_KneeDOWN_CCZERO2.rp" "grpL_KneeDOWN_CCZERO2_aimConstraint1.crp"
		;
connectAttr "grpL_KneeDOWN_CCZERO2.rpt" "grpL_KneeDOWN_CCZERO2_aimConstraint1.crt"
		;
connectAttr "grpL_KneeDOWN_CCZERO2.ro" "grpL_KneeDOWN_CCZERO2_aimConstraint1.cro"
		;
connectAttr "L_Knee_CC.t" "grpL_KneeDOWN_CCZERO2_aimConstraint1.tg[0].tt";
connectAttr "L_Knee_CC.rp" "grpL_KneeDOWN_CCZERO2_aimConstraint1.tg[0].trp";
connectAttr "L_Knee_CC.rpt" "grpL_KneeDOWN_CCZERO2_aimConstraint1.tg[0].trt";
connectAttr "L_Knee_CC.pm" "grpL_KneeDOWN_CCZERO2_aimConstraint1.tg[0].tpm";
connectAttr "grpL_KneeDOWN_CCZERO2_aimConstraint1.w0" "grpL_KneeDOWN_CCZERO2_aimConstraint1.tg[0].tw"
		;
connectAttr "makeNurbCircle5.oc" "L_Knee_CCShape.cr";
connectAttr "L_KneeFollowGRP.pim" "|L_RibbonLegs|L_RibbonSystem|L_KneeFollowGRP|KneeFollowGRP_pointConstraint1.cpim"
		;
connectAttr "L_KneeFollowGRP.rp" "|L_RibbonLegs|L_RibbonSystem|L_KneeFollowGRP|KneeFollowGRP_pointConstraint1.crp"
		;
connectAttr "L_KneeFollowGRP.rpt" "|L_RibbonLegs|L_RibbonSystem|L_KneeFollowGRP|KneeFollowGRP_pointConstraint1.crt"
		;
connectAttr "L_Ankle_CC.t" "|L_RibbonLegs|L_RibbonSystem|L_KneeFollowGRP|KneeFollowGRP_pointConstraint1.tg[0].tt"
		;
connectAttr "L_Ankle_CC.rp" "|L_RibbonLegs|L_RibbonSystem|L_KneeFollowGRP|KneeFollowGRP_pointConstraint1.tg[0].trp"
		;
connectAttr "L_Ankle_CC.rpt" "|L_RibbonLegs|L_RibbonSystem|L_KneeFollowGRP|KneeFollowGRP_pointConstraint1.tg[0].trt"
		;
connectAttr "L_Ankle_CC.pm" "|L_RibbonLegs|L_RibbonSystem|L_KneeFollowGRP|KneeFollowGRP_pointConstraint1.tg[0].tpm"
		;
connectAttr "|L_RibbonLegs|L_RibbonSystem|L_KneeFollowGRP|KneeFollowGRP_pointConstraint1.w0" "|L_RibbonLegs|L_RibbonSystem|L_KneeFollowGRP|KneeFollowGRP_pointConstraint1.tg[0].tw"
		;
connectAttr "L_Hip_CC.t" "|L_RibbonLegs|L_RibbonSystem|L_KneeFollowGRP|KneeFollowGRP_pointConstraint1.tg[1].tt"
		;
connectAttr "L_Hip_CC.rp" "|L_RibbonLegs|L_RibbonSystem|L_KneeFollowGRP|KneeFollowGRP_pointConstraint1.tg[1].trp"
		;
connectAttr "L_Hip_CC.rpt" "|L_RibbonLegs|L_RibbonSystem|L_KneeFollowGRP|KneeFollowGRP_pointConstraint1.tg[1].trt"
		;
connectAttr "L_Hip_CC.pm" "|L_RibbonLegs|L_RibbonSystem|L_KneeFollowGRP|KneeFollowGRP_pointConstraint1.tg[1].tpm"
		;
connectAttr "|L_RibbonLegs|L_RibbonSystem|L_KneeFollowGRP|KneeFollowGRP_pointConstraint1.w1" "|L_RibbonLegs|L_RibbonSystem|L_KneeFollowGRP|KneeFollowGRP_pointConstraint1.tg[1].tw"
		;
connectAttr "makeNurbCircle6.oc" "L_Hip_CCShape.cr";
connectAttr "makeNurbCircle4.oc" "L_Ankle_CCShape.cr";
connectAttr "L_nurbsPlane1FollicleShape5008.ot" "L_nurbsPlane1Follicle5008.t" -l
		 on;
connectAttr "L_nurbsPlane1FollicleShape5008.or" "L_nurbsPlane1Follicle5008.r" -l
		 on;
connectAttr "L_nurbsPlaneShape1.wm" "L_nurbsPlane1FollicleShape5008.iwm";
connectAttr "L_nurbsPlaneShape1.l" "L_nurbsPlane1FollicleShape5008.is";
connectAttr "L_nurbsPlane1FollicleShape5025.ot" "L_nurbsPlane1Follicle5025.t" -l
		 on;
connectAttr "L_nurbsPlane1FollicleShape5025.or" "L_nurbsPlane1Follicle5025.r" -l
		 on;
connectAttr "L_nurbsPlaneShape1.wm" "L_nurbsPlane1FollicleShape5025.iwm";
connectAttr "L_nurbsPlaneShape1.l" "L_nurbsPlane1FollicleShape5025.is";
connectAttr "L_nurbsPlane1FollicleShape5041.ot" "L_nurbsPlane1Follicle5041.t" -l
		 on;
connectAttr "L_nurbsPlane1FollicleShape5041.or" "L_nurbsPlane1Follicle5041.r" -l
		 on;
connectAttr "L_nurbsPlaneShape1.wm" "L_nurbsPlane1FollicleShape5041.iwm";
connectAttr "L_nurbsPlaneShape1.l" "L_nurbsPlane1FollicleShape5041.is";
connectAttr "L_nurbsPlane1FollicleShape5058.ot" "L_nurbsPlane1Follicle5058.t" -l
		 on;
connectAttr "L_nurbsPlane1FollicleShape5058.or" "L_nurbsPlane1Follicle5058.r" -l
		 on;
connectAttr "L_nurbsPlaneShape1.wm" "L_nurbsPlane1FollicleShape5058.iwm";
connectAttr "L_nurbsPlaneShape1.l" "L_nurbsPlane1FollicleShape5058.is";
connectAttr "L_nurbsPlane1FollicleShape5074.ot" "L_nurbsPlane1Follicle5074.t" -l
		 on;
connectAttr "L_nurbsPlane1FollicleShape5074.or" "L_nurbsPlane1Follicle5074.r" -l
		 on;
connectAttr "L_nurbsPlaneShape1.wm" "L_nurbsPlane1FollicleShape5074.iwm";
connectAttr "L_nurbsPlaneShape1.l" "L_nurbsPlane1FollicleShape5074.is";
connectAttr "L_nurbsPlane1FollicleShape5091.ot" "L_nurbsPlane1Follicle5091.t" -l
		 on;
connectAttr "L_nurbsPlane1FollicleShape5091.or" "L_nurbsPlane1Follicle5091.r" -l
		 on;
connectAttr "L_nurbsPlaneShape1.wm" "L_nurbsPlane1FollicleShape5091.iwm";
connectAttr "L_nurbsPlaneShape1.l" "L_nurbsPlane1FollicleShape5091.is";
connectAttr "skinCluster1GroupId1.id" "L_nurbsPlaneShape1.iog.og[2].gid";
connectAttr "skinCluster1Set1.mwc" "L_nurbsPlaneShape1.iog.og[2].gco";
connectAttr "groupId3.id" "L_nurbsPlaneShape1.iog.og[3].gid";
connectAttr "tweakSet2.mwc" "L_nurbsPlaneShape1.iog.og[3].gco";
connectAttr "skinCluster2.og[0]" "L_nurbsPlaneShape1.cr";
connectAttr "tweak2.pl[0].cp[0]" "L_nurbsPlaneShape1.twl";
connectAttr "makeNurbPlane2.os" "L_nurbsPlaneShape1Orig1.cr";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "R_AnkleController.wm" "skinCluster1.ma[0]";
connectAttr "R_KneeDOWNController.wm" "skinCluster1.ma[1]";
connectAttr "R_KneeController.wm" "skinCluster1.ma[2]";
connectAttr "R_KneeUPController.wm" "skinCluster1.ma[3]";
connectAttr "R_HipController.wm" "skinCluster1.ma[4]";
connectAttr "R_AnkleController.liw" "skinCluster1.lw[0]";
connectAttr "R_KneeDOWNController.liw" "skinCluster1.lw[1]";
connectAttr "R_KneeController.liw" "skinCluster1.lw[2]";
connectAttr "R_KneeUPController.liw" "skinCluster1.lw[3]";
connectAttr "R_HipController.liw" "skinCluster1.lw[4]";
connectAttr "R_AnkleController.obcc" "skinCluster1.ifcl[0]";
connectAttr "R_KneeDOWNController.obcc" "skinCluster1.ifcl[1]";
connectAttr "R_KneeController.obcc" "skinCluster1.ifcl[2]";
connectAttr "R_KneeUPController.obcc" "skinCluster1.ifcl[3]";
connectAttr "R_HipController.obcc" "skinCluster1.ifcl[4]";
connectAttr "R_AnkleController.msg" "skinCluster1.ptt";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "R_nurbsPlaneShape1.iog.og[2]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "R_nurbsPlaneShape1.iog.og[3]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "R_nurbsPlaneShape1Orig1.ws" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "grpR_Ankle_CCZERO.msg" "bindPose1.m[0]";
connectAttr "R_Ankle_CC.msg" "bindPose1.m[1]";
connectAttr "R_AnkleController.msg" "bindPose1.m[2]";
connectAttr "R_KneeFollowGRP.msg" "bindPose1.m[3]";
connectAttr "grpR_KneeDOWN_CCZERO2.msg" "bindPose1.m[4]";
connectAttr "R_KneeDOWN_CC.msg" "bindPose1.m[5]";
connectAttr "R_KneeDOWNController.msg" "bindPose1.m[6]";
connectAttr "grpR_Knee_CCZERO.msg" "bindPose1.m[7]";
connectAttr "R_Knee_CC.msg" "bindPose1.m[8]";
connectAttr "R_KneeController.msg" "bindPose1.m[9]";
connectAttr "grpR_KneeUp_CCZERO1.msg" "bindPose1.m[10]";
connectAttr "R_KneeUP_CC.msg" "bindPose1.m[11]";
connectAttr "R_KneeUPController.msg" "bindPose1.m[12]";
connectAttr "grpR_Hip_CCZERO.msg" "bindPose1.m[13]";
connectAttr "R_Hip_CC.msg" "bindPose1.m[14]";
connectAttr "R_HipController.msg" "bindPose1.m[15]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.w" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[6]";
connectAttr "bindPose1.m[3]" "bindPose1.p[7]";
connectAttr "bindPose1.m[7]" "bindPose1.p[8]";
connectAttr "bindPose1.m[8]" "bindPose1.p[9]";
connectAttr "bindPose1.m[3]" "bindPose1.p[10]";
connectAttr "bindPose1.m[10]" "bindPose1.p[11]";
connectAttr "bindPose1.m[11]" "bindPose1.p[12]";
connectAttr "bindPose1.w" "bindPose1.p[13]";
connectAttr "bindPose1.m[13]" "bindPose1.p[14]";
connectAttr "bindPose1.m[14]" "bindPose1.p[15]";
connectAttr "R_AnkleController.bps" "bindPose1.wm[2]";
connectAttr "R_KneeDOWNController.bps" "bindPose1.wm[6]";
connectAttr "R_KneeController.bps" "bindPose1.wm[9]";
connectAttr "R_KneeUPController.bps" "bindPose1.wm[12]";
connectAttr "R_HipController.bps" "bindPose1.wm[15]";
connectAttr "renderLayerManager1.rlmi[0]" "defaultRenderLayer1.rlid";
connectAttr "skinCluster1GroupParts1.og" "skinCluster2.ip[0].ig";
connectAttr "skinCluster1GroupId1.id" "skinCluster2.ip[0].gi";
connectAttr "bindPose2.msg" "skinCluster2.bp";
connectAttr "L_AnkleController.wm" "skinCluster2.ma[0]";
connectAttr "L_KneeDOWNController.wm" "skinCluster2.ma[1]";
connectAttr "L_KneeController.wm" "skinCluster2.ma[2]";
connectAttr "L_KneeUPController.wm" "skinCluster2.ma[3]";
connectAttr "L_HipController.wm" "skinCluster2.ma[4]";
connectAttr "L_AnkleController.liw" "skinCluster2.lw[0]";
connectAttr "L_KneeDOWNController.liw" "skinCluster2.lw[1]";
connectAttr "L_KneeController.liw" "skinCluster2.lw[2]";
connectAttr "L_KneeUPController.liw" "skinCluster2.lw[3]";
connectAttr "L_HipController.liw" "skinCluster2.lw[4]";
connectAttr "L_AnkleController.obcc" "skinCluster2.ifcl[0]";
connectAttr "L_KneeDOWNController.obcc" "skinCluster2.ifcl[1]";
connectAttr "L_KneeController.obcc" "skinCluster2.ifcl[2]";
connectAttr "L_KneeUPController.obcc" "skinCluster2.ifcl[3]";
connectAttr "L_HipController.obcc" "skinCluster2.ifcl[4]";
connectAttr "L_AnkleController.msg" "skinCluster2.ptt";
connectAttr "groupParts3.og" "tweak2.ip[0].ig";
connectAttr "groupId3.id" "tweak2.ip[0].gi";
connectAttr "skinCluster1GroupId1.msg" "skinCluster1Set1.gn" -na;
connectAttr "L_nurbsPlaneShape1.iog.og[2]" "skinCluster1Set1.dsm" -na;
connectAttr "skinCluster2.msg" "skinCluster1Set1.ub[0]";
connectAttr "tweak2.og[0]" "skinCluster1GroupParts1.ig";
connectAttr "skinCluster1GroupId1.id" "skinCluster1GroupParts1.gi";
connectAttr "groupId3.msg" "tweakSet2.gn" -na;
connectAttr "L_nurbsPlaneShape1.iog.og[3]" "tweakSet2.dsm" -na;
connectAttr "tweak2.msg" "tweakSet2.ub[0]";
connectAttr "L_nurbsPlaneShape1Orig1.ws" "groupParts3.ig";
connectAttr "groupId3.id" "groupParts3.gi";
connectAttr "grpL_Ankle_CCZERO.msg" "bindPose2.m[0]";
connectAttr "L_Ankle_CC.msg" "bindPose2.m[1]";
connectAttr "L_AnkleController.msg" "bindPose2.m[2]";
connectAttr "L_KneeFollowGRP.msg" "bindPose2.m[3]";
connectAttr "grpL_KneeDOWN_CCZERO2.msg" "bindPose2.m[4]";
connectAttr "L_KneeDOWN_CC.msg" "bindPose2.m[5]";
connectAttr "L_KneeDOWNController.msg" "bindPose2.m[6]";
connectAttr "grpL_Knee_CCZERO.msg" "bindPose2.m[7]";
connectAttr "L_Knee_CC.msg" "bindPose2.m[8]";
connectAttr "L_KneeController.msg" "bindPose2.m[9]";
connectAttr "grpL_KneeUp_CCZERO1.msg" "bindPose2.m[10]";
connectAttr "L_KneeUP_CC.msg" "bindPose2.m[11]";
connectAttr "L_KneeUPController.msg" "bindPose2.m[12]";
connectAttr "grpL_Hip_CCZERO.msg" "bindPose2.m[13]";
connectAttr "L_Hip_CC.msg" "bindPose2.m[14]";
connectAttr "L_HipController.msg" "bindPose2.m[15]";
connectAttr "bindPose2.w" "bindPose2.p[0]";
connectAttr "bindPose2.m[0]" "bindPose2.p[1]";
connectAttr "bindPose2.m[1]" "bindPose2.p[2]";
connectAttr "bindPose2.w" "bindPose2.p[3]";
connectAttr "bindPose2.m[3]" "bindPose2.p[4]";
connectAttr "bindPose2.m[4]" "bindPose2.p[5]";
connectAttr "bindPose2.m[5]" "bindPose2.p[6]";
connectAttr "bindPose2.m[3]" "bindPose2.p[7]";
connectAttr "bindPose2.m[7]" "bindPose2.p[8]";
connectAttr "bindPose2.m[8]" "bindPose2.p[9]";
connectAttr "bindPose2.m[3]" "bindPose2.p[10]";
connectAttr "bindPose2.m[10]" "bindPose2.p[11]";
connectAttr "bindPose2.m[11]" "bindPose2.p[12]";
connectAttr "bindPose2.w" "bindPose2.p[13]";
connectAttr "bindPose2.m[13]" "bindPose2.p[14]";
connectAttr "bindPose2.m[14]" "bindPose2.p[15]";
connectAttr "L_AnkleController.bps" "bindPose2.wm[2]";
connectAttr "L_KneeDOWNController.bps" "bindPose2.wm[6]";
connectAttr "L_KneeController.bps" "bindPose2.wm[9]";
connectAttr "L_KneeUPController.bps" "bindPose2.wm[12]";
connectAttr "L_HipController.bps" "bindPose2.wm[15]";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "defaultRenderLayer1.msg" ":defaultRenderingList1.r" -na;
connectAttr "R_nurbsPlaneShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "L_nurbsPlaneShape1.iog" ":initialShadingGroup.dsm" -na;
// End of Ribbonleg.ma

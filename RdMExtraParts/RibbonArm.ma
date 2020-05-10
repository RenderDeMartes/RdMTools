//Maya ASCII 2018ff09 scene
//Name: RibbonArm.ma
//Last modified: Sun, Mar 31, 2019 06:24:57 PM
//Codeset: 1252
requires maya "2018ff09";
requires "mtoa" "3.1.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201807191615-2c29512b8a";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
createNode transform -s -n "persp";
	rename -uid "B3F11BCF-4F38-E9D5-AE5A-DDA6DEB2138A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 47.677166405798097 94.32435683707817 246.45915951545518 ;
	setAttr ".r" -type "double3" -9.3383527296024322 7.3999999999999027 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "8DD66A38-4A10-306C-CFB6-71B79B852298";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 285.47243021680072;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "30305758-4E67-D447-B40A-20AEFDCBBB7D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "871DBE61-4D04-3243-825D-2F88118FF9B5";
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
	rename -uid "FC5DA0DB-4510-4413-E6F8-0089AECB29B1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "7A0104F9-44AC-9CA8-0D31-97BCA7D79383";
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
	rename -uid "FDDC2147-491E-592B-F458-2688B0735DA6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "E45A3D1F-410A-C594-1048-F5B2BA1F354C";
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
createNode transform -n "RibbonArms";
	rename -uid "D58018D2-4A55-0CBA-2F6A-91A9DBEAF48B";
createNode transform -n "RightRibbonArm" -p "RibbonArms";
	rename -uid "42D264F7-4B02-25B7-3A8B-1BAF40929970";
createNode transform -n "R_Ribbon" -p "RightRibbonArm";
	rename -uid "49A04973-456E-8E98-4C62-16948C4DDFDB";
createNode transform -n "R_Elbow_FollowGRP" -p "R_Ribbon";
	rename -uid "A13F3EE0-4BF5-7EAF-C99F-D8B9DF44000F";
	setAttr ".rp" -type "double3" 51.08065255275168 64.338844299316406 1.1636504027023875e-07 ;
	setAttr ".sp" -type "double3" 51.08065255275168 64.338844299316406 1.1636504027023875e-07 ;
createNode transform -n "grpR_Arm_ElbowZERO2" -p "R_Elbow_FollowGRP";
	rename -uid "5F81468A-4065-A265-9ECE-DF999F052F87";
	setAttr ".t" -type "double3" 51.080654144287109 64.338844299316406 -1.1545048412434398e-31 ;
	setAttr ".r" -type "double3" 180 4.1817373090602894 4.4256884951749546e-32 ;
createNode transform -n "R_Arm_Elbow" -p "grpR_Arm_ElbowZERO2";
	rename -uid "442495A5-48BB-BA80-E9CD-21909562AFB6";
createNode nurbsCurve -n "R_Arm_ElbowShape" -p "R_Arm_Elbow";
	rename -uid "AA50BD58-4EF4-45AC-748E-CCB30F919ADE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.8050992641671783e-16 2.9479508139391033 -2.9479508139391024
		3.1767311880857537e-32 8.4726400182501553 -5.1879957393389131e-16
		-1.8050992641671783e-16 2.9479508139391033 2.9479508139391024
		-5.1879957393389151e-16 4.3922315470219745e-16 8.4726400182501607
		-1.8050992641671783e-16 -2.9479508139391024 2.9479508139391024
		-5.1968508144233298e-32 -8.4726400182501624 8.4871014533195672e-16
		1.8050992641671783e-16 -2.9479508139391033 -2.9479508139391024
		5.1879957393389151e-16 -1.1554109277874445e-15 -8.4726400182501607
		1.8050992641671783e-16 2.9479508139391033 -2.9479508139391024
		3.1767311880857537e-32 8.4726400182501553 -5.1879957393389131e-16
		-1.8050992641671783e-16 2.9479508139391033 2.9479508139391024
		;
createNode joint -n "R_Elbow_JC" -p "R_Arm_Elbow";
	rename -uid "1F9CB170-4789-06C4-3307-9F80C5E90F39";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" -1.5957837717905932e-06 -3.0931942944789625e-06 1.1667565713580075e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -180 4.1817373090602894 5.1302637819274978e-16 ;
	setAttr ".bps" -type "matrix" 1 8.9301618502898131e-18 1.3877787807814457e-17 0 -8.9301618502898131e-18 1 3.2602904636278765e-19 0
		 1.3877787807814457e-17 -3.2602904636273835e-19 1.0000000000000002 0 51.080654135779085 64.338847392510701 -1.1636504020157908e-07 1;
	setAttr ".radi" 1.9;
createNode pointConstraint -n "Elbow_FollowGRP_pointConstraint1" -p "R_Elbow_FollowGRP";
	rename -uid "E5E81BB1-4B86-9F3D-0E2F-B993B1132D0B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Arm_ShoulderW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "L_Arm_WristW1" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 1.5915354296680562e-06 0 -1.1636504027023875e-07 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "grpR_Arm_Secundary_UP01" -p "R_Elbow_FollowGRP";
	rename -uid "660F9AB8-4F39-22FF-3B4F-17A2A955A443";
createNode transform -n "R_Arm_Secundary_Up01" -p "grpR_Arm_Secundary_UP01";
	rename -uid "A5FBE6BC-44A7-1843-D446-3A9DD9551D6C";
createNode nurbsCurve -n "R_Arm_Secundary_Up01Shape" -p "|RibbonArms|RightRibbonArm|R_Ribbon|R_Elbow_FollowGRP|grpR_Arm_Secundary_UP01|R_Arm_Secundary_Up01";
	rename -uid "56B0213D-4EA3-DFDE-07DD-A59C084A9424";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.5645315007032525e-16 4.1881977766794174 -4.1881977766794174
		2.1975163036202565e-32 5.8609820826638837 -3.5888164736971595e-16
		-2.5645315007032525e-16 4.1881977766794174 4.1881977766794174
		-3.5888164736971615e-16 3.0383434613717367e-16 5.8609820826638872
		-2.5645315007032525e-16 -4.1881977766794174 4.1881977766794174
		-3.5949420067421869e-32 -5.860982082663889 5.8709858372963139e-16
		2.5645315007032525e-16 -4.1881977766794174 -4.1881977766794174
		3.5888164736971615e-16 -7.9926005723005425e-16 -5.8609820826638872
		2.5645315007032525e-16 4.1881977766794174 -4.1881977766794174
		2.1975163036202565e-32 5.8609820826638837 -3.5888164736971595e-16
		-2.5645315007032525e-16 4.1881977766794174 4.1881977766794174
		;
createNode joint -n "R_Arm_Secundary_Up01" -p "|RibbonArms|RightRibbonArm|R_Ribbon|R_Elbow_FollowGRP|grpR_Arm_Secundary_UP01|R_Arm_Secundary_Up01";
	rename -uid "66377939-4442-7B29-A7A1-D9AC57FEDF68";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -1.5957837717905932e-06 -3.0931942944789625e-06 1.1667565713580075e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -180 4.1817373090602894 -4.4256884951749546e-32 ;
	setAttr ".bps" -type "matrix" 1 8.9301618502898131e-18 1.3877787807814457e-17 0 -8.9301618502898131e-18 1 3.2602904636278765e-19 0
		 1.3877787807814457e-17 -3.2602904636273835e-19 1.0000000000000002 0 37.699999693407811 64.338847392510701 -3.878834668808658e-08 1;
	setAttr ".radi" 1.9;
createNode pointConstraint -n "grpR_Arm_Secundary_UP01_pointConstraint1" -p "grpR_Arm_Secundary_UP01";
	rename -uid "9F5CE707-4D62-6BB8-60E7-73828E3B0C80";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Arm_ElbowW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "L_Arm_ShoulderW1" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 41.045163312508656 64.338844299316406 5.8182520135119375e-08 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1" 2;
createNode aimConstraint -n "grpR_Arm_Secundary_UP01_aimConstraint1" -p "grpR_Arm_Secundary_UP01";
	rename -uid "F80923B5-4F6D-26E9-6272-D794A51089CF";
	addAttr -dcb 0 -ci true -sn "w0" -ln "L_Arm_ElbowW0" -dv 1 -at "double";
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
	setAttr ".o" -type "double3" 180 4.1817373090602894 4.4256884951749546e-32 ;
	setAttr ".rsrr" -type "double3" 180 4.1817373090602894 4.4256884951749546e-32 ;
	setAttr -k on ".w0";
createNode transform -n "grpR_Arm_Secundary_UP02" -p "R_Elbow_FollowGRP";
	rename -uid "77C4AAEF-48B2-A3D8-8952-CE8174A97A1F";
createNode transform -n "R_Arm_Secundary_Up02" -p "grpR_Arm_Secundary_UP02";
	rename -uid "616AEAC8-408F-0DC6-F232-83A4E3205A81";
createNode nurbsCurve -n "R_Arm_Secundary_Up02Shape" -p "|RibbonArms|RightRibbonArm|R_Ribbon|R_Elbow_FollowGRP|grpR_Arm_Secundary_UP02|R_Arm_Secundary_Up02";
	rename -uid "8E478BCB-401A-3BF6-A3DD-688AD6B1FA50";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.5645315007032525e-16 4.1881977766794174 -4.1881977766794174
		2.1975163036202565e-32 5.8609820826638837 -3.5888164736971595e-16
		-2.5645315007032525e-16 4.1881977766794174 4.1881977766794174
		-3.5888164736971615e-16 3.0383434613717367e-16 5.8609820826638872
		-2.5645315007032525e-16 -4.1881977766794174 4.1881977766794174
		-3.5949420067421869e-32 -5.860982082663889 5.8709858372963139e-16
		2.5645315007032525e-16 -4.1881977766794174 -4.1881977766794174
		3.5888164736971615e-16 -7.9926005723005425e-16 -5.8609820826638872
		2.5645315007032525e-16 4.1881977766794174 -4.1881977766794174
		2.1975163036202565e-32 5.8609820826638837 -3.5888164736971595e-16
		-2.5645315007032525e-16 4.1881977766794174 4.1881977766794174
		;
createNode joint -n "R_Arm_Secundary_Up02" -p "|RibbonArms|RightRibbonArm|R_Ribbon|R_Elbow_FollowGRP|grpR_Arm_Secundary_UP02|R_Arm_Secundary_Up02";
	rename -uid "F194EFB8-49D0-23EC-D0ED-A2B7DFBF897F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -1.5957837717905932e-06 -3.0931942944789625e-06 1.1667565713580075e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -180 4.1817373090602894 -4.4256884951749546e-32 ;
	setAttr ".bps" -type "matrix" 1 8.9301618502898131e-18 1.3877787807814457e-17 0 -8.9301618502898131e-18 1 3.2602904636278765e-19 0
		 1.3877787807814457e-17 -3.2602904636273835e-19 1.0000000000000002 0 44.390326914593452 64.338847392510701 -7.7576693444832831e-08 1;
	setAttr ".radi" 1.9;
createNode pointConstraint -n "grpR_Arm_Secundary_UP02_pointConstraint1" -p "grpR_Arm_Secundary_UP02";
	rename -uid "2DDDFF63-4114-59FF-FDD2-D0843A7A8E3B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Arm_ElbowW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "L_Arm_ShoulderW1" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 41.045163312508656 64.338844299316406 5.8182520135119375e-08 ;
	setAttr -k on ".w0" 2;
	setAttr -k on ".w1";
createNode aimConstraint -n "grpR_Arm_Secundary_UP02_aimConstraint1" -p "grpR_Arm_Secundary_UP02";
	rename -uid "2A1EADA4-4289-445F-51C7-2BAEF8E69049";
	addAttr -dcb 0 -ci true -sn "w0" -ln "L_Arm_ElbowW0" -dv 1 -at "double";
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
	setAttr ".o" -type "double3" 180 4.1817373090602894 4.4256884951749546e-32 ;
	setAttr ".rsrr" -type "double3" 180 4.1817373090602894 4.4256884951749546e-32 ;
	setAttr -k on ".w0";
createNode transform -n "grpR_Arm_Secundary_Down01" -p "R_Elbow_FollowGRP";
	rename -uid "DF75374C-4BAF-F2DF-234C-FB899D82D15D";
	setAttr ".rp" -type "double3" -1.5957837717905932e-06 -2.6645352591003757e-15 0 ;
	setAttr ".rpt" -type "double3" 4.2483421479588649e-09 5.3290705182007514e-15 1.1636503986355715e-07 ;
	setAttr ".sp" -type "double3" -1.5957837717905932e-06 -2.6645352591003757e-15 0 ;
createNode transform -n "R_Arm_Secundary_Down01" -p "grpR_Arm_Secundary_Down01";
	rename -uid "3EBCEBC8-4FDB-9579-073D-7BA8841A37EA";
createNode nurbsCurve -n "R_Arm_Secundary_Down01Shape" -p "|RibbonArms|RightRibbonArm|R_Ribbon|R_Elbow_FollowGRP|grpR_Arm_Secundary_Down01|R_Arm_Secundary_Down01";
	rename -uid "70CE9C31-4107-42F7-BEB2-AC957D568A7D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.5645315007032525e-16 4.1881977766794174 -4.1881977766794174
		2.1975163036202565e-32 5.8609820826638837 -3.5888164736971595e-16
		-2.5645315007032525e-16 4.1881977766794174 4.1881977766794174
		-3.5888164736971615e-16 3.0383434613717367e-16 5.8609820826638872
		-2.5645315007032525e-16 -4.1881977766794174 4.1881977766794174
		-3.5949420067421869e-32 -5.860982082663889 5.8709858372963139e-16
		2.5645315007032525e-16 -4.1881977766794174 -4.1881977766794174
		3.5888164736971615e-16 -7.9926005723005425e-16 -5.8609820826638872
		2.5645315007032525e-16 4.1881977766794174 -4.1881977766794174
		2.1975163036202565e-32 5.8609820826638837 -3.5888164736971595e-16
		-2.5645315007032525e-16 4.1881977766794174 4.1881977766794174
		;
createNode joint -n "R_Arm_Secundary_Down01" -p "|RibbonArms|RightRibbonArm|R_Ribbon|R_Elbow_FollowGRP|grpR_Arm_Secundary_Down01|R_Arm_Secundary_Down01";
	rename -uid "8350763D-4247-BD21-DB8C-3CA5D802886F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -1.5957837717905932e-06 -3.0931942944789625e-06 1.1667565713580075e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -180 4.1817373090602894 -4.4256884951749546e-32 ;
	setAttr ".bps" -type "matrix" 1 8.9301618502898131e-18 1.3877787807814457e-17 0 -8.9301618502898131e-18 1 3.2602904636278765e-19 0
		 1.3877787807814457e-17 -3.2602904636273835e-19 1.0000000000000002 0 57.770981887476538 64.338847392510701 -1.9394173330838999e-07 1;
	setAttr ".radi" 1.9;
createNode pointConstraint -n "grpR_Arm_Secundary_Down01_pointConstraint1" -p "grpR_Arm_Secundary_Down01";
	rename -uid "6D57AB60-46EE-736C-2366-EEBE873FE91C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Arm_ElbowW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "L_Arm_WristW1" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 61.11614497606557 64.338844299316406 -5.8182519728437774e-08 ;
	setAttr -k on ".w0" 2;
	setAttr -k on ".w1";
createNode aimConstraint -n "grpR_Arm_Secundary_Down01_aimConstraint1" -p "grpR_Arm_Secundary_Down01";
	rename -uid "8B72BEB2-4F91-3AD6-5FEF-65A346BB03C9";
	addAttr -dcb 0 -ci true -sn "w0" -ln "L_Arm_ElbowW0" -dv 1 -at "double";
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
	setAttr ".o" -type "double3" 180 4.1817373090602894 4.4256884951749546e-32 ;
	setAttr ".rsrr" -type "double3" 180 4.1817373090602894 4.4256884951749546e-32 ;
	setAttr -k on ".w0";
createNode transform -n "grpR_Arm_Secundary_Down02" -p "R_Elbow_FollowGRP";
	rename -uid "5FBE7C2D-4873-472D-49A9-FD8D0875A0B7";
createNode transform -n "R_Arm_Secundary_Down02" -p "grpR_Arm_Secundary_Down02";
	rename -uid "AD47720D-4F93-6AD1-5E25-2289106F1B3D";
createNode nurbsCurve -n "R_Arm_Secundary_Down02Shape" -p "|RibbonArms|RightRibbonArm|R_Ribbon|R_Elbow_FollowGRP|grpR_Arm_Secundary_Down02|R_Arm_Secundary_Down02";
	rename -uid "4CC7657E-476F-6DDF-8601-6CB294617533";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.5645315007032525e-16 4.1881977766794174 -4.1881977766794174
		2.1975163036202565e-32 5.8609820826638837 -3.5888164736971595e-16
		-2.5645315007032525e-16 4.1881977766794174 4.1881977766794174
		-3.5888164736971615e-16 3.0383434613717367e-16 5.8609820826638872
		-2.5645315007032525e-16 -4.1881977766794174 4.1881977766794174
		-3.5949420067421869e-32 -5.860982082663889 5.8709858372963139e-16
		2.5645315007032525e-16 -4.1881977766794174 -4.1881977766794174
		3.5888164736971615e-16 -7.9926005723005425e-16 -5.8609820826638872
		2.5645315007032525e-16 4.1881977766794174 -4.1881977766794174
		2.1975163036202565e-32 5.8609820826638837 -3.5888164736971595e-16
		-2.5645315007032525e-16 4.1881977766794174 4.1881977766794174
		;
createNode joint -n "R_Arm_Secundary_Down02" -p "|RibbonArms|RightRibbonArm|R_Ribbon|R_Elbow_FollowGRP|grpR_Arm_Secundary_Down02|R_Arm_Secundary_Down02";
	rename -uid "C334FCE4-4E28-0871-3580-D893B93CF957";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -1.5957837717905932e-06 -3.0931942944789625e-06 1.1667565713580075e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -180 4.1817373090602894 -4.4256884951749546e-32 ;
	setAttr ".bps" -type "matrix" 1 8.9301618502898131e-18 1.3877787807814457e-17 0 -8.9301618502898131e-18 1 3.2602904636278765e-19 0
		 1.3877787807814457e-17 -3.2602904636273835e-19 1.0000000000000002 0 64.461306456103117 64.338847392510701 -3.878834668808658e-08 1;
	setAttr ".radi" 1.9;
createNode pointConstraint -n "grpR_Arm_Secundary_Down02_pointConstraint1" -p "grpR_Arm_Secundary_Down02";
	rename -uid "9C7BBD93-4703-1BCA-0B82-D488D7A83804";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Arm_WristW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "L_Arm_ElbowW1" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 61.11614338453014 64.338844299316406 5.8182520135119375e-08 ;
	setAttr -k on ".w0" 2;
	setAttr -k on ".w1";
createNode aimConstraint -n "grpR_Arm_Secundary_Down02_aimConstraint1" -p "grpR_Arm_Secundary_Down02";
	rename -uid "5D81877B-42B3-406A-D28A-398E2B4BE30D";
	addAttr -dcb 0 -ci true -sn "w0" -ln "L_Arm_ElbowW0" -dv 1 -at "double";
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
	setAttr ".o" -type "double3" 180 4.1817373090602894 4.4256884951749546e-32 ;
	setAttr ".rsrr" -type "double3" 180 4.1817373090602894 4.4256884951749546e-32 ;
	setAttr -k on ".w0";
createNode transform -n "grpR_Arm_ShoulderZERO" -p "R_Ribbon";
	rename -uid "4056E6E3-403D-68BB-B90B-2FA93F6837A5";
	setAttr ".t" -type "double3" -28.087557994996729 64.338844299316392 7.2558689819985664 ;
	setAttr ".r" -type "double3" 180 4.1817373090602894 -5.1302637819274998e-16 ;
	setAttr ".rp" -type "double3" -3.0373115436077569e-06 -3.5527136788005009e-15 0 ;
	setAttr ".rpt" -type "double3" 8.0860194691115672e-09 7.1054273576010019e-15 2.2148168511162094e-07 ;
	setAttr ".sp" -type "double3" -3.0373115436077569e-06 -3.5527136788005009e-15 0 ;
createNode transform -n "R_Arm_Shoulder" -p "grpR_Arm_ShoulderZERO";
	rename -uid "A131666B-44B0-5482-3640-429158A50D2E";
createNode nurbsCurve -n "R_Arm_ShoulderShape" -p "R_Arm_Shoulder";
	rename -uid "29AF93F9-42AC-F88A-A474-AEB65453E3C7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.8050992641671783e-16 2.9479508139391033 -2.9479508139391024
		3.1767311880857537e-32 8.4726400182501553 -5.1879957393389131e-16
		-1.8050992641671783e-16 2.9479508139391033 2.9479508139391024
		-5.1879957393389151e-16 4.3922315470219745e-16 8.4726400182501607
		-1.8050992641671783e-16 -2.9479508139391024 2.9479508139391024
		-5.1968508144233298e-32 -8.4726400182501624 8.4871014533195672e-16
		1.8050992641671783e-16 -2.9479508139391033 -2.9479508139391024
		5.1879957393389151e-16 -1.1554109277874445e-15 -8.4726400182501607
		1.8050992641671783e-16 2.9479508139391033 -2.9479508139391024
		3.1767311880857537e-32 8.4726400182501553 -5.1879957393389131e-16
		-1.8050992641671783e-16 2.9479508139391033 2.9479508139391024
		;
createNode joint -n "R_Shoulder_JC" -p "R_Arm_Shoulder";
	rename -uid "2C8E6030-4F75-D369-BE23-6B8AF8117059";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -3.0373115436077569e-06 -3.0931942944789625e-06 2.2207289429587718e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -180 4.1817373090602894 5.1302637819274978e-16 ;
	setAttr ".bps" -type "matrix" 1 8.9301618502898131e-18 1.3877787807814457e-17 0 -8.9301618502898131e-18 1 3.2602904636278765e-19 0
		 1.3877787807814457e-17 -3.2602904636273835e-19 1.0000000000000002 0 71.151631170889445 64.338847392510701 -2.4139480790725988e-16 1;
	setAttr ".radi" 1.9;
createNode transform -n "R_armFollicles" -p "R_Ribbon";
	rename -uid "EC0B6572-451D-250B-0988-3C921B392EB2";
createNode transform -n "R_Arm_PlaneFollicle350" -p "R_armFollicles";
	rename -uid "E5E785D7-42CD-B640-7F2B-43A4684B19DE";
createNode follicle -n "R_Arm_PlaneFollicleShape350" -p "R_Arm_PlaneFollicle350";
	rename -uid "920C474E-469C-5ECF-371B-13873A630304";
	setAttr -k off ".v";
	setAttr ".pu" 0.03125;
	setAttr ".pv" 0.5;
	setAttr ".sim" 0;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode joint -n "R_arm_Bind1" -p "R_Arm_PlaneFollicle350";
	rename -uid "9F9CC159-4F08-82C7-5CC5-0885CA9F8919";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "R_Arm_PlaneFollicle950" -p "R_armFollicles";
	rename -uid "EA6EAD53-405F-8E55-87DF-2A93A46E42F7";
createNode follicle -n "R_Arm_PlaneFollicleShape950" -p "R_Arm_PlaneFollicle950";
	rename -uid "5AFFF9BA-4636-F750-F263-86869BD4DA87";
	setAttr -k off ".v";
	setAttr ".pu" 0.09375;
	setAttr ".pv" 0.5;
	setAttr ".sim" 0;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode joint -n "R_arm_Bind2" -p "R_Arm_PlaneFollicle950";
	rename -uid "F2278D3B-45B8-A022-4ED0-F1BD7B461735";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "R_Arm_PlaneFollicle1550" -p "R_armFollicles";
	rename -uid "9D64CB9B-4A55-57B6-3E4D-51B2895AF7BB";
createNode follicle -n "R_Arm_PlaneFollicleShape1550" -p "R_Arm_PlaneFollicle1550";
	rename -uid "4543E7F2-4D53-F5ED-C25F-F0936E2836E8";
	setAttr -k off ".v";
	setAttr ".pu" 0.15625;
	setAttr ".pv" 0.5;
	setAttr ".sim" 0;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode joint -n "R_arm_Bind3" -p "R_Arm_PlaneFollicle1550";
	rename -uid "89353D10-4642-F8A1-69B3-5AA4D3B0502F";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "R_Arm_PlaneFollicle2250" -p "R_armFollicles";
	rename -uid "81EFEE08-4744-F200-34FD-F0957A75F72C";
createNode follicle -n "R_Arm_PlaneFollicleShape2250" -p "R_Arm_PlaneFollicle2250";
	rename -uid "FBC99D25-4FF0-CD22-FFF3-95AA7542BE5C";
	setAttr -k off ".v";
	setAttr ".pu" 0.21875;
	setAttr ".pv" 0.5;
	setAttr ".sim" 0;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode joint -n "R_arm_Bind4" -p "R_Arm_PlaneFollicle2250";
	rename -uid "AADC1B58-4694-E4E5-2CF6-9787D96D87F6";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "R_Arm_PlaneFollicle2850" -p "R_armFollicles";
	rename -uid "3EE4901B-4E70-8ED1-E11A-B7A60F55F430";
createNode follicle -n "R_Arm_PlaneFollicleShape2850" -p "R_Arm_PlaneFollicle2850";
	rename -uid "275A1CBD-49C7-C9F9-C8FD-C189A4809A9B";
	setAttr -k off ".v";
	setAttr ".pu" 0.28125;
	setAttr ".pv" 0.5;
	setAttr ".sim" 0;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode joint -n "R_arm_Bind5" -p "R_Arm_PlaneFollicle2850";
	rename -uid "4ECFFCAD-45A9-18B9-602E-D783A48E3B24";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "R_Arm_PlaneFollicle3450" -p "R_armFollicles";
	rename -uid "32A7C554-488E-6C7D-E2FE-689D1D5D0980";
createNode follicle -n "R_Arm_PlaneFollicleShape3450" -p "R_Arm_PlaneFollicle3450";
	rename -uid "9056A482-4F36-2871-DEAB-55B9DC277C4B";
	setAttr -k off ".v";
	setAttr ".pu" 0.34375;
	setAttr ".pv" 0.5;
	setAttr ".sim" 0;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode joint -n "R_arm_Bind6" -p "R_Arm_PlaneFollicle3450";
	rename -uid "1C294EEA-4D4D-2B9E-826D-0F8859156E1A";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "R_Arm_PlaneFollicle4050" -p "R_armFollicles";
	rename -uid "D3988BB3-42FF-76BA-E425-73BE6B8B445C";
createNode follicle -n "R_Arm_PlaneFollicleShape4050" -p "R_Arm_PlaneFollicle4050";
	rename -uid "1A969BBE-4A89-823A-35E7-4E9684975FD9";
	setAttr -k off ".v";
	setAttr ".pu" 0.40625;
	setAttr ".pv" 0.5;
	setAttr ".sim" 0;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode joint -n "R_arm_Bind7" -p "R_Arm_PlaneFollicle4050";
	rename -uid "75CD2B30-4A2D-170A-3EC8-67885338AF25";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "R_Arm_PlaneFollicle4650" -p "R_armFollicles";
	rename -uid "916E12C3-4936-55F2-BE3B-2D864064B566";
createNode follicle -n "R_Arm_PlaneFollicleShape4650" -p "R_Arm_PlaneFollicle4650";
	rename -uid "7EFF93F1-4EDC-FD3A-FEAA-6FB39A4AAF70";
	setAttr -k off ".v";
	setAttr ".pu" 0.46875;
	setAttr ".pv" 0.5;
	setAttr ".sim" 0;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode joint -n "R_arm_Bind8" -p "R_Arm_PlaneFollicle4650";
	rename -uid "D71AA50E-4EE8-6272-61EB-A29ADFDB2BC8";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "R_Arm_PlaneFollicle5350" -p "R_armFollicles";
	rename -uid "D8EC4C61-4048-69CC-3154-37B7839548F8";
createNode follicle -n "R_Arm_PlaneFollicleShape5350" -p "R_Arm_PlaneFollicle5350";
	rename -uid "13811435-4DD1-C14D-0BBA-158E7CDA69A8";
	setAttr -k off ".v";
	setAttr ".pu" 0.53125;
	setAttr ".pv" 0.5;
	setAttr ".sim" 0;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode joint -n "R_arm_Bind9" -p "R_Arm_PlaneFollicle5350";
	rename -uid "8C4F44DC-44F7-93DB-15B9-C5B0BE6AD897";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "R_Arm_PlaneFollicle5950" -p "R_armFollicles";
	rename -uid "91ACECCD-469D-F7D4-1F72-9391F9E40D71";
createNode follicle -n "R_Arm_PlaneFollicleShape5950" -p "R_Arm_PlaneFollicle5950";
	rename -uid "68C9E851-47CF-ABEE-09B2-2BA37424AA78";
	setAttr -k off ".v";
	setAttr ".pu" 0.59375;
	setAttr ".pv" 0.5;
	setAttr ".sim" 0;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode joint -n "R_arm_Bind10" -p "R_Arm_PlaneFollicle5950";
	rename -uid "965154FA-4BEE-7C5E-DE6F-00B6D789E4D9";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "R_Arm_PlaneFollicle6550" -p "R_armFollicles";
	rename -uid "5B5A9B5F-4D44-C798-3D33-61AED69D140A";
createNode follicle -n "R_Arm_PlaneFollicleShape6550" -p "R_Arm_PlaneFollicle6550";
	rename -uid "DE682A86-4559-9D6F-8933-A9BA16D9BF65";
	setAttr -k off ".v";
	setAttr ".pu" 0.65625;
	setAttr ".pv" 0.5;
	setAttr ".sim" 0;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode joint -n "R_arm_Bind11" -p "R_Arm_PlaneFollicle6550";
	rename -uid "2BA26041-4DD3-3911-7FB8-BEB90DABD286";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "R_Arm_PlaneFollicle7150" -p "R_armFollicles";
	rename -uid "E6BFB95F-4AF6-5A4D-FA21-B380060BF7FD";
createNode follicle -n "R_Arm_PlaneFollicleShape7150" -p "R_Arm_PlaneFollicle7150";
	rename -uid "D330408E-4338-6D51-2682-1AAFB6F60B73";
	setAttr -k off ".v";
	setAttr ".pu" 0.71875;
	setAttr ".pv" 0.5;
	setAttr ".sim" 0;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode joint -n "R_arm_Bind12" -p "R_Arm_PlaneFollicle7150";
	rename -uid "B99AA01B-4EE2-0CF7-7D5B-CAB92B5EA5A4";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "R_Arm_PlaneFollicle7750" -p "R_armFollicles";
	rename -uid "53955EBA-4741-D1C7-3F39-7FB1BA618AE7";
createNode follicle -n "R_Arm_PlaneFollicleShape7750" -p "R_Arm_PlaneFollicle7750";
	rename -uid "8C3B2B5C-4B69-2DD0-7890-FF82E37350DC";
	setAttr -k off ".v";
	setAttr ".pu" 0.78125;
	setAttr ".pv" 0.5;
	setAttr ".sim" 0;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode joint -n "R_arm_Bind13" -p "R_Arm_PlaneFollicle7750";
	rename -uid "A5BD00FF-47B0-5A26-C9B6-EAA7BE729C54";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "R_Arm_PlaneFollicle8450" -p "R_armFollicles";
	rename -uid "5CFC41BA-4948-8D6B-8858-BC9A0E23F00A";
createNode follicle -n "R_Arm_PlaneFollicleShape8450" -p "R_Arm_PlaneFollicle8450";
	rename -uid "14F4CE23-4E6D-24C2-75EF-489A58A4103A";
	setAttr -k off ".v";
	setAttr ".pu" 0.84375;
	setAttr ".pv" 0.5;
	setAttr ".sim" 0;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode joint -n "R_arm_Bind14" -p "R_Arm_PlaneFollicle8450";
	rename -uid "919A3B4A-4BAE-1F19-C1AB-33A985B9ADB6";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "R_Arm_PlaneFollicle9050" -p "R_armFollicles";
	rename -uid "A5D5F8F9-44C2-F535-A29E-42BACD29FB99";
createNode follicle -n "R_Arm_PlaneFollicleShape9050" -p "R_Arm_PlaneFollicle9050";
	rename -uid "BEF52FDE-48A2-41EE-B7E3-ED93D6886F6A";
	setAttr -k off ".v";
	setAttr ".pu" 0.90625;
	setAttr ".pv" 0.5;
	setAttr ".sim" 0;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode joint -n "R_arm_Bind15" -p "R_Arm_PlaneFollicle9050";
	rename -uid "E1352656-441C-5B14-4C48-91ADAB39F6F0";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "R_Arm_PlaneFollicle9650" -p "R_armFollicles";
	rename -uid "6BE39CD2-4C88-507C-5625-B8A0F14B5796";
createNode follicle -n "R_Arm_PlaneFollicleShape9650" -p "R_Arm_PlaneFollicle9650";
	rename -uid "2D1DD984-4B97-33FE-B2AC-D0BE4241C097";
	setAttr -k off ".v";
	setAttr ".pu" 0.96875;
	setAttr ".pv" 0.5;
	setAttr ".sim" 0;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode joint -n "R_arm_Bind16" -p "R_Arm_PlaneFollicle9650";
	rename -uid "A7B0D4CF-4BDF-11FA-345D-D480010D3C6B";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "grpR_Arm_WristZERO" -p "R_Ribbon";
	rename -uid "BE4E7A92-43D2-724E-C0D6-E59F65F27882";
	setAttr ".t" -type "double3" -68.229518139039698 64.338844299316392 7.2558689819985664 ;
	setAttr ".r" -type "double3" 180 4.1817373090602894 -5.1302637819274998e-16 ;
createNode transform -n "R_Arm_Wrist" -p "grpR_Arm_WristZERO";
	rename -uid "76C4C1CB-4E26-3522-9332-24824DCB5FC1";
createNode nurbsCurve -n "R_Arm_WristShape" -p "R_Arm_Wrist";
	rename -uid "F57B3F13-4CBB-14FB-2B3B-60B2C2DDDEE5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -2.9931380768212948e-16 -4.8881654349731427 
		4.8881654349731427 -9.783314965985019e-33 -2.6093018572937208 1.5977365837719988e-16 
		2.9931380768212948e-16 -4.8881654349731409 -4.8881654349731427 1.5977365837719998e-16 
		-1.3526666905028561e-16 -2.6093018572937208 2.9931380768212948e-16 4.8881654349731427 
		-4.8881654349731427 1.6004636633852591e-32 2.6093018572937208 -2.6137555162836582e-16 
		-2.9931380768212948e-16 4.8881654349731409 4.8881654349731427 -1.5977365837719998e-16 
		3.5582957299251444e-16 2.6093018572937208 0 0 0 0 0 0 0 0 0;
createNode joint -n "R_Wrist_JC" -p "R_Arm_Wrist";
	rename -uid "07CC441E-496B-F8B7-CDED-00AD72790435";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -1.5425599997342943e-07 -3.0931942944789625e-06 1.1278419975724319e-08 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -180 4.1817373090602894 5.1302637819274978e-16 ;
	setAttr ".bps" -type "matrix" 1 8.9301618502898131e-18 1.3877787807814457e-17 0 -8.9301618502898131e-18 1 3.2602904636278765e-19 0
		 1.3877787807814457e-17 -3.2602904636273835e-19 1.0000000000000002 0 31.009673917597866 64.338847392510701 3.787141581159589e-16 1;
	setAttr ".radi" 1.9;
createNode transform -n "R_Arm_Plane" -p "RightRibbonArm";
	rename -uid "0ED3A5B0-4815-0930-7F79-668D2B7766B4";
	setAttr ".t" -type "double3" 51.080652544243655 64.338847392510701 0 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 90.000000000000028 0 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 42.818087736844348 43.791226108745832 3.8925528607852131 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsSurface -n "R_Arm_PlaneShape" -p "R_Arm_Plane";
	rename -uid "06B4E54D-44AB-FE23-FA62-E497DD57BE7D";
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
createNode nurbsSurface -n "R_Arm_PlaneShapeOrig" -p "R_Arm_Plane";
	rename -uid "9D1E5925-45FC-AEF6-96C4-11A9863DA7F0";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 0 no 
		21 0 0 0 0.0625 0.125 0.1875 0.25 0.3125 0.375 0.4375 0.5 0.5625 0.625 0.6875
		 0.75 0.8125 0.875 0.9375 1 1 1
		6 0 0 0 1 1 1
		
		76
		-0.5 -3.061616997868383e-17 0.5
		-0.5 -1.0205389992894611e-17 0.16666666666666669
		-0.5 1.0205389992894608e-17 -0.16666666666666663
		-0.5 3.061616997868383e-17 -0.5
		-0.47916666666666669 -3.061616997868383e-17 0.5
		-0.47916666666666669 -1.0205389992894611e-17 0.16666666666666669
		-0.47916666666666669 1.0205389992894608e-17 -0.16666666666666663
		-0.47916666666666669 3.061616997868383e-17 -0.5
		-0.43750000000000006 -3.061616997868383e-17 0.5
		-0.43750000000000006 -1.0205389992894611e-17 0.16666666666666669
		-0.43750000000000006 1.0205389992894608e-17 -0.16666666666666663
		-0.43750000000000006 3.061616997868383e-17 -0.5
		-0.37500000000000006 -3.061616997868383e-17 0.5
		-0.37500000000000006 -1.0205389992894611e-17 0.16666666666666669
		-0.37500000000000006 1.0205389992894608e-17 -0.16666666666666663
		-0.37500000000000006 3.061616997868383e-17 -0.5
		-0.31250000000000006 -3.061616997868383e-17 0.5
		-0.31250000000000006 -1.0205389992894611e-17 0.16666666666666669
		-0.31250000000000006 1.0205389992894608e-17 -0.16666666666666663
		-0.31250000000000006 3.061616997868383e-17 -0.5
		-0.25000000000000006 -3.061616997868383e-17 0.5
		-0.25000000000000006 -1.0205389992894611e-17 0.16666666666666669
		-0.25000000000000006 1.0205389992894608e-17 -0.16666666666666663
		-0.25000000000000006 3.061616997868383e-17 -0.5
		-0.18750000000000006 -3.061616997868383e-17 0.5
		-0.18750000000000006 -1.0205389992894611e-17 0.16666666666666669
		-0.18750000000000006 1.0205389992894608e-17 -0.16666666666666663
		-0.18750000000000006 3.061616997868383e-17 -0.5
		-0.12500000000000006 -3.061616997868383e-17 0.5
		-0.12500000000000006 -1.0205389992894611e-17 0.16666666666666669
		-0.12500000000000006 1.0205389992894608e-17 -0.16666666666666663
		-0.12500000000000006 3.061616997868383e-17 -0.5
		-0.062500000000000056 -3.061616997868383e-17 0.5
		-0.062500000000000056 -1.0205389992894611e-17 0.16666666666666669
		-0.062500000000000056 1.0205389992894608e-17 -0.16666666666666663
		-0.062500000000000056 3.061616997868383e-17 -0.5
		-4.8572257327350599e-17 -3.061616997868383e-17 0.5
		-4.8572257327350599e-17 -1.0205389992894611e-17 0.16666666666666669
		-4.8572257327350599e-17 1.0205389992894608e-17 -0.16666666666666663
		-4.8572257327350599e-17 3.061616997868383e-17 -0.5
		0.062499999999999951 -3.061616997868383e-17 0.5
		0.062499999999999951 -1.0205389992894611e-17 0.16666666666666669
		0.062499999999999951 1.0205389992894608e-17 -0.16666666666666663
		0.062499999999999951 3.061616997868383e-17 -0.5
		0.12499999999999996 -3.061616997868383e-17 0.5
		0.12499999999999996 -1.0205389992894611e-17 0.16666666666666669
		0.12499999999999996 1.0205389992894608e-17 -0.16666666666666663
		0.12499999999999996 3.061616997868383e-17 -0.5
		0.18749999999999994 -3.061616997868383e-17 0.5
		0.18749999999999994 -1.0205389992894611e-17 0.16666666666666669
		0.18749999999999994 1.0205389992894608e-17 -0.16666666666666663
		0.18749999999999994 3.061616997868383e-17 -0.5
		0.24999999999999997 -3.061616997868383e-17 0.5
		0.24999999999999997 -1.0205389992894611e-17 0.16666666666666669
		0.24999999999999997 1.0205389992894608e-17 -0.16666666666666663
		0.24999999999999997 3.061616997868383e-17 -0.5
		0.31249999999999994 -3.061616997868383e-17 0.5
		0.31249999999999994 -1.0205389992894611e-17 0.16666666666666669
		0.31249999999999994 1.0205389992894608e-17 -0.16666666666666663
		0.31249999999999994 3.061616997868383e-17 -0.5
		0.375 -3.061616997868383e-17 0.5
		0.375 -1.0205389992894611e-17 0.16666666666666669
		0.375 1.0205389992894608e-17 -0.16666666666666663
		0.375 3.061616997868383e-17 -0.5
		0.4375 -3.061616997868383e-17 0.5
		0.4375 -1.0205389992894611e-17 0.16666666666666669
		0.4375 1.0205389992894608e-17 -0.16666666666666663
		0.4375 3.061616997868383e-17 -0.5
		0.47916666666666669 -3.061616997868383e-17 0.5
		0.47916666666666669 -1.0205389992894611e-17 0.16666666666666669
		0.47916666666666669 1.0205389992894608e-17 -0.16666666666666663
		0.47916666666666669 3.061616997868383e-17 -0.5
		0.5 -3.061616997868383e-17 0.5
		0.5 -1.0205389992894611e-17 0.16666666666666669
		0.5 1.0205389992894608e-17 -0.16666666666666663
		0.5 3.061616997868383e-17 -0.5
		
		;
createNode transform -n "grpR_HandControllersZERO" -p "RightRibbonArm";
	rename -uid "5E81127F-4A59-7EB0-1C32-C9B46730A4CA";
createNode parentConstraint -n "grpR_HandControllersZERO_parentConstraint1" -p "grpR_HandControllersZERO";
	rename -uid "6AFC90D8-4EA3-C4BC-19D7-60A0F3CD9FFE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Arm_ShoulderW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 68.576975705341326 64.338844299316378 2.2612349012210831 ;
	setAttr ".tg[0].tor" -type "double3" -180 4.1817373090602894 5.1302637819275007e-16 ;
	setAttr ".lr" -type "double3" 1.8680088355261234e-17 -8.3408106195098423e-35 5.1166058439034444e-16 ;
	setAttr ".rst" -type "double3" 0 1.4210854715202004e-14 4.4408920985006262e-15 ;
	setAttr ".rsrr" -type "double3" 1.8680088355261234e-17 -8.3408106195098423e-35 5.1166058439034444e-16 ;
	setAttr -k on ".w0";
createNode transform -n "grp2R_HandControllersZERO" -p "grpR_HandControllersZERO";
	rename -uid "FF6FB8D5-4FE7-837B-253E-F1A08C36647D";
	setAttr ".rp" -type "double3" -68.263060155203348 85.332164442709313 7.2559202391042028 ;
	setAttr ".sp" -type "double3" -68.263060155203348 85.332164442709313 7.2559202391042028 ;
createNode transform -n "R_HandControllers" -p "grp2R_HandControllersZERO";
	rename -uid "28B5C913-4CEE-D3CF-711F-B9BCFFA555AD";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -68.229518139039698 85.327178375756617 7.2558689819985664 ;
	setAttr ".sp" -type "double3" -68.229518139039698 85.327178375756617 7.2558689819985664 ;
createNode nurbsCurve -n "R_HandControllersShape" -p "R_HandControllers";
	rename -uid "5C1DC86B-470C-9F18-CC2E-D9A565E754A7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 71 0 no 3
		72 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54
		 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71
		72
		-62.642360911824454 90.868144988562435 7.2638972625327529
		-62.863521170699045 91.378299358120643 7.2638736855892647
		-65.034051061542954 91.584363515672649 7.2617060908332052
		-65.43498478786104 91.049889835559256 7.2610747870315508
		-65.808722284857268 91.680143133426569 7.2609414346376138
		-68.764801890744238 91.516096117540229 7.2578100031228763
		-68.856048435932081 90.935545743805392 7.257481242123407
		-69.348978201650851 91.452046016757919 7.2571784166452833
		-71.534012748133108 91.036922452720219 7.2547452478051069
		-71.783275777306955 90.343525611698368 7.2542071210736454
		-72.317749381221375 90.744459744480579 7.2538146078069428
		-74.557019339582808 89.670230783881564 7.2510593738545888
		-74.490249400784634 89.202526877433755 7.2509399785871116
		-73.931613284009671 86.509149906033954 7.2504329727142425
		-71.912004596097162 84.830484582589648 7.2518501510771127
		-70.660564297892634 85.189717064494886 7.2532926996094513
		-70.730053859622984 85.540948273144608 7.2533622997361551
		-71.580403384744855 87.386538030752888 7.2532248927087295
		-71.783275777306955 90.343525611698368 7.2542071210736454
		-71.580403384744855 87.386538030752888 7.2532248927087295
		-70.730053859622984 85.540948273144608 7.2533622997361551
		-70.11702528420426 85.177025257706234 7.253851196678724
		-68.278689052160928 85.716780538191841 7.2559751268294272
		-68.269623642386961 86.105022864185415 7.2561411106319991
		-68.992622029989718 88.413783740102701 7.2563225621110741
		-68.856048435932081 90.935545743805392 7.257481242123407
		-68.992622029989718 88.413783740102701 7.2563225621110741
		-68.269623642386961 86.105022864185415 7.2561411106319991
		-67.928364573812431 85.74744575214136 7.256350759039929
		-66.057549913347415 86.01452484680371 7.2583983931766376
		-65.930198775828302 86.477695965112716 7.2587172516831409
		-65.957080911621048 88.653666105932246 7.2595669756819374
		-65.517165923274931 90.857581787817992 7.2609120098346533
		-65.957080911621048 88.653666105932246 7.2595669756819374
		-65.930198775828302 86.477695965112716 7.2587172516831409
		-65.554648196877281 85.925091132444109 7.2588838008375909
		-63.933096565586126 85.498773386084608 7.2603933082428362
		-63.346200631747323 85.679296184664977 7.2610746898612009
		-62.858396018363798 88.270547634916539 7.2626256004642933
		-62.642360911824454 90.868144988562435 7.2638972625327529
		-62.858396018363798 88.270547634916539 7.2626256004642933
		-63.142103170034602 86.763475852395885 7.2617235908940119
		-62.524546324372984 85.932028102677506 7.2620286241269119
		-61.834183411956481 82.225594853183381 7.2612496309585737
		-64.234346524000671 79.251698168099139 7.2575613984301963
		-65.364781471527849 79.083867176307407 7.256321519742559
		-64.234346524000671 79.251698168099139 7.2575613984301963
		-61.834183411956481 82.225594853183381 7.2612496309585737
		-62.524546324372984 85.932028102677506 7.2620286241269119
		-63.142103170034602 86.763475852395885 7.2617235908940119
		-65.778371031919505 87.989121363604369 7.2594842664565906
		-66.322816586585276 87.962988937793654 7.2589091710070601
		-67.01999642613724 86.386606880891947 7.257550462403823
		-66.405311815528293 84.429983771252154 7.2573987184036488
		-64.01906091167416 83.480819848545792 7.2594902998216533
		-64.003806761823 82.470483243334741 7.2590986345827702
		-64.01906091167416 83.480819848545792 7.2594902998216533
		-66.405311815528293 84.429983771252154 7.2573987184036488
		-66.865164527212585 85.893756293262499 7.2575122398563705
		-67.928364573812431 85.74744575214136 7.256350759039929
		-68.269623642386961 86.105022864185415 7.2561411106319991
		-68.278689052160928 85.716780538191841 7.2559751268294272
		-70.11702528420426 85.177025257706234 7.253851196678724
		-70.730053859622984 85.540948273144608 7.2533622997361551
		-70.660564297892634 85.189717064494886 7.2532926996094513
		-71.912004596097162 84.830484582589648 7.2518501510771127
		-73.931613284009671 86.509149906033954 7.2504329727142425
		-74.20506298291302 87.827545011087992 7.2506811496564687
		-74.691936898450209 85.555768685977469 7.2492600528995137
		-74.067594430619025 80.685515016130381 7.2479432156756527
		-72.35857946481417 79.014102153708151 7.249041252856081
		-71.077380361120149 78.984185751992058 7.2503577102336516
		;
createNode transform -n "LeftRibbonArm" -p "RibbonArms";
	rename -uid "D6BB22F9-4D6A-1232-9FE9-F4B5A3C1A76A";
createNode transform -n "grpL_HandControllersZERO" -p "LeftRibbonArm";
	rename -uid "B7989BA0-40DD-65B9-7E5F-F0A2931CBA74";
createNode parentConstraint -n "grpL_HandControllersZERO_parentConstraint1" -p "grpL_HandControllersZERO";
	rename -uid "1C8ED60C-4709-E930-8786-EF930CE140DE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Arm_WristW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -70.962212258346142 64.33884429931642 5.1883988910651002 ;
	setAttr ".tg[0].tor" -type "double3" -180 4.1817373090602894 5.1302637819275007e-16 ;
	setAttr ".lr" -type "double3" 1.8680088355261234e-17 -8.3408106195098423e-35 5.1166058439034444e-16 ;
	setAttr ".rst" -type "double3" 0 -1.4210854715202004e-14 8.8817841970012513e-16 ;
	setAttr ".rsrr" -type "double3" 1.8680088355261234e-17 -8.3408106195098423e-35 5.1166058439034444e-16 ;
	setAttr -k on ".w0";
createNode transform -n "grp2L_HandControllersZERO" -p "grpL_HandControllersZERO";
	rename -uid "BF8F2465-49C9-A73A-E89D-F4AC56F27C63";
	setAttr ".rp" -type "double3" 71.185176232472244 85.332164442709328 -5.1257105645681304e-05 ;
	setAttr ".sp" -type "double3" 71.185176232472244 85.332164442709328 -5.1257105645681304e-05 ;
createNode transform -n "L_HandControllers" -p "grp2L_HandControllersZERO";
	rename -uid "D4274A50-4330-50CC-25A5-8D9FCE3FD66E";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 71.151634216308594 85.327178375756631 -9.3206926960754832e-15 ;
	setAttr ".sp" -type "double3" 71.151634216308594 85.327178375756631 -9.3206926960754832e-15 ;
createNode nurbsCurve -n "L_HandControllersShape" -p "L_HandControllers";
	rename -uid "0B23B6F2-490C-8C00-55AF-4795B523C35B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		1 71 0 no 3
		72 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54
		 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71
		72
		65.56447698909335 90.868144988562449 -0.0080282805342074739
		65.785637247967941 91.378299358120657 -0.0080047035907197996
		67.95616713881185 91.584363515672663 -0.0058371088346570723
		68.357100865129937 91.04988983555927 -0.0052058050330012406
		68.730838362126164 91.680143133426583 -0.0050724526390641426
		71.686917968013134 91.516096117540243 -0.0019410211243227427
		71.778164513200977 90.935545743805406 -0.0016122601248529465
		72.271094278919747 91.452046016757933 -0.0013094346467287679
		74.456128825402004 91.036922452720233 0.0011237341934512025
		74.705391854575851 90.343525611698368 0.0016618609249132942
		75.239865458490272 90.744459744480594 0.002054374191616313
		77.479135416851705 89.670230783881578 0.0048096081439744243
		77.41236547805353 89.202526877433769 0.0049290034114519259
		76.853729361278567 86.509149906033969 0.0054360092843224479
		74.834120673366058 84.830484582589662 0.0040188309214505271
		73.58268037516153 85.1897170644949 0.0025762823891092765
		73.65216993689188 85.540948273144622 0.0025066822624054005
		74.502519462013751 87.386538030752902 0.0026440892898314961
		74.705391854575851 90.343525611698368 0.0016618609249132942
		74.502519462013751 87.386538030752902 0.0026440892898314961
		73.65216993689188 85.540948273144622 0.0025066822624054005
		73.039141361473156 85.177025257706248 0.0020177853198362667
		71.200805129429824 85.716780538191855 -0.00010614483087039399
		71.191739719655857 86.105022864185429 -0.00027212863344257482
		71.914738107258614 88.413783740102716 -0.0004535801125178655
		71.778164513200977 90.935545743805406 -0.0016122601248529465
		71.914738107258614 88.413783740102716 -0.0004535801125178655
		71.191739719655857 86.105022864185429 -0.00027212863344257482
		70.850480651081327 85.747445752141374 -0.00048177704137301387
		68.979665990616311 86.014524846803724 -0.0025294111780841439
		68.852314853097198 86.47769596511273 -0.0028482696845877199
		68.879196988889944 88.65366610593226 -0.0036979936833854451
		68.439282000543827 90.857581787818006 -0.0050430278361036258
		68.879196988889944 88.65366610593226 -0.0036979936833854451
		68.852314853097198 86.47769596511273 -0.0028482696845877199
		68.476764274146177 85.925091132444123 -0.0030148188390383785
		66.855212642855022 85.498773386084622 -0.004524326244285227
		66.268316709016219 85.679296184664992 -0.0052057078626506371
		65.780512095632687 88.270547634916554 -0.0067566184657462131
		65.56447698909335 90.868144988562449 -0.0080282805342074739
		65.780512095632687 88.270547634916554 -0.0067566184657462131
		66.064219247303498 86.763475852395899 -0.005854608895462951
		65.446662401641888 85.932028102677521 -0.0061596421283630883
		64.756299489225384 82.225594853183395 -0.0053806489600240039
		67.156462601269567 79.251698168099153 -0.0016924164316406475
		68.286897548796745 79.083867176307422 -0.00045253774400222743
		67.156462601269567 79.251698168099153 -0.0016924164316406475
		64.756299489225384 82.225594853183395 -0.0053806489600240039
		65.446662401641888 85.932028102677521 -0.0061596421283630883
		66.064219247303498 86.763475852395899 -0.005854608895462951
		68.700487109188401 87.989121363604383 -0.0036152844580385935
		69.244932663854172 87.962988937793668 -0.0030401890085077084
		69.942112503406136 86.386606880891961 -0.0016814804052680751
		69.327427892797189 84.429983771252168 -0.0015297364050936354
		66.941176988943056 83.480819848545806 -0.0036213178231011673
		66.925922839091896 82.470483243334755 -0.0032296525842169599
		66.941176988943056 83.480819848545806 -0.0036213178231011673
		69.327427892797189 84.429983771252168 -0.0015297364050936354
		69.787280604481481 85.893756293262513 -0.0016432578578156978
		70.850480651081327 85.747445752141374 -0.00048177704137301387
		71.191739719655857 86.105022864185429 -0.00027212863344257482
		71.200805129429824 85.716780538191855 -0.00010614483087039399
		73.039141361473156 85.177025257706248 0.0020177853198362667
		73.65216993689188 85.540948273144622 0.0025066822624054005
		73.58268037516153 85.1897170644949 0.0025762823891092765
		74.834120673366058 84.830484582589662 0.0040188309214505271
		76.853729361278567 86.509149906033969 0.0054360092843224479
		77.127179060181916 87.827545011088006 0.0051878323420953398
		77.614052975719105 85.555768685977483 0.0066089290990530795
		76.989710507887921 80.685515016130395 0.0079257663229161113
		75.280695542083066 79.014102153708166 0.0068277291424859105
		73.999496438389045 78.984185751992072 0.0055112717649138162
		;
createNode transform -n "L_Ribbon" -p "LeftRibbonArm";
	rename -uid "6A700950-40E3-25F8-C857-7DAEEDA47DC5";
createNode transform -n "L_Elbow_FollowGRP" -p "L_Ribbon";
	rename -uid "9A75C505-41F2-7DAC-4F3D-E0BBCAF4F8EA";
	setAttr ".rp" -type "double3" 51.08065255275168 64.338844299316406 1.1636504027023875e-07 ;
	setAttr ".sp" -type "double3" 51.08065255275168 64.338844299316406 1.1636504027023875e-07 ;
createNode transform -n "grpL_Arm_ElbowZERO2" -p "L_Elbow_FollowGRP";
	rename -uid "71C6D8FD-47A5-48F0-ABC1-14A601B5FE1C";
	setAttr ".t" -type "double3" 51.080654144287109 64.338844299316406 -1.1545048412434398e-31 ;
	setAttr ".r" -type "double3" 180 4.1817373090602894 4.4256884951749546e-32 ;
createNode transform -n "L_Arm_Elbow" -p "grpL_Arm_ElbowZERO2";
	rename -uid "FB0F8689-4822-2F9C-5F82-929BE93E7E71";
createNode nurbsCurve -n "L_Arm_ElbowShape" -p "L_Arm_Elbow";
	rename -uid "A5B627F7-4316-CBDC-92AA-5DB2E52AF100";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.8050992641671783e-16 2.9479508139391033 -2.9479508139391024
		3.1767311880857537e-32 8.4726400182501553 -5.1879957393389131e-16
		-1.8050992641671783e-16 2.9479508139391033 2.9479508139391024
		-5.1879957393389151e-16 4.3922315470219745e-16 8.4726400182501607
		-1.8050992641671783e-16 -2.9479508139391024 2.9479508139391024
		-5.1968508144233298e-32 -8.4726400182501624 8.4871014533195672e-16
		1.8050992641671783e-16 -2.9479508139391033 -2.9479508139391024
		5.1879957393389151e-16 -1.1554109277874445e-15 -8.4726400182501607
		1.8050992641671783e-16 2.9479508139391033 -2.9479508139391024
		3.1767311880857537e-32 8.4726400182501553 -5.1879957393389131e-16
		-1.8050992641671783e-16 2.9479508139391033 2.9479508139391024
		;
createNode joint -n "L_Elbow_JC" -p "L_Arm_Elbow";
	rename -uid "60EBEACC-4C5E-56C3-4D43-F7B584473DF8";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" -1.5957837717905932e-06 -3.0931942944789625e-06 1.1667565713580075e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -180 4.1817373090602894 5.1302637819274978e-16 ;
	setAttr ".bps" -type "matrix" 1 8.9301618502898131e-18 1.3877787807814457e-17 0 -8.9301618502898131e-18 1 3.2602904636278765e-19 0
		 1.3877787807814457e-17 -3.2602904636273835e-19 1.0000000000000002 0 51.080654135779085 64.338847392510701 -1.1636504020157908e-07 1;
	setAttr ".radi" 1.9;
createNode pointConstraint -n "Elbow_FollowGRP_pointConstraint1" -p "L_Elbow_FollowGRP";
	rename -uid "97EA4A3C-40F4-040E-FD04-479032FEDA55";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Arm_ShoulderW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "L_Arm_WristW1" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 1.5915354296680562e-06 0 -1.1636504027023875e-07 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "grpL_Arm_Secundary_UP01" -p "L_Elbow_FollowGRP";
	rename -uid "4B5CDF2A-4AA7-6BB9-47BA-D8BBB1D8BA19";
createNode transform -n "L_Arm_Secundary_Up01" -p "grpL_Arm_Secundary_UP01";
	rename -uid "B9B15B29-482D-238F-3D82-B9A2FF45A93F";
createNode nurbsCurve -n "L_Arm_Secundary_Up01Shape" -p "|RibbonArms|LeftRibbonArm|L_Ribbon|L_Elbow_FollowGRP|grpL_Arm_Secundary_UP01|L_Arm_Secundary_Up01";
	rename -uid "3B08105D-462A-1CAF-7311-7EAA9553F67E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.5645315007032525e-16 4.1881977766794174 -4.1881977766794174
		2.1975163036202565e-32 5.8609820826638837 -3.5888164736971595e-16
		-2.5645315007032525e-16 4.1881977766794174 4.1881977766794174
		-3.5888164736971615e-16 3.0383434613717367e-16 5.8609820826638872
		-2.5645315007032525e-16 -4.1881977766794174 4.1881977766794174
		-3.5949420067421869e-32 -5.860982082663889 5.8709858372963139e-16
		2.5645315007032525e-16 -4.1881977766794174 -4.1881977766794174
		3.5888164736971615e-16 -7.9926005723005425e-16 -5.8609820826638872
		2.5645315007032525e-16 4.1881977766794174 -4.1881977766794174
		2.1975163036202565e-32 5.8609820826638837 -3.5888164736971595e-16
		-2.5645315007032525e-16 4.1881977766794174 4.1881977766794174
		;
createNode joint -n "L_Arm_Secundary_Up01" -p "|RibbonArms|LeftRibbonArm|L_Ribbon|L_Elbow_FollowGRP|grpL_Arm_Secundary_UP01|L_Arm_Secundary_Up01";
	rename -uid "1CB71072-48DF-FAB4-C070-0D84AD571E39";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -1.5957837717905932e-06 -3.0931942944789625e-06 1.1667565713580075e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -180 4.1817373090602894 -4.4256884951749546e-32 ;
	setAttr ".bps" -type "matrix" 1 8.9301618502898131e-18 1.3877787807814457e-17 0 -8.9301618502898131e-18 1 3.2602904636278765e-19 0
		 1.3877787807814457e-17 -3.2602904636273835e-19 1.0000000000000002 0 37.699999693407811 64.338847392510701 -3.878834668808658e-08 1;
	setAttr ".radi" 1.9;
createNode pointConstraint -n "grpL_Arm_Secundary_UP01_pointConstraint1" -p "grpL_Arm_Secundary_UP01";
	rename -uid "AC8ECFAA-418A-C90F-849B-11B6E8B37EBC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Arm_ElbowW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "L_Arm_ShoulderW1" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 41.045163312508656 64.338844299316406 5.8182520135119375e-08 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1" 2;
createNode aimConstraint -n "grpL_Arm_Secundary_UP01_aimConstraint1" -p "grpL_Arm_Secundary_UP01";
	rename -uid "446C6701-4E1C-0D5E-7B10-66A696A953B7";
	addAttr -dcb 0 -ci true -sn "w0" -ln "L_Arm_ElbowW0" -dv 1 -at "double";
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
	setAttr ".o" -type "double3" 180 4.1817373090602894 4.4256884951749546e-32 ;
	setAttr ".rsrr" -type "double3" 180 4.1817373090602894 4.4256884951749546e-32 ;
	setAttr -k on ".w0";
createNode transform -n "grpL_Arm_Secundary_UP02" -p "L_Elbow_FollowGRP";
	rename -uid "7A23682D-4162-45C0-457B-9EAC036B2091";
createNode transform -n "L_Arm_Secundary_Up02" -p "grpL_Arm_Secundary_UP02";
	rename -uid "13D76FBD-46B8-8CEE-3CC5-CFB970D07338";
createNode nurbsCurve -n "L_Arm_Secundary_Up02Shape" -p "|RibbonArms|LeftRibbonArm|L_Ribbon|L_Elbow_FollowGRP|grpL_Arm_Secundary_UP02|L_Arm_Secundary_Up02";
	rename -uid "22856179-4471-3DB0-EE4F-C5A3E8ADBFE5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.5645315007032525e-16 4.1881977766794174 -4.1881977766794174
		2.1975163036202565e-32 5.8609820826638837 -3.5888164736971595e-16
		-2.5645315007032525e-16 4.1881977766794174 4.1881977766794174
		-3.5888164736971615e-16 3.0383434613717367e-16 5.8609820826638872
		-2.5645315007032525e-16 -4.1881977766794174 4.1881977766794174
		-3.5949420067421869e-32 -5.860982082663889 5.8709858372963139e-16
		2.5645315007032525e-16 -4.1881977766794174 -4.1881977766794174
		3.5888164736971615e-16 -7.9926005723005425e-16 -5.8609820826638872
		2.5645315007032525e-16 4.1881977766794174 -4.1881977766794174
		2.1975163036202565e-32 5.8609820826638837 -3.5888164736971595e-16
		-2.5645315007032525e-16 4.1881977766794174 4.1881977766794174
		;
createNode joint -n "L_Arm_Secundary_Up02" -p "|RibbonArms|LeftRibbonArm|L_Ribbon|L_Elbow_FollowGRP|grpL_Arm_Secundary_UP02|L_Arm_Secundary_Up02";
	rename -uid "EC78ECAC-4043-FA9B-4DF6-6E9506922613";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -1.5957837717905932e-06 -3.0931942944789625e-06 1.1667565713580075e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -180 4.1817373090602894 -4.4256884951749546e-32 ;
	setAttr ".bps" -type "matrix" 1 8.9301618502898131e-18 1.3877787807814457e-17 0 -8.9301618502898131e-18 1 3.2602904636278765e-19 0
		 1.3877787807814457e-17 -3.2602904636273835e-19 1.0000000000000002 0 44.390326914593452 64.338847392510701 -7.7576693444832831e-08 1;
	setAttr ".radi" 1.9;
createNode pointConstraint -n "grpL_Arm_Secundary_UP02_pointConstraint1" -p "grpL_Arm_Secundary_UP02";
	rename -uid "B98F2C64-4362-2EF6-7EB8-37916E002284";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Arm_ElbowW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "L_Arm_ShoulderW1" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 41.045163312508656 64.338844299316406 5.8182520135119375e-08 ;
	setAttr -k on ".w0" 2;
	setAttr -k on ".w1";
createNode aimConstraint -n "grpL_Arm_Secundary_UP02_aimConstraint1" -p "grpL_Arm_Secundary_UP02";
	rename -uid "0CF7A00F-49C0-84BB-DC88-4FA44FC06C5A";
	addAttr -dcb 0 -ci true -sn "w0" -ln "L_Arm_ElbowW0" -dv 1 -at "double";
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
	setAttr ".o" -type "double3" 180 4.1817373090602894 4.4256884951749546e-32 ;
	setAttr ".rsrr" -type "double3" 180 4.1817373090602894 4.4256884951749546e-32 ;
	setAttr -k on ".w0";
createNode transform -n "grpL_Arm_Secundary_Down01" -p "L_Elbow_FollowGRP";
	rename -uid "8347E6BE-4AF8-AABD-5CDE-F1A70FA656E7";
	setAttr ".rp" -type "double3" -1.5957837717905932e-06 -2.6645352591003757e-15 0 ;
	setAttr ".rpt" -type "double3" 4.2483421479588649e-09 5.3290705182007514e-15 1.1636503986355715e-07 ;
	setAttr ".sp" -type "double3" -1.5957837717905932e-06 -2.6645352591003757e-15 0 ;
createNode transform -n "L_Arm_Secundary_Down01" -p "grpL_Arm_Secundary_Down01";
	rename -uid "ED488BCC-44D9-78DE-526E-EF90A59D72CB";
createNode nurbsCurve -n "L_Arm_Secundary_Down01Shape" -p "|RibbonArms|LeftRibbonArm|L_Ribbon|L_Elbow_FollowGRP|grpL_Arm_Secundary_Down01|L_Arm_Secundary_Down01";
	rename -uid "766A369C-4E0B-89A2-097F-9899F065CF62";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.5645315007032525e-16 4.1881977766794174 -4.1881977766794174
		2.1975163036202565e-32 5.8609820826638837 -3.5888164736971595e-16
		-2.5645315007032525e-16 4.1881977766794174 4.1881977766794174
		-3.5888164736971615e-16 3.0383434613717367e-16 5.8609820826638872
		-2.5645315007032525e-16 -4.1881977766794174 4.1881977766794174
		-3.5949420067421869e-32 -5.860982082663889 5.8709858372963139e-16
		2.5645315007032525e-16 -4.1881977766794174 -4.1881977766794174
		3.5888164736971615e-16 -7.9926005723005425e-16 -5.8609820826638872
		2.5645315007032525e-16 4.1881977766794174 -4.1881977766794174
		2.1975163036202565e-32 5.8609820826638837 -3.5888164736971595e-16
		-2.5645315007032525e-16 4.1881977766794174 4.1881977766794174
		;
createNode joint -n "L_Arm_Secundary_Down01" -p "|RibbonArms|LeftRibbonArm|L_Ribbon|L_Elbow_FollowGRP|grpL_Arm_Secundary_Down01|L_Arm_Secundary_Down01";
	rename -uid "B8F188BD-4A0E-CA36-A819-CA9C534D92D4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -1.5957837717905932e-06 -3.0931942944789625e-06 1.1667565713580075e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -180 4.1817373090602894 -4.4256884951749546e-32 ;
	setAttr ".bps" -type "matrix" 1 8.9301618502898131e-18 1.3877787807814457e-17 0 -8.9301618502898131e-18 1 3.2602904636278765e-19 0
		 1.3877787807814457e-17 -3.2602904636273835e-19 1.0000000000000002 0 57.770981887476538 64.338847392510701 -1.9394173330838999e-07 1;
	setAttr ".radi" 1.9;
createNode pointConstraint -n "grpL_Arm_Secundary_Down01_pointConstraint1" -p "grpL_Arm_Secundary_Down01";
	rename -uid "60241581-4782-1EFA-AAD3-1CB18C3E1228";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Arm_ElbowW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "L_Arm_WristW1" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 61.11614497606557 64.338844299316406 -5.8182519728437774e-08 ;
	setAttr -k on ".w0" 2;
	setAttr -k on ".w1";
createNode aimConstraint -n "grpL_Arm_Secundary_Down01_aimConstraint1" -p "grpL_Arm_Secundary_Down01";
	rename -uid "97D3A061-484C-8F79-4787-149EF070D30A";
	addAttr -dcb 0 -ci true -sn "w0" -ln "L_Arm_ElbowW0" -dv 1 -at "double";
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
	setAttr ".o" -type "double3" 180 4.1817373090602894 4.4256884951749546e-32 ;
	setAttr ".rsrr" -type "double3" 180 4.1817373090602894 4.4256884951749546e-32 ;
	setAttr -k on ".w0";
createNode transform -n "grpL_Arm_Secundary_Down02" -p "L_Elbow_FollowGRP";
	rename -uid "B4E8AE0B-4985-084E-1912-C0AE7F80D441";
createNode transform -n "L_Arm_Secundary_Down02" -p "grpL_Arm_Secundary_Down02";
	rename -uid "AE9DE604-472C-94F7-FC6E-73823610FDD1";
createNode nurbsCurve -n "L_Arm_Secundary_Down02Shape" -p "|RibbonArms|LeftRibbonArm|L_Ribbon|L_Elbow_FollowGRP|grpL_Arm_Secundary_Down02|L_Arm_Secundary_Down02";
	rename -uid "0D4565B1-4E29-640B-EF9B-15801438B113";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.5645315007032525e-16 4.1881977766794174 -4.1881977766794174
		2.1975163036202565e-32 5.8609820826638837 -3.5888164736971595e-16
		-2.5645315007032525e-16 4.1881977766794174 4.1881977766794174
		-3.5888164736971615e-16 3.0383434613717367e-16 5.8609820826638872
		-2.5645315007032525e-16 -4.1881977766794174 4.1881977766794174
		-3.5949420067421869e-32 -5.860982082663889 5.8709858372963139e-16
		2.5645315007032525e-16 -4.1881977766794174 -4.1881977766794174
		3.5888164736971615e-16 -7.9926005723005425e-16 -5.8609820826638872
		2.5645315007032525e-16 4.1881977766794174 -4.1881977766794174
		2.1975163036202565e-32 5.8609820826638837 -3.5888164736971595e-16
		-2.5645315007032525e-16 4.1881977766794174 4.1881977766794174
		;
createNode joint -n "L_Arm_Secundary_Down02" -p "|RibbonArms|LeftRibbonArm|L_Ribbon|L_Elbow_FollowGRP|grpL_Arm_Secundary_Down02|L_Arm_Secundary_Down02";
	rename -uid "53727C02-4823-AA91-72CF-CB8169942755";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -1.5957837717905932e-06 -3.0931942944789625e-06 1.1667565713580075e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -180 4.1817373090602894 -4.4256884951749546e-32 ;
	setAttr ".bps" -type "matrix" 1 8.9301618502898131e-18 1.3877787807814457e-17 0 -8.9301618502898131e-18 1 3.2602904636278765e-19 0
		 1.3877787807814457e-17 -3.2602904636273835e-19 1.0000000000000002 0 64.461306456103117 64.338847392510701 -3.878834668808658e-08 1;
	setAttr ".radi" 1.9;
createNode pointConstraint -n "grpL_Arm_Secundary_Down02_pointConstraint1" -p "grpL_Arm_Secundary_Down02";
	rename -uid "ACE38D15-414D-CD11-4662-B7BF8ED2A420";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Arm_WristW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "L_Arm_ElbowW1" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 61.11614338453014 64.338844299316406 5.8182520135119375e-08 ;
	setAttr -k on ".w0" 2;
	setAttr -k on ".w1";
createNode aimConstraint -n "grpL_Arm_Secundary_Down02_aimConstraint1" -p "grpL_Arm_Secundary_Down02";
	rename -uid "D40BD817-42DC-C872-0E54-26B3B7B608BC";
	addAttr -dcb 0 -ci true -sn "w0" -ln "L_Arm_ElbowW0" -dv 1 -at "double";
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
	setAttr ".o" -type "double3" 180 4.1817373090602894 4.4256884951749546e-32 ;
	setAttr ".rsrr" -type "double3" 180 4.1817373090602894 4.4256884951749546e-32 ;
	setAttr -k on ".w0";
createNode transform -n "grpL_Arm_WristZERO1" -p "L_Ribbon";
	rename -uid "A467851F-47E1-A7A7-0493-D3ACDC0A1EE0";
	setAttr ".t" -type "double3" 71.151634216308594 64.338844299316406 -1.1545048412434398e-31 ;
	setAttr ".r" -type "double3" 180 4.1817373090602894 -5.1302637819274998e-16 ;
createNode transform -n "L_Arm_Wrist" -p "grpL_Arm_WristZERO1";
	rename -uid "5C52D5DD-493F-E00C-6D70-07BF825400CC";
createNode nurbsCurve -n "L_Arm_WristShape" -p "L_Arm_Wrist";
	rename -uid "D7584896-4467-6A7F-A4D2-5BA46D86D095";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.8050992641671783e-16 2.9479508139391033 -2.9479508139391024
		3.1767311880857537e-32 8.4726400182501553 -5.1879957393389131e-16
		-1.8050992641671783e-16 2.9479508139391033 2.9479508139391024
		-5.1879957393389151e-16 4.3922315470219745e-16 8.4726400182501607
		-1.8050992641671783e-16 -2.9479508139391024 2.9479508139391024
		-5.1968508144233298e-32 -8.4726400182501624 8.4871014533195672e-16
		1.8050992641671783e-16 -2.9479508139391033 -2.9479508139391024
		5.1879957393389151e-16 -1.1554109277874445e-15 -8.4726400182501607
		1.8050992641671783e-16 2.9479508139391033 -2.9479508139391024
		3.1767311880857537e-32 8.4726400182501553 -5.1879957393389131e-16
		-1.8050992641671783e-16 2.9479508139391033 2.9479508139391024
		;
createNode joint -n "L_Wrist_JC" -p "L_Arm_Wrist";
	rename -uid "6ACEC9A5-44F6-1077-DE28-78AB4D7AA565";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -3.0373115436077569e-06 -3.0931942944789625e-06 2.2207289429587718e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -180 4.1817373090602894 5.1302637819274978e-16 ;
	setAttr ".bps" -type "matrix" 1 8.9301618502898131e-18 1.3877787807814457e-17 0 -8.9301618502898131e-18 1 3.2602904636278765e-19 0
		 1.3877787807814457e-17 -3.2602904636273835e-19 1.0000000000000002 0 71.151631170889445 64.338847392510701 -2.4139480790725988e-16 1;
	setAttr ".radi" 1.9;
createNode transform -n "L_armFollicles" -p "L_Ribbon";
	rename -uid "C0A0AEE9-4C54-A7AF-ABAD-EFB3436E75CC";
createNode transform -n "L_Arm_PlaneFollicle350" -p "L_armFollicles";
	rename -uid "6D51649A-4EA6-9523-C0F0-5EB1E714C60E";
createNode follicle -n "L_Arm_PlaneFollicleShape350" -p "L_Arm_PlaneFollicle350";
	rename -uid "8F8A000A-4FB4-DB7B-618D-CB844E623F66";
	setAttr -k off ".v";
	setAttr ".pu" 0.03125;
	setAttr ".pv" 0.5;
	setAttr ".sim" 0;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode joint -n "L_arm_Bind1" -p "L_Arm_PlaneFollicle350";
	rename -uid "44EE94A5-4664-A8BF-2763-BAA7EDF15352";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "L_Arm_PlaneFollicle950" -p "L_armFollicles";
	rename -uid "A7D47730-4AE9-C1B4-F2A2-FB94B06666A8";
createNode follicle -n "L_Arm_PlaneFollicleShape950" -p "L_Arm_PlaneFollicle950";
	rename -uid "217DD355-4F6D-E85C-75E3-B9A5975867A4";
	setAttr -k off ".v";
	setAttr ".pu" 0.09375;
	setAttr ".pv" 0.5;
	setAttr ".sim" 0;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode joint -n "L_arm_Bind2" -p "L_Arm_PlaneFollicle950";
	rename -uid "2BE0F04F-4146-0FAE-DFB3-74B73133E856";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "L_Arm_PlaneFollicle1550" -p "L_armFollicles";
	rename -uid "F8041F5A-49B0-36BB-37F4-6F89280DCC2C";
createNode follicle -n "L_Arm_PlaneFollicleShape1550" -p "L_Arm_PlaneFollicle1550";
	rename -uid "614F0D43-4703-ACFD-37F7-22A5FD3C207E";
	setAttr -k off ".v";
	setAttr ".pu" 0.15625;
	setAttr ".pv" 0.5;
	setAttr ".sim" 0;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode joint -n "L_arm_Bind3" -p "L_Arm_PlaneFollicle1550";
	rename -uid "F6FA04CA-4C77-A5C5-C49C-D19E2C403963";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "L_Arm_PlaneFollicle2250" -p "L_armFollicles";
	rename -uid "AD2CC29E-45D4-8297-4A4F-2E8133584703";
createNode follicle -n "L_Arm_PlaneFollicleShape2250" -p "L_Arm_PlaneFollicle2250";
	rename -uid "B273BDCB-4C45-B084-53B0-A88F9FFB658A";
	setAttr -k off ".v";
	setAttr ".pu" 0.21875;
	setAttr ".pv" 0.5;
	setAttr ".sim" 0;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode joint -n "L_arm_Bind4" -p "L_Arm_PlaneFollicle2250";
	rename -uid "93ACC31B-4A43-94AE-D1CE-489EB8FCDDB5";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "L_Arm_PlaneFollicle2850" -p "L_armFollicles";
	rename -uid "5FB88E90-4D85-FC3A-8CA3-9E975FFF199C";
createNode follicle -n "L_Arm_PlaneFollicleShape2850" -p "L_Arm_PlaneFollicle2850";
	rename -uid "11166DD5-4998-C9CF-A4C9-8EB602819B54";
	setAttr -k off ".v";
	setAttr ".pu" 0.28125;
	setAttr ".pv" 0.5;
	setAttr ".sim" 0;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode joint -n "L_arm_Bind5" -p "L_Arm_PlaneFollicle2850";
	rename -uid "C0FFB75B-4987-5662-B2DA-4091AED3E1C9";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "L_Arm_PlaneFollicle3450" -p "L_armFollicles";
	rename -uid "579C3E37-4E65-727B-6A37-959429ADD1DC";
createNode follicle -n "L_Arm_PlaneFollicleShape3450" -p "L_Arm_PlaneFollicle3450";
	rename -uid "4B98DC87-48F0-74A0-B0E9-E78DFA98A1CE";
	setAttr -k off ".v";
	setAttr ".pu" 0.34375;
	setAttr ".pv" 0.5;
	setAttr ".sim" 0;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode joint -n "L_arm_Bind6" -p "L_Arm_PlaneFollicle3450";
	rename -uid "ED661201-4FB4-F7A9-15F2-7587A1C410B6";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "L_Arm_PlaneFollicle4050" -p "L_armFollicles";
	rename -uid "DF1BDB4D-4117-36AC-AE96-E8A708050CC1";
createNode follicle -n "L_Arm_PlaneFollicleShape4050" -p "L_Arm_PlaneFollicle4050";
	rename -uid "1F50D815-4F48-B94C-84F5-F2A981CF7E52";
	setAttr -k off ".v";
	setAttr ".pu" 0.40625;
	setAttr ".pv" 0.5;
	setAttr ".sim" 0;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode joint -n "L_arm_Bind7" -p "L_Arm_PlaneFollicle4050";
	rename -uid "876141E1-4D77-6318-5812-6F8C8E2D0F7C";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "L_Arm_PlaneFollicle4650" -p "L_armFollicles";
	rename -uid "DB25196B-4208-1550-2DDD-5291E3227ED9";
createNode follicle -n "L_Arm_PlaneFollicleShape4650" -p "L_Arm_PlaneFollicle4650";
	rename -uid "2DD738F9-437E-9BAB-9CFE-70A4AAA4DC3F";
	setAttr -k off ".v";
	setAttr ".pu" 0.46875;
	setAttr ".pv" 0.5;
	setAttr ".sim" 0;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode joint -n "L_arm_Bind8" -p "L_Arm_PlaneFollicle4650";
	rename -uid "B4B75F12-4AC8-F40E-F18A-F98E41C2B768";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "L_Arm_PlaneFollicle5350" -p "L_armFollicles";
	rename -uid "5608BD9A-41E6-51EB-5FBC-139772E7C888";
createNode follicle -n "L_Arm_PlaneFollicleShape5350" -p "L_Arm_PlaneFollicle5350";
	rename -uid "A74225BB-498A-9A56-2CF2-99B1D5A049B6";
	setAttr -k off ".v";
	setAttr ".pu" 0.53125;
	setAttr ".pv" 0.5;
	setAttr ".sim" 0;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode joint -n "L_arm_Bind9" -p "L_Arm_PlaneFollicle5350";
	rename -uid "157E7600-48ED-6E13-9A14-8DBA46BA0931";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "L_Arm_PlaneFollicle5950" -p "L_armFollicles";
	rename -uid "1A38C89C-4B0C-9F6F-D47C-65A00E6F6748";
createNode follicle -n "L_Arm_PlaneFollicleShape5950" -p "L_Arm_PlaneFollicle5950";
	rename -uid "E1AC751A-44B3-F153-E1AF-0BA2C14990D8";
	setAttr -k off ".v";
	setAttr ".pu" 0.59375;
	setAttr ".pv" 0.5;
	setAttr ".sim" 0;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode joint -n "L_arm_Bind10" -p "L_Arm_PlaneFollicle5950";
	rename -uid "28B17ADF-467E-07D2-0877-839339F89EA7";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "L_Arm_PlaneFollicle6550" -p "L_armFollicles";
	rename -uid "92DAAB0F-405F-A0D4-D7AA-6E8518647960";
createNode follicle -n "L_Arm_PlaneFollicleShape6550" -p "L_Arm_PlaneFollicle6550";
	rename -uid "95260CAB-4DBD-181A-D2A1-52A5963A86F3";
	setAttr -k off ".v";
	setAttr ".pu" 0.65625;
	setAttr ".pv" 0.5;
	setAttr ".sim" 0;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode joint -n "L_arm_Bind11" -p "L_Arm_PlaneFollicle6550";
	rename -uid "AB4CCEA4-49F8-9411-1FBD-86ABBEE0BF0C";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "L_Arm_PlaneFollicle7150" -p "L_armFollicles";
	rename -uid "E95AFBF6-4F9E-4EC4-3636-F5BCF8D4F651";
createNode follicle -n "L_Arm_PlaneFollicleShape7150" -p "L_Arm_PlaneFollicle7150";
	rename -uid "356FE5F6-4550-9F24-0A40-838CD8FDCF87";
	setAttr -k off ".v";
	setAttr ".pu" 0.71875;
	setAttr ".pv" 0.5;
	setAttr ".sim" 0;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode joint -n "L_arm_Bind12" -p "L_Arm_PlaneFollicle7150";
	rename -uid "DAA06BE8-4F47-19BB-B563-D3BDDD86B5BB";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "L_Arm_PlaneFollicle7750" -p "L_armFollicles";
	rename -uid "3302059B-46F7-774D-66D9-35BC95CA5FB2";
createNode follicle -n "L_Arm_PlaneFollicleShape7750" -p "L_Arm_PlaneFollicle7750";
	rename -uid "3D254CEF-44C6-66CD-9F93-8784704912D5";
	setAttr -k off ".v";
	setAttr ".pu" 0.78125;
	setAttr ".pv" 0.5;
	setAttr ".sim" 0;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode joint -n "L_arm_Bind13" -p "L_Arm_PlaneFollicle7750";
	rename -uid "B2209463-4042-4219-A5B7-B789DD26257E";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "L_Arm_PlaneFollicle8450" -p "L_armFollicles";
	rename -uid "856BF242-46E3-7BB7-6B45-49A7B2AF1C91";
createNode follicle -n "L_Arm_PlaneFollicleShape8450" -p "L_Arm_PlaneFollicle8450";
	rename -uid "FDCF93D3-4024-1468-E715-8E8A74663BD1";
	setAttr -k off ".v";
	setAttr ".pu" 0.84375;
	setAttr ".pv" 0.5;
	setAttr ".sim" 0;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode joint -n "L_arm_Bind14" -p "L_Arm_PlaneFollicle8450";
	rename -uid "2F541664-48E2-2D43-33E2-A589ACDC6177";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "L_Arm_PlaneFollicle9050" -p "L_armFollicles";
	rename -uid "9280B8ED-4AD9-9E04-F2A4-388BDA9F8CB6";
createNode follicle -n "L_Arm_PlaneFollicleShape9050" -p "L_Arm_PlaneFollicle9050";
	rename -uid "BF89B994-486E-1A5B-AA01-C2906421228D";
	setAttr -k off ".v";
	setAttr ".pu" 0.90625;
	setAttr ".pv" 0.5;
	setAttr ".sim" 0;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode joint -n "L_arm_Bind15" -p "L_Arm_PlaneFollicle9050";
	rename -uid "995EA976-4D06-61E3-CDC1-29A55DF0062C";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "L_Arm_PlaneFollicle9650" -p "L_armFollicles";
	rename -uid "DFB32D7F-4E03-A32D-A5FF-14A1636C19B9";
createNode follicle -n "L_Arm_PlaneFollicleShape9650" -p "L_Arm_PlaneFollicle9650";
	rename -uid "2058224F-447C-EB56-6C51-F9A0FA4938CF";
	setAttr -k off ".v";
	setAttr ".pu" 0.96875;
	setAttr ".pv" 0.5;
	setAttr ".sim" 0;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode joint -n "L_arm_Bind16" -p "L_Arm_PlaneFollicle9650";
	rename -uid "4CD75A26-4E5D-E975-5B9A-7A93F48D9F94";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "grpL_Arm_ShoulderZERO" -p "L_Ribbon";
	rename -uid "4CDDE097-4E94-EB21-3CDE-398221C88B87";
	setAttr ".t" -type "double3" 31.009674072265625 64.338844299316406 -1.1545048412434398e-31 ;
	setAttr ".r" -type "double3" 180 4.1817373090602894 -5.1302637819274998e-16 ;
createNode transform -n "L_Arm_Shoulder" -p "grpL_Arm_ShoulderZERO";
	rename -uid "8AD8D2F4-4E20-7DC2-8E73-8287A31D5151";
createNode nurbsCurve -n "L_Arm_ShoulderShape" -p "L_Arm_Shoulder";
	rename -uid "CC6322F6-4AC1-CEC4-8EE5-59AAC913F6DB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -2.9931380768212948e-16 -4.8881654349731427 
		4.8881654349731427 -9.783314965985019e-33 -2.6093018572937208 1.5977365837719988e-16 
		2.9931380768212948e-16 -4.8881654349731409 -4.8881654349731427 1.5977365837719998e-16 
		-1.3526666905028561e-16 -2.6093018572937208 2.9931380768212948e-16 4.8881654349731427 
		-4.8881654349731427 1.6004636633852591e-32 2.6093018572937208 -2.6137555162836582e-16 
		-2.9931380768212948e-16 4.8881654349731409 4.8881654349731427 -1.5977365837719998e-16 
		3.5582957299251444e-16 2.6093018572937208 0 0 0 0 0 0 0 0 0;
createNode joint -n "L_Shoulder_JC" -p "L_Arm_Shoulder";
	rename -uid "A6C3F816-4DC2-458A-D5CF-E5A74C257950";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -1.5425599997342943e-07 -3.0931942944789625e-06 1.1278419975724319e-08 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -180 4.1817373090602894 5.1302637819274978e-16 ;
	setAttr ".bps" -type "matrix" 1 8.9301618502898131e-18 1.3877787807814457e-17 0 -8.9301618502898131e-18 1 3.2602904636278765e-19 0
		 1.3877787807814457e-17 -3.2602904636273835e-19 1.0000000000000002 0 31.009673917597866 64.338847392510701 3.787141581159589e-16 1;
	setAttr ".radi" 1.9;
createNode transform -n "L_Arm_Plane" -p "LeftRibbonArm";
	rename -uid "3D2B7721-4768-6939-C704-0EBA2788BA0B";
	setAttr ".t" -type "double3" 51.080652544243655 64.338847392510701 0 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 90.000000000000028 0 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 42.818087736844348 43.791226108745832 3.8925528607852131 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsSurface -n "L_Arm_PlaneShape" -p "L_Arm_Plane";
	rename -uid "9FFB5B46-48F4-AB68-201B-EF9A2B3071FC";
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
createNode nurbsSurface -n "L_Arm_PlaneShapeOrig" -p "L_Arm_Plane";
	rename -uid "A1F83D5C-4593-D8A5-C9F8-689DC9A42071";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 0 no 
		21 0 0 0 0.0625 0.125 0.1875 0.25 0.3125 0.375 0.4375 0.5 0.5625 0.625 0.6875
		 0.75 0.8125 0.875 0.9375 1 1 1
		6 0 0 0 1 1 1
		
		76
		-0.5 -3.061616997868383e-17 0.5
		-0.5 -1.0205389992894611e-17 0.16666666666666669
		-0.5 1.0205389992894608e-17 -0.16666666666666663
		-0.5 3.061616997868383e-17 -0.5
		-0.47916666666666669 -3.061616997868383e-17 0.5
		-0.47916666666666669 -1.0205389992894611e-17 0.16666666666666669
		-0.47916666666666669 1.0205389992894608e-17 -0.16666666666666663
		-0.47916666666666669 3.061616997868383e-17 -0.5
		-0.43750000000000006 -3.061616997868383e-17 0.5
		-0.43750000000000006 -1.0205389992894611e-17 0.16666666666666669
		-0.43750000000000006 1.0205389992894608e-17 -0.16666666666666663
		-0.43750000000000006 3.061616997868383e-17 -0.5
		-0.37500000000000006 -3.061616997868383e-17 0.5
		-0.37500000000000006 -1.0205389992894611e-17 0.16666666666666669
		-0.37500000000000006 1.0205389992894608e-17 -0.16666666666666663
		-0.37500000000000006 3.061616997868383e-17 -0.5
		-0.31250000000000006 -3.061616997868383e-17 0.5
		-0.31250000000000006 -1.0205389992894611e-17 0.16666666666666669
		-0.31250000000000006 1.0205389992894608e-17 -0.16666666666666663
		-0.31250000000000006 3.061616997868383e-17 -0.5
		-0.25000000000000006 -3.061616997868383e-17 0.5
		-0.25000000000000006 -1.0205389992894611e-17 0.16666666666666669
		-0.25000000000000006 1.0205389992894608e-17 -0.16666666666666663
		-0.25000000000000006 3.061616997868383e-17 -0.5
		-0.18750000000000006 -3.061616997868383e-17 0.5
		-0.18750000000000006 -1.0205389992894611e-17 0.16666666666666669
		-0.18750000000000006 1.0205389992894608e-17 -0.16666666666666663
		-0.18750000000000006 3.061616997868383e-17 -0.5
		-0.12500000000000006 -3.061616997868383e-17 0.5
		-0.12500000000000006 -1.0205389992894611e-17 0.16666666666666669
		-0.12500000000000006 1.0205389992894608e-17 -0.16666666666666663
		-0.12500000000000006 3.061616997868383e-17 -0.5
		-0.062500000000000056 -3.061616997868383e-17 0.5
		-0.062500000000000056 -1.0205389992894611e-17 0.16666666666666669
		-0.062500000000000056 1.0205389992894608e-17 -0.16666666666666663
		-0.062500000000000056 3.061616997868383e-17 -0.5
		-4.8572257327350599e-17 -3.061616997868383e-17 0.5
		-4.8572257327350599e-17 -1.0205389992894611e-17 0.16666666666666669
		-4.8572257327350599e-17 1.0205389992894608e-17 -0.16666666666666663
		-4.8572257327350599e-17 3.061616997868383e-17 -0.5
		0.062499999999999951 -3.061616997868383e-17 0.5
		0.062499999999999951 -1.0205389992894611e-17 0.16666666666666669
		0.062499999999999951 1.0205389992894608e-17 -0.16666666666666663
		0.062499999999999951 3.061616997868383e-17 -0.5
		0.12499999999999996 -3.061616997868383e-17 0.5
		0.12499999999999996 -1.0205389992894611e-17 0.16666666666666669
		0.12499999999999996 1.0205389992894608e-17 -0.16666666666666663
		0.12499999999999996 3.061616997868383e-17 -0.5
		0.18749999999999994 -3.061616997868383e-17 0.5
		0.18749999999999994 -1.0205389992894611e-17 0.16666666666666669
		0.18749999999999994 1.0205389992894608e-17 -0.16666666666666663
		0.18749999999999994 3.061616997868383e-17 -0.5
		0.24999999999999997 -3.061616997868383e-17 0.5
		0.24999999999999997 -1.0205389992894611e-17 0.16666666666666669
		0.24999999999999997 1.0205389992894608e-17 -0.16666666666666663
		0.24999999999999997 3.061616997868383e-17 -0.5
		0.31249999999999994 -3.061616997868383e-17 0.5
		0.31249999999999994 -1.0205389992894611e-17 0.16666666666666669
		0.31249999999999994 1.0205389992894608e-17 -0.16666666666666663
		0.31249999999999994 3.061616997868383e-17 -0.5
		0.375 -3.061616997868383e-17 0.5
		0.375 -1.0205389992894611e-17 0.16666666666666669
		0.375 1.0205389992894608e-17 -0.16666666666666663
		0.375 3.061616997868383e-17 -0.5
		0.4375 -3.061616997868383e-17 0.5
		0.4375 -1.0205389992894611e-17 0.16666666666666669
		0.4375 1.0205389992894608e-17 -0.16666666666666663
		0.4375 3.061616997868383e-17 -0.5
		0.47916666666666669 -3.061616997868383e-17 0.5
		0.47916666666666669 -1.0205389992894611e-17 0.16666666666666669
		0.47916666666666669 1.0205389992894608e-17 -0.16666666666666663
		0.47916666666666669 3.061616997868383e-17 -0.5
		0.5 -3.061616997868383e-17 0.5
		0.5 -1.0205389992894611e-17 0.16666666666666669
		0.5 1.0205389992894608e-17 -0.16666666666666663
		0.5 3.061616997868383e-17 -0.5
		
		;
createNode groupId -n "skinCluster2GroupId";
	rename -uid "8E675C51-4A60-28A3-40F9-539BB01BADF1";
	setAttr ".ihi" 0;
createNode objectSet -n "skinCluster2Set";
	rename -uid "C5E05A1A-4821-D53A-7A5B-2E989E8D75A6";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode skinCluster -n "skinCluster2";
	rename -uid "8A8F770A-4936-603C-50EB-C9B4A3D3DFF9";
	setAttr -s 76 ".wl";
	setAttr ".wl[0:75].w"
		5 0 0.00014462060890978366 1 0.0066321052400618351 2 0.00063567071673999013 
		3 4.9070975444519282e-05 6 0.99253853245884394
		5 0 2.3203243712810025e-05 1 0.0011602930471807096 2 0.00010365000726113769 
		3 7.8250251313639432e-06 6 0.99870502867671396
		5 0 2.3203243712810025e-05 1 0.0011602930471807096 2 0.00010365000726113769 
		3 7.8250251313639432e-06 6 0.99870502867671396
		5 0 0.00014462060890978225 1 0.0066321052400617753 2 0.00063567071673998384 
		3 4.9070975444518801e-05 6 0.99253853245884394
		5 0 8.7600974469409165e-05 1 0.0052786863713135497 2 0.00041575051587181699 
		3 2.8547536665580688e-05 6 0.99418941460167976
		5 0 2.1634319018021028e-06 1 0.00014568471169240998 2 1.0463710712405126e-05 
		3 7.0021185258813001e-07 6 0.9998409879338408
		5 0 2.1634319018021028e-06 1 0.00014568471169240998 2 1.0463710712405126e-05 
		3 7.0021185258813001e-07 6 0.9998409879338408
		5 0 8.7600974469408013e-05 1 0.005278686371313489 2 0.00041575051587181146 
		3 2.8547536665580305e-05 6 0.99418941460167976
		5 0 0.00023982040368861421 1 0.028682292821128445 2 0.0013625669035824857 
		3 7.1389411078314906e-05 6 0.96964393046052211
		5 0 3.9373789131037829e-05 1 0.0057524390177452391 2 0.00022975943586894647 
		3 1.1619316900734297e-05 6 0.99396680844035412
		5 0 3.9373789131037829e-05 1 0.0057524390177452391 2 0.00022975943586894647 
		3 1.1619316900734297e-05 6 0.99396680844035412
		5 0 0.00023982040368861175 1 0.028682292821128177 2 0.0013625669035824723 
		3 7.1389411078314174e-05 6 0.96964393046052244
		5 0 0.0013279563443994995 1 0.75802812222531624 2 0.010850980552649287 
		3 0.00033453860852467049 6 0.22945840226911024
		5 0 0.00070738605769906163 1 0.82049492086891318 2 0.006070844206041248 
		3 0.00017591233411430729 6 0.17255093653323225
		5 0 0.00070738605769906163 1 0.82049492086891318 2 0.006070844206041248 
		3 0.00017591233411430729 6 0.17255093653323225
		5 0 0.0013279563443994941 1 0.7580281222253169 2 0.010850980552649252 
		3 0.00033453860852466913 6 0.22945840226910977
		5 0 0.00042388336431694847 1 0.98746723128489178 2 0.0060115960354007987 
		3 8.5691360551902357e-05 6 0.0060115979548385672
		5 0 5.4992823140710415e-06 1 0.99981988490452012 2 8.6763334676003662e-05 
		3 1.0891140466587138e-06 6 8.6763364443114436e-05
		5 0 5.4992823140710415e-06 1 0.99981988490452012 2 8.6763334676003662e-05 
		3 1.0891140466587138e-06 6 8.6763364443114436e-05
		5 0 0.00042388336431694229 1 0.987467231284892 2 0.0060115960354007181 
		3 8.569136055190111e-05 6 0.0060115979548384865
		5 0 0.0064485276587259643 1 0.75366309146663768 2 0.22813717507661485 
		3 0.00096269786154906233 6 0.010788507936472612
		5 0 0.0035552314893011619 1 0.8178799533105795 2 0.17200111969883125 
		3 0.00051219055818517629 6 0.0060515049431029231
		5 0 0.0035552314893011619 1 0.8178799533105795 2 0.17200111969883125 
		3 0.00051219055818517629 6 0.0060515049431029231
		5 0 0.0064485276587259392 1 0.75366309146663812 2 0.2281371750766143 
		3 0.000962697861549058 6 0.010788507936472564
		5 0 0.0064354321599840777 1 0.028488883601927344 2 0.96310548405018037 
		3 0.00061682026012164657 6 0.001353379927786551
		5 0 0.0011533965543037107 1 0.0057455088213254459 2 0.99276857782930072 
		3 0.00010303396928608445 6 0.00022948282578401984
		5 0 0.0011533965543037107 1 0.0057455088213254459 2 0.99276857782930072 
		3 0.00010303396928608445 6 0.00022948282578401984
		5 0 0.0064354321599840213 1 0.028488883601927115 2 0.9631054840501807 
		3 0.00061682026012164061 6 0.0013533799277865384
		5 0 0.028488831865573817 1 0.0064354289022870714 2 0.96310554197235843 
		3 0.0013533771317794914 6 0.00061682012800117305
		5 0 0.0057454879506690848 1 0.0011533940100916557 2 0.99276860231895259 
		3 0.00022948194976700847 6 0.00010303377051971398
		5 0 0.0057454879506690848 1 0.0011533940100916557 2 0.99276860231895259 
		3 0.00022948194976700847 6 0.00010303377051971398
		5 0 0.028488831865573602 1 0.0064354289022870168 2 0.96310554197235876 
		3 0.0013533771317794797 6 0.0006168201280011673
		5 0 0.75339330569194274 1 0.0064462293066862748 2 0.22805598115267053 
		3 0.010784644392959607 4 0.001319839455740966
		5 0 0.8177217838161619 1 0.003554551290751985 2 0.17196833117127336 
		3 0.0060503364798243052 4 0.00070499724198852184
		5 0 0.8177217838161619 1 0.003554551290751985 2 0.17196833117127336 
		3 0.0060503364798243052 4 0.00070499724198852184
		5 0 0.75339330569194307 1 0.0064462293066862505 2 0.2280559811526702 
		3 0.010784644392959565 4 0.0013198394557409599
		5 0 0.98713339697290192 1 0.0004237402052305032 2 0.0060095675250132173 
		3 0.0060095552232416619 4 0.0004237400736126504
		5 0 0.99981547564949791 1 5.4992599620081589e-06 2 8.6763011580360622e-05 
		3 8.676282073781058e-05 4 5.499258221836179e-06
		5 0 0.99981547564949791 1 5.4992599620081589e-06 2 8.6763011580360622e-05 
		3 8.676282073781058e-05 4 5.499258221836179e-06
		5 0 0.98713339697290226 1 0.00042374020523049707 2 0.006009567525013134 
		3 0.0060095552232415795 4 0.00042374007361264455
		5 0 0.75339438787317137 1 0.0013198375882904139 2 0.010784642719901016 
		3 0.22805491578593842 4 0.0064462160326988188
		5 0 0.81772295390891403 1 0.00070499526882455445 2 0.0060503274988253208 
		3 0.17196718432338365 4 0.0035545390000524995
		5 0 0.81772295390891403 1 0.00070499526882455445 2 0.0060503274988253208 
		3 0.17196718432338365 4 0.0035545390000524995
		5 0 0.7533943878731717 1 0.0013198375882904083 2 0.01078464271990098 
		3 0.22805491578593806 4 0.0064462160326987971
		5 0 0.028488987823718878 2 0.0013533833240261912 3 0.96310535924568852 
		4 0.0064354473978372575 5 0.00061682220872906544
		5 0 0.0057455526144605858 2 0.0002294842767586201 3 0.99276852473883459 
		4 0.0011534036813678154 5 0.00010303468857833097
		5 0 0.0057455526144605858 2 0.0002294842767586201 3 0.99276852473883459 
		4 0.0011534036813678154 5 0.00010303468857833097
		5 0 0.028488987823718687 2 0.0013533833240261799 3 0.96310535924568885 
		4 0.0064354473978372045 5 0.00061682220872906002
		5 0 0.0064354197782388609 2 0.00061681876124724156 3 0.9631056199991278 
		4 0.028488766164689105 5 0.0013533752966969636
		5 0 0.0011533880824071991 2 0.00010303315392369417 3 0.99276864490804506 
		4 0.0057454530770054742 5 0.00022948077861866963
		5 0 0.0011533880824071991 2 0.00010303315392369417 3 0.99276864490804506 
		4 0.0057454530770054742 5 0.00022948077861866963
		5 0 0.0064354197782388054 2 0.0006168187612472357 3 0.96310561999912814 
		4 0.028488766164688907 5 0.0013533752966969513
		5 0 0.0064485356636363629 2 0.00096269876010946246 3 0.22813787913470526 
		4 0.75366237753426846 5 0.010788508907280482
		5 0 0.0035552378362097123 2 0.00051219130235528366 3 0.17200184320727435 
		4 0.81787921907923589 5 0.0060515085749248652
		5 0 0.0035552378362097123 2 0.00051219130235528366 3 0.17200184320727435 
		4 0.81787921907923589 5 0.0060515085749248652
		5 0 0.0064485356636363412 2 0.00096269876010945845 3 0.22813787913470485 
		4 0.7536623775342689 5 0.010788508907280437
		5 0 0.00042388375389427975 2 8.5691422286802657e-05 3 0.0060116082646295499 
		4 0.98746721868107501 5 0.0060115978781143447
		5 0 5.4992875335826879e-06 2 1.089114851656281e-06 3 8.6763525503517284e-05 
		4 0.99981988470768435 5 8.6763364426876421e-05
		5 0 5.4992875335826879e-06 2 1.089114851656281e-06 3 8.6763525503517284e-05 
		4 0.99981988470768435 5 8.6763364426876421e-05
		5 0 0.00042388375389427357 2 8.569142228680141e-05 3 0.0060116082646294719 
		4 0.98746721868107512 5 0.0060115978781142623
		5 0 0.0013279563144428695 2 0.00033453855641839313 3 0.010850988324510499 
		4 0.75802829902696223 5 0.22945821777766609
		5 0 0.00070738574107528311 2 0.00017591223089454629 3 0.0060708462645259814 
		4 0.82049513306529609 5 0.17255072269820818
		5 0 0.00070738574107528311 2 0.00017591223089454629 3 0.0060708462645259814 
		4 0.82049513306529609 5 0.17255072269820818
		5 0 0.001327956314442864 2 0.00033453855641839178 3 0.010850988324510454 
		4 0.75802829902696267 5 0.22945821777766562
		5 0 0.00023982055968895725 2 7.1389450981369074e-05 3 0.0013625685116264246 
		4 0.028682312279713046 5 0.96964390919799026
		5 0 3.93738156709032e-05 2 1.1619323629364904e-05 3 0.0002297597173479921 
		4 0.005752443485439589 5 0.99396680365791223
		5 0 3.93738156709032e-05 2 1.1619323629364904e-05 3 0.0002297597173479921 
		4 0.005752443485439589 5 0.99396680365791223
		5 0 0.00023982055968895498 2 7.1389450981368396e-05 3 0.0013625685116264118 
		4 0.028682312279712827 5 0.96964390919799048
		5 0 8.7601028046923782e-05 2 2.8547552074375909e-05 3 0.00041575095241915639 
		4 0.0052786892751901012 5 0.99418941119226945
		5 0 2.1634332428136836e-06 2 7.0021223459504869e-07 3 1.0463721928101158e-05 
		4 0.0001456847976087841 5 0.99984098783498576
		5 0 2.1634332428136836e-06 2 7.0021223459504869e-07 3 1.0463721928101158e-05 
		4 0.0001456847976087841 5 0.99984098783498576
		5 0 8.760102804692259e-05 2 2.854755207437552e-05 3 0.00041575095241915087 
		4 0.0052786892751900336 5 0.99418941119226956
		5 0 0.00014462069362675283 2 4.907100106245523e-05 3 0.00063567134466711904 
		4 0.0066321085245439233 5 0.99253852843609969
		5 0 2.3203257482497933e-05 2 7.8250292600232547e-06 3 0.0001036501115875289 
		4 0.0011602936557250051 5 0.99870502794594496
		5 0 2.3203257482497933e-05 2 7.8250292600232547e-06 3 0.0001036501115875289 
		4 0.0011602936557250051 5 0.99870502794594496
		5 0 0.00014462069362675142 2 4.9071001062454762e-05 3 0.00063567134466711319 
		4 0.0066321085245438678 5 0.9925385284360998;
	setAttr -s 7 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 -8.9301618502898131e-18 -1.3877787807814454e-17 0
		 8.9301618502898131e-18 1 -3.260290463627877e-19 0 -1.3877787807814454e-17 3.260290463627384e-19 0.99999999999999978 0
		 -51.080654135779085 -64.338847392510701 1.1636504093144187e-07 1;
	setAttr ".pm[1]" -type "matrix" 1 -8.9301618502898131e-18 -1.3877787807814454e-17 0
		 8.9301618502898131e-18 1 -3.260290463627877e-19 0 -1.3877787807814454e-17 3.260290463627384e-19 0.99999999999999978 0
		 -37.699999693407811 -64.338847392510701 3.8788347232255505e-08 1;
	setAttr ".pm[2]" -type "matrix" 1 -8.9301618502898131e-18 -1.3877787807814454e-17 0
		 8.9301618502898131e-18 1 -3.260290463627877e-19 0 -1.3877787807814454e-17 3.260290463627384e-19 0.99999999999999978 0
		 -44.390326914593452 -64.338847392510701 7.7576694081848683e-08 1;
	setAttr ".pm[3]" -type "matrix" 1 -8.9301618502898131e-18 -1.3877787807814454e-17 0
		 8.9301618502898131e-18 1 -3.260290463627877e-19 0 -1.3877787807814454e-17 3.260290463627384e-19 0.99999999999999978 0
		 -57.770981887476538 -64.338847392510701 1.939417341310997e-07 1;
	setAttr ".pm[4]" -type "matrix" 1 -8.9301618502898131e-18 -1.3877787807814454e-17 0
		 8.9301618502898131e-18 1 -3.260290463627877e-19 0 -1.3877787807814454e-17 3.260290463627384e-19 0.99999999999999978 0
		 -64.461306456103117 -64.338847392510701 3.8788347603643242e-08 1;
	setAttr ".pm[5]" -type "matrix" 1 -8.9301618502898131e-18 -1.3877787807814454e-17 0
		 8.9301618502898131e-18 1 -3.260290463627877e-19 0 -1.3877787807814454e-17 3.260290463627384e-19 0.99999999999999978 0
		 -71.151631170889445 -64.338847392510701 1.2497983805362014e-15 1;
	setAttr ".pm[6]" -type "matrix" 1 -8.9301618502898131e-18 -1.3877787807814454e-17 0
		 8.9301618502898131e-18 1 -3.260290463627877e-19 0 -1.3877787807814454e-17 3.260290463627384e-19 0.99999999999999978 0
		 -31.009673917597866 -64.338847392510701 7.2607849561443913e-17 1;
	setAttr ".gm" -type "matrix" 42.818087736844348 0 0 0 0 -1.9447211000998369e-14 43.791226108745832 0
		 0 -3.8925528607852131 -1.7286407242457061e-15 0 51.080652544243655 64.338847392510701 0 1;
	setAttr -s 7 ".ma";
	setAttr -s 7 ".dpf[0:6]"  4 4 4 4 4 4 4;
	setAttr -s 7 ".lw";
	setAttr -s 7 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 7 ".ifcl";
	setAttr -s 7 ".ifcl";
createNode dagPose -n "bindPose5";
	rename -uid "A65F7733-43EE-F7F9-9235-E08847A3ABEB";
	setAttr -s 22 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.5915354296680562e-06 0 -1.1636504027023875e-07 1;
	setAttr ".wm[1]" -type "matrix" 0.99733777080387787 7.7037197775489434e-34 -0.072920305319928491 0
		 8.9301618502898131e-18 -1 1.2213865086837256e-16 0 -0.072920305319928491 -1.224646799147353e-16 -0.99733777080387798 0
		 51.080655735822539 64.338844299316406 -1.1636504027023875e-07 1;
	setAttr ".wm[2]" -type "matrix" 0.99733777080387787 7.7037197775489434e-34 -0.072920305319928491 0
		 8.9301618502898131e-18 -1 1.2213865086837256e-16 0 -0.072920305319928491 -1.224646799147353e-16 -0.99733777080387798 0
		 51.080655735822539 64.338844299316406 -1.1636504027023875e-07 1;
	setAttr ".wm[4]" -type "matrix" 0.99733777080387787 7.7037197775489434e-34 -0.072920305319928491 0
		 8.9301618502898131e-18 -1 1.2213865086837256e-16 0 -0.072920305319928491 -1.224646799147353e-16 -0.99733777080387798 0
		 37.700001293451265 64.338844299316406 -3.878834675674625e-08 1;
	setAttr ".wm[5]" -type "matrix" 0.99733777080387787 7.7037197775489434e-34 -0.072920305319928491 0
		 8.9301618502898131e-18 -1 1.2213865086837256e-16 0 -0.072920305319928491 -1.224646799147353e-16 -0.99733777080387798 0
		 37.700001293451265 64.338844299316406 -3.878834675674625e-08 1;
	setAttr ".wm[7]" -type "matrix" 0.99733777080387787 7.7037197775489434e-34 -0.072920305319928491 0
		 8.9301618502898131e-18 -1 1.2213865086837256e-16 0 -0.072920305319928491 -1.224646799147353e-16 -0.99733777080387798 0
		 44.390328514636906 64.338844299316406 -7.7576693513492501e-08 1;
	setAttr ".wm[8]" -type "matrix" 0.99733777080387787 7.7037197775489434e-34 -0.072920305319928491 0
		 8.9301618502898131e-18 -1 1.2213865086837256e-16 0 -0.072920305319928491 -1.224646799147353e-16 -0.99733777080387798 0
		 44.390328514636906 64.338844299316406 -7.7576693513492501e-08 1;
	setAttr ".wm[10]" -type "matrix" 0.99733777080387787 7.7037197775489434e-34 -0.072920305319928491 0
		 8.9301618502898131e-18 -1 1.2213865086837256e-16 0 -0.072920305319928491 -1.224646799147353e-16 -0.99733777080387798 0
		 57.770983487519992 64.338844299316406 -1.9394173337704966e-07 1;
	setAttr ".wm[11]" -type "matrix" 0.99733777080387787 7.7037197775489434e-34 -0.072920305319928491 0
		 8.9301618502898131e-18 -1 1.2213865086837256e-16 0 -0.072920305319928491 -1.224646799147353e-16 -0.99733777080387798 0
		 57.770983487519992 64.338844299316406 -1.9394173337704966e-07 1;
	setAttr ".wm[13]" -type "matrix" 0.99733777080387787 7.7037197775489434e-34 -0.072920305319928491 0
		 8.9301618502898131e-18 -1 1.2213865086837256e-16 0 -0.072920305319928491 -1.224646799147353e-16 -0.99733777080387798 0
		 64.461308056146578 64.338844299316406 -3.878834675674625e-08 1;
	setAttr ".wm[14]" -type "matrix" 0.99733777080387787 7.7037197775489434e-34 -0.072920305319928491 0
		 8.9301618502898131e-18 -1 1.2213865086837256e-16 0 -0.072920305319928491 -1.224646799147353e-16 -0.99733777080387798 0
		 64.461308056146578 64.338844299316406 -3.878834675674625e-08 1;
	setAttr ".wm[16]" -type "matrix" 0.99733777080387787 7.7037197775489434e-34 -0.072920305319928491 0
		 8.9301618502898131e-18 -1 1.2213865086837256e-16 0 -0.072920305319928491 -1.224646799147353e-16 -0.99733777080387798 0
		 71.151634216308594 64.338844299316406 -1.1545048412434398e-31 1;
	setAttr ".wm[17]" -type "matrix" 0.99733777080387787 7.7037197775489434e-34 -0.072920305319928491 0
		 8.9301618502898131e-18 -1 1.2213865086837256e-16 0 -0.072920305319928491 -1.224646799147353e-16 -0.99733777080387798 0
		 71.151634216308594 64.338844299316406 -1.1545048412434398e-31 1;
	setAttr ".wm[19]" -type "matrix" 0.99733777080387787 7.7037197775489434e-34 -0.072920305319928491 0
		 8.9301618502898131e-18 -1 1.2213865086837256e-16 0 -0.072920305319928491 -1.224646799147353e-16 -0.99733777080387798 0
		 31.009674072265625 64.338844299316406 -1.1545048412434398e-31 1;
	setAttr ".wm[20]" -type "matrix" 0.99733777080387787 7.7037197775489434e-34 -0.072920305319928491 0
		 8.9301618502898131e-18 -1 1.2213865086837256e-16 0 -0.072920305319928491 -1.224646799147353e-16 -0.99733777080387798 0
		 31.009674072265625 64.338844299316406 -1.1545048412434398e-31 1;
	setAttr -s 22 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.5915354296680562e-06
		 0 -1.1636504027023875e-07 0 0 0 51.08065255275168 64.338844299316406 1.1636504027023875e-07 0
		 0 0 51.08065255275168 64.338844299316406 1.1636504027023875e-07 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 3.1415926535897931 0.072985084496589747
		 7.7242835908436136e-34 0 51.080654144287109 64.338844299316406 -1.1545048412434398e-31 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.5957837717905932e-06
		 -3.0931942944789625e-06 1.1667565713580075e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.99933422107017778 2.2340278312311234e-18 0.036484443233535425 6.1191572755600328e-17 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 3.1415926535897931 0.072985084496589747
		 7.7242835908436136e-34 0 37.699999701915836 64.338844299316406 7.7576693513492501e-08 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.5957837717905932e-06
		 -3.0931942944789625e-06 1.1667565713580075e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.99933422107017778 2.2340278312311234e-18 0.036484443233535425 6.1191572755600328e-17 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 3.1415926535897931 0.072985084496589747
		 7.7242835908436136e-34 0 44.390326923101476 64.338844299316406 3.878834675674625e-08 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.5957837717905932e-06
		 -3.0931942944789625e-06 1.1667565713580075e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.99933422107017778 2.2340278312311234e-18 0.036484443233535425 6.1191572755600328e-17 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 3.1415926535897931 0.072985084496589747
		 7.7242835908436136e-34 0 57.770981895984562 64.338844299316406 -7.7576693106810899e-08 0
		 0 0 -1.5957837717905932e-06 -2.6645352591003757e-15 0 0 0 0 -1.5957837717905932e-06
		 -2.6645352591003757e-15 0 4.2483421479588649e-09 5.3290705182007514e-15 1.1636503986355715e-07 
		0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.5957837717905932e-06
		 -3.0931942944789625e-06 1.1667565713580075e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.99933422107017778 2.2340278312311234e-18 0.036484443233535425 6.1191572755600328e-17 1
		 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 3.1415926535897931 0.072985084496589747
		 7.7242835908436136e-34 0 64.461306464611141 64.338844299316406 7.7576693513492501e-08 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.5957837717905932e-06
		 -3.0931942944789625e-06 1.1667565713580075e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.99933422107017778 2.2340278312311234e-18 0.036484443233535425 6.1191572755600328e-17 1
		 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 3.1415926535897931 0.072985084496589747
		 -8.9539994490451227e-18 0 71.151634216308594 64.338844299316406 -1.1545048412434398e-31 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.0373115436077569e-06
		 -3.0931942944789625e-06 2.2207289429587718e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.99933422107017778 2.2340278312311234e-18 0.036484443233535425 6.1191572755600328e-17 1
		 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 3.1415926535897931 0.072985084496589747
		 -8.9539994490451227e-18 0 31.009674072265625 64.338844299316406 -1.1545048412434398e-31 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.5425599997342943e-07
		 -3.0931942944789625e-06 1.1278419975724319e-08 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.99933422107017778 2.2340278312311234e-18 0.036484443233535425 6.1191572755600328e-17 1
		 1 1 yes;
	setAttr -s 22 ".m";
	setAttr -s 22 ".p";
	setAttr -s 22 ".g[0:21]" yes yes yes no yes yes no yes yes no yes yes 
		no yes yes no yes yes no yes yes no;
	setAttr ".bp" yes;
createNode groupParts -n "skinCluster2GroupParts";
	rename -uid "BDB5BC6E-4F32-CE7A-EAA7-BFABFAB3ECBF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*][*]";
createNode tweak -n "tweak3";
	rename -uid "E4F0B8A6-483D-7155-E989-6D9B4EEEB8AA";
createNode objectSet -n "tweakSet3";
	rename -uid "3B4147FF-4F22-577E-E042-C2895E4B1218";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId12";
	rename -uid "5B21AEFB-4982-148B-11AF-B2A48D244C43";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	rename -uid "204AA249-4DBC-7C49-2319-D3930F88EB45";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*][*]";
createNode makeNurbCircle -n "makeNurbCircle53";
	rename -uid "3604F4EF-4D9D-741B-387D-1F8FBD4B940C";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 10;
	setAttr ".tol" 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "171514F2-4EF8-A634-6737-FF9B0F833624";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "25DC9397-4070-F1C5-A591-D0867B2D427A";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "62C42411-4CE6-0E3C-6B2D-6494C9C647FD";
createNode displayLayerManager -n "layerManager";
	rename -uid "32D5D347-4967-5582-F835-F880083D568C";
createNode displayLayer -n "defaultLayer";
	rename -uid "068C174E-4FAE-AD84-8A8F-6D9D9F96C489";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "ACCA14AE-4502-914E-C0BB-8097F8CD08C1";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "34AEC833-4645-5FFF-C084-8C8A6FE4FD9E";
	setAttr ".g" yes;
createNode groupId -n "RibbonArm_skinCluster2GroupId";
	rename -uid "742A64BF-49DC-F322-B142-17A015D824FB";
	setAttr ".ihi" 0;
createNode objectSet -n "RibbonArm_skinCluster2Set";
	rename -uid "622C2D68-4248-8641-EC9F-9C8CCA289C4D";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode skinCluster -n "RibbonArm_skinCluster2";
	rename -uid "A2678EAC-401C-0351-707A-29A415AC09E0";
	setAttr -s 76 ".wl";
	setAttr ".wl[0:75].w"
		5 0 0.00014462060890978366 1 0.0066321052400618351 2 0.00063567071673999013 
		3 4.9070975444519282e-05 6 0.99253853245884394
		5 0 2.3203243712810025e-05 1 0.0011602930471807096 2 0.00010365000726113769 
		3 7.8250251313639432e-06 6 0.99870502867671396
		5 0 2.3203243712810025e-05 1 0.0011602930471807096 2 0.00010365000726113769 
		3 7.8250251313639432e-06 6 0.99870502867671396
		5 0 0.00014462060890978225 1 0.0066321052400617753 2 0.00063567071673998384 
		3 4.9070975444518801e-05 6 0.99253853245884394
		5 0 8.7600974469409165e-05 1 0.0052786863713135497 2 0.00041575051587181699 
		3 2.8547536665580688e-05 6 0.99418941460167976
		5 0 2.1634319018021028e-06 1 0.00014568471169240998 2 1.0463710712405126e-05 
		3 7.0021185258813001e-07 6 0.9998409879338408
		5 0 2.1634319018021028e-06 1 0.00014568471169240998 2 1.0463710712405126e-05 
		3 7.0021185258813001e-07 6 0.9998409879338408
		5 0 8.7600974469408013e-05 1 0.005278686371313489 2 0.00041575051587181146 
		3 2.8547536665580305e-05 6 0.99418941460167976
		5 0 0.00023982040368861421 1 0.028682292821128445 2 0.0013625669035824857 
		3 7.1389411078314906e-05 6 0.96964393046052211
		5 0 3.9373789131037829e-05 1 0.0057524390177452391 2 0.00022975943586894647 
		3 1.1619316900734297e-05 6 0.99396680844035412
		5 0 3.9373789131037829e-05 1 0.0057524390177452391 2 0.00022975943586894647 
		3 1.1619316900734297e-05 6 0.99396680844035412
		5 0 0.00023982040368861175 1 0.028682292821128177 2 0.0013625669035824723 
		3 7.1389411078314174e-05 6 0.96964393046052244
		5 0 0.0013279563443994995 1 0.75802812222531624 2 0.010850980552649287 
		3 0.00033453860852467049 6 0.22945840226911024
		5 0 0.00070738605769906163 1 0.82049492086891318 2 0.006070844206041248 
		3 0.00017591233411430729 6 0.17255093653323225
		5 0 0.00070738605769906163 1 0.82049492086891318 2 0.006070844206041248 
		3 0.00017591233411430729 6 0.17255093653323225
		5 0 0.0013279563443994941 1 0.7580281222253169 2 0.010850980552649252 
		3 0.00033453860852466913 6 0.22945840226910977
		5 0 0.00042388336431694847 1 0.98746723128489178 2 0.0060115960354007987 
		3 8.5691360551902357e-05 6 0.0060115979548385672
		5 0 5.4992823140710415e-06 1 0.99981988490452012 2 8.6763334676003662e-05 
		3 1.0891140466587138e-06 6 8.6763364443114436e-05
		5 0 5.4992823140710415e-06 1 0.99981988490452012 2 8.6763334676003662e-05 
		3 1.0891140466587138e-06 6 8.6763364443114436e-05
		5 0 0.00042388336431694229 1 0.987467231284892 2 0.0060115960354007181 
		3 8.569136055190111e-05 6 0.0060115979548384865
		5 0 0.0064485276587259643 1 0.75366309146663768 2 0.22813717507661485 
		3 0.00096269786154906233 6 0.010788507936472612
		5 0 0.0035552314893011619 1 0.8178799533105795 2 0.17200111969883125 
		3 0.00051219055818517629 6 0.0060515049431029231
		5 0 0.0035552314893011619 1 0.8178799533105795 2 0.17200111969883125 
		3 0.00051219055818517629 6 0.0060515049431029231
		5 0 0.0064485276587259392 1 0.75366309146663812 2 0.2281371750766143 
		3 0.000962697861549058 6 0.010788507936472564
		5 0 0.0064354321599840777 1 0.028488883601927344 2 0.96310548405018037 
		3 0.00061682026012164657 6 0.001353379927786551
		5 0 0.0011533965543037107 1 0.0057455088213254459 2 0.99276857782930072 
		3 0.00010303396928608445 6 0.00022948282578401984
		5 0 0.0011533965543037107 1 0.0057455088213254459 2 0.99276857782930072 
		3 0.00010303396928608445 6 0.00022948282578401984
		5 0 0.0064354321599840213 1 0.028488883601927115 2 0.9631054840501807 
		3 0.00061682026012164061 6 0.0013533799277865384
		5 0 0.028488831865573817 1 0.0064354289022870714 2 0.96310554197235843 
		3 0.0013533771317794914 6 0.00061682012800117305
		5 0 0.0057454879506690848 1 0.0011533940100916557 2 0.99276860231895259 
		3 0.00022948194976700847 6 0.00010303377051971398
		5 0 0.0057454879506690848 1 0.0011533940100916557 2 0.99276860231895259 
		3 0.00022948194976700847 6 0.00010303377051971398
		5 0 0.028488831865573602 1 0.0064354289022870168 2 0.96310554197235876 
		3 0.0013533771317794797 6 0.0006168201280011673
		5 0 0.75339330569194274 1 0.0064462293066862748 2 0.22805598115267053 
		3 0.010784644392959607 4 0.001319839455740966
		5 0 0.8177217838161619 1 0.003554551290751985 2 0.17196833117127336 
		3 0.0060503364798243052 4 0.00070499724198852184
		5 0 0.8177217838161619 1 0.003554551290751985 2 0.17196833117127336 
		3 0.0060503364798243052 4 0.00070499724198852184
		5 0 0.75339330569194307 1 0.0064462293066862505 2 0.2280559811526702 
		3 0.010784644392959565 4 0.0013198394557409599
		5 0 0.98713339697290192 1 0.0004237402052305032 2 0.0060095675250132173 
		3 0.0060095552232416619 4 0.0004237400736126504
		5 0 0.99981547564949791 1 5.4992599620081589e-06 2 8.6763011580360622e-05 
		3 8.676282073781058e-05 4 5.499258221836179e-06
		5 0 0.99981547564949791 1 5.4992599620081589e-06 2 8.6763011580360622e-05 
		3 8.676282073781058e-05 4 5.499258221836179e-06
		5 0 0.98713339697290226 1 0.00042374020523049707 2 0.006009567525013134 
		3 0.0060095552232415795 4 0.00042374007361264455
		5 0 0.75339438787317137 1 0.0013198375882904139 2 0.010784642719901016 
		3 0.22805491578593842 4 0.0064462160326988188
		5 0 0.81772295390891403 1 0.00070499526882455445 2 0.0060503274988253208 
		3 0.17196718432338365 4 0.0035545390000524995
		5 0 0.81772295390891403 1 0.00070499526882455445 2 0.0060503274988253208 
		3 0.17196718432338365 4 0.0035545390000524995
		5 0 0.7533943878731717 1 0.0013198375882904083 2 0.01078464271990098 
		3 0.22805491578593806 4 0.0064462160326987971
		5 0 0.028488987823718878 2 0.0013533833240261912 3 0.96310535924568852 
		4 0.0064354473978372575 5 0.00061682220872906544
		5 0 0.0057455526144605858 2 0.0002294842767586201 3 0.99276852473883459 
		4 0.0011534036813678154 5 0.00010303468857833097
		5 0 0.0057455526144605858 2 0.0002294842767586201 3 0.99276852473883459 
		4 0.0011534036813678154 5 0.00010303468857833097
		5 0 0.028488987823718687 2 0.0013533833240261799 3 0.96310535924568885 
		4 0.0064354473978372045 5 0.00061682220872906002
		5 0 0.0064354197782388609 2 0.00061681876124724156 3 0.9631056199991278 
		4 0.028488766164689105 5 0.0013533752966969636
		5 0 0.0011533880824071991 2 0.00010303315392369417 3 0.99276864490804506 
		4 0.0057454530770054742 5 0.00022948077861866963
		5 0 0.0011533880824071991 2 0.00010303315392369417 3 0.99276864490804506 
		4 0.0057454530770054742 5 0.00022948077861866963
		5 0 0.0064354197782388054 2 0.0006168187612472357 3 0.96310561999912814 
		4 0.028488766164688907 5 0.0013533752966969513
		5 0 0.0064485356636363629 2 0.00096269876010946246 3 0.22813787913470526 
		4 0.75366237753426846 5 0.010788508907280482
		5 0 0.0035552378362097123 2 0.00051219130235528366 3 0.17200184320727435 
		4 0.81787921907923589 5 0.0060515085749248652
		5 0 0.0035552378362097123 2 0.00051219130235528366 3 0.17200184320727435 
		4 0.81787921907923589 5 0.0060515085749248652
		5 0 0.0064485356636363412 2 0.00096269876010945845 3 0.22813787913470485 
		4 0.7536623775342689 5 0.010788508907280437
		5 0 0.00042388375389427975 2 8.5691422286802657e-05 3 0.0060116082646295499 
		4 0.98746721868107501 5 0.0060115978781143447
		5 0 5.4992875335826879e-06 2 1.089114851656281e-06 3 8.6763525503517284e-05 
		4 0.99981988470768435 5 8.6763364426876421e-05
		5 0 5.4992875335826879e-06 2 1.089114851656281e-06 3 8.6763525503517284e-05 
		4 0.99981988470768435 5 8.6763364426876421e-05
		5 0 0.00042388375389427357 2 8.569142228680141e-05 3 0.0060116082646294719 
		4 0.98746721868107512 5 0.0060115978781142623
		5 0 0.0013279563144428695 2 0.00033453855641839313 3 0.010850988324510499 
		4 0.75802829902696223 5 0.22945821777766609
		5 0 0.00070738574107528311 2 0.00017591223089454629 3 0.0060708462645259814 
		4 0.82049513306529609 5 0.17255072269820818
		5 0 0.00070738574107528311 2 0.00017591223089454629 3 0.0060708462645259814 
		4 0.82049513306529609 5 0.17255072269820818
		5 0 0.001327956314442864 2 0.00033453855641839178 3 0.010850988324510454 
		4 0.75802829902696267 5 0.22945821777766562
		5 0 0.00023982055968895725 2 7.1389450981369074e-05 3 0.0013625685116264246 
		4 0.028682312279713046 5 0.96964390919799026
		5 0 3.93738156709032e-05 2 1.1619323629364904e-05 3 0.0002297597173479921 
		4 0.005752443485439589 5 0.99396680365791223
		5 0 3.93738156709032e-05 2 1.1619323629364904e-05 3 0.0002297597173479921 
		4 0.005752443485439589 5 0.99396680365791223
		5 0 0.00023982055968895498 2 7.1389450981368396e-05 3 0.0013625685116264118 
		4 0.028682312279712827 5 0.96964390919799048
		5 0 8.7601028046923782e-05 2 2.8547552074375909e-05 3 0.00041575095241915639 
		4 0.0052786892751901012 5 0.99418941119226945
		5 0 2.1634332428136836e-06 2 7.0021223459504869e-07 3 1.0463721928101158e-05 
		4 0.0001456847976087841 5 0.99984098783498576
		5 0 2.1634332428136836e-06 2 7.0021223459504869e-07 3 1.0463721928101158e-05 
		4 0.0001456847976087841 5 0.99984098783498576
		5 0 8.760102804692259e-05 2 2.854755207437552e-05 3 0.00041575095241915087 
		4 0.0052786892751900336 5 0.99418941119226956
		5 0 0.00014462069362675283 2 4.907100106245523e-05 3 0.00063567134466711904 
		4 0.0066321085245439233 5 0.99253852843609969
		5 0 2.3203257482497933e-05 2 7.8250292600232547e-06 3 0.0001036501115875289 
		4 0.0011602936557250051 5 0.99870502794594496
		5 0 2.3203257482497933e-05 2 7.8250292600232547e-06 3 0.0001036501115875289 
		4 0.0011602936557250051 5 0.99870502794594496
		5 0 0.00014462069362675142 2 4.9071001062454762e-05 3 0.00063567134466711319 
		4 0.0066321085245438678 5 0.9925385284360998;
	setAttr -s 7 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 -8.9301618502898131e-18 -1.3877787807814454e-17 0
		 8.9301618502898131e-18 1 -3.260290463627877e-19 0 -1.3877787807814454e-17 3.260290463627384e-19 0.99999999999999978 0
		 -51.080654135779085 -64.338847392510701 1.1636504093144187e-07 1;
	setAttr ".pm[1]" -type "matrix" 1 -8.9301618502898131e-18 -1.3877787807814454e-17 0
		 8.9301618502898131e-18 1 -3.260290463627877e-19 0 -1.3877787807814454e-17 3.260290463627384e-19 0.99999999999999978 0
		 -37.699999693407811 -64.338847392510701 3.8788347232255505e-08 1;
	setAttr ".pm[2]" -type "matrix" 1 -8.9301618502898131e-18 -1.3877787807814454e-17 0
		 8.9301618502898131e-18 1 -3.260290463627877e-19 0 -1.3877787807814454e-17 3.260290463627384e-19 0.99999999999999978 0
		 -44.390326914593452 -64.338847392510701 7.7576694081848683e-08 1;
	setAttr ".pm[3]" -type "matrix" 1 -8.9301618502898131e-18 -1.3877787807814454e-17 0
		 8.9301618502898131e-18 1 -3.260290463627877e-19 0 -1.3877787807814454e-17 3.260290463627384e-19 0.99999999999999978 0
		 -57.770981887476538 -64.338847392510701 1.939417341310997e-07 1;
	setAttr ".pm[4]" -type "matrix" 1 -8.9301618502898131e-18 -1.3877787807814454e-17 0
		 8.9301618502898131e-18 1 -3.260290463627877e-19 0 -1.3877787807814454e-17 3.260290463627384e-19 0.99999999999999978 0
		 -64.461306456103117 -64.338847392510701 3.8788347603643242e-08 1;
	setAttr ".pm[5]" -type "matrix" 1 -8.9301618502898131e-18 -1.3877787807814454e-17 0
		 8.9301618502898131e-18 1 -3.260290463627877e-19 0 -1.3877787807814454e-17 3.260290463627384e-19 0.99999999999999978 0
		 -71.151631170889445 -64.338847392510701 1.2497983805362014e-15 1;
	setAttr ".pm[6]" -type "matrix" 1 -8.9301618502898131e-18 -1.3877787807814454e-17 0
		 8.9301618502898131e-18 1 -3.260290463627877e-19 0 -1.3877787807814454e-17 3.260290463627384e-19 0.99999999999999978 0
		 -31.009673917597866 -64.338847392510701 7.2607849561443913e-17 1;
	setAttr ".gm" -type "matrix" 42.818087736844348 0 0 0 0 -1.9447211000998369e-14 43.791226108745832 0
		 0 -3.8925528607852131 -1.7286407242457061e-15 0 51.080652544243655 64.338847392510701 0 1;
	setAttr -s 7 ".ma";
	setAttr -s 7 ".dpf[0:6]"  4 4 4 4 4 4 4;
	setAttr -s 7 ".lw";
	setAttr -s 7 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 7 ".ifcl";
	setAttr -s 7 ".ifcl";
createNode dagPose -n "RibbonArm_bindPose5";
	rename -uid "F70AA217-497B-E8BA-6592-EA8DC6F6A95A";
	setAttr -s 22 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.5915354296680562e-06 0 -1.1636504027023875e-07 1;
	setAttr ".wm[1]" -type "matrix" 0.99733777080387787 7.7037197775489434e-34 -0.072920305319928491 0
		 8.9301618502898131e-18 -1 1.2213865086837256e-16 0 -0.072920305319928491 -1.224646799147353e-16 -0.99733777080387798 0
		 51.080655735822539 64.338844299316406 -1.1636504027023875e-07 1;
	setAttr ".wm[2]" -type "matrix" 0.99733777080387787 7.7037197775489434e-34 -0.072920305319928491 0
		 8.9301618502898131e-18 -1 1.2213865086837256e-16 0 -0.072920305319928491 -1.224646799147353e-16 -0.99733777080387798 0
		 51.080655735822539 64.338844299316406 -1.1636504027023875e-07 1;
	setAttr ".wm[4]" -type "matrix" 0.99733777080387787 7.7037197775489434e-34 -0.072920305319928491 0
		 8.9301618502898131e-18 -1 1.2213865086837256e-16 0 -0.072920305319928491 -1.224646799147353e-16 -0.99733777080387798 0
		 37.700001293451265 64.338844299316406 -3.878834675674625e-08 1;
	setAttr ".wm[5]" -type "matrix" 0.99733777080387787 7.7037197775489434e-34 -0.072920305319928491 0
		 8.9301618502898131e-18 -1 1.2213865086837256e-16 0 -0.072920305319928491 -1.224646799147353e-16 -0.99733777080387798 0
		 37.700001293451265 64.338844299316406 -3.878834675674625e-08 1;
	setAttr ".wm[7]" -type "matrix" 0.99733777080387787 7.7037197775489434e-34 -0.072920305319928491 0
		 8.9301618502898131e-18 -1 1.2213865086837256e-16 0 -0.072920305319928491 -1.224646799147353e-16 -0.99733777080387798 0
		 44.390328514636906 64.338844299316406 -7.7576693513492501e-08 1;
	setAttr ".wm[8]" -type "matrix" 0.99733777080387787 7.7037197775489434e-34 -0.072920305319928491 0
		 8.9301618502898131e-18 -1 1.2213865086837256e-16 0 -0.072920305319928491 -1.224646799147353e-16 -0.99733777080387798 0
		 44.390328514636906 64.338844299316406 -7.7576693513492501e-08 1;
	setAttr ".wm[10]" -type "matrix" 0.99733777080387787 7.7037197775489434e-34 -0.072920305319928491 0
		 8.9301618502898131e-18 -1 1.2213865086837256e-16 0 -0.072920305319928491 -1.224646799147353e-16 -0.99733777080387798 0
		 57.770983487519992 64.338844299316406 -1.9394173337704966e-07 1;
	setAttr ".wm[11]" -type "matrix" 0.99733777080387787 7.7037197775489434e-34 -0.072920305319928491 0
		 8.9301618502898131e-18 -1 1.2213865086837256e-16 0 -0.072920305319928491 -1.224646799147353e-16 -0.99733777080387798 0
		 57.770983487519992 64.338844299316406 -1.9394173337704966e-07 1;
	setAttr ".wm[13]" -type "matrix" 0.99733777080387787 7.7037197775489434e-34 -0.072920305319928491 0
		 8.9301618502898131e-18 -1 1.2213865086837256e-16 0 -0.072920305319928491 -1.224646799147353e-16 -0.99733777080387798 0
		 64.461308056146578 64.338844299316406 -3.878834675674625e-08 1;
	setAttr ".wm[14]" -type "matrix" 0.99733777080387787 7.7037197775489434e-34 -0.072920305319928491 0
		 8.9301618502898131e-18 -1 1.2213865086837256e-16 0 -0.072920305319928491 -1.224646799147353e-16 -0.99733777080387798 0
		 64.461308056146578 64.338844299316406 -3.878834675674625e-08 1;
	setAttr ".wm[16]" -type "matrix" 0.99733777080387787 7.7037197775489434e-34 -0.072920305319928491 0
		 8.9301618502898131e-18 -1 1.2213865086837256e-16 0 -0.072920305319928491 -1.224646799147353e-16 -0.99733777080387798 0
		 71.151634216308594 64.338844299316406 -1.1545048412434398e-31 1;
	setAttr ".wm[17]" -type "matrix" 0.99733777080387787 7.7037197775489434e-34 -0.072920305319928491 0
		 8.9301618502898131e-18 -1 1.2213865086837256e-16 0 -0.072920305319928491 -1.224646799147353e-16 -0.99733777080387798 0
		 71.151634216308594 64.338844299316406 -1.1545048412434398e-31 1;
	setAttr ".wm[19]" -type "matrix" 0.99733777080387787 7.7037197775489434e-34 -0.072920305319928491 0
		 8.9301618502898131e-18 -1 1.2213865086837256e-16 0 -0.072920305319928491 -1.224646799147353e-16 -0.99733777080387798 0
		 31.009674072265625 64.338844299316406 -1.1545048412434398e-31 1;
	setAttr ".wm[20]" -type "matrix" 0.99733777080387787 7.7037197775489434e-34 -0.072920305319928491 0
		 8.9301618502898131e-18 -1 1.2213865086837256e-16 0 -0.072920305319928491 -1.224646799147353e-16 -0.99733777080387798 0
		 31.009674072265625 64.338844299316406 -1.1545048412434398e-31 1;
	setAttr -s 22 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.5915354296680562e-06
		 0 -1.1636504027023875e-07 0 0 0 51.08065255275168 64.338844299316406 1.1636504027023875e-07 0
		 0 0 51.08065255275168 64.338844299316406 1.1636504027023875e-07 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 3.1415926535897931 0.072985084496589747
		 7.7242835908436136e-34 0 51.080654144287109 64.338844299316406 -1.1545048412434398e-31 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.5957837717905932e-06
		 -3.0931942944789625e-06 1.1667565713580075e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.99933422107017778 2.2340278312311234e-18 0.036484443233535425 6.1191572755600328e-17 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 3.1415926535897931 0.072985084496589747
		 7.7242835908436136e-34 0 37.699999701915836 64.338844299316406 7.7576693513492501e-08 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.5957837717905932e-06
		 -3.0931942944789625e-06 1.1667565713580075e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.99933422107017778 2.2340278312311234e-18 0.036484443233535425 6.1191572755600328e-17 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 3.1415926535897931 0.072985084496589747
		 7.7242835908436136e-34 0 44.390326923101476 64.338844299316406 3.878834675674625e-08 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.5957837717905932e-06
		 -3.0931942944789625e-06 1.1667565713580075e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.99933422107017778 2.2340278312311234e-18 0.036484443233535425 6.1191572755600328e-17 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 3.1415926535897931 0.072985084496589747
		 7.7242835908436136e-34 0 57.770981895984562 64.338844299316406 -7.7576693106810899e-08 0
		 0 0 -1.5957837717905932e-06 -2.6645352591003757e-15 0 0 0 0 -1.5957837717905932e-06
		 -2.6645352591003757e-15 0 4.2483421479588649e-09 5.3290705182007514e-15 1.1636503986355715e-07 
		0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.5957837717905932e-06
		 -3.0931942944789625e-06 1.1667565713580075e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.99933422107017778 2.2340278312311234e-18 0.036484443233535425 6.1191572755600328e-17 1
		 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 3.1415926535897931 0.072985084496589747
		 7.7242835908436136e-34 0 64.461306464611141 64.338844299316406 7.7576693513492501e-08 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.5957837717905932e-06
		 -3.0931942944789625e-06 1.1667565713580075e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.99933422107017778 2.2340278312311234e-18 0.036484443233535425 6.1191572755600328e-17 1
		 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 3.1415926535897931 0.072985084496589747
		 -8.9539994490451227e-18 0 71.151634216308594 64.338844299316406 -1.1545048412434398e-31 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.0373115436077569e-06
		 -3.0931942944789625e-06 2.2207289429587718e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.99933422107017778 2.2340278312311234e-18 0.036484443233535425 6.1191572755600328e-17 1
		 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 3.1415926535897931 0.072985084496589747
		 -8.9539994490451227e-18 0 31.009674072265625 64.338844299316406 -1.1545048412434398e-31 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.5425599997342943e-07
		 -3.0931942944789625e-06 1.1278419975724319e-08 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.99933422107017778 2.2340278312311234e-18 0.036484443233535425 6.1191572755600328e-17 1
		 1 1 yes;
	setAttr -s 22 ".m";
	setAttr -s 22 ".p";
	setAttr -s 22 ".g[0:21]" yes yes yes no yes yes no yes yes no yes yes 
		no yes yes no yes yes no yes yes no;
	setAttr ".bp" yes;
createNode groupParts -n "RibbonArm_skinCluster2GroupParts";
	rename -uid "72F62658-4B14-148F-3FEA-21BF09C4BE49";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*][*]";
createNode tweak -n "RibbonArm_tweak3";
	rename -uid "0DD47587-40CE-9FA5-3A4F-C6B8C4F68165";
createNode objectSet -n "RibbonArm_tweakSet3";
	rename -uid "DE3FE1B8-41D6-7989-74D9-41AEBB013A07";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "RibbonArm_groupId12";
	rename -uid "90E3933C-4B6E-E49D-6612-238878A2487D";
	setAttr ".ihi" 0;
createNode groupParts -n "RibbonArm_groupParts7";
	rename -uid "1B8FB133-401E-ACE6-AB8C-3F99D659FEC4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*][*]";
createNode makeNurbCircle -n "RibbonArm_makeNurbCircle53";
	rename -uid "0CD797A2-4CE9-FD4F-9AC8-45A65EC66745";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 10;
	setAttr ".tol" 1;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "D4833A2A-43AE-B81A-20E4-5B80E0D9DA53";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1104\n            -height 736\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n"
		+ "            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n"
		+ "            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n"
		+ "                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n"
		+ "                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -autoFitTime 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n"
		+ "\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n"
		+ "                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1104\\n    -height 736\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1104\\n    -height 736\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "1EC9AE16-435F-22F4-D96B-0FAEA15C45E0";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
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
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
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
connectAttr "|RibbonArms|RightRibbonArm|R_Ribbon|R_Elbow_FollowGRP|Elbow_FollowGRP_pointConstraint1.ctx" "R_Elbow_FollowGRP.tx"
		;
connectAttr "|RibbonArms|RightRibbonArm|R_Ribbon|R_Elbow_FollowGRP|Elbow_FollowGRP_pointConstraint1.cty" "R_Elbow_FollowGRP.ty"
		;
connectAttr "|RibbonArms|RightRibbonArm|R_Ribbon|R_Elbow_FollowGRP|Elbow_FollowGRP_pointConstraint1.ctz" "R_Elbow_FollowGRP.tz"
		;
connectAttr "R_Elbow_FollowGRP.pim" "|RibbonArms|RightRibbonArm|R_Ribbon|R_Elbow_FollowGRP|Elbow_FollowGRP_pointConstraint1.cpim"
		;
connectAttr "R_Elbow_FollowGRP.rp" "|RibbonArms|RightRibbonArm|R_Ribbon|R_Elbow_FollowGRP|Elbow_FollowGRP_pointConstraint1.crp"
		;
connectAttr "R_Elbow_FollowGRP.rpt" "|RibbonArms|RightRibbonArm|R_Ribbon|R_Elbow_FollowGRP|Elbow_FollowGRP_pointConstraint1.crt"
		;
connectAttr "R_Arm_Wrist.t" "|RibbonArms|RightRibbonArm|R_Ribbon|R_Elbow_FollowGRP|Elbow_FollowGRP_pointConstraint1.tg[0].tt"
		;
connectAttr "R_Arm_Wrist.rp" "|RibbonArms|RightRibbonArm|R_Ribbon|R_Elbow_FollowGRP|Elbow_FollowGRP_pointConstraint1.tg[0].trp"
		;
connectAttr "R_Arm_Wrist.rpt" "|RibbonArms|RightRibbonArm|R_Ribbon|R_Elbow_FollowGRP|Elbow_FollowGRP_pointConstraint1.tg[0].trt"
		;
connectAttr "R_Arm_Wrist.pm" "|RibbonArms|RightRibbonArm|R_Ribbon|R_Elbow_FollowGRP|Elbow_FollowGRP_pointConstraint1.tg[0].tpm"
		;
connectAttr "|RibbonArms|RightRibbonArm|R_Ribbon|R_Elbow_FollowGRP|Elbow_FollowGRP_pointConstraint1.w0" "|RibbonArms|RightRibbonArm|R_Ribbon|R_Elbow_FollowGRP|Elbow_FollowGRP_pointConstraint1.tg[0].tw"
		;
connectAttr "R_Arm_Shoulder.t" "|RibbonArms|RightRibbonArm|R_Ribbon|R_Elbow_FollowGRP|Elbow_FollowGRP_pointConstraint1.tg[1].tt"
		;
connectAttr "R_Arm_Shoulder.rp" "|RibbonArms|RightRibbonArm|R_Ribbon|R_Elbow_FollowGRP|Elbow_FollowGRP_pointConstraint1.tg[1].trp"
		;
connectAttr "R_Arm_Shoulder.rpt" "|RibbonArms|RightRibbonArm|R_Ribbon|R_Elbow_FollowGRP|Elbow_FollowGRP_pointConstraint1.tg[1].trt"
		;
connectAttr "R_Arm_Shoulder.pm" "|RibbonArms|RightRibbonArm|R_Ribbon|R_Elbow_FollowGRP|Elbow_FollowGRP_pointConstraint1.tg[1].tpm"
		;
connectAttr "|RibbonArms|RightRibbonArm|R_Ribbon|R_Elbow_FollowGRP|Elbow_FollowGRP_pointConstraint1.w1" "|RibbonArms|RightRibbonArm|R_Ribbon|R_Elbow_FollowGRP|Elbow_FollowGRP_pointConstraint1.tg[1].tw"
		;
connectAttr "grpR_Arm_Secundary_UP01_pointConstraint1.ctx" "grpR_Arm_Secundary_UP01.tx"
		;
connectAttr "grpR_Arm_Secundary_UP01_pointConstraint1.cty" "grpR_Arm_Secundary_UP01.ty"
		;
connectAttr "grpR_Arm_Secundary_UP01_pointConstraint1.ctz" "grpR_Arm_Secundary_UP01.tz"
		;
connectAttr "grpR_Arm_Secundary_UP01_aimConstraint1.crx" "grpR_Arm_Secundary_UP01.rx"
		;
connectAttr "grpR_Arm_Secundary_UP01_aimConstraint1.cry" "grpR_Arm_Secundary_UP01.ry"
		;
connectAttr "grpR_Arm_Secundary_UP01_aimConstraint1.crz" "grpR_Arm_Secundary_UP01.rz"
		;
connectAttr "grpR_Arm_Secundary_UP01.pim" "grpR_Arm_Secundary_UP01_pointConstraint1.cpim"
		;
connectAttr "grpR_Arm_Secundary_UP01.rp" "grpR_Arm_Secundary_UP01_pointConstraint1.crp"
		;
connectAttr "grpR_Arm_Secundary_UP01.rpt" "grpR_Arm_Secundary_UP01_pointConstraint1.crt"
		;
connectAttr "R_Arm_Elbow.t" "grpR_Arm_Secundary_UP01_pointConstraint1.tg[0].tt";
connectAttr "R_Arm_Elbow.rp" "grpR_Arm_Secundary_UP01_pointConstraint1.tg[0].trp"
		;
connectAttr "R_Arm_Elbow.rpt" "grpR_Arm_Secundary_UP01_pointConstraint1.tg[0].trt"
		;
connectAttr "R_Arm_Elbow.pm" "grpR_Arm_Secundary_UP01_pointConstraint1.tg[0].tpm"
		;
connectAttr "grpR_Arm_Secundary_UP01_pointConstraint1.w0" "grpR_Arm_Secundary_UP01_pointConstraint1.tg[0].tw"
		;
connectAttr "R_Arm_Wrist.t" "grpR_Arm_Secundary_UP01_pointConstraint1.tg[1].tt";
connectAttr "R_Arm_Wrist.rp" "grpR_Arm_Secundary_UP01_pointConstraint1.tg[1].trp"
		;
connectAttr "R_Arm_Wrist.rpt" "grpR_Arm_Secundary_UP01_pointConstraint1.tg[1].trt"
		;
connectAttr "R_Arm_Wrist.pm" "grpR_Arm_Secundary_UP01_pointConstraint1.tg[1].tpm"
		;
connectAttr "grpR_Arm_Secundary_UP01_pointConstraint1.w1" "grpR_Arm_Secundary_UP01_pointConstraint1.tg[1].tw"
		;
connectAttr "grpR_Arm_Secundary_UP01.pim" "grpR_Arm_Secundary_UP01_aimConstraint1.cpim"
		;
connectAttr "grpR_Arm_Secundary_UP01.t" "grpR_Arm_Secundary_UP01_aimConstraint1.ct"
		;
connectAttr "grpR_Arm_Secundary_UP01.rp" "grpR_Arm_Secundary_UP01_aimConstraint1.crp"
		;
connectAttr "grpR_Arm_Secundary_UP01.rpt" "grpR_Arm_Secundary_UP01_aimConstraint1.crt"
		;
connectAttr "grpR_Arm_Secundary_UP01.ro" "grpR_Arm_Secundary_UP01_aimConstraint1.cro"
		;
connectAttr "R_Arm_Elbow.t" "grpR_Arm_Secundary_UP01_aimConstraint1.tg[0].tt";
connectAttr "R_Arm_Elbow.rp" "grpR_Arm_Secundary_UP01_aimConstraint1.tg[0].trp";
connectAttr "R_Arm_Elbow.rpt" "grpR_Arm_Secundary_UP01_aimConstraint1.tg[0].trt"
		;
connectAttr "R_Arm_Elbow.pm" "grpR_Arm_Secundary_UP01_aimConstraint1.tg[0].tpm";
connectAttr "grpR_Arm_Secundary_UP01_aimConstraint1.w0" "grpR_Arm_Secundary_UP01_aimConstraint1.tg[0].tw"
		;
connectAttr "grpR_Arm_Secundary_UP02_pointConstraint1.ctx" "grpR_Arm_Secundary_UP02.tx"
		;
connectAttr "grpR_Arm_Secundary_UP02_pointConstraint1.cty" "grpR_Arm_Secundary_UP02.ty"
		;
connectAttr "grpR_Arm_Secundary_UP02_pointConstraint1.ctz" "grpR_Arm_Secundary_UP02.tz"
		;
connectAttr "grpR_Arm_Secundary_UP02_aimConstraint1.crx" "grpR_Arm_Secundary_UP02.rx"
		;
connectAttr "grpR_Arm_Secundary_UP02_aimConstraint1.cry" "grpR_Arm_Secundary_UP02.ry"
		;
connectAttr "grpR_Arm_Secundary_UP02_aimConstraint1.crz" "grpR_Arm_Secundary_UP02.rz"
		;
connectAttr "grpR_Arm_Secundary_UP02.pim" "grpR_Arm_Secundary_UP02_pointConstraint1.cpim"
		;
connectAttr "grpR_Arm_Secundary_UP02.rp" "grpR_Arm_Secundary_UP02_pointConstraint1.crp"
		;
connectAttr "grpR_Arm_Secundary_UP02.rpt" "grpR_Arm_Secundary_UP02_pointConstraint1.crt"
		;
connectAttr "R_Arm_Elbow.t" "grpR_Arm_Secundary_UP02_pointConstraint1.tg[0].tt";
connectAttr "R_Arm_Elbow.rp" "grpR_Arm_Secundary_UP02_pointConstraint1.tg[0].trp"
		;
connectAttr "R_Arm_Elbow.rpt" "grpR_Arm_Secundary_UP02_pointConstraint1.tg[0].trt"
		;
connectAttr "R_Arm_Elbow.pm" "grpR_Arm_Secundary_UP02_pointConstraint1.tg[0].tpm"
		;
connectAttr "grpR_Arm_Secundary_UP02_pointConstraint1.w0" "grpR_Arm_Secundary_UP02_pointConstraint1.tg[0].tw"
		;
connectAttr "R_Arm_Wrist.t" "grpR_Arm_Secundary_UP02_pointConstraint1.tg[1].tt";
connectAttr "R_Arm_Wrist.rp" "grpR_Arm_Secundary_UP02_pointConstraint1.tg[1].trp"
		;
connectAttr "R_Arm_Wrist.rpt" "grpR_Arm_Secundary_UP02_pointConstraint1.tg[1].trt"
		;
connectAttr "R_Arm_Wrist.pm" "grpR_Arm_Secundary_UP02_pointConstraint1.tg[1].tpm"
		;
connectAttr "grpR_Arm_Secundary_UP02_pointConstraint1.w1" "grpR_Arm_Secundary_UP02_pointConstraint1.tg[1].tw"
		;
connectAttr "grpR_Arm_Secundary_UP02.pim" "grpR_Arm_Secundary_UP02_aimConstraint1.cpim"
		;
connectAttr "grpR_Arm_Secundary_UP02.t" "grpR_Arm_Secundary_UP02_aimConstraint1.ct"
		;
connectAttr "grpR_Arm_Secundary_UP02.rp" "grpR_Arm_Secundary_UP02_aimConstraint1.crp"
		;
connectAttr "grpR_Arm_Secundary_UP02.rpt" "grpR_Arm_Secundary_UP02_aimConstraint1.crt"
		;
connectAttr "grpR_Arm_Secundary_UP02.ro" "grpR_Arm_Secundary_UP02_aimConstraint1.cro"
		;
connectAttr "R_Arm_Elbow.t" "grpR_Arm_Secundary_UP02_aimConstraint1.tg[0].tt";
connectAttr "R_Arm_Elbow.rp" "grpR_Arm_Secundary_UP02_aimConstraint1.tg[0].trp";
connectAttr "R_Arm_Elbow.rpt" "grpR_Arm_Secundary_UP02_aimConstraint1.tg[0].trt"
		;
connectAttr "R_Arm_Elbow.pm" "grpR_Arm_Secundary_UP02_aimConstraint1.tg[0].tpm";
connectAttr "grpR_Arm_Secundary_UP02_aimConstraint1.w0" "grpR_Arm_Secundary_UP02_aimConstraint1.tg[0].tw"
		;
connectAttr "grpR_Arm_Secundary_Down01_pointConstraint1.ctx" "grpR_Arm_Secundary_Down01.tx"
		;
connectAttr "grpR_Arm_Secundary_Down01_pointConstraint1.cty" "grpR_Arm_Secundary_Down01.ty"
		;
connectAttr "grpR_Arm_Secundary_Down01_pointConstraint1.ctz" "grpR_Arm_Secundary_Down01.tz"
		;
connectAttr "grpR_Arm_Secundary_Down01_aimConstraint1.crx" "grpR_Arm_Secundary_Down01.rx"
		;
connectAttr "grpR_Arm_Secundary_Down01_aimConstraint1.cry" "grpR_Arm_Secundary_Down01.ry"
		;
connectAttr "grpR_Arm_Secundary_Down01_aimConstraint1.crz" "grpR_Arm_Secundary_Down01.rz"
		;
connectAttr "grpR_Arm_Secundary_Down01.pim" "grpR_Arm_Secundary_Down01_pointConstraint1.cpim"
		;
connectAttr "grpR_Arm_Secundary_Down01.rp" "grpR_Arm_Secundary_Down01_pointConstraint1.crp"
		;
connectAttr "grpR_Arm_Secundary_Down01.rpt" "grpR_Arm_Secundary_Down01_pointConstraint1.crt"
		;
connectAttr "R_Arm_Elbow.t" "grpR_Arm_Secundary_Down01_pointConstraint1.tg[0].tt"
		;
connectAttr "R_Arm_Elbow.rp" "grpR_Arm_Secundary_Down01_pointConstraint1.tg[0].trp"
		;
connectAttr "R_Arm_Elbow.rpt" "grpR_Arm_Secundary_Down01_pointConstraint1.tg[0].trt"
		;
connectAttr "R_Arm_Elbow.pm" "grpR_Arm_Secundary_Down01_pointConstraint1.tg[0].tpm"
		;
connectAttr "grpR_Arm_Secundary_Down01_pointConstraint1.w0" "grpR_Arm_Secundary_Down01_pointConstraint1.tg[0].tw"
		;
connectAttr "R_Arm_Shoulder.t" "grpR_Arm_Secundary_Down01_pointConstraint1.tg[1].tt"
		;
connectAttr "R_Arm_Shoulder.rp" "grpR_Arm_Secundary_Down01_pointConstraint1.tg[1].trp"
		;
connectAttr "R_Arm_Shoulder.rpt" "grpR_Arm_Secundary_Down01_pointConstraint1.tg[1].trt"
		;
connectAttr "R_Arm_Shoulder.pm" "grpR_Arm_Secundary_Down01_pointConstraint1.tg[1].tpm"
		;
connectAttr "grpR_Arm_Secundary_Down01_pointConstraint1.w1" "grpR_Arm_Secundary_Down01_pointConstraint1.tg[1].tw"
		;
connectAttr "grpR_Arm_Secundary_Down01.pim" "grpR_Arm_Secundary_Down01_aimConstraint1.cpim"
		;
connectAttr "grpR_Arm_Secundary_Down01.t" "grpR_Arm_Secundary_Down01_aimConstraint1.ct"
		;
connectAttr "grpR_Arm_Secundary_Down01.rp" "grpR_Arm_Secundary_Down01_aimConstraint1.crp"
		;
connectAttr "grpR_Arm_Secundary_Down01.rpt" "grpR_Arm_Secundary_Down01_aimConstraint1.crt"
		;
connectAttr "grpR_Arm_Secundary_Down01.ro" "grpR_Arm_Secundary_Down01_aimConstraint1.cro"
		;
connectAttr "R_Arm_Elbow.t" "grpR_Arm_Secundary_Down01_aimConstraint1.tg[0].tt";
connectAttr "R_Arm_Elbow.rp" "grpR_Arm_Secundary_Down01_aimConstraint1.tg[0].trp"
		;
connectAttr "R_Arm_Elbow.rpt" "grpR_Arm_Secundary_Down01_aimConstraint1.tg[0].trt"
		;
connectAttr "R_Arm_Elbow.pm" "grpR_Arm_Secundary_Down01_aimConstraint1.tg[0].tpm"
		;
connectAttr "grpR_Arm_Secundary_Down01_aimConstraint1.w0" "grpR_Arm_Secundary_Down01_aimConstraint1.tg[0].tw"
		;
connectAttr "grpR_Arm_Secundary_Down02_pointConstraint1.ctx" "grpR_Arm_Secundary_Down02.tx"
		;
connectAttr "grpR_Arm_Secundary_Down02_pointConstraint1.cty" "grpR_Arm_Secundary_Down02.ty"
		;
connectAttr "grpR_Arm_Secundary_Down02_pointConstraint1.ctz" "grpR_Arm_Secundary_Down02.tz"
		;
connectAttr "grpR_Arm_Secundary_Down02_aimConstraint1.crx" "grpR_Arm_Secundary_Down02.rx"
		;
connectAttr "grpR_Arm_Secundary_Down02_aimConstraint1.cry" "grpR_Arm_Secundary_Down02.ry"
		;
connectAttr "grpR_Arm_Secundary_Down02_aimConstraint1.crz" "grpR_Arm_Secundary_Down02.rz"
		;
connectAttr "grpR_Arm_Secundary_Down02.pim" "grpR_Arm_Secundary_Down02_pointConstraint1.cpim"
		;
connectAttr "grpR_Arm_Secundary_Down02.rp" "grpR_Arm_Secundary_Down02_pointConstraint1.crp"
		;
connectAttr "grpR_Arm_Secundary_Down02.rpt" "grpR_Arm_Secundary_Down02_pointConstraint1.crt"
		;
connectAttr "R_Arm_Shoulder.t" "grpR_Arm_Secundary_Down02_pointConstraint1.tg[0].tt"
		;
connectAttr "R_Arm_Shoulder.rp" "grpR_Arm_Secundary_Down02_pointConstraint1.tg[0].trp"
		;
connectAttr "R_Arm_Shoulder.rpt" "grpR_Arm_Secundary_Down02_pointConstraint1.tg[0].trt"
		;
connectAttr "R_Arm_Shoulder.pm" "grpR_Arm_Secundary_Down02_pointConstraint1.tg[0].tpm"
		;
connectAttr "grpR_Arm_Secundary_Down02_pointConstraint1.w0" "grpR_Arm_Secundary_Down02_pointConstraint1.tg[0].tw"
		;
connectAttr "R_Arm_Elbow.t" "grpR_Arm_Secundary_Down02_pointConstraint1.tg[1].tt"
		;
connectAttr "R_Arm_Elbow.rp" "grpR_Arm_Secundary_Down02_pointConstraint1.tg[1].trp"
		;
connectAttr "R_Arm_Elbow.rpt" "grpR_Arm_Secundary_Down02_pointConstraint1.tg[1].trt"
		;
connectAttr "R_Arm_Elbow.pm" "grpR_Arm_Secundary_Down02_pointConstraint1.tg[1].tpm"
		;
connectAttr "grpR_Arm_Secundary_Down02_pointConstraint1.w1" "grpR_Arm_Secundary_Down02_pointConstraint1.tg[1].tw"
		;
connectAttr "grpR_Arm_Secundary_Down02.pim" "grpR_Arm_Secundary_Down02_aimConstraint1.cpim"
		;
connectAttr "grpR_Arm_Secundary_Down02.t" "grpR_Arm_Secundary_Down02_aimConstraint1.ct"
		;
connectAttr "grpR_Arm_Secundary_Down02.rp" "grpR_Arm_Secundary_Down02_aimConstraint1.crp"
		;
connectAttr "grpR_Arm_Secundary_Down02.rpt" "grpR_Arm_Secundary_Down02_aimConstraint1.crt"
		;
connectAttr "grpR_Arm_Secundary_Down02.ro" "grpR_Arm_Secundary_Down02_aimConstraint1.cro"
		;
connectAttr "R_Arm_Elbow.t" "grpR_Arm_Secundary_Down02_aimConstraint1.tg[0].tt";
connectAttr "R_Arm_Elbow.rp" "grpR_Arm_Secundary_Down02_aimConstraint1.tg[0].trp"
		;
connectAttr "R_Arm_Elbow.rpt" "grpR_Arm_Secundary_Down02_aimConstraint1.tg[0].trt"
		;
connectAttr "R_Arm_Elbow.pm" "grpR_Arm_Secundary_Down02_aimConstraint1.tg[0].tpm"
		;
connectAttr "grpR_Arm_Secundary_Down02_aimConstraint1.w0" "grpR_Arm_Secundary_Down02_aimConstraint1.tg[0].tw"
		;
connectAttr "R_Arm_PlaneFollicleShape350.ot" "R_Arm_PlaneFollicle350.t" -l on;
connectAttr "R_Arm_PlaneFollicleShape350.or" "R_Arm_PlaneFollicle350.r" -l on;
connectAttr "R_Arm_PlaneShape.wm" "R_Arm_PlaneFollicleShape350.iwm";
connectAttr "R_Arm_PlaneShape.l" "R_Arm_PlaneFollicleShape350.is";
connectAttr "R_Arm_PlaneFollicleShape950.ot" "R_Arm_PlaneFollicle950.t" -l on;
connectAttr "R_Arm_PlaneFollicleShape950.or" "R_Arm_PlaneFollicle950.r" -l on;
connectAttr "R_Arm_PlaneShape.wm" "R_Arm_PlaneFollicleShape950.iwm";
connectAttr "R_Arm_PlaneShape.l" "R_Arm_PlaneFollicleShape950.is";
connectAttr "R_Arm_PlaneFollicleShape1550.ot" "R_Arm_PlaneFollicle1550.t" -l on;
connectAttr "R_Arm_PlaneFollicleShape1550.or" "R_Arm_PlaneFollicle1550.r" -l on;
connectAttr "R_Arm_PlaneShape.wm" "R_Arm_PlaneFollicleShape1550.iwm";
connectAttr "R_Arm_PlaneShape.l" "R_Arm_PlaneFollicleShape1550.is";
connectAttr "R_Arm_PlaneFollicleShape2250.ot" "R_Arm_PlaneFollicle2250.t" -l on;
connectAttr "R_Arm_PlaneFollicleShape2250.or" "R_Arm_PlaneFollicle2250.r" -l on;
connectAttr "R_Arm_PlaneShape.wm" "R_Arm_PlaneFollicleShape2250.iwm";
connectAttr "R_Arm_PlaneShape.l" "R_Arm_PlaneFollicleShape2250.is";
connectAttr "R_Arm_PlaneFollicleShape2850.ot" "R_Arm_PlaneFollicle2850.t" -l on;
connectAttr "R_Arm_PlaneFollicleShape2850.or" "R_Arm_PlaneFollicle2850.r" -l on;
connectAttr "R_Arm_PlaneShape.wm" "R_Arm_PlaneFollicleShape2850.iwm";
connectAttr "R_Arm_PlaneShape.l" "R_Arm_PlaneFollicleShape2850.is";
connectAttr "R_Arm_PlaneFollicleShape3450.ot" "R_Arm_PlaneFollicle3450.t" -l on;
connectAttr "R_Arm_PlaneFollicleShape3450.or" "R_Arm_PlaneFollicle3450.r" -l on;
connectAttr "R_Arm_PlaneShape.wm" "R_Arm_PlaneFollicleShape3450.iwm";
connectAttr "R_Arm_PlaneShape.l" "R_Arm_PlaneFollicleShape3450.is";
connectAttr "R_Arm_PlaneFollicleShape4050.ot" "R_Arm_PlaneFollicle4050.t" -l on;
connectAttr "R_Arm_PlaneFollicleShape4050.or" "R_Arm_PlaneFollicle4050.r" -l on;
connectAttr "R_Arm_PlaneShape.wm" "R_Arm_PlaneFollicleShape4050.iwm";
connectAttr "R_Arm_PlaneShape.l" "R_Arm_PlaneFollicleShape4050.is";
connectAttr "R_Arm_PlaneFollicleShape4650.ot" "R_Arm_PlaneFollicle4650.t" -l on;
connectAttr "R_Arm_PlaneFollicleShape4650.or" "R_Arm_PlaneFollicle4650.r" -l on;
connectAttr "R_Arm_PlaneShape.wm" "R_Arm_PlaneFollicleShape4650.iwm";
connectAttr "R_Arm_PlaneShape.l" "R_Arm_PlaneFollicleShape4650.is";
connectAttr "R_Arm_PlaneFollicleShape5350.ot" "R_Arm_PlaneFollicle5350.t" -l on;
connectAttr "R_Arm_PlaneFollicleShape5350.or" "R_Arm_PlaneFollicle5350.r" -l on;
connectAttr "R_Arm_PlaneShape.wm" "R_Arm_PlaneFollicleShape5350.iwm";
connectAttr "R_Arm_PlaneShape.l" "R_Arm_PlaneFollicleShape5350.is";
connectAttr "R_Arm_PlaneFollicleShape5950.ot" "R_Arm_PlaneFollicle5950.t" -l on;
connectAttr "R_Arm_PlaneFollicleShape5950.or" "R_Arm_PlaneFollicle5950.r" -l on;
connectAttr "R_Arm_PlaneShape.wm" "R_Arm_PlaneFollicleShape5950.iwm";
connectAttr "R_Arm_PlaneShape.l" "R_Arm_PlaneFollicleShape5950.is";
connectAttr "R_Arm_PlaneFollicleShape6550.ot" "R_Arm_PlaneFollicle6550.t" -l on;
connectAttr "R_Arm_PlaneFollicleShape6550.or" "R_Arm_PlaneFollicle6550.r" -l on;
connectAttr "R_Arm_PlaneShape.wm" "R_Arm_PlaneFollicleShape6550.iwm";
connectAttr "R_Arm_PlaneShape.l" "R_Arm_PlaneFollicleShape6550.is";
connectAttr "R_Arm_PlaneFollicleShape7150.ot" "R_Arm_PlaneFollicle7150.t" -l on;
connectAttr "R_Arm_PlaneFollicleShape7150.or" "R_Arm_PlaneFollicle7150.r" -l on;
connectAttr "R_Arm_PlaneShape.wm" "R_Arm_PlaneFollicleShape7150.iwm";
connectAttr "R_Arm_PlaneShape.l" "R_Arm_PlaneFollicleShape7150.is";
connectAttr "R_Arm_PlaneFollicleShape7750.ot" "R_Arm_PlaneFollicle7750.t" -l on;
connectAttr "R_Arm_PlaneFollicleShape7750.or" "R_Arm_PlaneFollicle7750.r" -l on;
connectAttr "R_Arm_PlaneShape.wm" "R_Arm_PlaneFollicleShape7750.iwm";
connectAttr "R_Arm_PlaneShape.l" "R_Arm_PlaneFollicleShape7750.is";
connectAttr "R_Arm_PlaneFollicleShape8450.ot" "R_Arm_PlaneFollicle8450.t" -l on;
connectAttr "R_Arm_PlaneFollicleShape8450.or" "R_Arm_PlaneFollicle8450.r" -l on;
connectAttr "R_Arm_PlaneShape.wm" "R_Arm_PlaneFollicleShape8450.iwm";
connectAttr "R_Arm_PlaneShape.l" "R_Arm_PlaneFollicleShape8450.is";
connectAttr "R_Arm_PlaneFollicleShape9050.ot" "R_Arm_PlaneFollicle9050.t" -l on;
connectAttr "R_Arm_PlaneFollicleShape9050.or" "R_Arm_PlaneFollicle9050.r" -l on;
connectAttr "R_Arm_PlaneShape.wm" "R_Arm_PlaneFollicleShape9050.iwm";
connectAttr "R_Arm_PlaneShape.l" "R_Arm_PlaneFollicleShape9050.is";
connectAttr "R_Arm_PlaneFollicleShape9650.ot" "R_Arm_PlaneFollicle9650.t" -l on;
connectAttr "R_Arm_PlaneFollicleShape9650.or" "R_Arm_PlaneFollicle9650.r" -l on;
connectAttr "R_Arm_PlaneShape.wm" "R_Arm_PlaneFollicleShape9650.iwm";
connectAttr "R_Arm_PlaneShape.l" "R_Arm_PlaneFollicleShape9650.is";
connectAttr "makeNurbCircle53.oc" "R_Arm_WristShape.cr";
connectAttr "skinCluster2GroupId.id" "R_Arm_PlaneShape.iog.og[0].gid";
connectAttr "skinCluster2Set.mwc" "R_Arm_PlaneShape.iog.og[0].gco";
connectAttr "groupId12.id" "R_Arm_PlaneShape.iog.og[1].gid";
connectAttr "tweakSet3.mwc" "R_Arm_PlaneShape.iog.og[1].gco";
connectAttr "skinCluster2.og[0]" "R_Arm_PlaneShape.cr";
connectAttr "tweak3.pl[0].cp[0]" "R_Arm_PlaneShape.twl";
connectAttr "grpR_HandControllersZERO_parentConstraint1.ctx" "grpR_HandControllersZERO.tx"
		;
connectAttr "grpR_HandControllersZERO_parentConstraint1.cty" "grpR_HandControllersZERO.ty"
		;
connectAttr "grpR_HandControllersZERO_parentConstraint1.ctz" "grpR_HandControllersZERO.tz"
		;
connectAttr "grpR_HandControllersZERO_parentConstraint1.crx" "grpR_HandControllersZERO.rx"
		;
connectAttr "grpR_HandControllersZERO_parentConstraint1.cry" "grpR_HandControllersZERO.ry"
		;
connectAttr "grpR_HandControllersZERO_parentConstraint1.crz" "grpR_HandControllersZERO.rz"
		;
connectAttr "grpR_HandControllersZERO.ro" "grpR_HandControllersZERO_parentConstraint1.cro"
		;
connectAttr "grpR_HandControllersZERO.pim" "grpR_HandControllersZERO_parentConstraint1.cpim"
		;
connectAttr "grpR_HandControllersZERO.rp" "grpR_HandControllersZERO_parentConstraint1.crp"
		;
connectAttr "grpR_HandControllersZERO.rpt" "grpR_HandControllersZERO_parentConstraint1.crt"
		;
connectAttr "R_Arm_Wrist.t" "grpR_HandControllersZERO_parentConstraint1.tg[0].tt"
		;
connectAttr "R_Arm_Wrist.rp" "grpR_HandControllersZERO_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Arm_Wrist.rpt" "grpR_HandControllersZERO_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Arm_Wrist.r" "grpR_HandControllersZERO_parentConstraint1.tg[0].tr"
		;
connectAttr "R_Arm_Wrist.ro" "grpR_HandControllersZERO_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Arm_Wrist.s" "grpR_HandControllersZERO_parentConstraint1.tg[0].ts"
		;
connectAttr "R_Arm_Wrist.pm" "grpR_HandControllersZERO_parentConstraint1.tg[0].tpm"
		;
connectAttr "grpR_HandControllersZERO_parentConstraint1.w0" "grpR_HandControllersZERO_parentConstraint1.tg[0].tw"
		;
connectAttr "grpL_HandControllersZERO_parentConstraint1.ctx" "grpL_HandControllersZERO.tx"
		;
connectAttr "grpL_HandControllersZERO_parentConstraint1.cty" "grpL_HandControllersZERO.ty"
		;
connectAttr "grpL_HandControllersZERO_parentConstraint1.ctz" "grpL_HandControllersZERO.tz"
		;
connectAttr "grpL_HandControllersZERO_parentConstraint1.crx" "grpL_HandControllersZERO.rx"
		;
connectAttr "grpL_HandControllersZERO_parentConstraint1.cry" "grpL_HandControllersZERO.ry"
		;
connectAttr "grpL_HandControllersZERO_parentConstraint1.crz" "grpL_HandControllersZERO.rz"
		;
connectAttr "grpL_HandControllersZERO.ro" "grpL_HandControllersZERO_parentConstraint1.cro"
		;
connectAttr "grpL_HandControllersZERO.pim" "grpL_HandControllersZERO_parentConstraint1.cpim"
		;
connectAttr "grpL_HandControllersZERO.rp" "grpL_HandControllersZERO_parentConstraint1.crp"
		;
connectAttr "grpL_HandControllersZERO.rpt" "grpL_HandControllersZERO_parentConstraint1.crt"
		;
connectAttr "L_Arm_Wrist.t" "grpL_HandControllersZERO_parentConstraint1.tg[0].tt"
		;
connectAttr "L_Arm_Wrist.rp" "grpL_HandControllersZERO_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Arm_Wrist.rpt" "grpL_HandControllersZERO_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Arm_Wrist.r" "grpL_HandControllersZERO_parentConstraint1.tg[0].tr"
		;
connectAttr "L_Arm_Wrist.ro" "grpL_HandControllersZERO_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Arm_Wrist.s" "grpL_HandControllersZERO_parentConstraint1.tg[0].ts"
		;
connectAttr "L_Arm_Wrist.pm" "grpL_HandControllersZERO_parentConstraint1.tg[0].tpm"
		;
connectAttr "grpL_HandControllersZERO_parentConstraint1.w0" "grpL_HandControllersZERO_parentConstraint1.tg[0].tw"
		;
connectAttr "|RibbonArms|LeftRibbonArm|L_Ribbon|L_Elbow_FollowGRP|Elbow_FollowGRP_pointConstraint1.ctx" "L_Elbow_FollowGRP.tx"
		;
connectAttr "|RibbonArms|LeftRibbonArm|L_Ribbon|L_Elbow_FollowGRP|Elbow_FollowGRP_pointConstraint1.cty" "L_Elbow_FollowGRP.ty"
		;
connectAttr "|RibbonArms|LeftRibbonArm|L_Ribbon|L_Elbow_FollowGRP|Elbow_FollowGRP_pointConstraint1.ctz" "L_Elbow_FollowGRP.tz"
		;
connectAttr "L_Elbow_FollowGRP.pim" "|RibbonArms|LeftRibbonArm|L_Ribbon|L_Elbow_FollowGRP|Elbow_FollowGRP_pointConstraint1.cpim"
		;
connectAttr "L_Elbow_FollowGRP.rp" "|RibbonArms|LeftRibbonArm|L_Ribbon|L_Elbow_FollowGRP|Elbow_FollowGRP_pointConstraint1.crp"
		;
connectAttr "L_Elbow_FollowGRP.rpt" "|RibbonArms|LeftRibbonArm|L_Ribbon|L_Elbow_FollowGRP|Elbow_FollowGRP_pointConstraint1.crt"
		;
connectAttr "L_Arm_Shoulder.t" "|RibbonArms|LeftRibbonArm|L_Ribbon|L_Elbow_FollowGRP|Elbow_FollowGRP_pointConstraint1.tg[0].tt"
		;
connectAttr "L_Arm_Shoulder.rp" "|RibbonArms|LeftRibbonArm|L_Ribbon|L_Elbow_FollowGRP|Elbow_FollowGRP_pointConstraint1.tg[0].trp"
		;
connectAttr "L_Arm_Shoulder.rpt" "|RibbonArms|LeftRibbonArm|L_Ribbon|L_Elbow_FollowGRP|Elbow_FollowGRP_pointConstraint1.tg[0].trt"
		;
connectAttr "L_Arm_Shoulder.pm" "|RibbonArms|LeftRibbonArm|L_Ribbon|L_Elbow_FollowGRP|Elbow_FollowGRP_pointConstraint1.tg[0].tpm"
		;
connectAttr "|RibbonArms|LeftRibbonArm|L_Ribbon|L_Elbow_FollowGRP|Elbow_FollowGRP_pointConstraint1.w0" "|RibbonArms|LeftRibbonArm|L_Ribbon|L_Elbow_FollowGRP|Elbow_FollowGRP_pointConstraint1.tg[0].tw"
		;
connectAttr "L_Arm_Wrist.t" "|RibbonArms|LeftRibbonArm|L_Ribbon|L_Elbow_FollowGRP|Elbow_FollowGRP_pointConstraint1.tg[1].tt"
		;
connectAttr "L_Arm_Wrist.rp" "|RibbonArms|LeftRibbonArm|L_Ribbon|L_Elbow_FollowGRP|Elbow_FollowGRP_pointConstraint1.tg[1].trp"
		;
connectAttr "L_Arm_Wrist.rpt" "|RibbonArms|LeftRibbonArm|L_Ribbon|L_Elbow_FollowGRP|Elbow_FollowGRP_pointConstraint1.tg[1].trt"
		;
connectAttr "L_Arm_Wrist.pm" "|RibbonArms|LeftRibbonArm|L_Ribbon|L_Elbow_FollowGRP|Elbow_FollowGRP_pointConstraint1.tg[1].tpm"
		;
connectAttr "|RibbonArms|LeftRibbonArm|L_Ribbon|L_Elbow_FollowGRP|Elbow_FollowGRP_pointConstraint1.w1" "|RibbonArms|LeftRibbonArm|L_Ribbon|L_Elbow_FollowGRP|Elbow_FollowGRP_pointConstraint1.tg[1].tw"
		;
connectAttr "grpL_Arm_Secundary_UP01_pointConstraint1.ctx" "grpL_Arm_Secundary_UP01.tx"
		;
connectAttr "grpL_Arm_Secundary_UP01_pointConstraint1.cty" "grpL_Arm_Secundary_UP01.ty"
		;
connectAttr "grpL_Arm_Secundary_UP01_pointConstraint1.ctz" "grpL_Arm_Secundary_UP01.tz"
		;
connectAttr "grpL_Arm_Secundary_UP01_aimConstraint1.crx" "grpL_Arm_Secundary_UP01.rx"
		;
connectAttr "grpL_Arm_Secundary_UP01_aimConstraint1.cry" "grpL_Arm_Secundary_UP01.ry"
		;
connectAttr "grpL_Arm_Secundary_UP01_aimConstraint1.crz" "grpL_Arm_Secundary_UP01.rz"
		;
connectAttr "grpL_Arm_Secundary_UP01.pim" "grpL_Arm_Secundary_UP01_pointConstraint1.cpim"
		;
connectAttr "grpL_Arm_Secundary_UP01.rp" "grpL_Arm_Secundary_UP01_pointConstraint1.crp"
		;
connectAttr "grpL_Arm_Secundary_UP01.rpt" "grpL_Arm_Secundary_UP01_pointConstraint1.crt"
		;
connectAttr "L_Arm_Elbow.t" "grpL_Arm_Secundary_UP01_pointConstraint1.tg[0].tt";
connectAttr "L_Arm_Elbow.rp" "grpL_Arm_Secundary_UP01_pointConstraint1.tg[0].trp"
		;
connectAttr "L_Arm_Elbow.rpt" "grpL_Arm_Secundary_UP01_pointConstraint1.tg[0].trt"
		;
connectAttr "L_Arm_Elbow.pm" "grpL_Arm_Secundary_UP01_pointConstraint1.tg[0].tpm"
		;
connectAttr "grpL_Arm_Secundary_UP01_pointConstraint1.w0" "grpL_Arm_Secundary_UP01_pointConstraint1.tg[0].tw"
		;
connectAttr "L_Arm_Shoulder.t" "grpL_Arm_Secundary_UP01_pointConstraint1.tg[1].tt"
		;
connectAttr "L_Arm_Shoulder.rp" "grpL_Arm_Secundary_UP01_pointConstraint1.tg[1].trp"
		;
connectAttr "L_Arm_Shoulder.rpt" "grpL_Arm_Secundary_UP01_pointConstraint1.tg[1].trt"
		;
connectAttr "L_Arm_Shoulder.pm" "grpL_Arm_Secundary_UP01_pointConstraint1.tg[1].tpm"
		;
connectAttr "grpL_Arm_Secundary_UP01_pointConstraint1.w1" "grpL_Arm_Secundary_UP01_pointConstraint1.tg[1].tw"
		;
connectAttr "grpL_Arm_Secundary_UP01.pim" "grpL_Arm_Secundary_UP01_aimConstraint1.cpim"
		;
connectAttr "grpL_Arm_Secundary_UP01.t" "grpL_Arm_Secundary_UP01_aimConstraint1.ct"
		;
connectAttr "grpL_Arm_Secundary_UP01.rp" "grpL_Arm_Secundary_UP01_aimConstraint1.crp"
		;
connectAttr "grpL_Arm_Secundary_UP01.rpt" "grpL_Arm_Secundary_UP01_aimConstraint1.crt"
		;
connectAttr "grpL_Arm_Secundary_UP01.ro" "grpL_Arm_Secundary_UP01_aimConstraint1.cro"
		;
connectAttr "L_Arm_Elbow.t" "grpL_Arm_Secundary_UP01_aimConstraint1.tg[0].tt";
connectAttr "L_Arm_Elbow.rp" "grpL_Arm_Secundary_UP01_aimConstraint1.tg[0].trp";
connectAttr "L_Arm_Elbow.rpt" "grpL_Arm_Secundary_UP01_aimConstraint1.tg[0].trt"
		;
connectAttr "L_Arm_Elbow.pm" "grpL_Arm_Secundary_UP01_aimConstraint1.tg[0].tpm";
connectAttr "grpL_Arm_Secundary_UP01_aimConstraint1.w0" "grpL_Arm_Secundary_UP01_aimConstraint1.tg[0].tw"
		;
connectAttr "grpL_Arm_Secundary_UP02_pointConstraint1.ctx" "grpL_Arm_Secundary_UP02.tx"
		;
connectAttr "grpL_Arm_Secundary_UP02_pointConstraint1.cty" "grpL_Arm_Secundary_UP02.ty"
		;
connectAttr "grpL_Arm_Secundary_UP02_pointConstraint1.ctz" "grpL_Arm_Secundary_UP02.tz"
		;
connectAttr "grpL_Arm_Secundary_UP02_aimConstraint1.crx" "grpL_Arm_Secundary_UP02.rx"
		;
connectAttr "grpL_Arm_Secundary_UP02_aimConstraint1.cry" "grpL_Arm_Secundary_UP02.ry"
		;
connectAttr "grpL_Arm_Secundary_UP02_aimConstraint1.crz" "grpL_Arm_Secundary_UP02.rz"
		;
connectAttr "grpL_Arm_Secundary_UP02.pim" "grpL_Arm_Secundary_UP02_pointConstraint1.cpim"
		;
connectAttr "grpL_Arm_Secundary_UP02.rp" "grpL_Arm_Secundary_UP02_pointConstraint1.crp"
		;
connectAttr "grpL_Arm_Secundary_UP02.rpt" "grpL_Arm_Secundary_UP02_pointConstraint1.crt"
		;
connectAttr "L_Arm_Elbow.t" "grpL_Arm_Secundary_UP02_pointConstraint1.tg[0].tt";
connectAttr "L_Arm_Elbow.rp" "grpL_Arm_Secundary_UP02_pointConstraint1.tg[0].trp"
		;
connectAttr "L_Arm_Elbow.rpt" "grpL_Arm_Secundary_UP02_pointConstraint1.tg[0].trt"
		;
connectAttr "L_Arm_Elbow.pm" "grpL_Arm_Secundary_UP02_pointConstraint1.tg[0].tpm"
		;
connectAttr "grpL_Arm_Secundary_UP02_pointConstraint1.w0" "grpL_Arm_Secundary_UP02_pointConstraint1.tg[0].tw"
		;
connectAttr "L_Arm_Shoulder.t" "grpL_Arm_Secundary_UP02_pointConstraint1.tg[1].tt"
		;
connectAttr "L_Arm_Shoulder.rp" "grpL_Arm_Secundary_UP02_pointConstraint1.tg[1].trp"
		;
connectAttr "L_Arm_Shoulder.rpt" "grpL_Arm_Secundary_UP02_pointConstraint1.tg[1].trt"
		;
connectAttr "L_Arm_Shoulder.pm" "grpL_Arm_Secundary_UP02_pointConstraint1.tg[1].tpm"
		;
connectAttr "grpL_Arm_Secundary_UP02_pointConstraint1.w1" "grpL_Arm_Secundary_UP02_pointConstraint1.tg[1].tw"
		;
connectAttr "grpL_Arm_Secundary_UP02.pim" "grpL_Arm_Secundary_UP02_aimConstraint1.cpim"
		;
connectAttr "grpL_Arm_Secundary_UP02.t" "grpL_Arm_Secundary_UP02_aimConstraint1.ct"
		;
connectAttr "grpL_Arm_Secundary_UP02.rp" "grpL_Arm_Secundary_UP02_aimConstraint1.crp"
		;
connectAttr "grpL_Arm_Secundary_UP02.rpt" "grpL_Arm_Secundary_UP02_aimConstraint1.crt"
		;
connectAttr "grpL_Arm_Secundary_UP02.ro" "grpL_Arm_Secundary_UP02_aimConstraint1.cro"
		;
connectAttr "L_Arm_Elbow.t" "grpL_Arm_Secundary_UP02_aimConstraint1.tg[0].tt";
connectAttr "L_Arm_Elbow.rp" "grpL_Arm_Secundary_UP02_aimConstraint1.tg[0].trp";
connectAttr "L_Arm_Elbow.rpt" "grpL_Arm_Secundary_UP02_aimConstraint1.tg[0].trt"
		;
connectAttr "L_Arm_Elbow.pm" "grpL_Arm_Secundary_UP02_aimConstraint1.tg[0].tpm";
connectAttr "grpL_Arm_Secundary_UP02_aimConstraint1.w0" "grpL_Arm_Secundary_UP02_aimConstraint1.tg[0].tw"
		;
connectAttr "grpL_Arm_Secundary_Down01_pointConstraint1.ctx" "grpL_Arm_Secundary_Down01.tx"
		;
connectAttr "grpL_Arm_Secundary_Down01_pointConstraint1.cty" "grpL_Arm_Secundary_Down01.ty"
		;
connectAttr "grpL_Arm_Secundary_Down01_pointConstraint1.ctz" "grpL_Arm_Secundary_Down01.tz"
		;
connectAttr "grpL_Arm_Secundary_Down01_aimConstraint1.crx" "grpL_Arm_Secundary_Down01.rx"
		;
connectAttr "grpL_Arm_Secundary_Down01_aimConstraint1.cry" "grpL_Arm_Secundary_Down01.ry"
		;
connectAttr "grpL_Arm_Secundary_Down01_aimConstraint1.crz" "grpL_Arm_Secundary_Down01.rz"
		;
connectAttr "grpL_Arm_Secundary_Down01.pim" "grpL_Arm_Secundary_Down01_pointConstraint1.cpim"
		;
connectAttr "grpL_Arm_Secundary_Down01.rp" "grpL_Arm_Secundary_Down01_pointConstraint1.crp"
		;
connectAttr "grpL_Arm_Secundary_Down01.rpt" "grpL_Arm_Secundary_Down01_pointConstraint1.crt"
		;
connectAttr "L_Arm_Elbow.t" "grpL_Arm_Secundary_Down01_pointConstraint1.tg[0].tt"
		;
connectAttr "L_Arm_Elbow.rp" "grpL_Arm_Secundary_Down01_pointConstraint1.tg[0].trp"
		;
connectAttr "L_Arm_Elbow.rpt" "grpL_Arm_Secundary_Down01_pointConstraint1.tg[0].trt"
		;
connectAttr "L_Arm_Elbow.pm" "grpL_Arm_Secundary_Down01_pointConstraint1.tg[0].tpm"
		;
connectAttr "grpL_Arm_Secundary_Down01_pointConstraint1.w0" "grpL_Arm_Secundary_Down01_pointConstraint1.tg[0].tw"
		;
connectAttr "L_Arm_Wrist.t" "grpL_Arm_Secundary_Down01_pointConstraint1.tg[1].tt"
		;
connectAttr "L_Arm_Wrist.rp" "grpL_Arm_Secundary_Down01_pointConstraint1.tg[1].trp"
		;
connectAttr "L_Arm_Wrist.rpt" "grpL_Arm_Secundary_Down01_pointConstraint1.tg[1].trt"
		;
connectAttr "L_Arm_Wrist.pm" "grpL_Arm_Secundary_Down01_pointConstraint1.tg[1].tpm"
		;
connectAttr "grpL_Arm_Secundary_Down01_pointConstraint1.w1" "grpL_Arm_Secundary_Down01_pointConstraint1.tg[1].tw"
		;
connectAttr "grpL_Arm_Secundary_Down01.pim" "grpL_Arm_Secundary_Down01_aimConstraint1.cpim"
		;
connectAttr "grpL_Arm_Secundary_Down01.t" "grpL_Arm_Secundary_Down01_aimConstraint1.ct"
		;
connectAttr "grpL_Arm_Secundary_Down01.rp" "grpL_Arm_Secundary_Down01_aimConstraint1.crp"
		;
connectAttr "grpL_Arm_Secundary_Down01.rpt" "grpL_Arm_Secundary_Down01_aimConstraint1.crt"
		;
connectAttr "grpL_Arm_Secundary_Down01.ro" "grpL_Arm_Secundary_Down01_aimConstraint1.cro"
		;
connectAttr "L_Arm_Elbow.t" "grpL_Arm_Secundary_Down01_aimConstraint1.tg[0].tt";
connectAttr "L_Arm_Elbow.rp" "grpL_Arm_Secundary_Down01_aimConstraint1.tg[0].trp"
		;
connectAttr "L_Arm_Elbow.rpt" "grpL_Arm_Secundary_Down01_aimConstraint1.tg[0].trt"
		;
connectAttr "L_Arm_Elbow.pm" "grpL_Arm_Secundary_Down01_aimConstraint1.tg[0].tpm"
		;
connectAttr "grpL_Arm_Secundary_Down01_aimConstraint1.w0" "grpL_Arm_Secundary_Down01_aimConstraint1.tg[0].tw"
		;
connectAttr "grpL_Arm_Secundary_Down02_pointConstraint1.ctx" "grpL_Arm_Secundary_Down02.tx"
		;
connectAttr "grpL_Arm_Secundary_Down02_pointConstraint1.cty" "grpL_Arm_Secundary_Down02.ty"
		;
connectAttr "grpL_Arm_Secundary_Down02_pointConstraint1.ctz" "grpL_Arm_Secundary_Down02.tz"
		;
connectAttr "grpL_Arm_Secundary_Down02_aimConstraint1.crx" "grpL_Arm_Secundary_Down02.rx"
		;
connectAttr "grpL_Arm_Secundary_Down02_aimConstraint1.cry" "grpL_Arm_Secundary_Down02.ry"
		;
connectAttr "grpL_Arm_Secundary_Down02_aimConstraint1.crz" "grpL_Arm_Secundary_Down02.rz"
		;
connectAttr "grpL_Arm_Secundary_Down02.pim" "grpL_Arm_Secundary_Down02_pointConstraint1.cpim"
		;
connectAttr "grpL_Arm_Secundary_Down02.rp" "grpL_Arm_Secundary_Down02_pointConstraint1.crp"
		;
connectAttr "grpL_Arm_Secundary_Down02.rpt" "grpL_Arm_Secundary_Down02_pointConstraint1.crt"
		;
connectAttr "L_Arm_Wrist.t" "grpL_Arm_Secundary_Down02_pointConstraint1.tg[0].tt"
		;
connectAttr "L_Arm_Wrist.rp" "grpL_Arm_Secundary_Down02_pointConstraint1.tg[0].trp"
		;
connectAttr "L_Arm_Wrist.rpt" "grpL_Arm_Secundary_Down02_pointConstraint1.tg[0].trt"
		;
connectAttr "L_Arm_Wrist.pm" "grpL_Arm_Secundary_Down02_pointConstraint1.tg[0].tpm"
		;
connectAttr "grpL_Arm_Secundary_Down02_pointConstraint1.w0" "grpL_Arm_Secundary_Down02_pointConstraint1.tg[0].tw"
		;
connectAttr "L_Arm_Elbow.t" "grpL_Arm_Secundary_Down02_pointConstraint1.tg[1].tt"
		;
connectAttr "L_Arm_Elbow.rp" "grpL_Arm_Secundary_Down02_pointConstraint1.tg[1].trp"
		;
connectAttr "L_Arm_Elbow.rpt" "grpL_Arm_Secundary_Down02_pointConstraint1.tg[1].trt"
		;
connectAttr "L_Arm_Elbow.pm" "grpL_Arm_Secundary_Down02_pointConstraint1.tg[1].tpm"
		;
connectAttr "grpL_Arm_Secundary_Down02_pointConstraint1.w1" "grpL_Arm_Secundary_Down02_pointConstraint1.tg[1].tw"
		;
connectAttr "grpL_Arm_Secundary_Down02.pim" "grpL_Arm_Secundary_Down02_aimConstraint1.cpim"
		;
connectAttr "grpL_Arm_Secundary_Down02.t" "grpL_Arm_Secundary_Down02_aimConstraint1.ct"
		;
connectAttr "grpL_Arm_Secundary_Down02.rp" "grpL_Arm_Secundary_Down02_aimConstraint1.crp"
		;
connectAttr "grpL_Arm_Secundary_Down02.rpt" "grpL_Arm_Secundary_Down02_aimConstraint1.crt"
		;
connectAttr "grpL_Arm_Secundary_Down02.ro" "grpL_Arm_Secundary_Down02_aimConstraint1.cro"
		;
connectAttr "L_Arm_Elbow.t" "grpL_Arm_Secundary_Down02_aimConstraint1.tg[0].tt";
connectAttr "L_Arm_Elbow.rp" "grpL_Arm_Secundary_Down02_aimConstraint1.tg[0].trp"
		;
connectAttr "L_Arm_Elbow.rpt" "grpL_Arm_Secundary_Down02_aimConstraint1.tg[0].trt"
		;
connectAttr "L_Arm_Elbow.pm" "grpL_Arm_Secundary_Down02_aimConstraint1.tg[0].tpm"
		;
connectAttr "grpL_Arm_Secundary_Down02_aimConstraint1.w0" "grpL_Arm_Secundary_Down02_aimConstraint1.tg[0].tw"
		;
connectAttr "L_Arm_PlaneFollicleShape350.ot" "L_Arm_PlaneFollicle350.t" -l on;
connectAttr "L_Arm_PlaneFollicleShape350.or" "L_Arm_PlaneFollicle350.r" -l on;
connectAttr "L_Arm_PlaneShape.wm" "L_Arm_PlaneFollicleShape350.iwm";
connectAttr "L_Arm_PlaneShape.l" "L_Arm_PlaneFollicleShape350.is";
connectAttr "L_Arm_PlaneFollicleShape950.ot" "L_Arm_PlaneFollicle950.t" -l on;
connectAttr "L_Arm_PlaneFollicleShape950.or" "L_Arm_PlaneFollicle950.r" -l on;
connectAttr "L_Arm_PlaneShape.wm" "L_Arm_PlaneFollicleShape950.iwm";
connectAttr "L_Arm_PlaneShape.l" "L_Arm_PlaneFollicleShape950.is";
connectAttr "L_Arm_PlaneFollicleShape1550.ot" "L_Arm_PlaneFollicle1550.t" -l on;
connectAttr "L_Arm_PlaneFollicleShape1550.or" "L_Arm_PlaneFollicle1550.r" -l on;
connectAttr "L_Arm_PlaneShape.wm" "L_Arm_PlaneFollicleShape1550.iwm";
connectAttr "L_Arm_PlaneShape.l" "L_Arm_PlaneFollicleShape1550.is";
connectAttr "L_Arm_PlaneFollicleShape2250.ot" "L_Arm_PlaneFollicle2250.t" -l on;
connectAttr "L_Arm_PlaneFollicleShape2250.or" "L_Arm_PlaneFollicle2250.r" -l on;
connectAttr "L_Arm_PlaneShape.wm" "L_Arm_PlaneFollicleShape2250.iwm";
connectAttr "L_Arm_PlaneShape.l" "L_Arm_PlaneFollicleShape2250.is";
connectAttr "L_Arm_PlaneFollicleShape2850.ot" "L_Arm_PlaneFollicle2850.t" -l on;
connectAttr "L_Arm_PlaneFollicleShape2850.or" "L_Arm_PlaneFollicle2850.r" -l on;
connectAttr "L_Arm_PlaneShape.wm" "L_Arm_PlaneFollicleShape2850.iwm";
connectAttr "L_Arm_PlaneShape.l" "L_Arm_PlaneFollicleShape2850.is";
connectAttr "L_Arm_PlaneFollicleShape3450.ot" "L_Arm_PlaneFollicle3450.t" -l on;
connectAttr "L_Arm_PlaneFollicleShape3450.or" "L_Arm_PlaneFollicle3450.r" -l on;
connectAttr "L_Arm_PlaneShape.wm" "L_Arm_PlaneFollicleShape3450.iwm";
connectAttr "L_Arm_PlaneShape.l" "L_Arm_PlaneFollicleShape3450.is";
connectAttr "L_Arm_PlaneFollicleShape4050.ot" "L_Arm_PlaneFollicle4050.t" -l on;
connectAttr "L_Arm_PlaneFollicleShape4050.or" "L_Arm_PlaneFollicle4050.r" -l on;
connectAttr "L_Arm_PlaneShape.wm" "L_Arm_PlaneFollicleShape4050.iwm";
connectAttr "L_Arm_PlaneShape.l" "L_Arm_PlaneFollicleShape4050.is";
connectAttr "L_Arm_PlaneFollicleShape4650.ot" "L_Arm_PlaneFollicle4650.t" -l on;
connectAttr "L_Arm_PlaneFollicleShape4650.or" "L_Arm_PlaneFollicle4650.r" -l on;
connectAttr "L_Arm_PlaneShape.wm" "L_Arm_PlaneFollicleShape4650.iwm";
connectAttr "L_Arm_PlaneShape.l" "L_Arm_PlaneFollicleShape4650.is";
connectAttr "L_Arm_PlaneFollicleShape5350.ot" "L_Arm_PlaneFollicle5350.t" -l on;
connectAttr "L_Arm_PlaneFollicleShape5350.or" "L_Arm_PlaneFollicle5350.r" -l on;
connectAttr "L_Arm_PlaneShape.wm" "L_Arm_PlaneFollicleShape5350.iwm";
connectAttr "L_Arm_PlaneShape.l" "L_Arm_PlaneFollicleShape5350.is";
connectAttr "L_Arm_PlaneFollicleShape5950.ot" "L_Arm_PlaneFollicle5950.t" -l on;
connectAttr "L_Arm_PlaneFollicleShape5950.or" "L_Arm_PlaneFollicle5950.r" -l on;
connectAttr "L_Arm_PlaneShape.wm" "L_Arm_PlaneFollicleShape5950.iwm";
connectAttr "L_Arm_PlaneShape.l" "L_Arm_PlaneFollicleShape5950.is";
connectAttr "L_Arm_PlaneFollicleShape6550.ot" "L_Arm_PlaneFollicle6550.t" -l on;
connectAttr "L_Arm_PlaneFollicleShape6550.or" "L_Arm_PlaneFollicle6550.r" -l on;
connectAttr "L_Arm_PlaneShape.wm" "L_Arm_PlaneFollicleShape6550.iwm";
connectAttr "L_Arm_PlaneShape.l" "L_Arm_PlaneFollicleShape6550.is";
connectAttr "L_Arm_PlaneFollicleShape7150.ot" "L_Arm_PlaneFollicle7150.t" -l on;
connectAttr "L_Arm_PlaneFollicleShape7150.or" "L_Arm_PlaneFollicle7150.r" -l on;
connectAttr "L_Arm_PlaneShape.wm" "L_Arm_PlaneFollicleShape7150.iwm";
connectAttr "L_Arm_PlaneShape.l" "L_Arm_PlaneFollicleShape7150.is";
connectAttr "L_Arm_PlaneFollicleShape7750.ot" "L_Arm_PlaneFollicle7750.t" -l on;
connectAttr "L_Arm_PlaneFollicleShape7750.or" "L_Arm_PlaneFollicle7750.r" -l on;
connectAttr "L_Arm_PlaneShape.wm" "L_Arm_PlaneFollicleShape7750.iwm";
connectAttr "L_Arm_PlaneShape.l" "L_Arm_PlaneFollicleShape7750.is";
connectAttr "L_Arm_PlaneFollicleShape8450.ot" "L_Arm_PlaneFollicle8450.t" -l on;
connectAttr "L_Arm_PlaneFollicleShape8450.or" "L_Arm_PlaneFollicle8450.r" -l on;
connectAttr "L_Arm_PlaneShape.wm" "L_Arm_PlaneFollicleShape8450.iwm";
connectAttr "L_Arm_PlaneShape.l" "L_Arm_PlaneFollicleShape8450.is";
connectAttr "L_Arm_PlaneFollicleShape9050.ot" "L_Arm_PlaneFollicle9050.t" -l on;
connectAttr "L_Arm_PlaneFollicleShape9050.or" "L_Arm_PlaneFollicle9050.r" -l on;
connectAttr "L_Arm_PlaneShape.wm" "L_Arm_PlaneFollicleShape9050.iwm";
connectAttr "L_Arm_PlaneShape.l" "L_Arm_PlaneFollicleShape9050.is";
connectAttr "L_Arm_PlaneFollicleShape9650.ot" "L_Arm_PlaneFollicle9650.t" -l on;
connectAttr "L_Arm_PlaneFollicleShape9650.or" "L_Arm_PlaneFollicle9650.r" -l on;
connectAttr "L_Arm_PlaneShape.wm" "L_Arm_PlaneFollicleShape9650.iwm";
connectAttr "L_Arm_PlaneShape.l" "L_Arm_PlaneFollicleShape9650.is";
connectAttr "RibbonArm_makeNurbCircle53.oc" "L_Arm_ShoulderShape.cr";
connectAttr "RibbonArm_skinCluster2GroupId.id" "L_Arm_PlaneShape.iog.og[0].gid";
connectAttr "RibbonArm_skinCluster2Set.mwc" "L_Arm_PlaneShape.iog.og[0].gco";
connectAttr "RibbonArm_groupId12.id" "L_Arm_PlaneShape.iog.og[1].gid";
connectAttr "RibbonArm_tweakSet3.mwc" "L_Arm_PlaneShape.iog.og[1].gco";
connectAttr "RibbonArm_skinCluster2.og[0]" "L_Arm_PlaneShape.cr";
connectAttr "RibbonArm_tweak3.pl[0].cp[0]" "L_Arm_PlaneShape.twl";
connectAttr "skinCluster2GroupId.msg" "skinCluster2Set.gn" -na;
connectAttr "R_Arm_PlaneShape.iog.og[0]" "skinCluster2Set.dsm" -na;
connectAttr "skinCluster2.msg" "skinCluster2Set.ub[0]";
connectAttr "skinCluster2GroupParts.og" "skinCluster2.ip[0].ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2.ip[0].gi";
connectAttr "bindPose5.msg" "skinCluster2.bp";
connectAttr "R_Elbow_JC.wm" "skinCluster2.ma[0]";
connectAttr "|RibbonArms|RightRibbonArm|R_Ribbon|R_Elbow_FollowGRP|grpR_Arm_Secundary_UP01|R_Arm_Secundary_Up01|R_Arm_Secundary_Up01.wm" "skinCluster2.ma[1]"
		;
connectAttr "|RibbonArms|RightRibbonArm|R_Ribbon|R_Elbow_FollowGRP|grpR_Arm_Secundary_UP02|R_Arm_Secundary_Up02|R_Arm_Secundary_Up02.wm" "skinCluster2.ma[2]"
		;
connectAttr "|RibbonArms|RightRibbonArm|R_Ribbon|R_Elbow_FollowGRP|grpR_Arm_Secundary_Down01|R_Arm_Secundary_Down01|R_Arm_Secundary_Down01.wm" "skinCluster2.ma[3]"
		;
connectAttr "|RibbonArms|RightRibbonArm|R_Ribbon|R_Elbow_FollowGRP|grpR_Arm_Secundary_Down02|R_Arm_Secundary_Down02|R_Arm_Secundary_Down02.wm" "skinCluster2.ma[4]"
		;
connectAttr "R_Shoulder_JC.wm" "skinCluster2.ma[5]";
connectAttr "R_Wrist_JC.wm" "skinCluster2.ma[6]";
connectAttr "R_Elbow_JC.liw" "skinCluster2.lw[0]";
connectAttr "|RibbonArms|RightRibbonArm|R_Ribbon|R_Elbow_FollowGRP|grpR_Arm_Secundary_UP01|R_Arm_Secundary_Up01|R_Arm_Secundary_Up01.liw" "skinCluster2.lw[1]"
		;
connectAttr "|RibbonArms|RightRibbonArm|R_Ribbon|R_Elbow_FollowGRP|grpR_Arm_Secundary_UP02|R_Arm_Secundary_Up02|R_Arm_Secundary_Up02.liw" "skinCluster2.lw[2]"
		;
connectAttr "|RibbonArms|RightRibbonArm|R_Ribbon|R_Elbow_FollowGRP|grpR_Arm_Secundary_Down01|R_Arm_Secundary_Down01|R_Arm_Secundary_Down01.liw" "skinCluster2.lw[3]"
		;
connectAttr "|RibbonArms|RightRibbonArm|R_Ribbon|R_Elbow_FollowGRP|grpR_Arm_Secundary_Down02|R_Arm_Secundary_Down02|R_Arm_Secundary_Down02.liw" "skinCluster2.lw[4]"
		;
connectAttr "R_Shoulder_JC.liw" "skinCluster2.lw[5]";
connectAttr "R_Wrist_JC.liw" "skinCluster2.lw[6]";
connectAttr "R_Elbow_JC.obcc" "skinCluster2.ifcl[0]";
connectAttr "|RibbonArms|RightRibbonArm|R_Ribbon|R_Elbow_FollowGRP|grpR_Arm_Secundary_UP01|R_Arm_Secundary_Up01|R_Arm_Secundary_Up01.obcc" "skinCluster2.ifcl[1]"
		;
connectAttr "|RibbonArms|RightRibbonArm|R_Ribbon|R_Elbow_FollowGRP|grpR_Arm_Secundary_UP02|R_Arm_Secundary_Up02|R_Arm_Secundary_Up02.obcc" "skinCluster2.ifcl[2]"
		;
connectAttr "|RibbonArms|RightRibbonArm|R_Ribbon|R_Elbow_FollowGRP|grpR_Arm_Secundary_Down01|R_Arm_Secundary_Down01|R_Arm_Secundary_Down01.obcc" "skinCluster2.ifcl[3]"
		;
connectAttr "|RibbonArms|RightRibbonArm|R_Ribbon|R_Elbow_FollowGRP|grpR_Arm_Secundary_Down02|R_Arm_Secundary_Down02|R_Arm_Secundary_Down02.obcc" "skinCluster2.ifcl[4]"
		;
connectAttr "R_Shoulder_JC.obcc" "skinCluster2.ifcl[5]";
connectAttr "R_Wrist_JC.obcc" "skinCluster2.ifcl[6]";
connectAttr "R_Shoulder_JC.msg" "skinCluster2.ptt";
connectAttr "R_Elbow_FollowGRP.msg" "bindPose5.m[0]";
connectAttr "grpR_Arm_ElbowZERO2.msg" "bindPose5.m[1]";
connectAttr "R_Arm_Elbow.msg" "bindPose5.m[2]";
connectAttr "R_Elbow_JC.msg" "bindPose5.m[3]";
connectAttr "grpR_Arm_Secundary_UP01.msg" "bindPose5.m[4]";
connectAttr "|RibbonArms|RightRibbonArm|R_Ribbon|R_Elbow_FollowGRP|grpR_Arm_Secundary_UP01|R_Arm_Secundary_Up01.msg" "bindPose5.m[5]"
		;
connectAttr "|RibbonArms|RightRibbonArm|R_Ribbon|R_Elbow_FollowGRP|grpR_Arm_Secundary_UP01|R_Arm_Secundary_Up01|R_Arm_Secundary_Up01.msg" "bindPose5.m[6]"
		;
connectAttr "grpR_Arm_Secundary_UP02.msg" "bindPose5.m[7]";
connectAttr "|RibbonArms|RightRibbonArm|R_Ribbon|R_Elbow_FollowGRP|grpR_Arm_Secundary_UP02|R_Arm_Secundary_Up02.msg" "bindPose5.m[8]"
		;
connectAttr "|RibbonArms|RightRibbonArm|R_Ribbon|R_Elbow_FollowGRP|grpR_Arm_Secundary_UP02|R_Arm_Secundary_Up02|R_Arm_Secundary_Up02.msg" "bindPose5.m[9]"
		;
connectAttr "grpR_Arm_Secundary_Down01.msg" "bindPose5.m[10]";
connectAttr "|RibbonArms|RightRibbonArm|R_Ribbon|R_Elbow_FollowGRP|grpR_Arm_Secundary_Down01|R_Arm_Secundary_Down01.msg" "bindPose5.m[11]"
		;
connectAttr "|RibbonArms|RightRibbonArm|R_Ribbon|R_Elbow_FollowGRP|grpR_Arm_Secundary_Down01|R_Arm_Secundary_Down01|R_Arm_Secundary_Down01.msg" "bindPose5.m[12]"
		;
connectAttr "grpR_Arm_Secundary_Down02.msg" "bindPose5.m[13]";
connectAttr "|RibbonArms|RightRibbonArm|R_Ribbon|R_Elbow_FollowGRP|grpR_Arm_Secundary_Down02|R_Arm_Secundary_Down02.msg" "bindPose5.m[14]"
		;
connectAttr "|RibbonArms|RightRibbonArm|R_Ribbon|R_Elbow_FollowGRP|grpR_Arm_Secundary_Down02|R_Arm_Secundary_Down02|R_Arm_Secundary_Down02.msg" "bindPose5.m[15]"
		;
connectAttr "grpR_Arm_ShoulderZERO.msg" "bindPose5.m[16]";
connectAttr "R_Arm_Shoulder.msg" "bindPose5.m[17]";
connectAttr "R_Shoulder_JC.msg" "bindPose5.m[18]";
connectAttr "grpR_Arm_WristZERO.msg" "bindPose5.m[19]";
connectAttr "R_Arm_Wrist.msg" "bindPose5.m[20]";
connectAttr "R_Wrist_JC.msg" "bindPose5.m[21]";
connectAttr "bindPose5.w" "bindPose5.p[0]";
connectAttr "bindPose5.m[0]" "bindPose5.p[1]";
connectAttr "bindPose5.m[1]" "bindPose5.p[2]";
connectAttr "bindPose5.m[2]" "bindPose5.p[3]";
connectAttr "bindPose5.m[0]" "bindPose5.p[4]";
connectAttr "bindPose5.m[4]" "bindPose5.p[5]";
connectAttr "bindPose5.m[5]" "bindPose5.p[6]";
connectAttr "bindPose5.m[0]" "bindPose5.p[7]";
connectAttr "bindPose5.m[7]" "bindPose5.p[8]";
connectAttr "bindPose5.m[8]" "bindPose5.p[9]";
connectAttr "bindPose5.m[0]" "bindPose5.p[10]";
connectAttr "bindPose5.m[10]" "bindPose5.p[11]";
connectAttr "bindPose5.m[11]" "bindPose5.p[12]";
connectAttr "bindPose5.m[0]" "bindPose5.p[13]";
connectAttr "bindPose5.m[13]" "bindPose5.p[14]";
connectAttr "bindPose5.m[14]" "bindPose5.p[15]";
connectAttr "bindPose5.w" "bindPose5.p[16]";
connectAttr "bindPose5.m[16]" "bindPose5.p[17]";
connectAttr "bindPose5.m[17]" "bindPose5.p[18]";
connectAttr "bindPose5.w" "bindPose5.p[19]";
connectAttr "bindPose5.m[19]" "bindPose5.p[20]";
connectAttr "bindPose5.m[20]" "bindPose5.p[21]";
connectAttr "R_Elbow_JC.bps" "bindPose5.wm[3]";
connectAttr "|RibbonArms|RightRibbonArm|R_Ribbon|R_Elbow_FollowGRP|grpR_Arm_Secundary_UP01|R_Arm_Secundary_Up01|R_Arm_Secundary_Up01.bps" "bindPose5.wm[6]"
		;
connectAttr "|RibbonArms|RightRibbonArm|R_Ribbon|R_Elbow_FollowGRP|grpR_Arm_Secundary_UP02|R_Arm_Secundary_Up02|R_Arm_Secundary_Up02.bps" "bindPose5.wm[9]"
		;
connectAttr "|RibbonArms|RightRibbonArm|R_Ribbon|R_Elbow_FollowGRP|grpR_Arm_Secundary_Down01|R_Arm_Secundary_Down01|R_Arm_Secundary_Down01.bps" "bindPose5.wm[12]"
		;
connectAttr "|RibbonArms|RightRibbonArm|R_Ribbon|R_Elbow_FollowGRP|grpR_Arm_Secundary_Down02|R_Arm_Secundary_Down02|R_Arm_Secundary_Down02.bps" "bindPose5.wm[15]"
		;
connectAttr "R_Shoulder_JC.bps" "bindPose5.wm[18]";
connectAttr "R_Wrist_JC.bps" "bindPose5.wm[21]";
connectAttr "tweak3.og[0]" "skinCluster2GroupParts.ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2GroupParts.gi";
connectAttr "groupParts7.og" "tweak3.ip[0].ig";
connectAttr "groupId12.id" "tweak3.ip[0].gi";
connectAttr "groupId12.msg" "tweakSet3.gn" -na;
connectAttr "R_Arm_PlaneShape.iog.og[1]" "tweakSet3.dsm" -na;
connectAttr "tweak3.msg" "tweakSet3.ub[0]";
connectAttr "R_Arm_PlaneShapeOrig.ws" "groupParts7.ig";
connectAttr "groupId12.id" "groupParts7.gi";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "RibbonArm_skinCluster2GroupId.msg" "RibbonArm_skinCluster2Set.gn" -na
		;
connectAttr "L_Arm_PlaneShape.iog.og[0]" "RibbonArm_skinCluster2Set.dsm" -na;
connectAttr "RibbonArm_skinCluster2.msg" "RibbonArm_skinCluster2Set.ub[0]";
connectAttr "RibbonArm_skinCluster2GroupParts.og" "RibbonArm_skinCluster2.ip[0].ig"
		;
connectAttr "RibbonArm_skinCluster2GroupId.id" "RibbonArm_skinCluster2.ip[0].gi"
		;
connectAttr "RibbonArm_bindPose5.msg" "RibbonArm_skinCluster2.bp";
connectAttr "L_Elbow_JC.wm" "RibbonArm_skinCluster2.ma[0]";
connectAttr "|RibbonArms|LeftRibbonArm|L_Ribbon|L_Elbow_FollowGRP|grpL_Arm_Secundary_UP01|L_Arm_Secundary_Up01|L_Arm_Secundary_Up01.wm" "RibbonArm_skinCluster2.ma[1]"
		;
connectAttr "|RibbonArms|LeftRibbonArm|L_Ribbon|L_Elbow_FollowGRP|grpL_Arm_Secundary_UP02|L_Arm_Secundary_Up02|L_Arm_Secundary_Up02.wm" "RibbonArm_skinCluster2.ma[2]"
		;
connectAttr "|RibbonArms|LeftRibbonArm|L_Ribbon|L_Elbow_FollowGRP|grpL_Arm_Secundary_Down01|L_Arm_Secundary_Down01|L_Arm_Secundary_Down01.wm" "RibbonArm_skinCluster2.ma[3]"
		;
connectAttr "|RibbonArms|LeftRibbonArm|L_Ribbon|L_Elbow_FollowGRP|grpL_Arm_Secundary_Down02|L_Arm_Secundary_Down02|L_Arm_Secundary_Down02.wm" "RibbonArm_skinCluster2.ma[4]"
		;
connectAttr "L_Wrist_JC.wm" "RibbonArm_skinCluster2.ma[5]";
connectAttr "L_Shoulder_JC.wm" "RibbonArm_skinCluster2.ma[6]";
connectAttr "L_Elbow_JC.liw" "RibbonArm_skinCluster2.lw[0]";
connectAttr "|RibbonArms|LeftRibbonArm|L_Ribbon|L_Elbow_FollowGRP|grpL_Arm_Secundary_UP01|L_Arm_Secundary_Up01|L_Arm_Secundary_Up01.liw" "RibbonArm_skinCluster2.lw[1]"
		;
connectAttr "|RibbonArms|LeftRibbonArm|L_Ribbon|L_Elbow_FollowGRP|grpL_Arm_Secundary_UP02|L_Arm_Secundary_Up02|L_Arm_Secundary_Up02.liw" "RibbonArm_skinCluster2.lw[2]"
		;
connectAttr "|RibbonArms|LeftRibbonArm|L_Ribbon|L_Elbow_FollowGRP|grpL_Arm_Secundary_Down01|L_Arm_Secundary_Down01|L_Arm_Secundary_Down01.liw" "RibbonArm_skinCluster2.lw[3]"
		;
connectAttr "|RibbonArms|LeftRibbonArm|L_Ribbon|L_Elbow_FollowGRP|grpL_Arm_Secundary_Down02|L_Arm_Secundary_Down02|L_Arm_Secundary_Down02.liw" "RibbonArm_skinCluster2.lw[4]"
		;
connectAttr "L_Wrist_JC.liw" "RibbonArm_skinCluster2.lw[5]";
connectAttr "L_Shoulder_JC.liw" "RibbonArm_skinCluster2.lw[6]";
connectAttr "L_Elbow_JC.obcc" "RibbonArm_skinCluster2.ifcl[0]";
connectAttr "|RibbonArms|LeftRibbonArm|L_Ribbon|L_Elbow_FollowGRP|grpL_Arm_Secundary_UP01|L_Arm_Secundary_Up01|L_Arm_Secundary_Up01.obcc" "RibbonArm_skinCluster2.ifcl[1]"
		;
connectAttr "|RibbonArms|LeftRibbonArm|L_Ribbon|L_Elbow_FollowGRP|grpL_Arm_Secundary_UP02|L_Arm_Secundary_Up02|L_Arm_Secundary_Up02.obcc" "RibbonArm_skinCluster2.ifcl[2]"
		;
connectAttr "|RibbonArms|LeftRibbonArm|L_Ribbon|L_Elbow_FollowGRP|grpL_Arm_Secundary_Down01|L_Arm_Secundary_Down01|L_Arm_Secundary_Down01.obcc" "RibbonArm_skinCluster2.ifcl[3]"
		;
connectAttr "|RibbonArms|LeftRibbonArm|L_Ribbon|L_Elbow_FollowGRP|grpL_Arm_Secundary_Down02|L_Arm_Secundary_Down02|L_Arm_Secundary_Down02.obcc" "RibbonArm_skinCluster2.ifcl[4]"
		;
connectAttr "L_Wrist_JC.obcc" "RibbonArm_skinCluster2.ifcl[5]";
connectAttr "L_Shoulder_JC.obcc" "RibbonArm_skinCluster2.ifcl[6]";
connectAttr "L_Wrist_JC.msg" "RibbonArm_skinCluster2.ptt";
connectAttr "L_Elbow_FollowGRP.msg" "RibbonArm_bindPose5.m[0]";
connectAttr "grpL_Arm_ElbowZERO2.msg" "RibbonArm_bindPose5.m[1]";
connectAttr "L_Arm_Elbow.msg" "RibbonArm_bindPose5.m[2]";
connectAttr "L_Elbow_JC.msg" "RibbonArm_bindPose5.m[3]";
connectAttr "grpL_Arm_Secundary_UP01.msg" "RibbonArm_bindPose5.m[4]";
connectAttr "|RibbonArms|LeftRibbonArm|L_Ribbon|L_Elbow_FollowGRP|grpL_Arm_Secundary_UP01|L_Arm_Secundary_Up01.msg" "RibbonArm_bindPose5.m[5]"
		;
connectAttr "|RibbonArms|LeftRibbonArm|L_Ribbon|L_Elbow_FollowGRP|grpL_Arm_Secundary_UP01|L_Arm_Secundary_Up01|L_Arm_Secundary_Up01.msg" "RibbonArm_bindPose5.m[6]"
		;
connectAttr "grpL_Arm_Secundary_UP02.msg" "RibbonArm_bindPose5.m[7]";
connectAttr "|RibbonArms|LeftRibbonArm|L_Ribbon|L_Elbow_FollowGRP|grpL_Arm_Secundary_UP02|L_Arm_Secundary_Up02.msg" "RibbonArm_bindPose5.m[8]"
		;
connectAttr "|RibbonArms|LeftRibbonArm|L_Ribbon|L_Elbow_FollowGRP|grpL_Arm_Secundary_UP02|L_Arm_Secundary_Up02|L_Arm_Secundary_Up02.msg" "RibbonArm_bindPose5.m[9]"
		;
connectAttr "grpL_Arm_Secundary_Down01.msg" "RibbonArm_bindPose5.m[10]";
connectAttr "|RibbonArms|LeftRibbonArm|L_Ribbon|L_Elbow_FollowGRP|grpL_Arm_Secundary_Down01|L_Arm_Secundary_Down01.msg" "RibbonArm_bindPose5.m[11]"
		;
connectAttr "|RibbonArms|LeftRibbonArm|L_Ribbon|L_Elbow_FollowGRP|grpL_Arm_Secundary_Down01|L_Arm_Secundary_Down01|L_Arm_Secundary_Down01.msg" "RibbonArm_bindPose5.m[12]"
		;
connectAttr "grpL_Arm_Secundary_Down02.msg" "RibbonArm_bindPose5.m[13]";
connectAttr "|RibbonArms|LeftRibbonArm|L_Ribbon|L_Elbow_FollowGRP|grpL_Arm_Secundary_Down02|L_Arm_Secundary_Down02.msg" "RibbonArm_bindPose5.m[14]"
		;
connectAttr "|RibbonArms|LeftRibbonArm|L_Ribbon|L_Elbow_FollowGRP|grpL_Arm_Secundary_Down02|L_Arm_Secundary_Down02|L_Arm_Secundary_Down02.msg" "RibbonArm_bindPose5.m[15]"
		;
connectAttr "grpL_Arm_WristZERO1.msg" "RibbonArm_bindPose5.m[16]";
connectAttr "L_Arm_Wrist.msg" "RibbonArm_bindPose5.m[17]";
connectAttr "L_Wrist_JC.msg" "RibbonArm_bindPose5.m[18]";
connectAttr "grpL_Arm_ShoulderZERO.msg" "RibbonArm_bindPose5.m[19]";
connectAttr "L_Arm_Shoulder.msg" "RibbonArm_bindPose5.m[20]";
connectAttr "L_Shoulder_JC.msg" "RibbonArm_bindPose5.m[21]";
connectAttr "RibbonArm_bindPose5.w" "RibbonArm_bindPose5.p[0]";
connectAttr "RibbonArm_bindPose5.m[0]" "RibbonArm_bindPose5.p[1]";
connectAttr "RibbonArm_bindPose5.m[1]" "RibbonArm_bindPose5.p[2]";
connectAttr "RibbonArm_bindPose5.m[2]" "RibbonArm_bindPose5.p[3]";
connectAttr "RibbonArm_bindPose5.m[0]" "RibbonArm_bindPose5.p[4]";
connectAttr "RibbonArm_bindPose5.m[4]" "RibbonArm_bindPose5.p[5]";
connectAttr "RibbonArm_bindPose5.m[5]" "RibbonArm_bindPose5.p[6]";
connectAttr "RibbonArm_bindPose5.m[0]" "RibbonArm_bindPose5.p[7]";
connectAttr "RibbonArm_bindPose5.m[7]" "RibbonArm_bindPose5.p[8]";
connectAttr "RibbonArm_bindPose5.m[8]" "RibbonArm_bindPose5.p[9]";
connectAttr "RibbonArm_bindPose5.m[0]" "RibbonArm_bindPose5.p[10]";
connectAttr "RibbonArm_bindPose5.m[10]" "RibbonArm_bindPose5.p[11]";
connectAttr "RibbonArm_bindPose5.m[11]" "RibbonArm_bindPose5.p[12]";
connectAttr "RibbonArm_bindPose5.m[0]" "RibbonArm_bindPose5.p[13]";
connectAttr "RibbonArm_bindPose5.m[13]" "RibbonArm_bindPose5.p[14]";
connectAttr "RibbonArm_bindPose5.m[14]" "RibbonArm_bindPose5.p[15]";
connectAttr "RibbonArm_bindPose5.w" "RibbonArm_bindPose5.p[16]";
connectAttr "RibbonArm_bindPose5.m[16]" "RibbonArm_bindPose5.p[17]";
connectAttr "RibbonArm_bindPose5.m[17]" "RibbonArm_bindPose5.p[18]";
connectAttr "RibbonArm_bindPose5.w" "RibbonArm_bindPose5.p[19]";
connectAttr "RibbonArm_bindPose5.m[19]" "RibbonArm_bindPose5.p[20]";
connectAttr "RibbonArm_bindPose5.m[20]" "RibbonArm_bindPose5.p[21]";
connectAttr "L_Elbow_JC.bps" "RibbonArm_bindPose5.wm[3]";
connectAttr "|RibbonArms|LeftRibbonArm|L_Ribbon|L_Elbow_FollowGRP|grpL_Arm_Secundary_UP01|L_Arm_Secundary_Up01|L_Arm_Secundary_Up01.bps" "RibbonArm_bindPose5.wm[6]"
		;
connectAttr "|RibbonArms|LeftRibbonArm|L_Ribbon|L_Elbow_FollowGRP|grpL_Arm_Secundary_UP02|L_Arm_Secundary_Up02|L_Arm_Secundary_Up02.bps" "RibbonArm_bindPose5.wm[9]"
		;
connectAttr "|RibbonArms|LeftRibbonArm|L_Ribbon|L_Elbow_FollowGRP|grpL_Arm_Secundary_Down01|L_Arm_Secundary_Down01|L_Arm_Secundary_Down01.bps" "RibbonArm_bindPose5.wm[12]"
		;
connectAttr "|RibbonArms|LeftRibbonArm|L_Ribbon|L_Elbow_FollowGRP|grpL_Arm_Secundary_Down02|L_Arm_Secundary_Down02|L_Arm_Secundary_Down02.bps" "RibbonArm_bindPose5.wm[15]"
		;
connectAttr "L_Wrist_JC.bps" "RibbonArm_bindPose5.wm[18]";
connectAttr "L_Shoulder_JC.bps" "RibbonArm_bindPose5.wm[21]";
connectAttr "RibbonArm_tweak3.og[0]" "RibbonArm_skinCluster2GroupParts.ig";
connectAttr "RibbonArm_skinCluster2GroupId.id" "RibbonArm_skinCluster2GroupParts.gi"
		;
connectAttr "RibbonArm_groupParts7.og" "RibbonArm_tweak3.ip[0].ig";
connectAttr "RibbonArm_groupId12.id" "RibbonArm_tweak3.ip[0].gi";
connectAttr "RibbonArm_groupId12.msg" "RibbonArm_tweakSet3.gn" -na;
connectAttr "L_Arm_PlaneShape.iog.og[1]" "RibbonArm_tweakSet3.dsm" -na;
connectAttr "RibbonArm_tweak3.msg" "RibbonArm_tweakSet3.ub[0]";
connectAttr "L_Arm_PlaneShapeOrig.ws" "RibbonArm_groupParts7.ig";
connectAttr "RibbonArm_groupId12.id" "RibbonArm_groupParts7.gi";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "R_Arm_PlaneShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "L_Arm_PlaneShape.iog" ":initialShadingGroup.dsm" -na;
// End of RibbonArm.ma

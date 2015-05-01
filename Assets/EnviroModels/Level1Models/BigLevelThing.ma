//Maya ASCII 2014 scene
//Name: BigLevelThing.ma
//Last modified: Sat, Apr 05, 2014 09:29:34 PM
//Codeset: UTF-8
requires maya "2014";
requires -nodeType "HIKSolverNode" -nodeType "HIKRetargeterNode" -nodeType "HIKCharacterNode"
		 -nodeType "HIKSkeletonGeneratorNode" -nodeType "HIKControlSetNode" -nodeType "HIKEffectorFromCharacter"
		 -nodeType "HIKSK2State" -nodeType "HIKFK2State" -nodeType "HIKState2FK" -nodeType "HIKState2SK"
		 -nodeType "HIKState2GlobalSK" -nodeType "HIKEffector2State" -nodeType "HIKState2Effector"
		 -nodeType "HIKProperty2State" -nodeType "HIKPinning2State" -nodeType "ComputeGlobal"
		 -nodeType "ComputeLocal" -nodeType "HIKCharacterStateClient" -dataType "HIKCharacter"
		 -dataType "HIKCharacterState" -dataType "HIKEffectorState" -dataType "HIKPropertySetState"
		 "mayaHIK" "1.0_HIK_2013.2";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014";
fileInfo "cutIdentifier" "201310090405-890429";
fileInfo "osv" "Mac OS X 10.9.2";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 17.784891875836834 21.152129784863892 61.172691992002029 ;
	setAttr ".r" -type "double3" -9.0212191051664821 18.199999999711064 4.1850634925964796e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".pze" yes;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 73.713789228969688;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -8.4000000357627869 5.7416982650756836 -25.200020670890808 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 47.834186110785431;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCube1";
	setAttr ".t" -type "double3" 0 1.4096256096282225 -1.4437795815854819 ;
	setAttr ".s" -type "double3" 3.4087547687489685 0.17043773843744853 1.7043773843744843 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 32 ".pt[126:157]" -type "float3"  0 0.83260787 0 0 0.83260787 
		0 0 0.83260787 0 0 0.83260787 0 0 0.83260787 0 0 0.83260787 0 0 0.83260787 0 0 0.83260787 
		0 0 0.83260787 0 0 0.83260787 0 0 0.83260787 0 0 0.83260787 0 0 0.83260787 0 0 0.83260787 
		0 0 0.83260787 0 0 0.83260787 0 0 0.51529837 0 0 0.51529837 0 0 0.51529837 0 0 0.51529837 
		0 0 0.51529837 0 0 0.51529837 0 0 0.51529837 0 0 0.51529837 0 0 0.51529837 0 0 0.51529837 
		0 0 0.51529837 0 0 0.51529837 0 0 0.51529837 0 0 0.51529837 0 0 0.51529837 0 0 0.51529837 
		0;
	setAttr ".dr" 1;
createNode transform -n "pCube2";
	setAttr ".t" -type "double3" 0 -0.25 0 ;
	setAttr ".s" -type "double3" 60 0.25 60 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	setAttr ".sw" 8;
	setAttr ".sd" 6;
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	setAttr ".ics" -type "componentList" 4 "f[73]" "f[78]" "f[97]" "f[102]";
	setAttr ".ix" -type "matrix" 4 0 0 0 0 0.20000000000000001 0 0 0 0 2 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -0.1 5.9604645e-08 ;
	setAttr ".rs" 1138641190;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.5 -0.1 -0.66666662693023682 ;
	setAttr ".cbx" -type "double3" 1.5 -0.1 0.66666674613952637 ;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 56 ".tk";
	setAttr ".tk[2]" -type "float3" -0.057266232 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.057266232 0 0 ;
	setAttr ".tk[11]" -type "float3" -0.057266232 0 0 ;
	setAttr ".tk[15]" -type "float3" 0.057266232 0 0 ;
	setAttr ".tk[20]" -type "float3" -0.057266232 0 0 ;
	setAttr ".tk[24]" -type "float3" 0.057266232 0 0 ;
	setAttr ".tk[27]" -type "float3" 0 0 0.04918395 ;
	setAttr ".tk[28]" -type "float3" 0 0 0.04918395 ;
	setAttr ".tk[29]" -type "float3" -0.057266232 0 0.04918395 ;
	setAttr ".tk[30]" -type "float3" 0 0 0.04918395 ;
	setAttr ".tk[31]" -type "float3" 0 0 0.04918395 ;
	setAttr ".tk[32]" -type "float3" 0 0 0.04918395 ;
	setAttr ".tk[33]" -type "float3" 0.057266232 0 0.04918395 ;
	setAttr ".tk[34]" -type "float3" 0 0 0.04918395 ;
	setAttr ".tk[35]" -type "float3" 0 0 0.04918395 ;
	setAttr ".tk[38]" -type "float3" -0.057266232 0 0 ;
	setAttr ".tk[42]" -type "float3" 0.057266232 0 0 ;
	setAttr ".tk[45]" -type "float3" 0 0 -0.049183965 ;
	setAttr ".tk[46]" -type "float3" 0 0 -0.049183965 ;
	setAttr ".tk[47]" -type "float3" -0.057266232 0 -0.049183965 ;
	setAttr ".tk[48]" -type "float3" 0 0 -0.049183965 ;
	setAttr ".tk[49]" -type "float3" 0 0 -0.049183965 ;
	setAttr ".tk[50]" -type "float3" 0 0 -0.049183965 ;
	setAttr ".tk[51]" -type "float3" 0.057266232 0 -0.049183965 ;
	setAttr ".tk[52]" -type "float3" 0 0 -0.049183965 ;
	setAttr ".tk[53]" -type "float3" 0 0 -0.049183965 ;
	setAttr ".tk[56]" -type "float3" -0.057266232 0 0 ;
	setAttr ".tk[60]" -type "float3" 0.057266232 0 0 ;
	setAttr ".tk[65]" -type "float3" -0.057266232 0 0 ;
	setAttr ".tk[69]" -type "float3" 0.057266232 0 0 ;
	setAttr ".tk[74]" -type "float3" -0.057266232 0 0 ;
	setAttr ".tk[78]" -type "float3" 0.057266232 0 0 ;
	setAttr ".tk[83]" -type "float3" -0.057266232 0 0 ;
	setAttr ".tk[87]" -type "float3" 0.057266232 0 0 ;
	setAttr ".tk[90]" -type "float3" 0 0 -0.04918395 ;
	setAttr ".tk[91]" -type "float3" 0 0 -0.04918395 ;
	setAttr ".tk[92]" -type "float3" -0.057266232 0 -0.04918395 ;
	setAttr ".tk[93]" -type "float3" 0 0 -0.04918395 ;
	setAttr ".tk[94]" -type "float3" 0 0 -0.04918395 ;
	setAttr ".tk[95]" -type "float3" 0 0 -0.04918395 ;
	setAttr ".tk[96]" -type "float3" 0.057266232 0 -0.04918395 ;
	setAttr ".tk[97]" -type "float3" 0 0 -0.04918395 ;
	setAttr ".tk[98]" -type "float3" 0 0 -0.04918395 ;
	setAttr ".tk[101]" -type "float3" -0.057266232 0 0 ;
	setAttr ".tk[105]" -type "float3" 0.057266232 0 0 ;
	setAttr ".tk[108]" -type "float3" 0 0 0.049183965 ;
	setAttr ".tk[109]" -type "float3" 0 0 0.049183965 ;
	setAttr ".tk[110]" -type "float3" -0.057266232 0 0.049183965 ;
	setAttr ".tk[111]" -type "float3" 0 0 0.049183965 ;
	setAttr ".tk[112]" -type "float3" 0 0 0.049183965 ;
	setAttr ".tk[113]" -type "float3" 0 0 0.049183965 ;
	setAttr ".tk[114]" -type "float3" 0.057266232 0 0.049183965 ;
	setAttr ".tk[115]" -type "float3" 0 0 0.049183965 ;
	setAttr ".tk[116]" -type "float3" 0 0 0.049183965 ;
	setAttr ".tk[119]" -type "float3" -0.057266232 0 0 ;
	setAttr ".tk[123]" -type "float3" 0.057266232 0 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	setAttr ".ics" -type "componentList" 4 "f[73]" "f[78]" "f[97]" "f[102]";
	setAttr ".ix" -type "matrix" 4 0 0 0 0 0.20000000000000001 0 0 0 0 2 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -1.4042237 5.9604645e-08 ;
	setAttr ".rs" 1495123762;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.5 -1.4042237281799317 -0.66666662693023682 ;
	setAttr ".cbx" -type "double3" 1.5 -1.4042237281799317 0.66666674613952637 ;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[126:141]" -type "float3"  0 -6.52111864 0 0 -6.52111864
		 0 0 -6.52111864 0 0 -6.52111864 0 0 -6.52111864 0 0 -6.52111864 0 0 -6.52111864 0
		 0 -6.52111864 0 0 -6.52111864 0 0 -6.52111864 0 0 -6.52111864 0 0 -6.52111864 0 0
		 -6.52111864 0 0 -6.52111864 0 0 -6.52111864 0 0 -6.52111864 0;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n"
		+ "            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n"
		+ "                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n"
		+ "            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n"
		+ "            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n"
		+ "                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n"
		+ "                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 0\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n"
		+ "            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n"
		+ "            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n"
		+ "                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n"
		+ "                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n"
		+ "                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n"
		+ "                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n"
		+ "                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n"
		+ "                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n"
		+ "                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 21 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition edge -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode polyCube -n "polyCube2";
	setAttr ".sw" 50;
	setAttr ".sd" 50;
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	setAttr ".ics" -type "componentList" 55 "f[1004:1026]" "f[1035:1040]" "f[1054]" "f[1090]" "f[1104]" "f[1140]" "f[1154]" "f[1190]" "f[1204]" "f[1240]" "f[1254]" "f[1290]" "f[1304]" "f[1340]" "f[1354]" "f[1390]" "f[1404]" "f[1440]" "f[1454]" "f[1490]" "f[1504]" "f[1540]" "f[1554]" "f[1590]" "f[1604]" "f[1640]" "f[1654]" "f[1690]" "f[1704]" "f[1740]" "f[1754]" "f[1790]" "f[1804]" "f[1840]" "f[1854]" "f[1890]" "f[1904]" "f[1940]" "f[1954]" "f[1990]" "f[2004]" "f[2040]" "f[2054]" "f[2090]" "f[2104]" "f[2140]" "f[2154]" "f[2190]" "f[2204]" "f[2240]" "f[2254]" "f[2290]" "f[2304]" "f[2340]" "f[2354:2390]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.9999962 -0.125 -9.6000071 ;
	setAttr ".rs" 1173123269;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -25.199997425079346 -0.125 -26.400008797645569 ;
	setAttr ".cbx" -type "double3" 19.200004935264587 -0.125 7.1999940276145935 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	setAttr ".ics" -type "componentList" 55 "f[1004:1026]" "f[1035:1040]" "f[1054]" "f[1090]" "f[1104]" "f[1140]" "f[1154]" "f[1190]" "f[1204]" "f[1240]" "f[1254]" "f[1290]" "f[1304]" "f[1340]" "f[1354]" "f[1390]" "f[1404]" "f[1440]" "f[1454]" "f[1490]" "f[1504]" "f[1540]" "f[1554]" "f[1590]" "f[1604]" "f[1640]" "f[1654]" "f[1690]" "f[1704]" "f[1740]" "f[1754]" "f[1790]" "f[1804]" "f[1840]" "f[1854]" "f[1890]" "f[1904]" "f[1940]" "f[1954]" "f[1990]" "f[2004]" "f[2040]" "f[2054]" "f[2090]" "f[2104]" "f[2140]" "f[2154]" "f[2190]" "f[2204]" "f[2240]" "f[2254]" "f[2290]" "f[2304]" "f[2340]" "f[2354:2390]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.9999962 0.87857699 -9.600008 ;
	setAttr ".rs" 1209360507;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -25.199997425079346 0.87857699394226074 -26.400010585784912 ;
	setAttr ".cbx" -type "double3" 19.200004935264587 0.87857699394226074 7.1999944746494293 ;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 243 ".tk";
	setAttr ".tk[5202]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5203]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5204]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5205]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5206]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5207]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5208]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5209]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5210]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5211]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5212]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5213]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5214]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5215]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5216]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5217]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5218]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5219]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5220]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5221]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5222]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5223]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5224]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5225]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5226]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5227]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5228]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5229]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5230]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5231]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5232]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5233]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5234]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5235]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5236]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5237]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5238]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5239]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5240]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5241]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5242]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5243]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5244]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5245]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5246]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5247]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5248]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5249]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5250]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5251]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5252]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5253]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5254]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5255]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5256]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5257]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5258]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5259]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5260]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5261]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5262]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5263]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5264]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5265]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5266]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5267]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5268]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5269]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5270]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5271]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5272]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5273]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5274]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5275]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5276]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5277]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5278]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5279]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5280]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5281]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5282]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5283]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5284]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5285]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5286]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5287]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5288]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5289]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5290]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5291]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5292]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5293]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5294]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5295]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5296]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5297]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5298]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5299]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5300]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5301]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5302]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5303]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5304]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5305]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5306]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5307]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5308]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5309]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5310]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5311]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5312]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5313]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5314]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5315]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5316]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5317]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5318]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5319]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5320]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5321]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5322]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5323]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5324]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5325]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5326]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5327]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5328]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5329]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5330]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5331]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5332]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5333]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5334]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5335]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5336]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5337]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5338]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5339]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5340]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5341]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5342]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5343]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5344]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5345]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5346]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5347]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5348]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5349]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5350]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5351]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5352]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5353]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5354]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5355]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5356]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5357]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5358]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5359]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5360]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5361]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5362]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5363]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5364]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5365]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5366]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5367]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5368]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5369]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5370]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5371]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5372]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5373]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5374]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5375]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5376]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5377]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5378]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5379]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5380]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5381]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5382]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5383]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5384]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5385]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5386]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5387]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5388]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5389]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5390]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5391]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5392]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5393]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5394]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5395]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5396]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5397]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5398]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5399]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5400]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5401]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5402]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5403]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5404]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5405]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5406]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5407]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5408]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5409]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5410]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5411]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5412]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5413]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5414]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5415]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5416]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5417]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5418]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5419]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5420]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5421]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5422]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5423]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5424]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5425]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5426]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5427]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5428]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5429]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5430]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5431]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5432]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5433]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5434]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5435]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5436]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5437]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5438]" -type "float3" 0 4.014308 0 ;
	setAttr ".tk[5439]" -type "float3" 0 4.014308 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	setAttr ".ics" -type "componentList" 55 "f[1004:1026]" "f[1035:1040]" "f[1054]" "f[1090]" "f[1104]" "f[1140]" "f[1154]" "f[1190]" "f[1204]" "f[1240]" "f[1254]" "f[1290]" "f[1304]" "f[1340]" "f[1354]" "f[1390]" "f[1404]" "f[1440]" "f[1454]" "f[1490]" "f[1504]" "f[1540]" "f[1554]" "f[1590]" "f[1604]" "f[1640]" "f[1654]" "f[1690]" "f[1704]" "f[1740]" "f[1754]" "f[1790]" "f[1804]" "f[1840]" "f[1854]" "f[1890]" "f[1904]" "f[1940]" "f[1954]" "f[1990]" "f[2004]" "f[2040]" "f[2054]" "f[2090]" "f[2104]" "f[2140]" "f[2154]" "f[2190]" "f[2204]" "f[2240]" "f[2254]" "f[2290]" "f[2304]" "f[2340]" "f[2354:2390]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.9999962 2.0514054 -9.600009 ;
	setAttr ".rs" 366270587;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -25.199997425079346 2.0514054298400879 -26.400012373924255 ;
	setAttr ".cbx" -type "double3" 19.200004935264587 2.0514054298400879 7.1999949216842651 ;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 238 ".tk";
	setAttr ".tk[5440:5605]" -type "float3"  0 4.69131422 0 0 4.69131422 0 0 4.69131422
		 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422
		 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422
		 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422
		 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422
		 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422
		 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422
		 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422
		 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422
		 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422
		 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422
		 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422
		 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422
		 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422
		 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422
		 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422
		 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422
		 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422
		 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422
		 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422
		 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422
		 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422
		 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422
		 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422
		 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422
		 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422
		 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422
		 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422
		 0 0 4.69131422 0;
	setAttr ".tk[5606:5677]" 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422
		 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422
		 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422
		 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422
		 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422
		 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422
		 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422
		 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422
		 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422
		 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422
		 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422
		 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422 0 0 4.69131422
		 0 0 4.69131422 0 0 4.69131422 0;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	setAttr ".ics" -type "componentList" 55 "f[1004:1026]" "f[1035:1040]" "f[1054]" "f[1090]" "f[1104]" "f[1140]" "f[1154]" "f[1190]" "f[1204]" "f[1240]" "f[1254]" "f[1290]" "f[1304]" "f[1340]" "f[1354]" "f[1390]" "f[1404]" "f[1440]" "f[1454]" "f[1490]" "f[1504]" "f[1540]" "f[1554]" "f[1590]" "f[1604]" "f[1640]" "f[1654]" "f[1690]" "f[1704]" "f[1740]" "f[1754]" "f[1790]" "f[1804]" "f[1840]" "f[1854]" "f[1890]" "f[1904]" "f[1940]" "f[1954]" "f[1990]" "f[2004]" "f[2040]" "f[2054]" "f[2090]" "f[2104]" "f[2140]" "f[2154]" "f[2190]" "f[2204]" "f[2240]" "f[2254]" "f[2290]" "f[2304]" "f[2340]" "f[2354:2390]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.9999962 3.2198405 -9.600009 ;
	setAttr ".rs" 697093582;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -25.199997425079346 3.2198405265808105 -26.400014162063599 ;
	setAttr ".cbx" -type "double3" 19.200004935264587 3.2198405265808105 7.199995368719101 ;
createNode polyTweak -n "polyTweak5";
	setAttr ".uopa" yes;
	setAttr -s 238 ".tk";
	setAttr ".tk[5678:5843]" -type "float3"  0 4.67373991 0 0 4.67373991 0 0 4.67373991
		 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991
		 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991
		 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991
		 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991
		 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991
		 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991
		 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991
		 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991
		 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991
		 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991
		 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991
		 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991
		 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991
		 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991
		 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991
		 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991
		 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991
		 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991
		 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991
		 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991
		 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991
		 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991
		 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991
		 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991
		 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991
		 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991
		 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991
		 0 0 4.67373991 0;
	setAttr ".tk[5844:5915]" 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991
		 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991
		 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991
		 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991
		 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991
		 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991
		 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991
		 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991
		 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991
		 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991
		 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991
		 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991 0 0 4.67373991
		 0 0 4.67373991 0 0 4.67373991 0;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	setAttr ".ics" -type "componentList" 55 "f[1004:1026]" "f[1035:1040]" "f[1054]" "f[1090]" "f[1104]" "f[1140]" "f[1154]" "f[1190]" "f[1204]" "f[1240]" "f[1254]" "f[1290]" "f[1304]" "f[1340]" "f[1354]" "f[1390]" "f[1404]" "f[1440]" "f[1454]" "f[1490]" "f[1504]" "f[1540]" "f[1554]" "f[1590]" "f[1604]" "f[1640]" "f[1654]" "f[1690]" "f[1704]" "f[1740]" "f[1754]" "f[1790]" "f[1804]" "f[1840]" "f[1854]" "f[1890]" "f[1904]" "f[1940]" "f[1954]" "f[1990]" "f[2004]" "f[2040]" "f[2054]" "f[2090]" "f[2104]" "f[2140]" "f[2154]" "f[2190]" "f[2204]" "f[2240]" "f[2254]" "f[2290]" "f[2304]" "f[2340]" "f[2354:2390]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.9999962 4.3853936 -9.6000099 ;
	setAttr ".rs" 966278288;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -25.199997425079346 4.3853936195373535 -26.400015950202942 ;
	setAttr ".cbx" -type "double3" 19.200004935264587 4.3853936195373535 7.1999958157539368 ;
createNode polyTweak -n "polyTweak6";
	setAttr ".uopa" yes;
	setAttr -s 238 ".tk";
	setAttr ".tk[5916:6081]" -type "float3"  0 4.66221285 0 0 4.66221285 0 0 4.66221285
		 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285
		 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285
		 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285
		 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285
		 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285
		 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285
		 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285
		 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285
		 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285
		 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285
		 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285
		 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285
		 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285
		 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285
		 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285
		 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285
		 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285
		 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285
		 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285
		 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285
		 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285
		 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285
		 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285
		 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285
		 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285
		 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285
		 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285
		 0 0 4.66221285 0;
	setAttr ".tk[6082:6153]" 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285
		 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285
		 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285
		 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285
		 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285
		 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285
		 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285
		 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285
		 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285
		 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285
		 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285
		 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285 0 0 4.66221285
		 0 0 4.66221285 0 0 4.66221285 0;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	setAttr ".ics" -type "componentList" 55 "f[1004:1026]" "f[1035:1040]" "f[1054]" "f[1090]" "f[1104]" "f[1140]" "f[1154]" "f[1190]" "f[1204]" "f[1240]" "f[1254]" "f[1290]" "f[1304]" "f[1340]" "f[1354]" "f[1390]" "f[1404]" "f[1440]" "f[1454]" "f[1490]" "f[1504]" "f[1540]" "f[1554]" "f[1590]" "f[1604]" "f[1640]" "f[1654]" "f[1690]" "f[1704]" "f[1740]" "f[1754]" "f[1790]" "f[1804]" "f[1840]" "f[1854]" "f[1890]" "f[1904]" "f[1940]" "f[1954]" "f[1990]" "f[2004]" "f[2040]" "f[2054]" "f[2090]" "f[2104]" "f[2140]" "f[2154]" "f[2190]" "f[2204]" "f[2240]" "f[2254]" "f[2290]" "f[2304]" "f[2340]" "f[2354:2390]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.9999962 5.7416983 -9.6000109 ;
	setAttr ".rs" 1509623035;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -25.199997425079346 5.7416982650756836 -26.400017738342285 ;
	setAttr ".cbx" -type "double3" 19.200004935264587 5.7416982650756836 7.1999962627887726 ;
createNode polyTweak -n "polyTweak7";
	setAttr ".uopa" yes;
	setAttr -s 238 ".tk";
	setAttr ".tk[6154:6319]" -type "float3"  0 5.42521954 0 0 5.42521954 0 0 5.42521954
		 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954
		 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954
		 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954
		 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954
		 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954
		 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954
		 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954
		 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954
		 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954
		 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954
		 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954
		 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954
		 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954
		 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954
		 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954
		 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954
		 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954
		 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954
		 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954
		 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954
		 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954
		 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954
		 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954
		 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954
		 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954
		 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954
		 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954
		 0 0 5.42521954 0;
	setAttr ".tk[6320:6391]" 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954
		 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954
		 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954
		 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954
		 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954
		 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954
		 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954
		 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954
		 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954
		 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954
		 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954
		 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954 0 0 5.42521954
		 0 0 5.42521954 0 0 5.42521954 0;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	setAttr ".ics" -type "componentList" 55 "f[1004:1026]" "f[1035:1040]" "f[1054]" "f[1090]" "f[1104]" "f[1140]" "f[1154]" "f[1190]" "f[1204]" "f[1240]" "f[1254]" "f[1290]" "f[1304]" "f[1340]" "f[1354]" "f[1390]" "f[1404]" "f[1440]" "f[1454]" "f[1490]" "f[1504]" "f[1540]" "f[1554]" "f[1590]" "f[1604]" "f[1640]" "f[1654]" "f[1690]" "f[1704]" "f[1740]" "f[1754]" "f[1790]" "f[1804]" "f[1840]" "f[1854]" "f[1890]" "f[1904]" "f[1940]" "f[1954]" "f[1990]" "f[2004]" "f[2040]" "f[2054]" "f[2090]" "f[2104]" "f[2140]" "f[2154]" "f[2190]" "f[2204]" "f[2240]" "f[2254]" "f[2290]" "f[2304]" "f[2340]" "f[2354:2390]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.9999962 7.2850866 -9.6000109 ;
	setAttr ".rs" 253351989;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -25.199997425079346 7.2850866317749023 -26.400017738342285 ;
	setAttr ".cbx" -type "double3" 19.200004935264587 7.2850866317749023 7.1999967098236084 ;
createNode polyTweak -n "polyTweak8";
	setAttr ".uopa" yes;
	setAttr -s 238 ".tk";
	setAttr ".tk[6392:6557]" -type "float3"  0 6.17355394 0 0 6.17355394 0 0 6.17355394
		 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394
		 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394
		 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394
		 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394
		 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394
		 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394
		 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394
		 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394
		 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394
		 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394
		 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394
		 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394
		 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394
		 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394
		 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394
		 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394
		 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394
		 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394
		 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394
		 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394
		 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394
		 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394
		 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394
		 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394
		 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394
		 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394
		 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394
		 0 0 6.17355394 0;
	setAttr ".tk[6558:6629]" 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394
		 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394
		 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394
		 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394
		 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394
		 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394
		 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394
		 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394
		 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394
		 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394
		 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394
		 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394 0 0 6.17355394
		 0 0 6.17355394 0 0 6.17355394 0;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	setAttr ".ics" -type "componentList" 55 "f[1004:1026]" "f[1035:1040]" "f[1054]" "f[1090]" "f[1104]" "f[1140]" "f[1154]" "f[1190]" "f[1204]" "f[1240]" "f[1254]" "f[1290]" "f[1304]" "f[1340]" "f[1354]" "f[1390]" "f[1404]" "f[1440]" "f[1454]" "f[1490]" "f[1504]" "f[1540]" "f[1554]" "f[1590]" "f[1604]" "f[1640]" "f[1654]" "f[1690]" "f[1704]" "f[1740]" "f[1754]" "f[1790]" "f[1804]" "f[1840]" "f[1854]" "f[1890]" "f[1904]" "f[1940]" "f[1954]" "f[1990]" "f[2004]" "f[2040]" "f[2054]" "f[2090]" "f[2104]" "f[2140]" "f[2154]" "f[2190]" "f[2204]" "f[2240]" "f[2254]" "f[2290]" "f[2304]" "f[2340]" "f[2354:2390]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.9999962 8.693553 -9.6000099 ;
	setAttr ".rs" 1252181764;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -25.199997425079346 8.6935529708862305 -26.400017738342285 ;
	setAttr ".cbx" -type "double3" 19.200004935264587 8.6935529708862305 7.1999971568584442 ;
createNode polyTweak -n "polyTweak9";
	setAttr ".uopa" yes;
	setAttr -s 238 ".tk";
	setAttr ".tk[6630:6795]" -type "float3"  0 5.6338644 0 0 5.6338644 0 0 5.6338644
		 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644
		 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644
		 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644
		 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644
		 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644
		 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644
		 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644
		 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644
		 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644
		 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644
		 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644
		 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644
		 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644
		 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644
		 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644
		 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644
		 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644
		 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644
		 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644
		 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644
		 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644
		 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644
		 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644
		 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644
		 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644
		 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644
		 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644
		 0 0 5.6338644 0;
	setAttr ".tk[6796:6867]" 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644
		 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644
		 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644
		 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644
		 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644
		 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644
		 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644
		 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644
		 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644
		 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644
		 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644
		 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644 0 0 5.6338644
		 0 0 5.6338644 0 0 5.6338644 0;
createNode polyExtrudeFace -n "polyExtrudeFace11";
	setAttr ".ics" -type "componentList" 55 "f[1004:1026]" "f[1035:1040]" "f[1054]" "f[1090]" "f[1104]" "f[1140]" "f[1154]" "f[1190]" "f[1204]" "f[1240]" "f[1254]" "f[1290]" "f[1304]" "f[1340]" "f[1354]" "f[1390]" "f[1404]" "f[1440]" "f[1454]" "f[1490]" "f[1504]" "f[1540]" "f[1554]" "f[1590]" "f[1604]" "f[1640]" "f[1654]" "f[1690]" "f[1704]" "f[1740]" "f[1754]" "f[1790]" "f[1804]" "f[1840]" "f[1854]" "f[1890]" "f[1904]" "f[1940]" "f[1954]" "f[1990]" "f[2004]" "f[2040]" "f[2054]" "f[2090]" "f[2104]" "f[2140]" "f[2154]" "f[2190]" "f[2204]" "f[2240]" "f[2254]" "f[2290]" "f[2304]" "f[2340]" "f[2354:2390]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.9999962 10.020421 -9.6000099 ;
	setAttr ".rs" 1654171266;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -25.199997425079346 10.020421028137207 -26.400017738342285 ;
	setAttr ".cbx" -type "double3" 19.200004935264587 10.020421028137207 7.1999971568584442 ;
createNode polyTweak -n "polyTweak10";
	setAttr ".uopa" yes;
	setAttr -s 238 ".tk";
	setAttr ".tk[6868:7033]" -type "float3"  0 5.30747175 0 0 5.30747175 0 0 5.30747175
		 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175
		 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175
		 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175
		 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175
		 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175
		 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175
		 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175
		 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175
		 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175
		 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175
		 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175
		 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175
		 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175
		 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175
		 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175
		 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175
		 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175
		 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175
		 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175
		 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175
		 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175
		 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175
		 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175
		 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175
		 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175
		 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175
		 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175
		 0 0 5.30747175 0;
	setAttr ".tk[7034:7105]" 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175
		 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175
		 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175
		 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175
		 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175
		 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175
		 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175
		 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175
		 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175
		 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175
		 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175
		 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175 0 0 5.30747175
		 0 0 5.30747175 0 0 5.30747175 0;
createNode polyExtrudeFace -n "polyExtrudeFace12";
	setAttr ".ics" -type "componentList" 55 "f[1004:1026]" "f[1035:1040]" "f[1054]" "f[1090]" "f[1104]" "f[1140]" "f[1154]" "f[1190]" "f[1204]" "f[1240]" "f[1254]" "f[1290]" "f[1304]" "f[1340]" "f[1354]" "f[1390]" "f[1404]" "f[1440]" "f[1454]" "f[1490]" "f[1504]" "f[1540]" "f[1554]" "f[1590]" "f[1604]" "f[1640]" "f[1654]" "f[1690]" "f[1704]" "f[1740]" "f[1754]" "f[1790]" "f[1804]" "f[1840]" "f[1854]" "f[1890]" "f[1904]" "f[1940]" "f[1954]" "f[1990]" "f[2004]" "f[2040]" "f[2054]" "f[2090]" "f[2104]" "f[2140]" "f[2154]" "f[2190]" "f[2204]" "f[2240]" "f[2254]" "f[2290]" "f[2304]" "f[2340]" "f[2354:2390]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.9999962 11.277159 -9.6000099 ;
	setAttr ".rs" 1903826532;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -25.199997425079346 11.277158737182617 -26.400017738342285 ;
	setAttr ".cbx" -type "double3" 19.200004935264587 11.277158737182617 7.1999971568584442 ;
createNode polyTweak -n "polyTweak11";
	setAttr ".uopa" yes;
	setAttr -s 238 ".tk";
	setAttr ".tk[7106:7271]" -type "float3"  0 5.026951313 0 0 5.026951313 0 0 5.026951313
		 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0
		 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0
		 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313
		 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0
		 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0
		 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313
		 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0
		 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0
		 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313
		 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0
		 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0
		 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313
		 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0
		 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0
		 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313
		 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0
		 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0
		 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313
		 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0
		 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0
		 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313
		 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0
		 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0
		 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313
		 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0
		 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0
		 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313
		 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0
		 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0
		 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313
		 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0;
	setAttr ".tk[7272:7343]" 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313
		 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0
		 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0
		 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313
		 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0
		 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0
		 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313
		 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0
		 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0
		 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313
		 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0
		 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0
		 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313
		 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0 0 5.026951313 0;
createNode polyExtrudeFace -n "polyExtrudeFace13";
	setAttr ".ics" -type "componentList" 55 "f[1004:1026]" "f[1035:1040]" "f[1054]" "f[1090]" "f[1104]" "f[1140]" "f[1154]" "f[1190]" "f[1204]" "f[1240]" "f[1254]" "f[1290]" "f[1304]" "f[1340]" "f[1354]" "f[1390]" "f[1404]" "f[1440]" "f[1454]" "f[1490]" "f[1504]" "f[1540]" "f[1554]" "f[1590]" "f[1604]" "f[1640]" "f[1654]" "f[1690]" "f[1704]" "f[1740]" "f[1754]" "f[1790]" "f[1804]" "f[1840]" "f[1854]" "f[1890]" "f[1904]" "f[1940]" "f[1954]" "f[1990]" "f[2004]" "f[2040]" "f[2054]" "f[2090]" "f[2104]" "f[2140]" "f[2154]" "f[2190]" "f[2204]" "f[2240]" "f[2254]" "f[2290]" "f[2304]" "f[2340]" "f[2354:2390]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.9999962 12.652542 -9.6000099 ;
	setAttr ".rs" 631907581;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -25.199997425079346 12.652542114257812 -26.400017738342285 ;
	setAttr ".cbx" -type "double3" 19.200004935264587 12.652542114257812 7.1999971568584442 ;
createNode polyTweak -n "polyTweak12";
	setAttr ".uopa" yes;
	setAttr -s 238 ".tk";
	setAttr ".tk[7344:7509]" -type "float3"  0 5.50153399 0 0 5.50153399 0 0 5.50153399
		 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399
		 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399
		 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399
		 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399
		 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399
		 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399
		 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399
		 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399
		 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399
		 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399
		 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399
		 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399
		 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399
		 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399
		 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399
		 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399
		 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399
		 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399
		 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399
		 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399
		 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399
		 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399
		 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399
		 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399
		 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399
		 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399
		 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399
		 0 0 5.50153399 0;
	setAttr ".tk[7510:7581]" 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399
		 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399
		 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399
		 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399
		 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399
		 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399
		 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399
		 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399
		 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399
		 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399
		 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399
		 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399 0 0 5.50153399
		 0 0 5.50153399 0 0 5.50153399 0;
createNode polyTweak -n "polyTweak13";
	setAttr ".uopa" yes;
	setAttr -s 257 ".tk";
	setAttr ".tk[7582]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7583]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7584]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7585]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7586]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7587]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7588]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7589]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7590]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7591]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7592]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7593]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7594]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7595]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7596]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7597]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7598]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7599]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7600]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7601]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7602]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7603]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7604]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7605]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7606]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7607]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7608]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7609]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7610]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7611]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7612]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7613]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7614]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7615]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7616]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7617]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7618]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7619]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7620]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7621]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7622]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7623]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7624]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7625]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7626]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7627]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7628]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7629]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7630]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7631]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7632]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7633]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7634]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7635]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7636]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7637]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7638]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7639]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7640]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7641]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7642]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7643]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7644]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7645]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7646]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7647]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7648]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7649]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7650]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7651]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7652]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7653]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7654]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7655]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7656]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7657]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7658]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7659]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7660]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7661]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7662]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7663]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7664]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7665]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7666]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7667]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7668]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7669]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7670]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7671]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7672]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7673]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7674]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7675]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7676]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7677]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7678]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7679]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7680]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7681]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7682]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7683]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7684]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7685]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7686]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7687]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7688]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7689]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7690]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7691]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7692]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7693]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7694]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7695]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7696]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7697]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7698]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7699]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7700]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7701]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7702]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7703]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7704]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7705]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7706]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7707]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7708]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7709]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7710]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7711]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7712]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7713]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7714]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7715]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7716]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7717]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7718]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7719]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7720]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7721]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7722]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7723]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7724]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7725]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7726]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7727]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7728]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7729]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7730]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7731]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7732]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7733]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7734]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7735]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7736]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7737]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7738]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7739]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7740]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7741]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7742]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7743]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7744]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7745]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7746]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7747]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7748]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7749]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7750]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7751]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7752]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7753]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7754]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7755]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7756]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7757]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7758]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7759]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7760]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7761]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7762]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7763]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7764]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7765]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7766]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7767]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7768]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7769]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7770]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7771]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7772]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7773]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7774]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7775]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7776]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7777]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7778]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7779]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7780]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7781]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7782]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7783]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7784]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7785]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7786]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7787]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7788]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7789]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7790]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7791]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7792]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7793]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7794]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7795]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7796]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7797]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7798]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7799]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7800]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7801]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7802]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7803]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7804]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7805]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7806]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7807]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7808]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7809]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7810]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7811]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7812]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7813]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7814]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7815]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7816]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7817]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7818]" -type "float3" 0 6.7088585 0 ;
	setAttr ".tk[7819]" -type "float3" 0 6.7088585 0 ;
createNode deleteComponent -n "deleteComponent1";
	setAttr ".dc" -type "componentList" 26 "f[6450]" "f[6454]" "f[6458]" "f[6462]" "f[6466]" "f[6470]" "f[6474]" "f[6478]" "f[6482]" "f[6486]" "f[6490]" "f[6494]" "f[6498]" "f[6502]" "f[6506]" "f[6510]" "f[6514]" "f[6518]" "f[6522]" "f[6526]" "f[6530]" "f[6534]" "f[6538]" "f[6542]" "f[6546]" "f[6550]";
createNode deleteComponent -n "deleteComponent2";
	setAttr ".dc" -type "componentList" 26 "f[6452]" "f[6455]" "f[6458]" "f[6461]" "f[6464]" "f[6467]" "f[6470]" "f[6473]" "f[6476]" "f[6479]" "f[6482]" "f[6485]" "f[6488]" "f[6491]" "f[6494]" "f[6497]" "f[6500]" "f[6503]" "f[6506]" "f[6509]" "f[6512]" "f[6515]" "f[6518]" "f[6521]" "f[6524]" "f[6527]";
createNode deleteComponent -n "deleteComponent3";
	setAttr ".dc" -type "componentList" 5 "f[6438]" "f[6441]" "f[6443]" "f[6445]" "f[6447]";
createNode deleteComponent -n "deleteComponent4";
	setAttr ".dc" -type "componentList" 22 "f[6393]" "f[6395]" "f[6397]" "f[6399]" "f[6401]" "f[6403]" "f[6405]" "f[6407]" "f[6409]" "f[6411]" "f[6413]" "f[6415]" "f[6417]" "f[6419]" "f[6421]" "f[6423]" "f[6425]" "f[6427]" "f[6429]" "f[6431]" "f[6433]" "f[6436]";
createNode polyExtrudeFace -n "polyExtrudeFace14";
	setAttr ".ics" -type "componentList" 35 "f[6477]" "f[6479]" "f[6481]" "f[6483]" "f[6485]" "f[6487]" "f[6489]" "f[6491]" "f[6493]" "f[6495]" "f[6497]" "f[6499]" "f[6501]" "f[6503]" "f[6505]" "f[6507]" "f[6509]" "f[6511]" "f[6513]" "f[6515]" "f[6517]" "f[6519]" "f[6521]" "f[6523]" "f[6525]" "f[6527]" "f[6529]" "f[6531]" "f[6533]" "f[6535]" "f[6537]" "f[6539]" "f[6541]" "f[6543]" "f[6545]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.9999962 6.5133924 -25.20002 ;
	setAttr ".rs" 1843963117;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -23.999996781349182 5.7416982650756836 -25.200020670890808 ;
	setAttr ".cbx" -type "double3" 18.000004291534424 7.2850866317749023 -25.200020670890808 ;
createNode polyExtrudeFace -n "polyExtrudeFace15";
	setAttr ".ics" -type "componentList" 35 "f[6477]" "f[6479]" "f[6481]" "f[6483]" "f[6485]" "f[6487]" "f[6489]" "f[6491]" "f[6493]" "f[6495]" "f[6497]" "f[6499]" "f[6501]" "f[6503]" "f[6505]" "f[6507]" "f[6509]" "f[6511]" "f[6513]" "f[6515]" "f[6517]" "f[6519]" "f[6521]" "f[6523]" "f[6525]" "f[6527]" "f[6529]" "f[6531]" "f[6533]" "f[6535]" "f[6537]" "f[6539]" "f[6541]" "f[6543]" "f[6545]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.9999962 6.5133924 -23.888899 ;
	setAttr ".rs" 1347008155;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -23.999996781349182 5.7416982650756836 -23.888897895812988 ;
	setAttr ".cbx" -type "double3" 18.000004291534424 7.2850866317749023 -23.888897895812988 ;
createNode polyTweak -n "polyTweak14";
	setAttr ".uopa" yes;
	setAttr -s 83 ".tk";
	setAttr ".tk[7820]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7821]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7822]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7823]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7824]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7825]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7826]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7827]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7828]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7829]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7830]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7831]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7832]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7833]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7834]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7835]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7836]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7837]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7838]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7839]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7840]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7841]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7842]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7843]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7844]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7845]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7846]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7847]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7848]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7849]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7850]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7851]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7852]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7853]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7854]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7855]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7856]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7857]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7858]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7859]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7860]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7861]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7862]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7863]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7864]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7865]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7866]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7867]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7868]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7869]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7870]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7871]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7872]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7873]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7874]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7875]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7876]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7877]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7878]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7879]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7880]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7881]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7882]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7883]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7884]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7885]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7886]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7887]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7888]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7889]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7890]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
	setAttr ".tk[7891]" -type "float3" -9.3132257e-10 1.1920929e-07 0.021852039 ;
createNode polyExtrudeFace -n "polyExtrudeFace16";
	setAttr ".ics" -type "componentList" 35 "f[6477]" "f[6479]" "f[6481]" "f[6483]" "f[6485]" "f[6487]" "f[6489]" "f[6491]" "f[6493]" "f[6495]" "f[6497]" "f[6499]" "f[6501]" "f[6503]" "f[6505]" "f[6507]" "f[6509]" "f[6511]" "f[6513]" "f[6515]" "f[6517]" "f[6519]" "f[6521]" "f[6523]" "f[6525]" "f[6527]" "f[6529]" "f[6531]" "f[6533]" "f[6535]" "f[6537]" "f[6539]" "f[6541]" "f[6543]" "f[6545]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.9999962 6.5133924 -22.73135 ;
	setAttr ".rs" 1963416123;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -23.999996781349182 5.7416982650756836 -22.731349468231201 ;
	setAttr ".cbx" -type "double3" 18.000004291534424 7.2850866317749023 -22.731349468231201 ;
createNode polyTweak -n "polyTweak15";
	setAttr ".uopa" yes;
	setAttr -s 72 ".tk[7892:7963]" -type "float3"  0 0 0.019292481 0 0 0.019292481
		 0 0 0.019292481 0 0 0.019292481 0 0 0.019292481 0 0 0.019292481 0 0 0.019292481 0
		 0 0.019292481 0 0 0.019292481 0 0 0.019292481 0 0 0.019292481 0 0 0.019292481 0 0
		 0.019292481 0 0 0.019292481 0 0 0.019292481 0 0 0.019292481 0 0 0.019292481 0 0 0.019292481
		 0 0 0.019292481 0 0 0.019292481 0 0 0.019292481 0 0 0.019292481 0 0 0.019292481 0
		 0 0.019292481 0 0 0.019292481 0 0 0.019292481 0 0 0.019292481 0 0 0.019292481 0 0
		 0.019292481 0 0 0.019292481 0 0 0.019292481 0 0 0.019292481 0 0 0.019292481 0 0 0.019292481
		 0 0 0.019292481 0 0 0.019292481 0 0 0.019292481 0 0 0.019292481 0 0 0.019292481 0
		 0 0.019292481 0 0 0.019292481 0 0 0.019292481 0 0 0.019292481 0 0 0.019292481 0 0
		 0.019292481 0 0 0.019292481 0 0 0.019292481 0 0 0.019292481 0 0 0.019292481 0 0 0.019292481
		 0 0 0.019292481 0 0 0.019292481 0 0 0.019292481 0 0 0.019292481 0 0 0.019292481 0
		 0 0.019292481 0 0 0.019292481 0 0 0.019292481 0 0 0.019292481 0 0 0.019292481 0 0
		 0.019292481 0 0 0.019292481 0 0 0.019292481 0 0 0.019292481 0 0 0.019292481 0 0 0.019292481
		 0 0 0.019292481 0 0 0.019292481 0 0 0.019292481 0 0 0.019292481 0 0 0.019292481 0
		 0 0.019292481;
createNode polyExtrudeFace -n "polyExtrudeFace17";
	setAttr ".ics" -type "componentList" 35 "f[6477]" "f[6479]" "f[6481]" "f[6483]" "f[6485]" "f[6487]" "f[6489]" "f[6491]" "f[6493]" "f[6495]" "f[6497]" "f[6499]" "f[6501]" "f[6503]" "f[6505]" "f[6507]" "f[6509]" "f[6511]" "f[6513]" "f[6515]" "f[6517]" "f[6519]" "f[6521]" "f[6523]" "f[6525]" "f[6527]" "f[6529]" "f[6531]" "f[6533]" "f[6535]" "f[6537]" "f[6539]" "f[6541]" "f[6543]" "f[6545]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.9999962 6.5133924 -21.567722 ;
	setAttr ".rs" 1462634094;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -23.999996781349182 5.7416982650756836 -21.567723155021667 ;
	setAttr ".cbx" -type "double3" 18.000004291534424 7.2850866317749023 -21.567723155021667 ;
createNode polyTweak -n "polyTweak16";
	setAttr ".uopa" yes;
	setAttr -s 72 ".tk[7964:8035]" -type "float3"  0 0 0.019393798 0 0 0.019393798
		 0 0 0.019393798 0 0 0.019393798 0 0 0.019393798 0 0 0.019393798 0 0 0.019393798 0
		 0 0.019393798 0 0 0.019393798 0 0 0.019393798 0 0 0.019393798 0 0 0.019393798 0 0
		 0.019393798 0 0 0.019393798 0 0 0.019393798 0 0 0.019393798 0 0 0.019393798 0 0 0.019393798
		 0 0 0.019393798 0 0 0.019393798 0 0 0.019393798 0 0 0.019393798 0 0 0.019393798 0
		 0 0.019393798 0 0 0.019393798 0 0 0.019393798 0 0 0.019393798 0 0 0.019393798 0 0
		 0.019393798 0 0 0.019393798 0 0 0.019393798 0 0 0.019393798 0 0 0.019393798 0 0 0.019393798
		 0 0 0.019393798 0 0 0.019393798 0 0 0.019393798 0 0 0.019393798 0 0 0.019393798 0
		 0 0.019393798 0 0 0.019393798 0 0 0.019393798 0 0 0.019393798 0 0 0.019393798 0 0
		 0.019393798 0 0 0.019393798 0 0 0.019393798 0 0 0.019393798 0 0 0.019393798 0 0 0.019393798
		 0 0 0.019393798 0 0 0.019393798 0 0 0.019393798 0 0 0.019393798 0 0 0.019393798 0
		 0 0.019393798 0 0 0.019393798 0 0 0.019393798 0 0 0.019393798 0 0 0.019393798 0 0
		 0.019393798 0 0 0.019393798 0 0 0.019393798 0 0 0.019393798 0 0 0.019393798 0 0 0.019393798
		 0 0 0.019393798 0 0 0.019393798 0 0 0.019393798 0 0 0.019393798 0 0 0.019393798 0
		 0 0.019393798;
createNode polyExtrudeFace -n "polyExtrudeFace18";
	setAttr ".ics" -type "componentList" 35 "f[6477]" "f[6479]" "f[6481]" "f[6483]" "f[6485]" "f[6487]" "f[6489]" "f[6491]" "f[6493]" "f[6495]" "f[6497]" "f[6499]" "f[6501]" "f[6503]" "f[6505]" "f[6507]" "f[6509]" "f[6511]" "f[6513]" "f[6515]" "f[6517]" "f[6519]" "f[6521]" "f[6523]" "f[6525]" "f[6527]" "f[6529]" "f[6531]" "f[6533]" "f[6535]" "f[6537]" "f[6539]" "f[6541]" "f[6543]" "f[6545]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.9999962 6.5133924 -20.405764 ;
	setAttr ".rs" 771434424;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -23.999996781349182 5.7416982650756836 -20.405763387680054 ;
	setAttr ".cbx" -type "double3" 18.000004291534424 7.2850866317749023 -20.405763387680054 ;
createNode polyTweak -n "polyTweak17";
	setAttr ".uopa" yes;
	setAttr -s 72 ".tk[8036:8107]" -type "float3"  0 0 0.019365985 0 0 0.019365985
		 0 0 0.019365985 0 0 0.019365985 0 0 0.019365985 0 0 0.019365985 0 0 0.019365985 0
		 0 0.019365985 0 0 0.019365985 0 0 0.019365985 0 0 0.019365985 0 0 0.019365985 0 0
		 0.019365985 0 0 0.019365985 0 0 0.019365985 0 0 0.019365985 0 0 0.019365985 0 0 0.019365985
		 0 0 0.019365985 0 0 0.019365985 0 0 0.019365985 0 0 0.019365985 0 0 0.019365985 0
		 0 0.019365985 0 0 0.019365985 0 0 0.019365985 0 0 0.019365985 0 0 0.019365985 0 0
		 0.019365985 0 0 0.019365985 0 0 0.019365985 0 0 0.019365985 0 0 0.019365985 0 0 0.019365985
		 0 0 0.019365985 0 0 0.019365985 0 0 0.019365985 0 0 0.019365985 0 0 0.019365985 0
		 0 0.019365985 0 0 0.019365985 0 0 0.019365985 0 0 0.019365985 0 0 0.019365985 0 0
		 0.019365985 0 0 0.019365985 0 0 0.019365985 0 0 0.019365985 0 0 0.019365985 0 0 0.019365985
		 0 0 0.019365985 0 0 0.019365985 0 0 0.019365985 0 0 0.019365985 0 0 0.019365985 0
		 0 0.019365985 0 0 0.019365985 0 0 0.019365985 0 0 0.019365985 0 0 0.019365985 0 0
		 0.019365985 0 0 0.019365985 0 0 0.019365985 0 0 0.019365985 0 0 0.019365985 0 0 0.019365985
		 0 0 0.019365985 0 0 0.019365985 0 0 0.019365985 0 0 0.019365985 0 0 0.019365985 0
		 0 0.019365985;
createNode polyExtrudeFace -n "polyExtrudeFace19";
	setAttr ".ics" -type "componentList" 35 "f[6477]" "f[6479]" "f[6481]" "f[6483]" "f[6485]" "f[6487]" "f[6489]" "f[6491]" "f[6493]" "f[6495]" "f[6497]" "f[6499]" "f[6501]" "f[6503]" "f[6505]" "f[6507]" "f[6509]" "f[6511]" "f[6513]" "f[6515]" "f[6517]" "f[6519]" "f[6521]" "f[6523]" "f[6525]" "f[6527]" "f[6529]" "f[6531]" "f[6533]" "f[6535]" "f[6537]" "f[6539]" "f[6541]" "f[6543]" "f[6545]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.9999962 6.5133924 -19.175076 ;
	setAttr ".rs" 1662569398;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -23.999996781349182 5.7416982650756836 -19.175074696540833 ;
	setAttr ".cbx" -type "double3" 18.000004291534424 7.2850866317749023 -19.175074696540833 ;
createNode polyTweak -n "polyTweak18";
	setAttr ".uopa" yes;
	setAttr -s 72 ".tk[8108:8179]" -type "float3"  0 0 0.020511508 0 0 0.020511508
		 0 0 0.020511508 0 0 0.020511508 0 0 0.020511508 0 0 0.020511508 0 0 0.020511508 0
		 0 0.020511508 0 0 0.020511508 0 0 0.020511508 0 0 0.020511508 0 0 0.020511508 0 0
		 0.020511508 0 0 0.020511508 0 0 0.020511508 0 0 0.020511508 0 0 0.020511508 0 0 0.020511508
		 0 0 0.020511508 0 0 0.020511508 0 0 0.020511508 0 0 0.020511508 0 0 0.020511508 0
		 0 0.020511508 0 0 0.020511508 0 0 0.020511508 0 0 0.020511508 0 0 0.020511508 0 0
		 0.020511508 0 0 0.020511508 0 0 0.020511508 0 0 0.020511508 0 0 0.020511508 0 0 0.020511508
		 0 0 0.020511508 0 0 0.020511508 0 0 0.020511508 0 0 0.020511508 0 0 0.020511508 0
		 0 0.020511508 0 0 0.020511508 0 0 0.020511508 0 0 0.020511508 0 0 0.020511508 0 0
		 0.020511508 0 0 0.020511508 0 0 0.020511508 0 0 0.020511508 0 0 0.020511508 0 0 0.020511508
		 0 0 0.020511508 0 0 0.020511508 0 0 0.020511508 0 0 0.020511508 0 0 0.020511508 0
		 0 0.020511508 0 0 0.020511508 0 0 0.020511508 0 0 0.020511508 0 0 0.020511508 0 0
		 0.020511508 0 0 0.020511508 0 0 0.020511508 0 0 0.020511508 0 0 0.020511508 0 0 0.020511508
		 0 0 0.020511508 0 0 0.020511508 0 0 0.020511508 0 0 0.020511508 0 0 0.020511508 0
		 0 0.020511508;
createNode polyExtrudeFace -n "polyExtrudeFace20";
	setAttr ".ics" -type "componentList" 35 "f[6477]" "f[6479]" "f[6481]" "f[6483]" "f[6485]" "f[6487]" "f[6489]" "f[6491]" "f[6493]" "f[6495]" "f[6497]" "f[6499]" "f[6501]" "f[6503]" "f[6505]" "f[6507]" "f[6509]" "f[6511]" "f[6513]" "f[6515]" "f[6517]" "f[6519]" "f[6521]" "f[6523]" "f[6525]" "f[6527]" "f[6529]" "f[6531]" "f[6533]" "f[6535]" "f[6537]" "f[6539]" "f[6541]" "f[6543]" "f[6545]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.9999962 6.5133924 -17.902069 ;
	setAttr ".rs" 1350233828;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -23.999996781349182 5.7416982650756836 -17.902069687843323 ;
	setAttr ".cbx" -type "double3" 18.000004291534424 7.2850866317749023 -17.902069687843323 ;
createNode polyTweak -n "polyTweak19";
	setAttr ".uopa" yes;
	setAttr -s 72 ".tk[8180:8251]" -type "float3"  0 0 0.021216772 0 0 0.021216772
		 0 0 0.021216772 0 0 0.021216772 0 0 0.021216772 0 0 0.021216772 0 0 0.021216772 0
		 0 0.021216772 0 0 0.021216772 0 0 0.021216772 0 0 0.021216772 0 0 0.021216772 0 0
		 0.021216772 0 0 0.021216772 0 0 0.021216772 0 0 0.021216772 0 0 0.021216772 0 0 0.021216772
		 0 0 0.021216772 0 0 0.021216772 0 0 0.021216772 0 0 0.021216772 0 0 0.021216772 0
		 0 0.021216772 0 0 0.021216772 0 0 0.021216772 0 0 0.021216772 0 0 0.021216772 0 0
		 0.021216772 0 0 0.021216772 0 0 0.021216772 0 0 0.021216772 0 0 0.021216772 0 0 0.021216772
		 0 0 0.021216772 0 0 0.021216772 0 0 0.021216772 0 0 0.021216772 0 0 0.021216772 0
		 0 0.021216772 0 0 0.021216772 0 0 0.021216772 0 0 0.021216772 0 0 0.021216772 0 0
		 0.021216772 0 0 0.021216772 0 0 0.021216772 0 0 0.021216772 0 0 0.021216772 0 0 0.021216772
		 0 0 0.021216772 0 0 0.021216772 0 0 0.021216772 0 0 0.021216772 0 0 0.021216772 0
		 0 0.021216772 0 0 0.021216772 0 0 0.021216772 0 0 0.021216772 0 0 0.021216772 0 0
		 0.021216772 0 0 0.021216772 0 0 0.021216772 0 0 0.021216772 0 0 0.021216772 0 0 0.021216772
		 0 0 0.021216772 0 0 0.021216772 0 0 0.021216772 0 0 0.021216772 0 0 0.021216772 0
		 0 0.021216772;
createNode polyExtrudeFace -n "polyExtrudeFace21";
	setAttr ".ics" -type "componentList" 35 "f[6477]" "f[6479]" "f[6481]" "f[6483]" "f[6485]" "f[6487]" "f[6489]" "f[6491]" "f[6493]" "f[6495]" "f[6497]" "f[6499]" "f[6501]" "f[6503]" "f[6505]" "f[6507]" "f[6509]" "f[6511]" "f[6513]" "f[6515]" "f[6517]" "f[6519]" "f[6521]" "f[6523]" "f[6525]" "f[6527]" "f[6529]" "f[6531]" "f[6533]" "f[6535]" "f[6537]" "f[6539]" "f[6541]" "f[6543]" "f[6545]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.9999962 6.5133924 -16.697973 ;
	setAttr ".rs" 340323432;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -23.999996781349182 5.7416982650756836 -16.697972416877747 ;
	setAttr ".cbx" -type "double3" 18.000004291534424 7.2850866317749023 -16.697972416877747 ;
createNode polyTweak -n "polyTweak20";
	setAttr ".uopa" yes;
	setAttr -s 72 ".tk[8252:8323]" -type "float3"  0 0 0.02006829 0 0 0.02006829
		 0 0 0.02006829 0 0 0.02006829 0 0 0.02006829 0 0 0.02006829 0 0 0.02006829 0 0 0.02006829
		 0 0 0.02006829 0 0 0.02006829 0 0 0.02006829 0 0 0.02006829 0 0 0.02006829 0 0 0.02006829
		 0 0 0.02006829 0 0 0.02006829 0 0 0.02006829 0 0 0.02006829 0 0 0.02006829 0 0 0.02006829
		 0 0 0.02006829 0 0 0.02006829 0 0 0.02006829 0 0 0.02006829 0 0 0.02006829 0 0 0.02006829
		 0 0 0.02006829 0 0 0.02006829 0 0 0.02006829 0 0 0.02006829 0 0 0.02006829 0 0 0.02006829
		 0 0 0.02006829 0 0 0.02006829 0 0 0.02006829 0 0 0.02006829 0 0 0.02006829 0 0 0.02006829
		 0 0 0.02006829 0 0 0.02006829 0 0 0.02006829 0 0 0.02006829 0 0 0.02006829 0 0 0.02006829
		 0 0 0.02006829 0 0 0.02006829 0 0 0.02006829 0 0 0.02006829 0 0 0.02006829 0 0 0.02006829
		 0 0 0.02006829 0 0 0.02006829 0 0 0.02006829 0 0 0.02006829 0 0 0.02006829 0 0 0.02006829
		 0 0 0.02006829 0 0 0.02006829 0 0 0.02006829 0 0 0.02006829 0 0 0.02006829 0 0 0.02006829
		 0 0 0.02006829 0 0 0.02006829 0 0 0.02006829 0 0 0.02006829 0 0 0.02006829 0 0 0.02006829
		 0 0 0.02006829 0 0 0.02006829 0 0 0.02006829 0 0 0.02006829;
createNode polyExtrudeFace -n "polyExtrudeFace22";
	setAttr ".ics" -type "componentList" 35 "f[6477]" "f[6479]" "f[6481]" "f[6483]" "f[6485]" "f[6487]" "f[6489]" "f[6491]" "f[6493]" "f[6495]" "f[6497]" "f[6499]" "f[6501]" "f[6503]" "f[6505]" "f[6507]" "f[6509]" "f[6511]" "f[6513]" "f[6515]" "f[6517]" "f[6519]" "f[6521]" "f[6523]" "f[6525]" "f[6527]" "f[6529]" "f[6531]" "f[6533]" "f[6535]" "f[6537]" "f[6539]" "f[6541]" "f[6543]" "f[6545]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.9999962 6.5133924 -15.63547 ;
	setAttr ".rs" 508374718;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -23.999996781349182 5.7416982650756836 -15.635470747947693 ;
	setAttr ".cbx" -type "double3" 18.000004291534424 7.2850866317749023 -15.635470747947693 ;
createNode polyTweak -n "polyTweak21";
	setAttr ".uopa" yes;
	setAttr -s 72 ".tk[8324:8395]" -type "float3"  0 0 0.017708397 0 0 0.017708397
		 0 0 0.017708397 0 0 0.017708397 0 0 0.017708397 0 0 0.017708397 0 0 0.017708397 0
		 0 0.017708397 0 0 0.017708397 0 0 0.017708397 0 0 0.017708397 0 0 0.017708397 0 0
		 0.017708397 0 0 0.017708397 0 0 0.017708397 0 0 0.017708397 0 0 0.017708397 0 0 0.017708397
		 0 0 0.017708397 0 0 0.017708397 0 0 0.017708397 0 0 0.017708397 0 0 0.017708397 0
		 0 0.017708397 0 0 0.017708397 0 0 0.017708397 0 0 0.017708397 0 0 0.017708397 0 0
		 0.017708397 0 0 0.017708397 0 0 0.017708397 0 0 0.017708397 0 0 0.017708397 0 0 0.017708397
		 0 0 0.017708397 0 0 0.017708397 0 0 0.017708397 0 0 0.017708397 0 0 0.017708397 0
		 0 0.017708397 0 0 0.017708397 0 0 0.017708397 0 0 0.017708397 0 0 0.017708397 0 0
		 0.017708397 0 0 0.017708397 0 0 0.017708397 0 0 0.017708397 0 0 0.017708397 0 0 0.017708397
		 0 0 0.017708397 0 0 0.017708397 0 0 0.017708397 0 0 0.017708397 0 0 0.017708397 0
		 0 0.017708397 0 0 0.017708397 0 0 0.017708397 0 0 0.017708397 0 0 0.017708397 0 0
		 0.017708397 0 0 0.017708397 0 0 0.017708397 0 0 0.017708397 0 0 0.017708397 0 0 0.017708397
		 0 0 0.017708397 0 0 0.017708397 0 0 0.017708397 0 0 0.017708397 0 0 0.017708397 0
		 0 0.017708397;
createNode polyExtrudeFace -n "polyExtrudeFace23";
	setAttr ".ics" -type "componentList" 35 "f[6477]" "f[6479]" "f[6481]" "f[6483]" "f[6485]" "f[6487]" "f[6489]" "f[6491]" "f[6493]" "f[6495]" "f[6497]" "f[6499]" "f[6501]" "f[6503]" "f[6505]" "f[6507]" "f[6509]" "f[6511]" "f[6513]" "f[6515]" "f[6517]" "f[6519]" "f[6521]" "f[6523]" "f[6525]" "f[6527]" "f[6529]" "f[6531]" "f[6533]" "f[6535]" "f[6537]" "f[6539]" "f[6541]" "f[6543]" "f[6545]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.9999962 6.5133924 -14.383618 ;
	setAttr ".rs" 2086786545;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -23.999996781349182 5.7416982650756836 -14.383618533611298 ;
	setAttr ".cbx" -type "double3" 18.000004291534424 7.2850866317749023 -14.383618533611298 ;
createNode polyTweak -n "polyTweak22";
	setAttr ".uopa" yes;
	setAttr -s 72 ".tk[8396:8467]" -type "float3"  0 0 0.0208642 0 0 0.0208642
		 0 0 0.0208642 0 0 0.0208642 0 0 0.0208642 0 0 0.0208642 0 0 0.0208642 0 0 0.0208642
		 0 0 0.0208642 0 0 0.0208642 0 0 0.0208642 0 0 0.0208642 0 0 0.0208642 0 0 0.0208642
		 0 0 0.0208642 0 0 0.0208642 0 0 0.0208642 0 0 0.0208642 0 0 0.0208642 0 0 0.0208642
		 0 0 0.0208642 0 0 0.0208642 0 0 0.0208642 0 0 0.0208642 0 0 0.0208642 0 0 0.0208642
		 0 0 0.0208642 0 0 0.0208642 0 0 0.0208642 0 0 0.0208642 0 0 0.0208642 0 0 0.0208642
		 0 0 0.0208642 0 0 0.0208642 0 0 0.0208642 0 0 0.0208642 0 0 0.0208642 0 0 0.0208642
		 0 0 0.0208642 0 0 0.0208642 0 0 0.0208642 0 0 0.0208642 0 0 0.0208642 0 0 0.0208642
		 0 0 0.0208642 0 0 0.0208642 0 0 0.0208642 0 0 0.0208642 0 0 0.0208642 0 0 0.0208642
		 0 0 0.0208642 0 0 0.0208642 0 0 0.0208642 0 0 0.0208642 0 0 0.0208642 0 0 0.0208642
		 0 0 0.0208642 0 0 0.0208642 0 0 0.0208642 0 0 0.0208642 0 0 0.0208642 0 0 0.0208642
		 0 0 0.0208642 0 0 0.0208642 0 0 0.0208642 0 0 0.0208642 0 0 0.0208642 0 0 0.0208642
		 0 0 0.0208642 0 0 0.0208642 0 0 0.0208642 0 0 0.0208642;
createNode polyExtrudeFace -n "polyExtrudeFace24";
	setAttr ".ics" -type "componentList" 35 "f[6477]" "f[6479]" "f[6481]" "f[6483]" "f[6485]" "f[6487]" "f[6489]" "f[6491]" "f[6493]" "f[6495]" "f[6497]" "f[6499]" "f[6501]" "f[6503]" "f[6505]" "f[6507]" "f[6509]" "f[6511]" "f[6513]" "f[6515]" "f[6517]" "f[6519]" "f[6521]" "f[6523]" "f[6525]" "f[6527]" "f[6529]" "f[6531]" "f[6533]" "f[6535]" "f[6537]" "f[6539]" "f[6541]" "f[6543]" "f[6545]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.9999962 6.5133924 -13.23667 ;
	setAttr ".rs" 1502350083;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -23.999996781349182 5.7416982650756836 -13.236669301986694 ;
	setAttr ".cbx" -type "double3" 18.000004291534424 7.2850866317749023 -13.236669301986694 ;
createNode polyTweak -n "polyTweak23";
	setAttr ".uopa" yes;
	setAttr -s 72 ".tk[8468:8539]" -type "float3"  0 0 0.019115843 0 0 0.019115843
		 0 0 0.019115843 0 0 0.019115843 0 0 0.019115843 0 0 0.019115843 0 0 0.019115843 0
		 0 0.019115843 0 0 0.019115843 0 0 0.019115843 0 0 0.019115843 0 0 0.019115843 0 0
		 0.019115843 0 0 0.019115843 0 0 0.019115843 0 0 0.019115843 0 0 0.019115843 0 0 0.019115843
		 0 0 0.019115843 0 0 0.019115843 0 0 0.019115843 0 0 0.019115843 0 0 0.019115843 0
		 0 0.019115843 0 0 0.019115843 0 0 0.019115843 0 0 0.019115843 0 0 0.019115843 0 0
		 0.019115843 0 0 0.019115843 0 0 0.019115843 0 0 0.019115843 0 0 0.019115843 0 0 0.019115843
		 0 0 0.019115843 0 0 0.019115843 0 0 0.019115843 0 0 0.019115843 0 0 0.019115843 0
		 0 0.019115843 0 0 0.019115843 0 0 0.019115843 0 0 0.019115843 0 0 0.019115843 0 0
		 0.019115843 0 0 0.019115843 0 0 0.019115843 0 0 0.019115843 0 0 0.019115843 0 0 0.019115843
		 0 0 0.019115843 0 0 0.019115843 0 0 0.019115843 0 0 0.019115843 0 0 0.019115843 0
		 0 0.019115843 0 0 0.019115843 0 0 0.019115843 0 0 0.019115843 0 0 0.019115843 0 0
		 0.019115843 0 0 0.019115843 0 0 0.019115843 0 0 0.019115843 0 0 0.019115843 0 0 0.019115843
		 0 0 0.019115843 0 0 0.019115843 0 0 0.019115843 0 0 0.019115843 0 0 0.019115843 0
		 0 0.019115843;
createNode polyExtrudeFace -n "polyExtrudeFace25";
	setAttr ".ics" -type "componentList" 35 "f[6477]" "f[6479]" "f[6481]" "f[6483]" "f[6485]" "f[6487]" "f[6489]" "f[6491]" "f[6493]" "f[6495]" "f[6497]" "f[6499]" "f[6501]" "f[6503]" "f[6505]" "f[6507]" "f[6509]" "f[6511]" "f[6513]" "f[6515]" "f[6517]" "f[6519]" "f[6521]" "f[6523]" "f[6525]" "f[6527]" "f[6529]" "f[6531]" "f[6533]" "f[6535]" "f[6537]" "f[6539]" "f[6541]" "f[6543]" "f[6545]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.9999962 6.5133924 -12.014054 ;
	setAttr ".rs" 440173118;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -23.999996781349182 5.7416982650756836 -12.0140540599823 ;
	setAttr ".cbx" -type "double3" 18.000004291534424 7.2850866317749023 -12.0140540599823 ;
createNode polyTweak -n "polyTweak24";
	setAttr ".uopa" yes;
	setAttr -s 72 ".tk[8540:8611]" -type "float3"  0 0 0.020376932 0 0 0.020376932
		 0 0 0.020376932 0 0 0.020376932 0 0 0.020376932 0 0 0.020376932 0 0 0.020376932 0
		 0 0.020376932 0 0 0.020376932 0 0 0.020376932 0 0 0.020376932 0 0 0.020376932 0 0
		 0.020376932 0 0 0.020376932 0 0 0.020376932 0 0 0.020376932 0 0 0.020376932 0 0 0.020376932
		 0 0 0.020376932 0 0 0.020376932 0 0 0.020376932 0 0 0.020376932 0 0 0.020376932 0
		 0 0.020376932 0 0 0.020376932 0 0 0.020376932 0 0 0.020376932 0 0 0.020376932 0 0
		 0.020376932 0 0 0.020376932 0 0 0.020376932 0 0 0.020376932 0 0 0.020376932 0 0 0.020376932
		 0 0 0.020376932 0 0 0.020376932 0 0 0.020376932 0 0 0.020376932 0 0 0.020376932 0
		 0 0.020376932 0 0 0.020376932 0 0 0.020376932 0 0 0.020376932 0 0 0.020376932 0 0
		 0.020376932 0 0 0.020376932 0 0 0.020376932 0 0 0.020376932 0 0 0.020376932 0 0 0.020376932
		 0 0 0.020376932 0 0 0.020376932 0 0 0.020376932 0 0 0.020376932 0 0 0.020376932 0
		 0 0.020376932 0 0 0.020376932 0 0 0.020376932 0 0 0.020376932 0 0 0.020376932 0 0
		 0.020376932 0 0 0.020376932 0 0 0.020376932 0 0 0.020376932 0 0 0.020376932 0 0 0.020376932
		 0 0 0.020376932 0 0 0.020376932 0 0 0.020376932 0 0 0.020376932 0 0 0.020376932 0
		 0 0.020376932;
createNode polyExtrudeFace -n "polyExtrudeFace26";
	setAttr ".ics" -type "componentList" 35 "f[6477]" "f[6479]" "f[6481]" "f[6483]" "f[6485]" "f[6487]" "f[6489]" "f[6491]" "f[6493]" "f[6495]" "f[6497]" "f[6499]" "f[6501]" "f[6503]" "f[6505]" "f[6507]" "f[6509]" "f[6511]" "f[6513]" "f[6515]" "f[6517]" "f[6519]" "f[6521]" "f[6523]" "f[6525]" "f[6527]" "f[6529]" "f[6531]" "f[6533]" "f[6535]" "f[6537]" "f[6539]" "f[6541]" "f[6543]" "f[6545]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.9999962 6.5133924 -10.787106 ;
	setAttr ".rs" 1518023835;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -23.999996781349182 5.7416982650756836 -10.78710526227951 ;
	setAttr ".cbx" -type "double3" 18.000004291534424 7.2850866317749023 -10.78710526227951 ;
createNode polyTweak -n "polyTweak25";
	setAttr ".uopa" yes;
	setAttr -s 72 ".tk[8612:8683]" -type "float3"  0 0 0.020449158 0 0 0.020449158
		 0 0 0.020449158 0 0 0.020449158 0 0 0.020449158 0 0 0.020449158 0 0 0.020449158 0
		 0 0.020449158 0 0 0.020449158 0 0 0.020449158 0 0 0.020449158 0 0 0.020449158 0 0
		 0.020449158 0 0 0.020449158 0 0 0.020449158 0 0 0.020449158 0 0 0.020449158 0 0 0.020449158
		 0 0 0.020449158 0 0 0.020449158 0 0 0.020449158 0 0 0.020449158 0 0 0.020449158 0
		 0 0.020449158 0 0 0.020449158 0 0 0.020449158 0 0 0.020449158 0 0 0.020449158 0 0
		 0.020449158 0 0 0.020449158 0 0 0.020449158 0 0 0.020449158 0 0 0.020449158 0 0 0.020449158
		 0 0 0.020449158 0 0 0.020449158 0 0 0.020449158 0 0 0.020449158 0 0 0.020449158 0
		 0 0.020449158 0 0 0.020449158 0 0 0.020449158 0 0 0.020449158 0 0 0.020449158 0 0
		 0.020449158 0 0 0.020449158 0 0 0.020449158 0 0 0.020449158 0 0 0.020449158 0 0 0.020449158
		 0 0 0.020449158 0 0 0.020449158 0 0 0.020449158 0 0 0.020449158 0 0 0.020449158 0
		 0 0.020449158 0 0 0.020449158 0 0 0.020449158 0 0 0.020449158 0 0 0.020449158 0 0
		 0.020449158 0 0 0.020449158 0 0 0.020449158 0 0 0.020449158 0 0 0.020449158 0 0 0.020449158
		 0 0 0.020449158 0 0 0.020449158 0 0 0.020449158 0 0 0.020449158 0 0 0.020449158 0
		 0 0.020449158;
createNode polyExtrudeFace -n "polyExtrudeFace27";
	setAttr ".ics" -type "componentList" 35 "f[6477]" "f[6479]" "f[6481]" "f[6483]" "f[6485]" "f[6487]" "f[6489]" "f[6491]" "f[6493]" "f[6495]" "f[6497]" "f[6499]" "f[6501]" "f[6503]" "f[6505]" "f[6507]" "f[6509]" "f[6511]" "f[6513]" "f[6515]" "f[6517]" "f[6519]" "f[6521]" "f[6523]" "f[6525]" "f[6527]" "f[6529]" "f[6531]" "f[6533]" "f[6535]" "f[6537]" "f[6539]" "f[6541]" "f[6543]" "f[6545]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.9999962 6.5133924 -9.6330452 ;
	setAttr ".rs" 1867213204;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -23.999996781349182 5.7416982650756836 -9.633045494556427 ;
	setAttr ".cbx" -type "double3" 18.000004291534424 7.2850866317749023 -9.633045494556427 ;
createNode polyTweak -n "polyTweak26";
	setAttr ".uopa" yes;
	setAttr -s 72 ".tk[8684:8755]" -type "float3"  0 0 0.019234344 0 0 0.019234344
		 0 0 0.019234344 0 0 0.019234344 0 0 0.019234344 0 0 0.019234344 0 0 0.019234344 0
		 0 0.019234344 0 0 0.019234344 0 0 0.019234344 0 0 0.019234344 0 0 0.019234344 0 0
		 0.019234344 0 0 0.019234344 0 0 0.019234344 0 0 0.019234344 0 0 0.019234344 0 0 0.019234344
		 0 0 0.019234344 0 0 0.019234344 0 0 0.019234344 0 0 0.019234344 0 0 0.019234344 0
		 0 0.019234344 0 0 0.019234344 0 0 0.019234344 0 0 0.019234344 0 0 0.019234344 0 0
		 0.019234344 0 0 0.019234344 0 0 0.019234344 0 0 0.019234344 0 0 0.019234344 0 0 0.019234344
		 0 0 0.019234344 0 0 0.019234344 0 0 0.019234344 0 0 0.019234344 0 0 0.019234344 0
		 0 0.019234344 0 0 0.019234344 0 0 0.019234344 0 0 0.019234344 0 0 0.019234344 0 0
		 0.019234344 0 0 0.019234344 0 0 0.019234344 0 0 0.019234344 0 0 0.019234344 0 0 0.019234344
		 0 0 0.019234344 0 0 0.019234344 0 0 0.019234344 0 0 0.019234344 0 0 0.019234344 0
		 0 0.019234344 0 0 0.019234344 0 0 0.019234344 0 0 0.019234344 0 0 0.019234344 0 0
		 0.019234344 0 0 0.019234344 0 0 0.019234344 0 0 0.019234344 0 0 0.019234344 0 0 0.019234344
		 0 0 0.019234344 0 0 0.019234344 0 0 0.019234344 0 0 0.019234344 0 0 0.019234344 0
		 0 0.019234344;
createNode polyExtrudeFace -n "polyExtrudeFace28";
	setAttr ".ics" -type "componentList" 35 "f[6477]" "f[6479]" "f[6481]" "f[6483]" "f[6485]" "f[6487]" "f[6489]" "f[6491]" "f[6493]" "f[6495]" "f[6497]" "f[6499]" "f[6501]" "f[6503]" "f[6505]" "f[6507]" "f[6509]" "f[6511]" "f[6513]" "f[6515]" "f[6517]" "f[6519]" "f[6521]" "f[6523]" "f[6525]" "f[6527]" "f[6529]" "f[6531]" "f[6533]" "f[6535]" "f[6537]" "f[6539]" "f[6541]" "f[6543]" "f[6545]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.9999962 6.5133924 -8.2854643 ;
	setAttr ".rs" 1645997568;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -23.999996781349182 5.7416982650756836 -8.285464346408844 ;
	setAttr ".cbx" -type "double3" 18.000004291534424 7.2850866317749023 -8.285464346408844 ;
createNode polyTweak -n "polyTweak27";
	setAttr ".uopa" yes;
	setAttr -s 72 ".tk[8756:8827]" -type "float3"  0 0 0.02245968 0 0 0.02245968
		 0 0 0.02245968 0 0 0.02245968 0 0 0.02245968 0 0 0.02245968 0 0 0.02245968 0 0 0.02245968
		 0 0 0.02245968 0 0 0.02245968 0 0 0.02245968 0 0 0.02245968 0 0 0.02245968 0 0 0.02245968
		 0 0 0.02245968 0 0 0.02245968 0 0 0.02245968 0 0 0.02245968 0 0 0.02245968 0 0 0.02245968
		 0 0 0.02245968 0 0 0.02245968 0 0 0.02245968 0 0 0.02245968 0 0 0.02245968 0 0 0.02245968
		 0 0 0.02245968 0 0 0.02245968 0 0 0.02245968 0 0 0.02245968 0 0 0.02245968 0 0 0.02245968
		 0 0 0.02245968 0 0 0.02245968 0 0 0.02245968 0 0 0.02245968 0 0 0.02245968 0 0 0.02245968
		 0 0 0.02245968 0 0 0.02245968 0 0 0.02245968 0 0 0.02245968 0 0 0.02245968 0 0 0.02245968
		 0 0 0.02245968 0 0 0.02245968 0 0 0.02245968 0 0 0.02245968 0 0 0.02245968 0 0 0.02245968
		 0 0 0.02245968 0 0 0.02245968 0 0 0.02245968 0 0 0.02245968 0 0 0.02245968 0 0 0.02245968
		 0 0 0.02245968 0 0 0.02245968 0 0 0.02245968 0 0 0.02245968 0 0 0.02245968 0 0 0.02245968
		 0 0 0.02245968 0 0 0.02245968 0 0 0.02245968 0 0 0.02245968 0 0 0.02245968 0 0 0.02245968
		 0 0 0.02245968 0 0 0.02245968 0 0 0.02245968 0 0 0.02245968;
createNode polyExtrudeFace -n "polyExtrudeFace29";
	setAttr ".ics" -type "componentList" 35 "f[6477]" "f[6479]" "f[6481]" "f[6483]" "f[6485]" "f[6487]" "f[6489]" "f[6491]" "f[6493]" "f[6495]" "f[6497]" "f[6499]" "f[6501]" "f[6503]" "f[6505]" "f[6507]" "f[6509]" "f[6511]" "f[6513]" "f[6515]" "f[6517]" "f[6519]" "f[6521]" "f[6523]" "f[6525]" "f[6527]" "f[6529]" "f[6531]" "f[6533]" "f[6535]" "f[6537]" "f[6539]" "f[6541]" "f[6543]" "f[6545]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.9999962 6.5133924 -7.1248403 ;
	setAttr ".rs" 1972076178;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -23.999996781349182 5.7416982650756836 -7.1248403191566467 ;
	setAttr ".cbx" -type "double3" 18.000004291534424 7.2850866317749023 -7.1248403191566467 ;
createNode polyTweak -n "polyTweak28";
	setAttr ".uopa" yes;
	setAttr -s 72 ".tk[8828:8899]" -type "float3"  0 0 0.019343738 0 0 0.019343738
		 0 0 0.019343738 0 0 0.019343738 0 0 0.019343738 0 0 0.019343738 0 0 0.019343738 0
		 0 0.019343738 0 0 0.019343738 0 0 0.019343738 0 0 0.019343738 0 0 0.019343738 0 0
		 0.019343738 0 0 0.019343738 0 0 0.019343738 0 0 0.019343738 0 0 0.019343738 0 0 0.019343738
		 0 0 0.019343738 0 0 0.019343738 0 0 0.019343738 0 0 0.019343738 0 0 0.019343738 0
		 0 0.019343738 0 0 0.019343738 0 0 0.019343738 0 0 0.019343738 0 0 0.019343738 0 0
		 0.019343738 0 0 0.019343738 0 0 0.019343738 0 0 0.019343738 0 0 0.019343738 0 0 0.019343738
		 0 0 0.019343738 0 0 0.019343738 0 0 0.019343738 0 0 0.019343738 0 0 0.019343738 0
		 0 0.019343738 0 0 0.019343738 0 0 0.019343738 0 0 0.019343738 0 0 0.019343738 0 0
		 0.019343738 0 0 0.019343738 0 0 0.019343738 0 0 0.019343738 0 0 0.019343738 0 0 0.019343738
		 0 0 0.019343738 0 0 0.019343738 0 0 0.019343738 0 0 0.019343738 0 0 0.019343738 0
		 0 0.019343738 0 0 0.019343738 0 0 0.019343738 0 0 0.019343738 0 0 0.019343738 0 0
		 0.019343738 0 0 0.019343738 0 0 0.019343738 0 0 0.019343738 0 0 0.019343738 0 0 0.019343738
		 0 0 0.019343738 0 0 0.019343738 0 0 0.019343738 0 0 0.019343738 0 0 0.019343738 0
		 0 0.019343738;
createNode polyExtrudeFace -n "polyExtrudeFace30";
	setAttr ".ics" -type "componentList" 35 "f[6477]" "f[6479]" "f[6481]" "f[6483]" "f[6485]" "f[6487]" "f[6489]" "f[6491]" "f[6493]" "f[6495]" "f[6497]" "f[6499]" "f[6501]" "f[6503]" "f[6505]" "f[6507]" "f[6509]" "f[6511]" "f[6513]" "f[6515]" "f[6517]" "f[6519]" "f[6521]" "f[6523]" "f[6525]" "f[6527]" "f[6529]" "f[6531]" "f[6533]" "f[6535]" "f[6537]" "f[6539]" "f[6541]" "f[6543]" "f[6545]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.9999962 6.5133924 -5.8853698 ;
	setAttr ".rs" 950933713;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -23.999996781349182 5.7416982650756836 -5.8853696286678314 ;
	setAttr ".cbx" -type "double3" 18.000004291534424 7.2850866317749023 -5.8853696286678314 ;
createNode polyTweak -n "polyTweak29";
	setAttr ".uopa" yes;
	setAttr -s 72 ".tk[8900:8971]" -type "float3"  0 0 0.020657852 0 0 0.020657852
		 0 0 0.020657852 0 0 0.020657852 0 0 0.020657852 0 0 0.020657852 0 0 0.020657852 0
		 0 0.020657852 0 0 0.020657852 0 0 0.020657852 0 0 0.020657852 0 0 0.020657852 0 0
		 0.020657852 0 0 0.020657852 0 0 0.020657852 0 0 0.020657852 0 0 0.020657852 0 0 0.020657852
		 0 0 0.020657852 0 0 0.020657852 0 0 0.020657852 0 0 0.020657852 0 0 0.020657852 0
		 0 0.020657852 0 0 0.020657852 0 0 0.020657852 0 0 0.020657852 0 0 0.020657852 0 0
		 0.020657852 0 0 0.020657852 0 0 0.020657852 0 0 0.020657852 0 0 0.020657852 0 0 0.020657852
		 0 0 0.020657852 0 0 0.020657852 0 0 0.020657852 0 0 0.020657852 0 0 0.020657852 0
		 0 0.020657852 0 0 0.020657852 0 0 0.020657852 0 0 0.020657852 0 0 0.020657852 0 0
		 0.020657852 0 0 0.020657852 0 0 0.020657852 0 0 0.020657852 0 0 0.020657852 0 0 0.020657852
		 0 0 0.020657852 0 0 0.020657852 0 0 0.020657852 0 0 0.020657852 0 0 0.020657852 0
		 0 0.020657852 0 0 0.020657852 0 0 0.020657852 0 0 0.020657852 0 0 0.020657852 0 0
		 0.020657852 0 0 0.020657852 0 0 0.020657852 0 0 0.020657852 0 0 0.020657852 0 0 0.020657852
		 0 0 0.020657852 0 0 0.020657852 0 0 0.020657852 0 0 0.020657852 0 0 0.020657852 0
		 0 0.020657852;
createNode polyExtrudeFace -n "polyExtrudeFace31";
	setAttr ".ics" -type "componentList" 35 "f[6477]" "f[6479]" "f[6481]" "f[6483]" "f[6485]" "f[6487]" "f[6489]" "f[6491]" "f[6493]" "f[6495]" "f[6497]" "f[6499]" "f[6501]" "f[6503]" "f[6505]" "f[6507]" "f[6509]" "f[6511]" "f[6513]" "f[6515]" "f[6517]" "f[6519]" "f[6521]" "f[6523]" "f[6525]" "f[6527]" "f[6529]" "f[6531]" "f[6533]" "f[6535]" "f[6537]" "f[6539]" "f[6541]" "f[6543]" "f[6545]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.9999962 6.5133924 -4.7930346 ;
	setAttr ".rs" 1350512804;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -23.999996781349182 5.7416982650756836 -4.7930346429347992 ;
	setAttr ".cbx" -type "double3" 18.000004291534424 7.2850866317749023 -4.7930346429347992 ;
createNode polyTweak -n "polyTweak30";
	setAttr ".uopa" yes;
	setAttr -s 72 ".tk[8972:9043]" -type "float3"  0 0 0.018205591 0 0 0.018205591
		 0 0 0.018205591 0 0 0.018205591 0 0 0.018205591 0 0 0.018205591 0 0 0.018205591 0
		 0 0.018205591 0 0 0.018205591 0 0 0.018205591 0 0 0.018205591 0 0 0.018205591 0 0
		 0.018205591 0 0 0.018205591 0 0 0.018205591 0 0 0.018205591 0 0 0.018205591 0 0 0.018205591
		 0 0 0.018205591 0 0 0.018205591 0 0 0.018205591 0 0 0.018205591 0 0 0.018205591 0
		 0 0.018205591 0 0 0.018205591 0 0 0.018205591 0 0 0.018205591 0 0 0.018205591 0 0
		 0.018205591 0 0 0.018205591 0 0 0.018205591 0 0 0.018205591 0 0 0.018205591 0 0 0.018205591
		 0 0 0.018205591 0 0 0.018205591 0 0 0.018205591 0 0 0.018205591 0 0 0.018205591 0
		 0 0.018205591 0 0 0.018205591 0 0 0.018205591 0 0 0.018205591 0 0 0.018205591 0 0
		 0.018205591 0 0 0.018205591 0 0 0.018205591 0 0 0.018205591 0 0 0.018205591 0 0 0.018205591
		 0 0 0.018205591 0 0 0.018205591 0 0 0.018205591 0 0 0.018205591 0 0 0.018205591 0
		 0 0.018205591 0 0 0.018205591 0 0 0.018205591 0 0 0.018205591 0 0 0.018205591 0 0
		 0.018205591 0 0 0.018205591 0 0 0.018205591 0 0 0.018205591 0 0 0.018205591 0 0 0.018205591
		 0 0 0.018205591 0 0 0.018205591 0 0 0.018205591 0 0 0.018205591 0 0 0.018205591 0
		 0 0.018205591;
createNode polyExtrudeFace -n "polyExtrudeFace32";
	setAttr ".ics" -type "componentList" 35 "f[6477]" "f[6479]" "f[6481]" "f[6483]" "f[6485]" "f[6487]" "f[6489]" "f[6491]" "f[6493]" "f[6495]" "f[6497]" "f[6499]" "f[6501]" "f[6503]" "f[6505]" "f[6507]" "f[6509]" "f[6511]" "f[6513]" "f[6515]" "f[6517]" "f[6519]" "f[6521]" "f[6523]" "f[6525]" "f[6527]" "f[6529]" "f[6531]" "f[6533]" "f[6535]" "f[6537]" "f[6539]" "f[6541]" "f[6543]" "f[6545]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.9999962 6.5133924 -3.587507 ;
	setAttr ".rs" 1894982004;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -23.999996781349182 5.7416982650756836 -3.5875070840120316 ;
	setAttr ".cbx" -type "double3" 18.000004291534424 7.2850866317749023 -3.5875070840120316 ;
createNode polyTweak -n "polyTweak31";
	setAttr ".uopa" yes;
	setAttr -s 72 ".tk[9044:9115]" -type "float3"  0 0 0.020092126 0 0 0.020092126
		 0 0 0.020092126 0 0 0.020092126 0 0 0.020092126 0 0 0.020092126 0 0 0.020092126 0
		 0 0.020092126 0 0 0.020092126 0 0 0.020092126 0 0 0.020092126 0 0 0.020092126 0 0
		 0.020092126 0 0 0.020092126 0 0 0.020092126 0 0 0.020092126 0 0 0.020092126 0 0 0.020092126
		 0 0 0.020092126 0 0 0.020092126 0 0 0.020092126 0 0 0.020092126 0 0 0.020092126 0
		 0 0.020092126 0 0 0.020092126 0 0 0.020092126 0 0 0.020092126 0 0 0.020092126 0 0
		 0.020092126 0 0 0.020092126 0 0 0.020092126 0 0 0.020092126 0 0 0.020092126 0 0 0.020092126
		 0 0 0.020092126 0 0 0.020092126 0 0 0.020092126 0 0 0.020092126 0 0 0.020092126 0
		 0 0.020092126 0 0 0.020092126 0 0 0.020092126 0 0 0.020092126 0 0 0.020092126 0 0
		 0.020092126 0 0 0.020092126 0 0 0.020092126 0 0 0.020092126 0 0 0.020092126 0 0 0.020092126
		 0 0 0.020092126 0 0 0.020092126 0 0 0.020092126 0 0 0.020092126 0 0 0.020092126 0
		 0 0.020092126 0 0 0.020092126 0 0 0.020092126 0 0 0.020092126 0 0 0.020092126 0 0
		 0.020092126 0 0 0.020092126 0 0 0.020092126 0 0 0.020092126 0 0 0.020092126 0 0 0.020092126
		 0 0 0.020092126 0 0 0.020092126 0 0 0.020092126 0 0 0.020092126 0 0 0.020092126 0
		 0 0.020092126;
createNode polyExtrudeFace -n "polyExtrudeFace33";
	setAttr ".ics" -type "componentList" 35 "f[6477]" "f[6479]" "f[6481]" "f[6483]" "f[6485]" "f[6487]" "f[6489]" "f[6491]" "f[6493]" "f[6495]" "f[6497]" "f[6499]" "f[6501]" "f[6503]" "f[6505]" "f[6507]" "f[6509]" "f[6511]" "f[6513]" "f[6515]" "f[6517]" "f[6519]" "f[6521]" "f[6523]" "f[6525]" "f[6527]" "f[6529]" "f[6531]" "f[6533]" "f[6535]" "f[6537]" "f[6539]" "f[6541]" "f[6543]" "f[6545]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.9999962 6.5133924 -2.3387878 ;
	setAttr ".rs" 204936560;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -23.999996781349182 5.7416982650756836 -2.3387876898050308 ;
	setAttr ".cbx" -type "double3" 18.000004291534424 7.2850866317749023 -2.3387876898050308 ;
createNode polyTweak -n "polyTweak32";
	setAttr ".uopa" yes;
	setAttr -s 72 ".tk[9116:9187]" -type "float3"  0 0 0.020811994 0 0 0.020811994
		 0 0 0.020811994 0 0 0.020811994 0 0 0.020811994 0 0 0.020811994 0 0 0.020811994 0
		 0 0.020811994 0 0 0.020811994 0 0 0.020811994 0 0 0.020811994 0 0 0.020811994 0 0
		 0.020811994 0 0 0.020811994 0 0 0.020811994 0 0 0.020811994 0 0 0.020811994 0 0 0.020811994
		 0 0 0.020811994 0 0 0.020811994 0 0 0.020811994 0 0 0.020811994 0 0 0.020811994 0
		 0 0.020811994 0 0 0.020811994 0 0 0.020811994 0 0 0.020811994 0 0 0.020811994 0 0
		 0.020811994 0 0 0.020811994 0 0 0.020811994 0 0 0.020811994 0 0 0.020811994 0 0 0.020811994
		 0 0 0.020811994 0 0 0.020811994 0 0 0.020811994 0 0 0.020811994 0 0 0.020811994 0
		 0 0.020811994 0 0 0.020811994 0 0 0.020811994 0 0 0.020811994 0 0 0.020811994 0 0
		 0.020811994 0 0 0.020811994 0 0 0.020811994 0 0 0.020811994 0 0 0.020811994 0 0 0.020811994
		 0 0 0.020811994 0 0 0.020811994 0 0 0.020811994 0 0 0.020811994 0 0 0.020811994 0
		 0 0.020811994 0 0 0.020811994 0 0 0.020811994 0 0 0.020811994 0 0 0.020811994 0 0
		 0.020811994 0 0 0.020811994 0 0 0.020811994 0 0 0.020811994 0 0 0.020811994 0 0 0.020811994
		 0 0 0.020811994 0 0 0.020811994 0 0 0.020811994 0 0 0.020811994 0 0 0.020811994 0
		 0 0.020811994;
createNode polyExtrudeFace -n "polyExtrudeFace34";
	setAttr ".ics" -type "componentList" 35 "f[6477]" "f[6479]" "f[6481]" "f[6483]" "f[6485]" "f[6487]" "f[6489]" "f[6491]" "f[6493]" "f[6495]" "f[6497]" "f[6499]" "f[6501]" "f[6503]" "f[6505]" "f[6507]" "f[6509]" "f[6511]" "f[6513]" "f[6515]" "f[6517]" "f[6519]" "f[6521]" "f[6523]" "f[6525]" "f[6527]" "f[6529]" "f[6531]" "f[6533]" "f[6535]" "f[6537]" "f[6539]" "f[6541]" "f[6543]" "f[6545]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.9999962 6.5133924 -1.1474696 ;
	setAttr ".rs" 342952657;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -23.999996781349182 5.7416982650756836 -1.1474696919322014 ;
	setAttr ".cbx" -type "double3" 18.000004291534424 7.2850866317749023 -1.1474696919322014 ;
createNode polyTweak -n "polyTweak33";
	setAttr ".uopa" yes;
	setAttr -s 73 ".tk";
	setAttr ".tk[9188]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9189]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9190]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9191]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9192]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9193]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9194]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9195]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9196]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9197]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9198]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9199]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9200]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9201]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9202]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9203]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9204]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9205]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9206]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9207]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9208]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9209]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9210]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9211]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9212]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9213]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9214]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9215]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9216]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9217]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9218]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9219]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9220]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9221]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9222]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9223]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9224]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9225]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9226]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9227]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9228]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9229]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9230]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9231]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9232]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9233]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9234]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9235]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9236]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9237]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9238]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9239]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9240]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9241]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9242]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9243]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9244]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9245]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9246]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9247]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9248]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9249]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9250]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9251]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9252]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9253]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9254]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9255]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9256]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9257]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9258]" -type "float3" 0 0 0.019855304 ;
	setAttr ".tk[9259]" -type "float3" 0 0 0.019855304 ;
createNode polyExtrudeFace -n "polyExtrudeFace35";
	setAttr ".ics" -type "componentList" 35 "f[6477]" "f[6479]" "f[6481]" "f[6483]" "f[6485]" "f[6487]" "f[6489]" "f[6491]" "f[6493]" "f[6495]" "f[6497]" "f[6499]" "f[6501]" "f[6503]" "f[6505]" "f[6507]" "f[6509]" "f[6511]" "f[6513]" "f[6515]" "f[6517]" "f[6519]" "f[6521]" "f[6523]" "f[6525]" "f[6527]" "f[6529]" "f[6531]" "f[6533]" "f[6535]" "f[6537]" "f[6539]" "f[6541]" "f[6543]" "f[6545]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.9999962 6.5133924 0.02935309 ;
	setAttr ".rs" 722954942;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -23.999996781349182 5.7416982650756836 0.02935308963060379 ;
	setAttr ".cbx" -type "double3" 18.000004291534424 7.2850866317749023 0.02935308963060379 ;
createNode polyTweak -n "polyTweak34";
	setAttr ".uopa" yes;
	setAttr -s 72 ".tk[9260:9331]" -type "float3"  0 0 0.019613713 0 0 0.019613713
		 0 0 0.019613713 0 0 0.019613713 0 0 0.019613713 0 0 0.019613713 0 0 0.019613713 0
		 0 0.019613713 0 0 0.019613713 0 0 0.019613713 0 0 0.019613713 0 0 0.019613713 0 0
		 0.019613713 0 0 0.019613713 0 0 0.019613713 0 0 0.019613713 0 0 0.019613713 0 0 0.019613713
		 0 0 0.019613713 0 0 0.019613713 0 0 0.019613713 0 0 0.019613713 0 0 0.019613713 0
		 0 0.019613713 0 0 0.019613713 0 0 0.019613713 0 0 0.019613713 0 0 0.019613713 0 0
		 0.019613713 0 0 0.019613713 0 0 0.019613713 0 0 0.019613713 0 0 0.019613713 0 0 0.019613713
		 0 0 0.019613713 0 0 0.019613713 0 0 0.019613713 0 0 0.019613713 0 0 0.019613713 0
		 0 0.019613713 0 0 0.019613713 0 0 0.019613713 0 0 0.019613713 0 0 0.019613713 0 0
		 0.019613713 0 0 0.019613713 0 0 0.019613713 0 0 0.019613713 0 0 0.019613713 0 0 0.019613713
		 0 0 0.019613713 0 0 0.019613713 0 0 0.019613713 0 0 0.019613713 0 0 0.019613713 0
		 0 0.019613713 0 0 0.019613713 0 0 0.019613713 0 0 0.019613713 0 0 0.019613713 0 0
		 0.019613713 0 0 0.019613713 0 0 0.019613713 0 0 0.019613713 0 0 0.019613713 0 0 0.019613713
		 0 0 0.019613713 0 0 0.019613713 0 0 0.019613713 0 0 0.019613713 0 0 0.019613713 0
		 0 0.019613713;
createNode polyExtrudeFace -n "polyExtrudeFace36";
	setAttr ".ics" -type "componentList" 35 "f[6477]" "f[6479]" "f[6481]" "f[6483]" "f[6485]" "f[6487]" "f[6489]" "f[6491]" "f[6493]" "f[6495]" "f[6497]" "f[6499]" "f[6501]" "f[6503]" "f[6505]" "f[6507]" "f[6509]" "f[6511]" "f[6513]" "f[6515]" "f[6517]" "f[6519]" "f[6521]" "f[6523]" "f[6525]" "f[6527]" "f[6529]" "f[6531]" "f[6533]" "f[6535]" "f[6537]" "f[6539]" "f[6541]" "f[6543]" "f[6545]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.9999962 6.5133924 1.2140794 ;
	setAttr ".rs" 804704309;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -23.999996781349182 5.7416982650756836 1.2140793353319168 ;
	setAttr ".cbx" -type "double3" 18.000004291534424 7.2850866317749023 1.2140793353319168 ;
createNode polyTweak -n "polyTweak35";
	setAttr ".uopa" yes;
	setAttr -s 72 ".tk[9332:9403]" -type "float3"  0 0 0.019745437 0 0 0.019745437
		 0 0 0.019745437 0 0 0.019745437 0 0 0.019745437 0 0 0.019745437 0 0 0.019745437 0
		 0 0.019745437 0 0 0.019745437 0 0 0.019745437 0 0 0.019745437 0 0 0.019745437 0 0
		 0.019745437 0 0 0.019745437 0 0 0.019745437 0 0 0.019745437 0 0 0.019745437 0 0 0.019745437
		 0 0 0.019745437 0 0 0.019745437 0 0 0.019745437 0 0 0.019745437 0 0 0.019745437 0
		 0 0.019745437 0 0 0.019745437 0 0 0.019745437 0 0 0.019745437 0 0 0.019745437 0 0
		 0.019745437 0 0 0.019745437 0 0 0.019745437 0 0 0.019745437 0 0 0.019745437 0 0 0.019745437
		 0 0 0.019745437 0 0 0.019745437 0 0 0.019745437 0 0 0.019745437 0 0 0.019745437 0
		 0 0.019745437 0 0 0.019745437 0 0 0.019745437 0 0 0.019745437 0 0 0.019745437 0 0
		 0.019745437 0 0 0.019745437 0 0 0.019745437 0 0 0.019745437 0 0 0.019745437 0 0 0.019745437
		 0 0 0.019745437 0 0 0.019745437 0 0 0.019745437 0 0 0.019745437 0 0 0.019745437 0
		 0 0.019745437 0 0 0.019745437 0 0 0.019745437 0 0 0.019745437 0 0 0.019745437 0 0
		 0.019745437 0 0 0.019745437 0 0 0.019745437 0 0 0.019745437 0 0 0.019745437 0 0 0.019745437
		 0 0 0.019745437 0 0 0.019745437 0 0 0.019745437 0 0 0.019745437 0 0 0.019745437 0
		 0 0.019745437;
createNode polyExtrudeFace -n "polyExtrudeFace37";
	setAttr ".ics" -type "componentList" 35 "f[6477]" "f[6479]" "f[6481]" "f[6483]" "f[6485]" "f[6487]" "f[6489]" "f[6491]" "f[6493]" "f[6495]" "f[6497]" "f[6499]" "f[6501]" "f[6503]" "f[6505]" "f[6507]" "f[6509]" "f[6511]" "f[6513]" "f[6515]" "f[6517]" "f[6519]" "f[6521]" "f[6523]" "f[6525]" "f[6527]" "f[6529]" "f[6531]" "f[6533]" "f[6535]" "f[6537]" "f[6539]" "f[6541]" "f[6543]" "f[6545]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.9999962 6.5133924 2.3999898 ;
	setAttr ".rs" 1440264495;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -23.999996781349182 5.7416982650756836 2.3999898880720139 ;
	setAttr ".cbx" -type "double3" 18.000004291534424 7.2850866317749023 2.3999898880720139 ;
createNode polyTweak -n "polyTweak36";
	setAttr ".uopa" yes;
	setAttr -s 72 ".tk[9404:9475]" -type "float3"  0 0 0.019765174 0 0 0.019765174
		 0 0 0.019765174 0 0 0.019765174 0 0 0.019765174 0 0 0.019765174 0 0 0.019765174 0
		 0 0.019765174 0 0 0.019765174 0 0 0.019765174 0 0 0.019765174 0 0 0.019765174 0 0
		 0.019765174 0 0 0.019765174 0 0 0.019765174 0 0 0.019765174 0 0 0.019765174 0 0 0.019765174
		 0 0 0.019765174 0 0 0.019765174 0 0 0.019765174 0 0 0.019765174 0 0 0.019765174 0
		 0 0.019765174 0 0 0.019765174 0 0 0.019765174 0 0 0.019765174 0 0 0.019765174 0 0
		 0.019765174 0 0 0.019765174 0 0 0.019765174 0 0 0.019765174 0 0 0.019765174 0 0 0.019765174
		 0 0 0.019765174 0 0 0.019765174 0 0 0.019765174 0 0 0.019765174 0 0 0.019765174 0
		 0 0.019765174 0 0 0.019765174 0 0 0.019765174 0 0 0.019765174 0 0 0.019765174 0 0
		 0.019765174 0 0 0.019765174 0 0 0.019765174 0 0 0.019765174 0 0 0.019765174 0 0 0.019765174
		 0 0 0.019765174 0 0 0.019765174 0 0 0.019765174 0 0 0.019765174 0 0 0.019765174 0
		 0 0.019765174 0 0 0.019765174 0 0 0.019765174 0 0 0.019765174 0 0 0.019765174 0 0
		 0.019765174 0 0 0.019765174 0 0 0.019765174 0 0 0.019765174 0 0 0.019765174 0 0 0.019765174
		 0 0 0.019765174 0 0 0.019765174 0 0 0.019765174 0 0 0.019765174 0 0 0.019765174 0
		 0 0.019765174;
createNode polyExtrudeFace -n "polyExtrudeFace38";
	setAttr ".ics" -type "componentList" 35 "f[6477]" "f[6479]" "f[6481]" "f[6483]" "f[6485]" "f[6487]" "f[6489]" "f[6491]" "f[6493]" "f[6495]" "f[6497]" "f[6499]" "f[6501]" "f[6503]" "f[6505]" "f[6507]" "f[6509]" "f[6511]" "f[6513]" "f[6515]" "f[6517]" "f[6519]" "f[6521]" "f[6523]" "f[6525]" "f[6527]" "f[6529]" "f[6531]" "f[6533]" "f[6535]" "f[6537]" "f[6539]" "f[6541]" "f[6543]" "f[6545]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.9999962 6.5133924 3.5903137 ;
	setAttr ".rs" 1707694977;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -23.999996781349182 5.7416982650756836 3.5903137922286987 ;
	setAttr ".cbx" -type "double3" 18.000004291534424 7.2850866317749023 3.5903137922286987 ;
createNode polyTweak -n "polyTweak37";
	setAttr ".uopa" yes;
	setAttr -s 72 ".tk[9476:9547]" -type "float3"  0 0 0.01983873 0 0 0.01983873
		 0 0 0.01983873 0 0 0.01983873 0 0 0.01983873 0 0 0.01983873 0 0 0.01983873 0 0 0.01983873
		 0 0 0.01983873 0 0 0.01983873 0 0 0.01983873 0 0 0.01983873 0 0 0.01983873 0 0 0.01983873
		 0 0 0.01983873 0 0 0.01983873 0 0 0.01983873 0 0 0.01983873 0 0 0.01983873 0 0 0.01983873
		 0 0 0.01983873 0 0 0.01983873 0 0 0.01983873 0 0 0.01983873 0 0 0.01983873 0 0 0.01983873
		 0 0 0.01983873 0 0 0.01983873 0 0 0.01983873 0 0 0.01983873 0 0 0.01983873 0 0 0.01983873
		 0 0 0.01983873 0 0 0.01983873 0 0 0.01983873 0 0 0.01983873 0 0 0.01983873 0 0 0.01983873
		 0 0 0.01983873 0 0 0.01983873 0 0 0.01983873 0 0 0.01983873 0 0 0.01983873 0 0 0.01983873
		 0 0 0.01983873 0 0 0.01983873 0 0 0.01983873 0 0 0.01983873 0 0 0.01983873 0 0 0.01983873
		 0 0 0.01983873 0 0 0.01983873 0 0 0.01983873 0 0 0.01983873 0 0 0.01983873 0 0 0.01983873
		 0 0 0.01983873 0 0 0.01983873 0 0 0.01983873 0 0 0.01983873 0 0 0.01983873 0 0 0.01983873
		 0 0 0.01983873 0 0 0.01983873 0 0 0.01983873 0 0 0.01983873 0 0 0.01983873 0 0 0.01983873
		 0 0 0.01983873 0 0 0.01983873 0 0 0.01983873 0 0 0.01983873;
createNode polyExtrudeFace -n "polyExtrudeFace39";
	setAttr ".ics" -type "componentList" 35 "f[6477]" "f[6479]" "f[6481]" "f[6483]" "f[6485]" "f[6487]" "f[6489]" "f[6491]" "f[6493]" "f[6495]" "f[6497]" "f[6499]" "f[6501]" "f[6503]" "f[6505]" "f[6507]" "f[6509]" "f[6511]" "f[6513]" "f[6515]" "f[6517]" "f[6519]" "f[6521]" "f[6523]" "f[6525]" "f[6527]" "f[6529]" "f[6531]" "f[6533]" "f[6535]" "f[6537]" "f[6539]" "f[6541]" "f[6543]" "f[6545]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.9999962 6.5133924 4.8053985 ;
	setAttr ".rs" 665822663;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -23.999996781349182 5.7416982650756836 4.8053982853889465 ;
	setAttr ".cbx" -type "double3" 18.000004291534424 7.2850866317749023 4.8053982853889465 ;
createNode polyTweak -n "polyTweak38";
	setAttr ".uopa" yes;
	setAttr -s 72 ".tk[9548:9619]" -type "float3"  0 0 0.020251401 0 0 0.020251401
		 0 0 0.020251401 0 0 0.020251401 0 0 0.020251401 0 0 0.020251401 0 0 0.020251401 0
		 0 0.020251401 0 0 0.020251401 0 0 0.020251401 0 0 0.020251401 0 0 0.020251401 0 0
		 0.020251401 0 0 0.020251401 0 0 0.020251401 0 0 0.020251401 0 0 0.020251401 0 0 0.020251401
		 0 0 0.020251401 0 0 0.020251401 0 0 0.020251401 0 0 0.020251401 0 0 0.020251401 0
		 0 0.020251401 0 0 0.020251401 0 0 0.020251401 0 0 0.020251401 0 0 0.020251401 0 0
		 0.020251401 0 0 0.020251401 0 0 0.020251401 0 0 0.020251401 0 0 0.020251401 0 0 0.020251401
		 0 0 0.020251401 0 0 0.020251401 0 0 0.020251401 0 0 0.020251401 0 0 0.020251401 0
		 0 0.020251401 0 0 0.020251401 0 0 0.020251401 0 0 0.020251401 0 0 0.020251401 0 0
		 0.020251401 0 0 0.020251401 0 0 0.020251401 0 0 0.020251401 0 0 0.020251401 0 0 0.020251401
		 0 0 0.020251401 0 0 0.020251401 0 0 0.020251401 0 0 0.020251401 0 0 0.020251401 0
		 0 0.020251401 0 0 0.020251401 0 0 0.020251401 0 0 0.020251401 0 0 0.020251401 0 0
		 0.020251401 0 0 0.020251401 0 0 0.020251401 0 0 0.020251401 0 0 0.020251401 0 0 0.020251401
		 0 0 0.020251401 0 0 0.020251401 0 0 0.020251401 0 0 0.020251401 0 0 0.020251401 0
		 0 0.020251401;
createNode polyTweak -n "polyTweak39";
	setAttr ".uopa" yes;
	setAttr -s 73 ".tk";
	setAttr ".tk[9620]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9621]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9622]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9623]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9624]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9625]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9626]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9627]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9628]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9629]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9630]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9631]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9632]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9633]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9634]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9635]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9636]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9637]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9638]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9639]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9640]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9641]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9642]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9643]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9644]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9645]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9646]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9647]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9648]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9649]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9650]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9651]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9652]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9653]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9654]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9655]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9656]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9657]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9658]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9659]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9660]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9661]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9662]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9663]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9664]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9665]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9666]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9667]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9668]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9669]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9670]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9671]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9672]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9673]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9674]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9675]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9676]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9677]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9678]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9679]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9680]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9681]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9682]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9683]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9684]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9685]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9686]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9687]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9688]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9689]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9690]" -type "float3" 0 0 0.0041354829 ;
	setAttr ".tk[9691]" -type "float3" 0 0 0.0041354829 ;
createNode deleteComponent -n "deleteComponent5";
	setAttr ".dc" -type "componentList" 35 "f[6477]" "f[6479]" "f[6481]" "f[6483]" "f[6485]" "f[6487]" "f[6489]" "f[6491]" "f[6493]" "f[6495]" "f[6497]" "f[6499]" "f[6501]" "f[6503]" "f[6505]" "f[6507]" "f[6509]" "f[6511]" "f[6513]" "f[6515]" "f[6517]" "f[6519]" "f[6521]" "f[6523]" "f[6525]" "f[6527]" "f[6529]" "f[6531]" "f[6533]" "f[6535]" "f[6537]" "f[6539]" "f[6541]" "f[6543]" "f[6545]";
createNode polyTweak -n "polyTweak40";
	setAttr ".uopa" yes;
	setAttr -s 55 ".tk";
	setAttr ".tk[6554]" -type "float3" 0.011156816 0 0 ;
	setAttr ".tk[6560]" -type "float3" 0.011156816 0 0 ;
	setAttr ".tk[7822]" -type "float3" 0.011156816 0 0 ;
	setAttr ".tk[7823]" -type "float3" 0.011156816 0 0 ;
	setAttr ".tk[7894]" -type "float3" 0.011156816 0 0 ;
	setAttr ".tk[7895]" -type "float3" 0.011156816 0 0 ;
	setAttr ".tk[7966]" -type "float3" 0.011156816 0 0 ;
	setAttr ".tk[7967]" -type "float3" 0.011156816 0 0 ;
	setAttr ".tk[8038]" -type "float3" 0.011156816 0 0 ;
	setAttr ".tk[8039]" -type "float3" 0.011156816 0 0 ;
	setAttr ".tk[8110]" -type "float3" 0.011156816 0 0 ;
	setAttr ".tk[8111]" -type "float3" 0.011156816 0 0 ;
	setAttr ".tk[8182]" -type "float3" 0.011156816 0 0 ;
	setAttr ".tk[8183]" -type "float3" 0.011156816 0 0 ;
	setAttr ".tk[8254]" -type "float3" 0.011156816 0 0 ;
	setAttr ".tk[8255]" -type "float3" 0.011156816 0 0 ;
	setAttr ".tk[8326]" -type "float3" 0.011156816 0 0 ;
	setAttr ".tk[8327]" -type "float3" 0.011156816 0 0 ;
	setAttr ".tk[8398]" -type "float3" 0.011156816 0 0 ;
	setAttr ".tk[8399]" -type "float3" 0.011156816 0 0 ;
	setAttr ".tk[8470]" -type "float3" 0.011156816 0 0 ;
	setAttr ".tk[8471]" -type "float3" 0.011156816 0 0 ;
	setAttr ".tk[8542]" -type "float3" 0.011156816 0 0 ;
	setAttr ".tk[8543]" -type "float3" 0.011156816 0 0 ;
	setAttr ".tk[8614]" -type "float3" 0.011156816 0 0 ;
	setAttr ".tk[8615]" -type "float3" 0.011156816 0 0 ;
	setAttr ".tk[8686]" -type "float3" 0.011156816 0 0 ;
	setAttr ".tk[8687]" -type "float3" 0.011156816 0 0 ;
	setAttr ".tk[8758]" -type "float3" 0.011156816 0 0 ;
	setAttr ".tk[8759]" -type "float3" 0.011156816 0 0 ;
	setAttr ".tk[8830]" -type "float3" 0.011156816 0 0 ;
	setAttr ".tk[8831]" -type "float3" 0.011156816 0 0 ;
	setAttr ".tk[8902]" -type "float3" 0.011156816 0 0 ;
	setAttr ".tk[8903]" -type "float3" 0.011156816 0 0 ;
	setAttr ".tk[8974]" -type "float3" 0.011156816 0 0 ;
	setAttr ".tk[8975]" -type "float3" 0.011156816 0 0 ;
	setAttr ".tk[9046]" -type "float3" 0.011156816 0 0 ;
	setAttr ".tk[9047]" -type "float3" 0.011156816 0 0 ;
	setAttr ".tk[9118]" -type "float3" 0.011156816 0 0 ;
	setAttr ".tk[9119]" -type "float3" 0.011156816 0 0 ;
	setAttr ".tk[9190]" -type "float3" 0.011156816 0 0 ;
	setAttr ".tk[9191]" -type "float3" 0.011156816 0 0 ;
	setAttr ".tk[9262]" -type "float3" 0.011156816 0 0 ;
	setAttr ".tk[9263]" -type "float3" 0.011156816 0 0 ;
	setAttr ".tk[9334]" -type "float3" 0.011156816 0 0 ;
	setAttr ".tk[9335]" -type "float3" 0.011156816 0 0 ;
	setAttr ".tk[9406]" -type "float3" 0.011156816 0 0 ;
	setAttr ".tk[9407]" -type "float3" 0.011156816 0 0 ;
	setAttr ".tk[9478]" -type "float3" 0.011156816 0 0 ;
	setAttr ".tk[9479]" -type "float3" 0.011156816 0 0 ;
	setAttr ".tk[9550]" -type "float3" 0.011156816 0 0 ;
	setAttr ".tk[9551]" -type "float3" 0.011156816 0 0 ;
	setAttr ".tk[9622]" -type "float3" 0.011156816 0 0 ;
	setAttr ".tk[9623]" -type "float3" 0.011156816 0 0 ;
createNode deleteComponent -n "deleteComponent6";
	setAttr ".dc" -type "componentList" 26 "f[7706]" "f[7778]" "f[7850]" "f[7922]" "f[7994]" "f[8066]" "f[8138]" "f[8210]" "f[8282]" "f[8354]" "f[8426]" "f[8498]" "f[8570]" "f[8642]" "f[8714]" "f[8786]" "f[8858]" "f[8930]" "f[9002]" "f[9074]" "f[9146]" "f[9218]" "f[9290]" "f[9362]" "f[9434]" "f[9506]";
createNode polyTweak -n "polyTweak41";
	setAttr ".uopa" yes;
	setAttr -s 56 ".tk";
	setAttr ".tk[6557]" -type "float3" -0.013155055 0 0 ;
	setAttr ".tk[6626]" -type "float3" -0.013155055 0 0 ;
	setAttr ".tk[7889]" -type "float3" -0.013155055 0 0 ;
	setAttr ".tk[7891]" -type "float3" -0.013155055 0 0 ;
	setAttr ".tk[7961]" -type "float3" -0.013155055 0 0 ;
	setAttr ".tk[7963]" -type "float3" -0.013155055 0 0 ;
	setAttr ".tk[8033]" -type "float3" -0.013155055 0 0 ;
	setAttr ".tk[8035]" -type "float3" -0.013155055 0 0 ;
	setAttr ".tk[8105]" -type "float3" -0.013155055 0 0 ;
	setAttr ".tk[8107]" -type "float3" -0.013155055 0 0 ;
	setAttr ".tk[8177]" -type "float3" -0.013155055 0 0 ;
	setAttr ".tk[8179]" -type "float3" -0.013155055 0 0 ;
	setAttr ".tk[8249]" -type "float3" -0.013155055 0 0 ;
	setAttr ".tk[8251]" -type "float3" -0.013155055 0 0 ;
	setAttr ".tk[8321]" -type "float3" -0.013155055 0 0 ;
	setAttr ".tk[8323]" -type "float3" -0.013155055 0 0 ;
	setAttr ".tk[8393]" -type "float3" -0.013155055 0 0 ;
	setAttr ".tk[8395]" -type "float3" -0.013155055 0 0 ;
	setAttr ".tk[8465]" -type "float3" -0.013155055 0 0 ;
	setAttr ".tk[8467]" -type "float3" -0.013155055 0 0 ;
	setAttr ".tk[8537]" -type "float3" -0.013155055 0 0 ;
	setAttr ".tk[8539]" -type "float3" -0.013155055 0 0 ;
	setAttr ".tk[8609]" -type "float3" -0.013155055 0 0 ;
	setAttr ".tk[8611]" -type "float3" -0.013155055 0 0 ;
	setAttr ".tk[8681]" -type "float3" -0.013155055 0 0 ;
	setAttr ".tk[8683]" -type "float3" -0.013155055 0 0 ;
	setAttr ".tk[8753]" -type "float3" -0.013155055 0 0 ;
	setAttr ".tk[8755]" -type "float3" -0.013155055 0 0 ;
	setAttr ".tk[8825]" -type "float3" -0.013155055 0 0 ;
	setAttr ".tk[8827]" -type "float3" -0.013155055 0 0 ;
	setAttr ".tk[8897]" -type "float3" -0.013155055 0 0 ;
	setAttr ".tk[8899]" -type "float3" -0.013155055 0 0 ;
	setAttr ".tk[8969]" -type "float3" -0.013155055 0 0 ;
	setAttr ".tk[8971]" -type "float3" -0.013155055 0 0 ;
	setAttr ".tk[9041]" -type "float3" -0.013155055 0 0 ;
	setAttr ".tk[9043]" -type "float3" -0.013155055 0 0 ;
	setAttr ".tk[9113]" -type "float3" -0.013155055 0 0 ;
	setAttr ".tk[9115]" -type "float3" -0.013155055 0 0 ;
	setAttr ".tk[9185]" -type "float3" -0.013155055 0 0 ;
	setAttr ".tk[9187]" -type "float3" -0.013155055 0 0 ;
	setAttr ".tk[9257]" -type "float3" -0.013155055 0 0 ;
	setAttr ".tk[9259]" -type "float3" -0.013155055 0 0 ;
	setAttr ".tk[9329]" -type "float3" -0.013155055 0 0 ;
	setAttr ".tk[9331]" -type "float3" -0.013155055 0 0 ;
	setAttr ".tk[9401]" -type "float3" -0.013155055 0 0 ;
	setAttr ".tk[9403]" -type "float3" -0.013155055 0 0 ;
	setAttr ".tk[9473]" -type "float3" -0.013155055 0 0 ;
	setAttr ".tk[9475]" -type "float3" -0.013155055 0 0 ;
	setAttr ".tk[9545]" -type "float3" -0.013155055 0 0 ;
	setAttr ".tk[9547]" -type "float3" -0.013155055 0 0 ;
	setAttr ".tk[9617]" -type "float3" -0.013155055 0 0 ;
	setAttr ".tk[9619]" -type "float3" -0.013155055 0 0 ;
	setAttr ".tk[9689]" -type "float3" -0.013155055 0 0 ;
	setAttr ".tk[9691]" -type "float3" -0.013155055 0 0 ;
createNode deleteComponent -n "deleteComponent7";
	setAttr ".dc" -type "componentList" 26 "f[7773]" "f[7844]" "f[7915]" "f[7986]" "f[8057]" "f[8128]" "f[8199]" "f[8270]" "f[8341]" "f[8412]" "f[8483]" "f[8554]" "f[8625]" "f[8696]" "f[8767]" "f[8838]" "f[8909]" "f[8980]" "f[9051]" "f[9122]" "f[9193]" "f[9264]" "f[9335]" "f[9406]" "f[9477]" "f[9548]";
createNode polyMergeVert -n "polyMergeVert1";
	setAttr ".ics" -type "componentList" 2 "vtx[6315]" "vtx[7890]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6315]";
createNode polyMergeVert -n "polyMergeVert2";
	setAttr ".ics" -type "componentList" 2 "vtx[6311]" "vtx[7961]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6311]";
createNode polyMergeVert -n "polyMergeVert3";
	setAttr ".ics" -type "componentList" 2 "vtx[6307]" "vtx[8032]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6307]";
createNode polyMergeVert -n "polyMergeVert4";
	setAttr ".ics" -type "componentList" 2 "vtx[6303]" "vtx[8103]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6303]";
createNode polyMergeVert -n "polyMergeVert5";
	setAttr ".ics" -type "componentList" 2 "vtx[6299]" "vtx[8174]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6299]";
createNode polyMergeVert -n "polyMergeVert6";
	setAttr ".ics" -type "componentList" 2 "vtx[6295]" "vtx[8245]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6295]";
createNode polyMergeVert -n "polyMergeVert7";
	setAttr ".ics" -type "componentList" 2 "vtx[6291]" "vtx[8316]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6291]";
createNode polyMergeVert -n "polyMergeVert8";
	setAttr ".ics" -type "componentList" 2 "vtx[6287]" "vtx[8387]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6287]";
createNode polyMergeVert -n "polyMergeVert9";
	setAttr ".ics" -type "componentList" 2 "vtx[6283]" "vtx[8458]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6283]";
createNode polyMergeVert -n "polyMergeVert10";
	setAttr ".ics" -type "componentList" 2 "vtx[6279]" "vtx[8529]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6279]";
createNode polyMergeVert -n "polyMergeVert11";
	setAttr ".ics" -type "componentList" 2 "vtx[6275]" "vtx[8600]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6275]";
createNode polyMergeVert -n "polyMergeVert12";
	setAttr ".ics" -type "componentList" 2 "vtx[6271]" "vtx[8671]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6271]";
createNode polyMergeVert -n "polyMergeVert13";
	setAttr ".ics" -type "componentList" 2 "vtx[6267]" "vtx[8742]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6267]";
createNode polyMergeVert -n "polyMergeVert14";
	setAttr ".ics" -type "componentList" 2 "vtx[6263]" "vtx[8813]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6263]";
createNode polyMergeVert -n "polyMergeVert15";
	setAttr ".ics" -type "componentList" 2 "vtx[6259]" "vtx[8884]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6259]";
createNode polyMergeVert -n "polyMergeVert16";
	setAttr ".ics" -type "componentList" 2 "vtx[6255]" "vtx[8955]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6255]";
createNode polyMergeVert -n "polyMergeVert17";
	setAttr ".ics" -type "componentList" 2 "vtx[6251]" "vtx[9026]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6251]";
createNode polyMergeVert -n "polyMergeVert18";
	setAttr ".ics" -type "componentList" 2 "vtx[6247]" "vtx[9097]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6247]";
createNode polyMergeVert -n "polyMergeVert19";
	setAttr ".ics" -type "componentList" 2 "vtx[6243]" "vtx[9168]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6243]";
createNode polyMergeVert -n "polyMergeVert20";
	setAttr ".ics" -type "componentList" 2 "vtx[6239]" "vtx[9239]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6239]";
createNode polyMergeVert -n "polyMergeVert21";
	setAttr ".ics" -type "componentList" 2 "vtx[6235]" "vtx[9310]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6235]";
createNode polyMergeVert -n "polyMergeVert22";
	setAttr ".ics" -type "componentList" 2 "vtx[6231]" "vtx[9381]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6231]";
createNode polyMergeVert -n "polyMergeVert23";
	setAttr ".ics" -type "componentList" 2 "vtx[6227]" "vtx[9452]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[9452]";
createNode polyMergeVert -n "polyMergeVert24";
	setAttr ".ics" -type "componentList" 2 "vtx[6223]" "vtx[9523]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6223]";
createNode polyMergeVert -n "polyMergeVert25";
	setAttr ".ics" -type "componentList" 2 "vtx[6219]" "vtx[9594]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6219]";
createNode polyMergeVert -n "polyMergeVert26";
	setAttr ".ics" -type "componentList" 2 "vtx[6213]" "vtx[9665]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6213]";
createNode polyMergeVert -n "polyMergeVert27";
	setAttr ".ics" -type "componentList" 2 "vtx[6211]" "vtx[9663]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6211]";
createNode polyMergeVert -n "polyMergeVert28";
	setAttr ".ics" -type "componentList" 2 "vtx[6209]" "vtx[9661]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6209]";
createNode polyMergeVert -n "polyMergeVert29";
	setAttr ".ics" -type "componentList" 2 "vtx[6207]" "vtx[9659]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6207]";
createNode polyMergeVert -n "polyMergeVert30";
	setAttr ".ics" -type "componentList" 2 "vtx[6204]" "vtx[9657]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6204]";
createNode polyMergeVert -n "polyMergeVert31";
	setAttr ".ics" -type "componentList" 2 "vtx[6205]" "vtx[9655]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6205]";
createNode polyMergeVert -n "polyMergeVert32";
	setAttr ".ics" -type "componentList" 2 "vtx[6201]" "vtx[9639]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6201]";
createNode polyMergeVert -n "polyMergeVert33";
	setAttr ".ics" -type "componentList" 2 "vtx[6199]" "vtx[9637]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6199]";
createNode polyMergeVert -n "polyMergeVert34";
	setAttr ".ics" -type "componentList" 2 "vtx[6197]" "vtx[9635]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6197]";
createNode polyMergeVert -n "polyMergeVert35";
	setAttr ".ics" -type "componentList" 2 "vtx[6195]" "vtx[9633]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6195]";
createNode polyMergeVert -n "polyMergeVert36";
	setAttr ".ics" -type "componentList" 2 "vtx[6193]" "vtx[9631]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6193]";
createNode polyMergeVert -n "polyMergeVert37";
	setAttr ".ics" -type "componentList" 2 "vtx[6191]" "vtx[9629]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6191]";
createNode polyMergeVert -n "polyMergeVert38";
	setAttr ".ics" -type "componentList" 2 "vtx[6189]" "vtx[9627]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6189]";
createNode polyMergeVert -n "polyMergeVert39";
	setAttr ".ics" -type "componentList" 2 "vtx[6187]" "vtx[9625]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6187]";
createNode polyMergeVert -n "polyMergeVert40";
	setAttr ".ics" -type "componentList" 2 "vtx[6185]" "vtx[9623]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6185]";
createNode polyMergeVert -n "polyMergeVert41";
	setAttr ".ics" -type "componentList" 2 "vtx[6183]" "vtx[9621]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6183]";
createNode polyMergeVert -n "polyMergeVert42";
	setAttr ".ics" -type "componentList" 2 "vtx[6181]" "vtx[9619]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6181]";
createNode polyMergeVert -n "polyMergeVert43";
	setAttr ".ics" -type "componentList" 2 "vtx[6179]" "vtx[9617]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6179]";
createNode polyMergeVert -n "polyMergeVert44";
	setAttr ".ics" -type "componentList" 2 "vtx[6177]" "vtx[9615]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6177]";
createNode polyMergeVert -n "polyMergeVert45";
	setAttr ".ics" -type "componentList" 2 "vtx[6175]" "vtx[9613]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6175]";
createNode polyMergeVert -n "polyMergeVert46";
	setAttr ".ics" -type "componentList" 2 "vtx[6173]" "vtx[9611]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6173]";
createNode polyMergeVert -n "polyMergeVert47";
	setAttr ".ics" -type "componentList" 2 "vtx[6171]" "vtx[9609]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6171]";
createNode polyMergeVert -n "polyMergeVert48";
	setAttr ".ics" -type "componentList" 2 "vtx[6169]" "vtx[9607]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6169]";
createNode polyMergeVert -n "polyMergeVert49";
	setAttr ".ics" -type "componentList" 2 "vtx[6167]" "vtx[9605]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6167]";
createNode polyMergeVert -n "polyMergeVert50";
	setAttr ".ics" -type "componentList" 2 "vtx[6165]" "vtx[9603]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6165]";
createNode polyMergeVert -n "polyMergeVert51";
	setAttr ".ics" -type "componentList" 2 "vtx[6163]" "vtx[9601]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6163]";
createNode polyMergeVert -n "polyMergeVert52";
	setAttr ".ics" -type "componentList" 2 "vtx[6161]" "vtx[9599]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6161]";
createNode polyMergeVert -n "polyMergeVert53";
	setAttr ".ics" -type "componentList" 2 "vtx[6159]" "vtx[9596]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6159]";
createNode polyMergeVert -n "polyMergeVert54";
	setAttr ".ics" -type "componentList" 2 "vtx[6156]" "vtx[9595]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6156]";
createNode polyMergeVert -n "polyMergeVert55";
	setAttr ".ics" -type "componentList" 2 "vtx[6216]" "vtx[9524]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6216]";
createNode polyMergeVert -n "polyMergeVert56";
	setAttr ".ics" -type "componentList" 2 "vtx[6220]" "vtx[9453]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6220]";
createNode polyMergeVert -n "polyMergeVert57";
	setAttr ".ics" -type "componentList" 2 "vtx[6224]" "vtx[9382]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[9382]";
createNode polyMergeVert -n "polyMergeVert58";
	setAttr ".ics" -type "componentList" 2 "vtx[6228]" "vtx[9311]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6228]";
createNode polyMergeVert -n "polyMergeVert59";
	setAttr ".ics" -type "componentList" 2 "vtx[6232]" "vtx[9240]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6232]";
createNode polyMergeVert -n "polyMergeVert60";
	setAttr ".ics" -type "componentList" 2 "vtx[6236]" "vtx[9169]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6236]";
createNode polyMergeVert -n "polyMergeVert61";
	setAttr ".ics" -type "componentList" 2 "vtx[6240]" "vtx[9098]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6240]";
createNode polyMergeVert -n "polyMergeVert62";
	setAttr ".ics" -type "componentList" 2 "vtx[6244]" "vtx[9027]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6244]";
createNode polyMergeVert -n "polyMergeVert63";
	setAttr ".ics" -type "componentList" 2 "vtx[6248]" "vtx[8956]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6248]";
createNode polyMergeVert -n "polyMergeVert64";
	setAttr ".ics" -type "componentList" 2 "vtx[6252]" "vtx[8885]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6252]";
createNode polyMergeVert -n "polyMergeVert65";
	setAttr ".ics" -type "componentList" 2 "vtx[6256]" "vtx[8814]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6256]";
createNode polyMergeVert -n "polyMergeVert66";
	setAttr ".ics" -type "componentList" 2 "vtx[6260]" "vtx[8743]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6260]";
createNode polyMergeVert -n "polyMergeVert67";
	setAttr ".ics" -type "componentList" 2 "vtx[6264]" "vtx[8672]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6264]";
createNode polyMergeVert -n "polyMergeVert68";
	setAttr ".ics" -type "componentList" 2 "vtx[6268]" "vtx[8601]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6268]";
createNode polyMergeVert -n "polyMergeVert69";
	setAttr ".ics" -type "componentList" 2 "vtx[6272]" "vtx[8530]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6272]";
createNode polyMergeVert -n "polyMergeVert70";
	setAttr ".ics" -type "componentList" 2 "vtx[6276]" "vtx[8459]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6276]";
createNode polyMergeVert -n "polyMergeVert71";
	setAttr ".ics" -type "componentList" 2 "vtx[6280]" "vtx[8388]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6280]";
createNode polyMergeVert -n "polyMergeVert72";
	setAttr ".ics" -type "componentList" 2 "vtx[6284]" "vtx[8317]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6284]";
createNode polyMergeVert -n "polyMergeVert73";
	setAttr ".ics" -type "componentList" 2 "vtx[6288]" "vtx[8246]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6288]";
createNode polyMergeVert -n "polyMergeVert74";
	setAttr ".ics" -type "componentList" 2 "vtx[6292]" "vtx[8175]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6292]";
createNode polyMergeVert -n "polyMergeVert75";
	setAttr ".ics" -type "componentList" 2 "vtx[6296]" "vtx[8104]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6296]";
createNode polyMergeVert -n "polyMergeVert76";
	setAttr ".ics" -type "componentList" 2 "vtx[6300]" "vtx[8033]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6300]";
createNode polyMergeVert -n "polyMergeVert77";
	setAttr ".ics" -type "componentList" 2 "vtx[6304]" "vtx[7962]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6304]";
createNode polyMergeVert -n "polyMergeVert78";
	setAttr ".ics" -type "componentList" 2 "vtx[6308]" "vtx[7891]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6308]";
createNode polyMergeVert -n "polyMergeVert79";
	setAttr ".ics" -type "componentList" 2 "vtx[6312]" "vtx[7820]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6312]";
createNode polyMergeVert -n "polyMergeVert80";
	setAttr ".ics" -type "componentList" 2 "vtx[6550]" "vtx[7822]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6550]";
createNode polyMergeVert -n "polyMergeVert81";
	setAttr ".ics" -type "componentList" 2 "vtx[6546]" "vtx[7891]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6546]";
createNode polyMergeVert -n "polyMergeVert82";
	setAttr ".ics" -type "componentList" 2 "vtx[6542]" "vtx[7960]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6542]";
createNode polyMergeVert -n "polyMergeVert83";
	setAttr ".ics" -type "componentList" 2 "vtx[6538]" "vtx[8029]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6538]";
createNode polyMergeVert -n "polyMergeVert84";
	setAttr ".ics" -type "componentList" 2 "vtx[6534]" "vtx[8098]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6534]";
createNode polyMergeVert -n "polyMergeVert85";
	setAttr ".ics" -type "componentList" 2 "vtx[6530]" "vtx[8167]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6530]";
createNode polyMergeVert -n "polyMergeVert86";
	setAttr ".ics" -type "componentList" 2 "vtx[6526]" "vtx[8236]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6526]";
createNode polyMergeVert -n "polyMergeVert87";
	setAttr ".ics" -type "componentList" 2 "vtx[6522]" "vtx[8305]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6522]";
createNode polyMergeVert -n "polyMergeVert88";
	setAttr ".ics" -type "componentList" 2 "vtx[6518]" "vtx[8374]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6518]";
createNode polyMergeVert -n "polyMergeVert89";
	setAttr ".ics" -type "componentList" 2 "vtx[6514]" "vtx[8443]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6514]";
createNode polyMergeVert -n "polyMergeVert90";
	setAttr ".ics" -type "componentList" 2 "vtx[6510]" "vtx[8512]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6510]";
createNode polyMergeVert -n "polyMergeVert91";
	setAttr ".ics" -type "componentList" 2 "vtx[6506]" "vtx[8581]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6506]";
createNode polyMergeVert -n "polyMergeVert92";
	setAttr ".ics" -type "componentList" 2 "vtx[6502]" "vtx[8650]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6502]";
createNode polyMergeVert -n "polyMergeVert93";
	setAttr ".ics" -type "componentList" 2 "vtx[6498]" "vtx[8719]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6498]";
createNode polyMergeVert -n "polyMergeVert94";
	setAttr ".ics" -type "componentList" 2 "vtx[6494]" "vtx[8788]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6494]";
createNode polyMergeVert -n "polyMergeVert95";
	setAttr ".ics" -type "componentList" 2 "vtx[6490]" "vtx[8857]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6490]";
createNode polyMergeVert -n "polyMergeVert96";
	setAttr ".ics" -type "componentList" 2 "vtx[6486]" "vtx[8926]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6486]";
createNode polyMergeVert -n "polyMergeVert97";
	setAttr ".ics" -type "componentList" 2 "vtx[6482]" "vtx[8995]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6482]";
createNode polyMergeVert -n "polyMergeVert98";
	setAttr ".ics" -type "componentList" 2 "vtx[6478]" "vtx[9064]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6478]";
createNode polyMergeVert -n "polyMergeVert99";
	setAttr ".ics" -type "componentList" 2 "vtx[6474]" "vtx[9133]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6474]";
createNode polyMergeVert -n "polyMergeVert100";
	setAttr ".ics" -type "componentList" 2 "vtx[6470]" "vtx[9202]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6470]";
createNode polyMergeVert -n "polyMergeVert101";
	setAttr ".ics" -type "componentList" 2 "vtx[6466]" "vtx[9271]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6466]";
createNode polyMergeVert -n "polyMergeVert102";
	setAttr ".ics" -type "componentList" 2 "vtx[6462]" "vtx[9340]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6462]";
createNode polyMergeVert -n "polyMergeVert103";
	setAttr ".ics" -type "componentList" 2 "vtx[6458]" "vtx[9409]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6458]";
createNode polyMergeVert -n "polyMergeVert104";
	setAttr ".ics" -type "componentList" 2 "vtx[6454]" "vtx[9478]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6454]";
createNode polyMergeVert -n "polyMergeVert105";
	setAttr ".ics" -type "componentList" 2 "vtx[6394]" "vtx[9546]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6394]";
createNode polyMergeVert -n "polyMergeVert106";
	setAttr ".ics" -type "componentList" 2 "vtx[6397]" "vtx[9545]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6397]";
createNode polyMergeVert -n "polyMergeVert107";
	setAttr ".ics" -type "componentList" 2 "vtx[6553]" "vtx[7888]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6553]";
createNode polyMergeVert -n "polyMergeVert108";
	setAttr ".ics" -type "componentList" 2 "vtx[6549]" "vtx[7956]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6549]";
createNode polyMergeVert -n "polyMergeVert109";
	setAttr ".ics" -type "componentList" 2 "vtx[6545]" "vtx[8024]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6545]";
createNode polyMergeVert -n "polyMergeVert110";
	setAttr ".ics" -type "componentList" 2 "vtx[6541]" "vtx[8092]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6541]";
createNode polyMergeVert -n "polyMergeVert111";
	setAttr ".ics" -type "componentList" 2 "vtx[6537]" "vtx[8160]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6537]";
createNode polyMergeVert -n "polyMergeVert112";
	setAttr ".ics" -type "componentList" 2 "vtx[6533]" "vtx[8228]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6533]";
createNode polyMergeVert -n "polyMergeVert113";
	setAttr ".ics" -type "componentList" 2 "vtx[6529]" "vtx[8296]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6529]";
createNode polyMergeVert -n "polyMergeVert114";
	setAttr ".ics" -type "componentList" 2 "vtx[6525]" "vtx[8364]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6525]";
createNode polyMergeVert -n "polyMergeVert115";
	setAttr ".ics" -type "componentList" 2 "vtx[6521]" "vtx[8432]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6521]";
createNode polyMergeVert -n "polyMergeVert116";
	setAttr ".ics" -type "componentList" 2 "vtx[6517]" "vtx[8500]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6517]";
createNode polyMergeVert -n "polyMergeVert117";
	setAttr ".ics" -type "componentList" 2 "vtx[6513]" "vtx[8568]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6513]";
createNode polyMergeVert -n "polyMergeVert118";
	setAttr ".ics" -type "componentList" 2 "vtx[6509]" "vtx[8636]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6509]";
createNode polyMergeVert -n "polyMergeVert119";
	setAttr ".ics" -type "componentList" 2 "vtx[6505]" "vtx[8704]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6505]";
createNode polyMergeVert -n "polyMergeVert120";
	setAttr ".ics" -type "componentList" 2 "vtx[6501]" "vtx[8772]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6501]";
createNode polyMergeVert -n "polyMergeVert121";
	setAttr ".ics" -type "componentList" 2 "vtx[6497]" "vtx[8840]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6497]";
createNode polyMergeVert -n "polyMergeVert122";
	setAttr ".ics" -type "componentList" 2 "vtx[6493]" "vtx[8908]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6493]";
createNode polyMergeVert -n "polyMergeVert123";
	setAttr ".ics" -type "componentList" 2 "vtx[6489]" "vtx[8976]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6489]";
createNode polyMergeVert -n "polyMergeVert124";
	setAttr ".ics" -type "componentList" 2 "vtx[6485]" "vtx[9044]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6485]";
createNode polyMergeVert -n "polyMergeVert125";
	setAttr ".ics" -type "componentList" 2 "vtx[6481]" "vtx[9112]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6481]";
createNode polyMergeVert -n "polyMergeVert126";
	setAttr ".ics" -type "componentList" 2 "vtx[6477]" "vtx[9180]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6477]";
createNode polyMergeVert -n "polyMergeVert127";
	setAttr ".ics" -type "componentList" 2 "vtx[6473]" "vtx[9248]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6473]";
createNode polyMergeVert -n "polyMergeVert128";
	setAttr ".ics" -type "componentList" 2 "vtx[6469]" "vtx[9316]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6469]";
createNode polyMergeVert -n "polyMergeVert129";
	setAttr ".ics" -type "componentList" 2 "vtx[6465]" "vtx[9384]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6465]";
createNode polyMergeVert -n "polyMergeVert130";
	setAttr ".ics" -type "componentList" 2 "vtx[6461]" "vtx[9452]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6461]";
createNode polyMergeVert -n "polyMergeVert131";
	setAttr ".ics" -type "componentList" 2 "vtx[6457]" "vtx[9520]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6457]";
createNode polyMergeVert -n "polyMergeVert132";
	setAttr ".ics" -type "componentList" 2 "vtx[6451]" "vtx[9560]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6451]";
createNode polyMergeVert -n "polyMergeVert133";
	setAttr ".ics" -type "componentList" 2 "vtx[6449]" "vtx[9559]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6449]";
createNode polyMergeVert -n "polyMergeVert134";
	setAttr ".ics" -type "componentList" 2 "vtx[6447]" "vtx[9558]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6447]";
createNode polyMergeVert -n "polyMergeVert135";
	setAttr ".ics" -type "componentList" 2 "vtx[6445]" "vtx[9557]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6445]";
createNode polyMergeVert -n "polyMergeVert136";
	setAttr ".ics" -type "componentList" 2 "vtx[6442]" "vtx[9556]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6442]";
createNode polyMergeVert -n "polyMergeVert137";
	setAttr ".ics" -type "componentList" 2 "vtx[6443]" "vtx[9555]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6443]";
createNode polyMergeVert -n "polyMergeVert138";
	setAttr ".ics" -type "componentList" 2 "vtx[6399]" "vtx[9520]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6399]";
createNode polyMergeVert -n "polyMergeVert139";
	setAttr ".ics" -type "componentList" 2 "vtx[6401]" "vtx[9520]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6401]";
createNode polyMergeVert -n "polyMergeVert140";
	setAttr ".ics" -type "componentList" 2 "vtx[6403]" "vtx[9520]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6403]";
createNode polyMergeVert -n "polyMergeVert141";
	setAttr ".ics" -type "componentList" 2 "vtx[6405]" "vtx[9520]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6405]";
createNode polyMergeVert -n "polyMergeVert142";
	setAttr ".ics" -type "componentList" 2 "vtx[6407]" "vtx[9520]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6407]";
createNode polyMergeVert -n "polyMergeVert143";
	setAttr ".ics" -type "componentList" 2 "vtx[6409]" "vtx[9520]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6409]";
createNode polyMergeVert -n "polyMergeVert144";
	setAttr ".ics" -type "componentList" 2 "vtx[6411]" "vtx[9520]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6411]";
createNode polyMergeVert -n "polyMergeVert145";
	setAttr ".ics" -type "componentList" 2 "vtx[6413]" "vtx[9520]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6413]";
createNode polyMergeVert -n "polyMergeVert146";
	setAttr ".ics" -type "componentList" 2 "vtx[6415]" "vtx[9520]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6415]";
createNode polyMergeVert -n "polyMergeVert147";
	setAttr ".ics" -type "componentList" 2 "vtx[6417]" "vtx[9520]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6417]";
createNode polyMergeVert -n "polyMergeVert148";
	setAttr ".ics" -type "componentList" 2 "vtx[6419]" "vtx[9520]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6419]";
createNode polyMergeVert -n "polyMergeVert149";
	setAttr ".ics" -type "componentList" 2 "vtx[6421]" "vtx[9520]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6421]";
createNode polyMergeVert -n "polyMergeVert150";
	setAttr ".ics" -type "componentList" 2 "vtx[6423]" "vtx[9520]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6423]";
createNode polyMergeVert -n "polyMergeVert151";
	setAttr ".ics" -type "componentList" 2 "vtx[6425]" "vtx[9520]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6425]";
createNode polyMergeVert -n "polyMergeVert152";
	setAttr ".ics" -type "componentList" 2 "vtx[6427]" "vtx[9520]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6427]";
createNode polyMergeVert -n "polyMergeVert153";
	setAttr ".ics" -type "componentList" 2 "vtx[6429]" "vtx[9520]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6429]";
createNode polyMergeVert -n "polyMergeVert154";
	setAttr ".ics" -type "componentList" 2 "vtx[6431]" "vtx[9520]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6431]";
createNode polyMergeVert -n "polyMergeVert155";
	setAttr ".ics" -type "componentList" 2 "vtx[6433]" "vtx[9520]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6433]";
createNode polyMergeVert -n "polyMergeVert156";
	setAttr ".ics" -type "componentList" 2 "vtx[6435]" "vtx[9520]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6435]";
createNode polyMergeVert -n "polyMergeVert157";
	setAttr ".ics" -type "componentList" 2 "vtx[6437]" "vtx[9520]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6437]";
createNode polyMergeVert -n "polyMergeVert158";
	setAttr ".ics" -type "componentList" 2 "vtx[6439]" "vtx[9520]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[6439]";
createNode polyBridgeEdge -n "polyBridgeEdge1";
	setAttr ".ics" -type "componentList" 2 "e[19018]" "e[19020]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 6201;
	setAttr ".sv2" 9521;
createNode polyTweak -n "polyTweak42";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[9520]" -type "float3" 0 0 0.016168701 ;
	setAttr ".tk[9521]" -type "float3" 0 0 0.015363586 ;
	setAttr ".tk[9522]" -type "float3" 0 0 0.016168701 ;
	setAttr ".tk[9523]" -type "float3" 0 0 0.015363586 ;
	setAttr ".tk[9524]" -type "float3" 0 0 0.016168701 ;
	setAttr ".tk[9525]" -type "float3" 0 0 0.015363586 ;
	setAttr ".tk[9526]" -type "float3" 0 0 0.016168701 ;
	setAttr ".tk[9527]" -type "float3" 0 0 0.015363586 ;
	setAttr ".tk[9528]" -type "float3" 0 0 0.016168701 ;
	setAttr ".tk[9529]" -type "float3" 0 0 0.015363586 ;
	setAttr ".tk[9530]" -type "float3" 0 0 0.016168701 ;
	setAttr ".tk[9531]" -type "float3" 0 0 0.015363586 ;
	setAttr ".tk[9532]" -type "float3" 0 0 0.016168701 ;
	setAttr ".tk[9533]" -type "float3" 0 0 0.015363586 ;
createNode polyBridgeEdge -n "polyBridgeEdge2";
	setAttr ".ics" -type "componentList" 2 "e[19022]" "e[19024]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 9520;
	setAttr ".sv2" 9523;
createNode polyBridgeEdge -n "polyBridgeEdge3";
	setAttr ".ics" -type "componentList" 2 "e[19026]" "e[19028]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 9522;
	setAttr ".sv2" 9525;
createNode polyBridgeEdge -n "polyBridgeEdge4";
	setAttr ".ics" -type "componentList" 2 "e[19030]" "e[19032]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 9524;
	setAttr ".sv2" 9527;
createNode polyBridgeEdge -n "polyBridgeEdge5";
	setAttr ".ics" -type "componentList" 2 "e[19034]" "e[19036]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 9526;
	setAttr ".sv2" 9529;
createNode polyBridgeEdge -n "polyBridgeEdge6";
	setAttr ".ics" -type "componentList" 2 "e[19038]" "e[19040]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 9528;
	setAttr ".sv2" 9531;
createNode polyBridgeEdge -n "polyBridgeEdge7";
	setAttr ".ics" -type "componentList" 2 "e[19042]" "e[19044]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 9530;
	setAttr ".sv2" 9533;
createNode polyBridgeEdge -n "polyBridgeEdge8";
	setAttr ".ics" -type "componentList" 2 "e[19046]" "e[19048]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 9532;
	setAttr ".sv2" 6443;
createNode polyTweak -n "polyTweak43";
	setAttr ".uopa" yes;
	setAttr -s 44 ".tk";
	setAttr ".tk[1099]" -type "float3" 0 0 -8.3424748e-06 ;
	setAttr ".tk[1100]" -type "float3" 0 0 -8.3424748e-06 ;
	setAttr ".tk[1101]" -type "float3" 0 0 -8.3424748e-06 ;
	setAttr ".tk[1102]" -type "float3" 0 0 -8.3424748e-06 ;
	setAttr ".tk[1103]" -type "float3" 0 0 -8.3424748e-06 ;
	setAttr ".tk[1104]" -type "float3" 0 0 -8.3424748e-06 ;
	setAttr ".tk[1105]" -type "float3" 0 0 -8.3424748e-06 ;
	setAttr ".tk[4210]" -type "float3" 0 0 -8.4537305e-06 ;
	setAttr ".tk[4211]" -type "float3" 0 0 -8.4537305e-06 ;
	setAttr ".tk[4212]" -type "float3" 0 0 -8.4537305e-06 ;
	setAttr ".tk[4213]" -type "float3" 0 0 -8.4537305e-06 ;
	setAttr ".tk[4214]" -type "float3" 0 0 -8.4537305e-06 ;
	setAttr ".tk[4215]" -type "float3" 0 0 -8.4537305e-06 ;
	setAttr ".tk[4216]" -type "float3" 0 0 -8.4537305e-06 ;
	setAttr ".tk[6554]" -type "float3" -0.011649434 0 0 ;
	setAttr ".tk[6557]" -type "float3" 0.012476518 0 0 ;
	setAttr ".tk[6626]" -type "float3" 0.012476518 0 0 ;
	setAttr ".tk[9520]" -type "float3" 0 0 -0.00040206886 ;
	setAttr ".tk[9521]" -type "float3" 0 0 0.00040206886 ;
	setAttr ".tk[9522]" -type "float3" 0 0 -0.00040206886 ;
	setAttr ".tk[9523]" -type "float3" 0 0 0.00040206886 ;
	setAttr ".tk[9524]" -type "float3" 0 0 -0.00040206886 ;
	setAttr ".tk[9525]" -type "float3" 0 0 0.00040206886 ;
	setAttr ".tk[9526]" -type "float3" 0 0 -0.00040206886 ;
	setAttr ".tk[9527]" -type "float3" 0 0 0.00040206886 ;
	setAttr ".tk[9528]" -type "float3" 0 0 -0.00040206886 ;
	setAttr ".tk[9529]" -type "float3" 0 0 0.00040206886 ;
	setAttr ".tk[9530]" -type "float3" 0 0 -0.00040206886 ;
	setAttr ".tk[9531]" -type "float3" 0 0 0.00040206886 ;
	setAttr ".tk[9532]" -type "float3" 0 0 -0.00040206886 ;
	setAttr ".tk[9533]" -type "float3" 0 0 0.00040206886 ;
createNode deleteComponent -n "deleteComponent8";
	setAttr ".dc" -type "componentList" 10 "f[6104]" "f[6106]" "f[7714:7731]" "f[7784:7801]" "f[7854:7871]" "f[7924:7941]" "f[7994:8011]" "f[8064:8081]" "f[8134:8151]" "f[8204:8221]";
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 33 "e[12932]" "e[12935]" "e[12938]" "e[12941]" "e[12944]" "e[12947]" "e[12950]" "e[12953]" "e[12956]" "e[15540]" "e[15543]" "e[15644]" "e[15647]" "e[15748]" "e[15751]" "e[15852]" "e[15855]" "e[15956]" "e[15959]" "e[16060]" "e[16063]" "e[16164]" "e[16167]" "e[16268]" "e[16271]" "e[16273]" "e[16275]" "e[16277]" "e[16279]" "e[16281]" "e[16283]" "e[16285]" "e[16288:16289]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -12.599998 7.2850866 -20.417746 ;
	setAttr ".rs" 946495126;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -17.999997138977051 7.2850866317749023 -25.200020670890808 ;
	setAttr ".cbx" -type "double3" -7.1999971568584442 7.2850866317749023 -15.635470747947693 ;
createNode polyMergeVert -n "polyMergeVert159";
	setAttr ".ics" -type "componentList" 34 "vtx[6330]" "vtx[6332]" "vtx[6334]" "vtx[6336]" "vtx[6338]" "vtx[6340]" "vtx[6342]" "vtx[6344]" "vtx[6346]" "vtx[6348]" "vtx[7828]" "vtx[7880]" "vtx[7882]" "vtx[7932]" "vtx[7934]" "vtx[7984]" "vtx[7986]" "vtx[8036]" "vtx[8038]" "vtx[8088]" "vtx[8090]" "vtx[8140]" "vtx[8142]" "vtx[8192]" "vtx[8194]" "vtx[8196]" "vtx[8198]" "vtx[8200]" "vtx[8202]" "vtx[8204]" "vtx[8206]" "vtx[8208]" "vtx[8210]" "vtx[9422:9455]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak44";
	setAttr ".uopa" yes;
	setAttr -s 73 ".tk";
	setAttr ".tk[6348]" -type "float3" 7.4505806e-09 0 0 ;
	setAttr ".tk[7882]" -type "float3" 7.4505806e-09 0 0 ;
	setAttr ".tk[7934]" -type "float3" 7.4505806e-09 0 0 ;
	setAttr ".tk[7986]" -type "float3" 7.4505806e-09 0 0 ;
	setAttr ".tk[8038]" -type "float3" 7.4505806e-09 0 0 ;
	setAttr ".tk[8090]" -type "float3" 7.4505806e-09 0 0 ;
	setAttr ".tk[8142]" -type "float3" 7.4505806e-09 0 0 ;
	setAttr ".tk[8210]" -type "float3" 7.4505806e-09 0 0 ;
	setAttr ".tk[9422]" -type "float3" 0 -6.1553922 0 ;
	setAttr ".tk[9423]" -type "float3" 0 -6.1553922 0 ;
	setAttr ".tk[9424]" -type "float3" 0 -6.1553922 0 ;
	setAttr ".tk[9425]" -type "float3" 0 -6.1553922 0 ;
	setAttr ".tk[9426]" -type "float3" 0 -6.1553922 0 ;
	setAttr ".tk[9427]" -type "float3" 0 -6.1553922 0 ;
	setAttr ".tk[9428]" -type "float3" 0 -6.1553922 0 ;
	setAttr ".tk[9429]" -type "float3" 0 -6.1553922 0 ;
	setAttr ".tk[9430]" -type "float3" 0 -6.1553922 0 ;
	setAttr ".tk[9431]" -type "float3" 7.4505806e-09 -6.1553922 0 ;
	setAttr ".tk[9432]" -type "float3" 0 -6.1553922 0 ;
	setAttr ".tk[9433]" -type "float3" 7.4505806e-09 -6.1553922 0 ;
	setAttr ".tk[9434]" -type "float3" 0 -6.1553922 0 ;
	setAttr ".tk[9435]" -type "float3" 7.4505806e-09 -6.1553922 0 ;
	setAttr ".tk[9436]" -type "float3" 0 -6.1553922 0 ;
	setAttr ".tk[9437]" -type "float3" 7.4505806e-09 -6.1553922 0 ;
	setAttr ".tk[9438]" -type "float3" 0 -6.1553922 0 ;
	setAttr ".tk[9439]" -type "float3" 7.4505806e-09 -6.1553922 0 ;
	setAttr ".tk[9440]" -type "float3" 0 -6.1553922 0 ;
	setAttr ".tk[9441]" -type "float3" 7.4505806e-09 -6.1553922 0 ;
	setAttr ".tk[9442]" -type "float3" 0 -6.1553922 0 ;
	setAttr ".tk[9443]" -type "float3" 7.4505806e-09 -6.1553922 0 ;
	setAttr ".tk[9444]" -type "float3" 0 -6.1553922 0 ;
	setAttr ".tk[9445]" -type "float3" 7.4505806e-09 -6.1553922 0 ;
	setAttr ".tk[9446]" -type "float3" 0 -6.1553922 0 ;
	setAttr ".tk[9447]" -type "float3" 0 -6.1553922 0 ;
	setAttr ".tk[9448]" -type "float3" 0 -6.1553922 0 ;
	setAttr ".tk[9449]" -type "float3" 0 -6.1553922 0 ;
	setAttr ".tk[9450]" -type "float3" 0 -6.1553922 0 ;
	setAttr ".tk[9451]" -type "float3" 0 -6.1553922 0 ;
	setAttr ".tk[9452]" -type "float3" 0 -6.1553922 0 ;
	setAttr ".tk[9453]" -type "float3" 0 -6.1553922 0 ;
	setAttr ".tk[9454]" -type "float3" 0 -6.1553922 0 ;
	setAttr ".tk[9455]" -type "float3" 7.4505806e-09 -6.1553922 0 ;
createNode polyMergeVert -n "polyMergeVert160";
	setAttr ".ics" -type "componentList" 35 "vtx[6330]" "vtx[6332]" "vtx[6334]" "vtx[6336]" "vtx[6338]" "vtx[6340]" "vtx[6342]" "vtx[6344]" "vtx[6346]" "vtx[6348]" "vtx[7828]" "vtx[7830]" "vtx[7880]" "vtx[7882]" "vtx[7932]" "vtx[7934]" "vtx[7984]" "vtx[7986]" "vtx[8036]" "vtx[8038]" "vtx[8088]" "vtx[8090]" "vtx[8140]" "vtx[8142]" "vtx[8192]" "vtx[8194]" "vtx[8196]" "vtx[8198]" "vtx[8200]" "vtx[8202]" "vtx[8204]" "vtx[8206]" "vtx[8208]" "vtx[8210]" "vtx[9422:9455]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak45";
	setAttr ".uopa" yes;
	setAttr -s 68 ".tk";
	setAttr ".tk[6330]" -type "float3" 0 0.0045452118 0 ;
	setAttr ".tk[6332]" -type "float3" 0 0.0045452118 0 ;
	setAttr ".tk[6334]" -type "float3" 0 0.0045452118 0 ;
	setAttr ".tk[6336]" -type "float3" 0 0.0045452118 0 ;
	setAttr ".tk[6338]" -type "float3" 2.3283064e-10 0.0045452118 0 ;
	setAttr ".tk[6340]" -type "float3" 0 0.0045452118 0 ;
	setAttr ".tk[6342]" -type "float3" 0 0.0045452118 0 ;
	setAttr ".tk[6344]" -type "float3" 0 0.0045452118 0 ;
	setAttr ".tk[6346]" -type "float3" 0 0.0045452118 0 ;
	setAttr ".tk[6348]" -type "float3" 0 0.0045452118 0 ;
	setAttr ".tk[7828]" -type "float3" 0 0.0045452118 9.3132257e-10 ;
	setAttr ".tk[7830]" -type "float3" -1.8626451e-09 0.0045232773 9.3132257e-10 ;
	setAttr ".tk[7880]" -type "float3" 0 0.0045452118 4.6566129e-10 ;
	setAttr ".tk[7882]" -type "float3" 0 0.0045452118 4.6566129e-10 ;
	setAttr ".tk[7932]" -type "float3" 0 0.0045452118 -2.3283064e-10 ;
	setAttr ".tk[7934]" -type "float3" 0 0.0045452118 -2.3283064e-10 ;
	setAttr ".tk[7984]" -type "float3" 0 0.0045452118 0 ;
	setAttr ".tk[7986]" -type "float3" 0 0.0045452118 0 ;
	setAttr ".tk[8036]" -type "float3" 0 0.0045452118 0 ;
	setAttr ".tk[8038]" -type "float3" 0 0.0045452118 0 ;
	setAttr ".tk[8088]" -type "float3" 0 0.0045452118 0 ;
	setAttr ".tk[8090]" -type "float3" 0 0.0045452118 0 ;
	setAttr ".tk[8140]" -type "float3" 0 0.0045452118 0 ;
	setAttr ".tk[8142]" -type "float3" 0 0.0045452118 0 ;
	setAttr ".tk[8192]" -type "float3" 0 0.0045452118 0 ;
	setAttr ".tk[8194]" -type "float3" 0 0.0045452118 0 ;
	setAttr ".tk[8196]" -type "float3" 0 0.0045452118 0 ;
	setAttr ".tk[8198]" -type "float3" 0 0.0045452118 0 ;
	setAttr ".tk[8200]" -type "float3" 2.3283064e-10 0.0045452118 0 ;
	setAttr ".tk[8202]" -type "float3" 0 0.0045452118 0 ;
	setAttr ".tk[8204]" -type "float3" 0 0.0045452118 0 ;
	setAttr ".tk[8206]" -type "float3" 0 0.0045452118 0 ;
	setAttr ".tk[8208]" -type "float3" 0 0.0045452118 0 ;
	setAttr ".tk[8210]" -type "float3" 0 0.0045452118 0 ;
	setAttr ".tk[9422]" -type "float3" 0 -0.013616562 0 ;
	setAttr ".tk[9423]" -type "float3" 0 -0.013616562 0 ;
	setAttr ".tk[9424]" -type "float3" 0 -0.013616562 0 ;
	setAttr ".tk[9425]" -type "float3" 0 -0.013616562 0 ;
	setAttr ".tk[9426]" -type "float3" 2.3283064e-10 -0.013616562 0 ;
	setAttr ".tk[9427]" -type "float3" 0 -0.013616562 0 ;
	setAttr ".tk[9428]" -type "float3" 0 -0.013616562 0 ;
	setAttr ".tk[9429]" -type "float3" 0 -0.013616562 0 ;
	setAttr ".tk[9430]" -type "float3" 0 -0.013616562 0 ;
	setAttr ".tk[9431]" -type "float3" 0 -0.013616562 0 ;
	setAttr ".tk[9432]" -type "float3" 0 -0.013616562 9.3132257e-10 ;
	setAttr ".tk[9433]" -type "float3" 0 -0.013616562 9.3132257e-10 ;
	setAttr ".tk[9434]" -type "float3" 0 -0.013616562 4.6566129e-10 ;
	setAttr ".tk[9435]" -type "float3" 0 -0.013616562 4.6566129e-10 ;
	setAttr ".tk[9436]" -type "float3" 0 -0.013616562 -2.3283064e-10 ;
	setAttr ".tk[9437]" -type "float3" 0 -0.013616562 -2.3283064e-10 ;
	setAttr ".tk[9438]" -type "float3" 0 -0.013616562 0 ;
	setAttr ".tk[9439]" -type "float3" 0 -0.013616562 0 ;
	setAttr ".tk[9440]" -type "float3" 0 -0.013616562 0 ;
	setAttr ".tk[9441]" -type "float3" 0 -0.013616562 0 ;
	setAttr ".tk[9442]" -type "float3" 0 -0.013616562 0 ;
	setAttr ".tk[9443]" -type "float3" 0 -0.013616562 0 ;
	setAttr ".tk[9444]" -type "float3" 0 -0.013616562 0 ;
	setAttr ".tk[9445]" -type "float3" 0 -0.013616562 0 ;
	setAttr ".tk[9446]" -type "float3" 0 -0.013616562 0 ;
	setAttr ".tk[9447]" -type "float3" 0 -0.013616562 0 ;
	setAttr ".tk[9448]" -type "float3" 0 -0.013616562 0 ;
	setAttr ".tk[9449]" -type "float3" 0 -0.013616562 0 ;
	setAttr ".tk[9450]" -type "float3" 2.3283064e-10 -0.013616562 0 ;
	setAttr ".tk[9451]" -type "float3" 0 -0.013616562 0 ;
	setAttr ".tk[9452]" -type "float3" 0 -0.013616562 0 ;
	setAttr ".tk[9453]" -type "float3" 0 -0.013616562 0 ;
	setAttr ".tk[9454]" -type "float3" 0 -0.013616562 0 ;
	setAttr ".tk[9455]" -type "float3" 0 -0.013616562 0 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[12093]" "e[12097]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -8.3999977 4.3853936 -25.20002 ;
	setAttr ".rs" 1260021294;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -9.5999988913536072 4.3853936195373535 -25.200020670890808 ;
	setAttr ".cbx" -type "double3" -7.1999971568584442 4.3853936195373535 -25.200020670890808 ;
createNode polyMergeVert -n "polyMergeVert161";
	setAttr ".ics" -type "componentList" 4 "vtx[5868]" "vtx[5870]" "vtx[5872]" "vtx[9422:9424]";
	setAttr ".ix" -type "matrix" 60 0 0 0 0 0.25 0 0 0 0 60 0 0 -0.25 0 1;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak46";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[9422]" -type "float3" 0 -4.6651459 0 ;
	setAttr ".tk[9423]" -type "float3" 0 -4.6651459 0 ;
	setAttr ".tk[9424]" -type "float3" 0 -4.6651459 0 ;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :initialShadingGroup;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 18 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surfaces" "Particles" "Fluids" "Image Planes" "UI:" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 18 0 1 1 1 1 1
		 1 0 0 0 0 0 0 0 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "polyExtrudeFace2.out" "pCubeShape1.i";
connectAttr "polyMergeVert161.out" "pCubeShape2.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyTweak1.out" "polyExtrudeFace1.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polyCube1.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polyExtrudeFace2.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak2.ip";
connectAttr "polyCube2.out" "polyExtrudeFace3.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace3.mp";
connectAttr "polyTweak3.out" "polyExtrudeFace4.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polyExtrudeFace5.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polyExtrudeFace6.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace6.mp";
connectAttr "polyExtrudeFace5.out" "polyTweak5.ip";
connectAttr "polyTweak6.out" "polyExtrudeFace7.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace6.out" "polyTweak6.ip";
connectAttr "polyTweak7.out" "polyExtrudeFace8.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace8.mp";
connectAttr "polyExtrudeFace7.out" "polyTweak7.ip";
connectAttr "polyTweak8.out" "polyExtrudeFace9.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace9.mp";
connectAttr "polyExtrudeFace8.out" "polyTweak8.ip";
connectAttr "polyTweak9.out" "polyExtrudeFace10.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace10.mp";
connectAttr "polyExtrudeFace9.out" "polyTweak9.ip";
connectAttr "polyTweak10.out" "polyExtrudeFace11.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace11.mp";
connectAttr "polyExtrudeFace10.out" "polyTweak10.ip";
connectAttr "polyTweak11.out" "polyExtrudeFace12.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace12.mp";
connectAttr "polyExtrudeFace11.out" "polyTweak11.ip";
connectAttr "polyTweak12.out" "polyExtrudeFace13.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace13.mp";
connectAttr "polyExtrudeFace12.out" "polyTweak12.ip";
connectAttr "polyExtrudeFace13.out" "polyTweak13.ip";
connectAttr "polyTweak13.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "polyExtrudeFace14.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace14.mp";
connectAttr "polyTweak14.out" "polyExtrudeFace15.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace15.mp";
connectAttr "polyExtrudeFace14.out" "polyTweak14.ip";
connectAttr "polyTweak15.out" "polyExtrudeFace16.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace16.mp";
connectAttr "polyExtrudeFace15.out" "polyTweak15.ip";
connectAttr "polyTweak16.out" "polyExtrudeFace17.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace17.mp";
connectAttr "polyExtrudeFace16.out" "polyTweak16.ip";
connectAttr "polyTweak17.out" "polyExtrudeFace18.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace18.mp";
connectAttr "polyExtrudeFace17.out" "polyTweak17.ip";
connectAttr "polyTweak18.out" "polyExtrudeFace19.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace19.mp";
connectAttr "polyExtrudeFace18.out" "polyTweak18.ip";
connectAttr "polyTweak19.out" "polyExtrudeFace20.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace20.mp";
connectAttr "polyExtrudeFace19.out" "polyTweak19.ip";
connectAttr "polyTweak20.out" "polyExtrudeFace21.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace21.mp";
connectAttr "polyExtrudeFace20.out" "polyTweak20.ip";
connectAttr "polyTweak21.out" "polyExtrudeFace22.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace22.mp";
connectAttr "polyExtrudeFace21.out" "polyTweak21.ip";
connectAttr "polyTweak22.out" "polyExtrudeFace23.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace23.mp";
connectAttr "polyExtrudeFace22.out" "polyTweak22.ip";
connectAttr "polyTweak23.out" "polyExtrudeFace24.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace24.mp";
connectAttr "polyExtrudeFace23.out" "polyTweak23.ip";
connectAttr "polyTweak24.out" "polyExtrudeFace25.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace25.mp";
connectAttr "polyExtrudeFace24.out" "polyTweak24.ip";
connectAttr "polyTweak25.out" "polyExtrudeFace26.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace26.mp";
connectAttr "polyExtrudeFace25.out" "polyTweak25.ip";
connectAttr "polyTweak26.out" "polyExtrudeFace27.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace27.mp";
connectAttr "polyExtrudeFace26.out" "polyTweak26.ip";
connectAttr "polyTweak27.out" "polyExtrudeFace28.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace28.mp";
connectAttr "polyExtrudeFace27.out" "polyTweak27.ip";
connectAttr "polyTweak28.out" "polyExtrudeFace29.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace29.mp";
connectAttr "polyExtrudeFace28.out" "polyTweak28.ip";
connectAttr "polyTweak29.out" "polyExtrudeFace30.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace30.mp";
connectAttr "polyExtrudeFace29.out" "polyTweak29.ip";
connectAttr "polyTweak30.out" "polyExtrudeFace31.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace31.mp";
connectAttr "polyExtrudeFace30.out" "polyTweak30.ip";
connectAttr "polyTweak31.out" "polyExtrudeFace32.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace32.mp";
connectAttr "polyExtrudeFace31.out" "polyTweak31.ip";
connectAttr "polyTweak32.out" "polyExtrudeFace33.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace33.mp";
connectAttr "polyExtrudeFace32.out" "polyTweak32.ip";
connectAttr "polyTweak33.out" "polyExtrudeFace34.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace34.mp";
connectAttr "polyExtrudeFace33.out" "polyTweak33.ip";
connectAttr "polyTweak34.out" "polyExtrudeFace35.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace35.mp";
connectAttr "polyExtrudeFace34.out" "polyTweak34.ip";
connectAttr "polyTweak35.out" "polyExtrudeFace36.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace36.mp";
connectAttr "polyExtrudeFace35.out" "polyTweak35.ip";
connectAttr "polyTweak36.out" "polyExtrudeFace37.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace37.mp";
connectAttr "polyExtrudeFace36.out" "polyTweak36.ip";
connectAttr "polyTweak37.out" "polyExtrudeFace38.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace38.mp";
connectAttr "polyExtrudeFace37.out" "polyTweak37.ip";
connectAttr "polyTweak38.out" "polyExtrudeFace39.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace39.mp";
connectAttr "polyExtrudeFace38.out" "polyTweak38.ip";
connectAttr "polyExtrudeFace39.out" "polyTweak39.ip";
connectAttr "polyTweak39.out" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "polyTweak40.ip";
connectAttr "polyTweak40.out" "deleteComponent6.ig";
connectAttr "deleteComponent6.og" "polyTweak41.ip";
connectAttr "polyTweak41.out" "deleteComponent7.ig";
connectAttr "deleteComponent7.og" "polyMergeVert1.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert1.mp";
connectAttr "polyMergeVert1.out" "polyMergeVert2.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert2.mp";
connectAttr "polyMergeVert2.out" "polyMergeVert3.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert3.mp";
connectAttr "polyMergeVert3.out" "polyMergeVert4.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert4.mp";
connectAttr "polyMergeVert4.out" "polyMergeVert5.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert5.mp";
connectAttr "polyMergeVert5.out" "polyMergeVert6.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert6.mp";
connectAttr "polyMergeVert6.out" "polyMergeVert7.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert7.mp";
connectAttr "polyMergeVert7.out" "polyMergeVert8.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert8.mp";
connectAttr "polyMergeVert8.out" "polyMergeVert9.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert9.mp";
connectAttr "polyMergeVert9.out" "polyMergeVert10.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert10.mp";
connectAttr "polyMergeVert10.out" "polyMergeVert11.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert11.mp";
connectAttr "polyMergeVert11.out" "polyMergeVert12.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert12.mp";
connectAttr "polyMergeVert12.out" "polyMergeVert13.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert13.mp";
connectAttr "polyMergeVert13.out" "polyMergeVert14.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert14.mp";
connectAttr "polyMergeVert14.out" "polyMergeVert15.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert15.mp";
connectAttr "polyMergeVert15.out" "polyMergeVert16.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert16.mp";
connectAttr "polyMergeVert16.out" "polyMergeVert17.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert17.mp";
connectAttr "polyMergeVert17.out" "polyMergeVert18.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert18.mp";
connectAttr "polyMergeVert18.out" "polyMergeVert19.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert19.mp";
connectAttr "polyMergeVert19.out" "polyMergeVert20.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert20.mp";
connectAttr "polyMergeVert20.out" "polyMergeVert21.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert21.mp";
connectAttr "polyMergeVert21.out" "polyMergeVert22.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert22.mp";
connectAttr "polyMergeVert22.out" "polyMergeVert23.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert23.mp";
connectAttr "polyMergeVert23.out" "polyMergeVert24.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert24.mp";
connectAttr "polyMergeVert24.out" "polyMergeVert25.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert25.mp";
connectAttr "polyMergeVert25.out" "polyMergeVert26.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert26.mp";
connectAttr "polyMergeVert26.out" "polyMergeVert27.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert27.mp";
connectAttr "polyMergeVert27.out" "polyMergeVert28.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert28.mp";
connectAttr "polyMergeVert28.out" "polyMergeVert29.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert29.mp";
connectAttr "polyMergeVert29.out" "polyMergeVert30.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert30.mp";
connectAttr "polyMergeVert30.out" "polyMergeVert31.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert31.mp";
connectAttr "polyMergeVert31.out" "polyMergeVert32.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert32.mp";
connectAttr "polyMergeVert32.out" "polyMergeVert33.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert33.mp";
connectAttr "polyMergeVert33.out" "polyMergeVert34.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert34.mp";
connectAttr "polyMergeVert34.out" "polyMergeVert35.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert35.mp";
connectAttr "polyMergeVert35.out" "polyMergeVert36.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert36.mp";
connectAttr "polyMergeVert36.out" "polyMergeVert37.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert37.mp";
connectAttr "polyMergeVert37.out" "polyMergeVert38.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert38.mp";
connectAttr "polyMergeVert38.out" "polyMergeVert39.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert39.mp";
connectAttr "polyMergeVert39.out" "polyMergeVert40.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert40.mp";
connectAttr "polyMergeVert40.out" "polyMergeVert41.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert41.mp";
connectAttr "polyMergeVert41.out" "polyMergeVert42.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert42.mp";
connectAttr "polyMergeVert42.out" "polyMergeVert43.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert43.mp";
connectAttr "polyMergeVert43.out" "polyMergeVert44.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert44.mp";
connectAttr "polyMergeVert44.out" "polyMergeVert45.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert45.mp";
connectAttr "polyMergeVert45.out" "polyMergeVert46.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert46.mp";
connectAttr "polyMergeVert46.out" "polyMergeVert47.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert47.mp";
connectAttr "polyMergeVert47.out" "polyMergeVert48.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert48.mp";
connectAttr "polyMergeVert48.out" "polyMergeVert49.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert49.mp";
connectAttr "polyMergeVert49.out" "polyMergeVert50.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert50.mp";
connectAttr "polyMergeVert50.out" "polyMergeVert51.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert51.mp";
connectAttr "polyMergeVert51.out" "polyMergeVert52.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert52.mp";
connectAttr "polyMergeVert52.out" "polyMergeVert53.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert53.mp";
connectAttr "polyMergeVert53.out" "polyMergeVert54.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert54.mp";
connectAttr "polyMergeVert54.out" "polyMergeVert55.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert55.mp";
connectAttr "polyMergeVert55.out" "polyMergeVert56.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert56.mp";
connectAttr "polyMergeVert56.out" "polyMergeVert57.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert57.mp";
connectAttr "polyMergeVert57.out" "polyMergeVert58.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert58.mp";
connectAttr "polyMergeVert58.out" "polyMergeVert59.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert59.mp";
connectAttr "polyMergeVert59.out" "polyMergeVert60.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert60.mp";
connectAttr "polyMergeVert60.out" "polyMergeVert61.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert61.mp";
connectAttr "polyMergeVert61.out" "polyMergeVert62.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert62.mp";
connectAttr "polyMergeVert62.out" "polyMergeVert63.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert63.mp";
connectAttr "polyMergeVert63.out" "polyMergeVert64.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert64.mp";
connectAttr "polyMergeVert64.out" "polyMergeVert65.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert65.mp";
connectAttr "polyMergeVert65.out" "polyMergeVert66.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert66.mp";
connectAttr "polyMergeVert66.out" "polyMergeVert67.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert67.mp";
connectAttr "polyMergeVert67.out" "polyMergeVert68.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert68.mp";
connectAttr "polyMergeVert68.out" "polyMergeVert69.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert69.mp";
connectAttr "polyMergeVert69.out" "polyMergeVert70.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert70.mp";
connectAttr "polyMergeVert70.out" "polyMergeVert71.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert71.mp";
connectAttr "polyMergeVert71.out" "polyMergeVert72.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert72.mp";
connectAttr "polyMergeVert72.out" "polyMergeVert73.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert73.mp";
connectAttr "polyMergeVert73.out" "polyMergeVert74.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert74.mp";
connectAttr "polyMergeVert74.out" "polyMergeVert75.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert75.mp";
connectAttr "polyMergeVert75.out" "polyMergeVert76.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert76.mp";
connectAttr "polyMergeVert76.out" "polyMergeVert77.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert77.mp";
connectAttr "polyMergeVert77.out" "polyMergeVert78.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert78.mp";
connectAttr "polyMergeVert78.out" "polyMergeVert79.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert79.mp";
connectAttr "polyMergeVert79.out" "polyMergeVert80.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert80.mp";
connectAttr "polyMergeVert80.out" "polyMergeVert81.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert81.mp";
connectAttr "polyMergeVert81.out" "polyMergeVert82.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert82.mp";
connectAttr "polyMergeVert82.out" "polyMergeVert83.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert83.mp";
connectAttr "polyMergeVert83.out" "polyMergeVert84.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert84.mp";
connectAttr "polyMergeVert84.out" "polyMergeVert85.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert85.mp";
connectAttr "polyMergeVert85.out" "polyMergeVert86.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert86.mp";
connectAttr "polyMergeVert86.out" "polyMergeVert87.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert87.mp";
connectAttr "polyMergeVert87.out" "polyMergeVert88.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert88.mp";
connectAttr "polyMergeVert88.out" "polyMergeVert89.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert89.mp";
connectAttr "polyMergeVert89.out" "polyMergeVert90.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert90.mp";
connectAttr "polyMergeVert90.out" "polyMergeVert91.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert91.mp";
connectAttr "polyMergeVert91.out" "polyMergeVert92.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert92.mp";
connectAttr "polyMergeVert92.out" "polyMergeVert93.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert93.mp";
connectAttr "polyMergeVert93.out" "polyMergeVert94.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert94.mp";
connectAttr "polyMergeVert94.out" "polyMergeVert95.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert95.mp";
connectAttr "polyMergeVert95.out" "polyMergeVert96.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert96.mp";
connectAttr "polyMergeVert96.out" "polyMergeVert97.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert97.mp";
connectAttr "polyMergeVert97.out" "polyMergeVert98.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert98.mp";
connectAttr "polyMergeVert98.out" "polyMergeVert99.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert99.mp";
connectAttr "polyMergeVert99.out" "polyMergeVert100.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert100.mp";
connectAttr "polyMergeVert100.out" "polyMergeVert101.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert101.mp";
connectAttr "polyMergeVert101.out" "polyMergeVert102.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert102.mp";
connectAttr "polyMergeVert102.out" "polyMergeVert103.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert103.mp";
connectAttr "polyMergeVert103.out" "polyMergeVert104.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert104.mp";
connectAttr "polyMergeVert104.out" "polyMergeVert105.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert105.mp";
connectAttr "polyMergeVert105.out" "polyMergeVert106.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert106.mp";
connectAttr "polyMergeVert106.out" "polyMergeVert107.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert107.mp";
connectAttr "polyMergeVert107.out" "polyMergeVert108.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert108.mp";
connectAttr "polyMergeVert108.out" "polyMergeVert109.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert109.mp";
connectAttr "polyMergeVert109.out" "polyMergeVert110.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert110.mp";
connectAttr "polyMergeVert110.out" "polyMergeVert111.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert111.mp";
connectAttr "polyMergeVert111.out" "polyMergeVert112.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert112.mp";
connectAttr "polyMergeVert112.out" "polyMergeVert113.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert113.mp";
connectAttr "polyMergeVert113.out" "polyMergeVert114.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert114.mp";
connectAttr "polyMergeVert114.out" "polyMergeVert115.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert115.mp";
connectAttr "polyMergeVert115.out" "polyMergeVert116.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert116.mp";
connectAttr "polyMergeVert116.out" "polyMergeVert117.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert117.mp";
connectAttr "polyMergeVert117.out" "polyMergeVert118.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert118.mp";
connectAttr "polyMergeVert118.out" "polyMergeVert119.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert119.mp";
connectAttr "polyMergeVert119.out" "polyMergeVert120.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert120.mp";
connectAttr "polyMergeVert120.out" "polyMergeVert121.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert121.mp";
connectAttr "polyMergeVert121.out" "polyMergeVert122.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert122.mp";
connectAttr "polyMergeVert122.out" "polyMergeVert123.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert123.mp";
connectAttr "polyMergeVert123.out" "polyMergeVert124.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert124.mp";
connectAttr "polyMergeVert124.out" "polyMergeVert125.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert125.mp";
connectAttr "polyMergeVert125.out" "polyMergeVert126.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert126.mp";
connectAttr "polyMergeVert126.out" "polyMergeVert127.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert127.mp";
connectAttr "polyMergeVert127.out" "polyMergeVert128.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert128.mp";
connectAttr "polyMergeVert128.out" "polyMergeVert129.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert129.mp";
connectAttr "polyMergeVert129.out" "polyMergeVert130.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert130.mp";
connectAttr "polyMergeVert130.out" "polyMergeVert131.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert131.mp";
connectAttr "polyMergeVert131.out" "polyMergeVert132.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert132.mp";
connectAttr "polyMergeVert132.out" "polyMergeVert133.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert133.mp";
connectAttr "polyMergeVert133.out" "polyMergeVert134.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert134.mp";
connectAttr "polyMergeVert134.out" "polyMergeVert135.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert135.mp";
connectAttr "polyMergeVert135.out" "polyMergeVert136.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert136.mp";
connectAttr "polyMergeVert136.out" "polyMergeVert137.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert137.mp";
connectAttr "polyMergeVert137.out" "polyMergeVert138.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert138.mp";
connectAttr "polyMergeVert138.out" "polyMergeVert139.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert139.mp";
connectAttr "polyMergeVert139.out" "polyMergeVert140.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert140.mp";
connectAttr "polyMergeVert140.out" "polyMergeVert141.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert141.mp";
connectAttr "polyMergeVert141.out" "polyMergeVert142.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert142.mp";
connectAttr "polyMergeVert142.out" "polyMergeVert143.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert143.mp";
connectAttr "polyMergeVert143.out" "polyMergeVert144.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert144.mp";
connectAttr "polyMergeVert144.out" "polyMergeVert145.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert145.mp";
connectAttr "polyMergeVert145.out" "polyMergeVert146.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert146.mp";
connectAttr "polyMergeVert146.out" "polyMergeVert147.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert147.mp";
connectAttr "polyMergeVert147.out" "polyMergeVert148.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert148.mp";
connectAttr "polyMergeVert148.out" "polyMergeVert149.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert149.mp";
connectAttr "polyMergeVert149.out" "polyMergeVert150.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert150.mp";
connectAttr "polyMergeVert150.out" "polyMergeVert151.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert151.mp";
connectAttr "polyMergeVert151.out" "polyMergeVert152.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert152.mp";
connectAttr "polyMergeVert152.out" "polyMergeVert153.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert153.mp";
connectAttr "polyMergeVert153.out" "polyMergeVert154.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert154.mp";
connectAttr "polyMergeVert154.out" "polyMergeVert155.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert155.mp";
connectAttr "polyMergeVert155.out" "polyMergeVert156.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert156.mp";
connectAttr "polyMergeVert156.out" "polyMergeVert157.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert157.mp";
connectAttr "polyMergeVert157.out" "polyMergeVert158.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert158.mp";
connectAttr "polyTweak42.out" "polyBridgeEdge1.ip";
connectAttr "pCubeShape2.wm" "polyBridgeEdge1.mp";
connectAttr "polyMergeVert158.out" "polyTweak42.ip";
connectAttr "polyBridgeEdge1.out" "polyBridgeEdge2.ip";
connectAttr "pCubeShape2.wm" "polyBridgeEdge2.mp";
connectAttr "polyBridgeEdge2.out" "polyBridgeEdge3.ip";
connectAttr "pCubeShape2.wm" "polyBridgeEdge3.mp";
connectAttr "polyBridgeEdge3.out" "polyBridgeEdge4.ip";
connectAttr "pCubeShape2.wm" "polyBridgeEdge4.mp";
connectAttr "polyBridgeEdge4.out" "polyBridgeEdge5.ip";
connectAttr "pCubeShape2.wm" "polyBridgeEdge5.mp";
connectAttr "polyBridgeEdge5.out" "polyBridgeEdge6.ip";
connectAttr "pCubeShape2.wm" "polyBridgeEdge6.mp";
connectAttr "polyBridgeEdge6.out" "polyBridgeEdge7.ip";
connectAttr "pCubeShape2.wm" "polyBridgeEdge7.mp";
connectAttr "polyBridgeEdge7.out" "polyBridgeEdge8.ip";
connectAttr "pCubeShape2.wm" "polyBridgeEdge8.mp";
connectAttr "polyBridgeEdge8.out" "polyTweak43.ip";
connectAttr "polyTweak43.out" "deleteComponent8.ig";
connectAttr "deleteComponent8.og" "polyExtrudeEdge1.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeEdge1.mp";
connectAttr "polyTweak44.out" "polyMergeVert159.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert159.mp";
connectAttr "polyExtrudeEdge1.out" "polyTweak44.ip";
connectAttr "polyTweak45.out" "polyMergeVert160.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert160.mp";
connectAttr "polyMergeVert159.out" "polyTweak45.ip";
connectAttr "polyMergeVert160.out" "polyExtrudeEdge2.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeEdge2.mp";
connectAttr "polyTweak46.out" "polyMergeVert161.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert161.mp";
connectAttr "polyExtrudeEdge2.out" "polyTweak46.ip";
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of BigLevelThing.ma

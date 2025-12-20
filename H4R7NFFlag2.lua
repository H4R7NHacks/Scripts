if not setfflag then
	warn("setfflag not supported")
	return
end

local flagtables = {
	FFlagHandleAltEnterFullscreenManually = false,
	FLogNetwork = 7,
	DFFlagDisableDPIScale = false,
	DFIntTaskSchedulerTargetFps = 9999,
    FFlagTaskSchedulerLimitTargetFpsTo2402 = false,
	FIntFullscreenTitleBarTriggerDelayMillis = 3600000,
	FIntFontSizePadding = 2,
	DFIntCanHideGuiGroupId = 32380007,
	DFIntTextureQualityOverride = 0,
	FIntDebugForceMSAASamples = 1,
	DFFlagTextureQualityOverrideEnabled = true,
	FIntRenderShadowIntensity = 0,
	FIntTerrainArraySliceSize = 0,
	FFlagDisablePostFx = true,
	FFlagDebugForceFutureIsBrightPhase2 = false,
	DFFlagDebugRenderForceTechnologyVoxel = true,
	FFlagDebugForceFutureIsBrightPhase3 = false,
	FFlagDebugGraphicsPreferD3D11 = true,
	FFlagTerrainFixWaterLevel = true,
	DFFlagFixNavigationAnalyticDuplicatePlaceId = true,
	FFlagVideoServiceAddHardwareCodecMetrics = true,
	DFFlagHttpFixUnfinishedBody = true,
	FFlagUIPageLayoutCurrentPageLayoutOrderChangeFix = true,
	FIntDebugFRMOptionalMSAALevelOverride = 0,
	DFFlagFixUICornerStrokeConflict = true,
	DFFlagFixLadderSearchDepth = true,
	FFlagAssetConfigFixBadIdVerifyState = true,
	FFlagDebugDisableTelemetryPoint = true,
	DFIntSimOwnedNOUCountThresholdMillionth = 2147483647,
	FFlagRenderModelMeshVLayoutFix = true,
	DFIntCodecMaxOutgoingFrames = 2139999999,
	FFlagTextureGeneratorPreviewAnimationFix = true,
	DFFlagDebugPauseVoxelizer = true,
	FFlagFixSpecialFileMeshToIc = true,
	FFlagUserHideCharacterParticlesInFirstPerson = true,
	DFIntInterpolationDtLimitForLod = 1,
	FFlagPerformanceControlAverageTunableQualityFix = true,
	FFlagFastLoadingAssets = true,
	FFlagFastGPULightCulling3 = true,
	FStringVoiceBetaBadgeLearnMoreLink = nil,
	FFlagAnimationTrackStepFix = true,
	DFIntPerformanceControlFrameTimeMax = 1,
	FFlagFixSurfaceGuisBreakingAfterRespawn = true,
	FIntDebugTextureManagerSkipMips = 8,
	FFlagControlBetaBadgeWithGuac = false,
	FFlagFixFirstPersonMouseCursorSnapping_CenterPos = true,
	FFlagFixGetHumanoidForAccessories = true,
	FFlagRenderDynamicResolutionScale7 = true,
	DFFlagVisBugFixVR = true,
	DFIntNumFramesAllowedToBeAboveError = 0,
	DFFlagFixServerQueuePushBack = true,
	FFlagNewLightAttenuation = true,
	FFlagImmHandlerFixJapaneseAndKorean3 = true,
	DFFlagFixHumanoidRootPartRaycasts = true,
	DFIntMaxProcessPacketsStepsPerCyclic = 2139999999,
	FFlagFixFileMenuFiles = true,
	FFlagCLI_148857_GenerationServiceTestingFixes = true,
	FIntCLI20390_2 = 0,
	DFFlagTimerServiceFix = true,
	FFlagSimEnableDCD16 = true,
	DFIntRaknetBandwidthPingSendEveryXSeconds = -1,
	DFIntClientPacketMinMicroseconds = 1,
	FFlagEditableImageProjectionOOBFix = true,
	FIntFRMMaxGrassDistance = 0,
	FFlagFixTextboxSinkingInputOfOverlappingButtons = true,
	DFIntMaxProcessPacketsStepsAccumulated = 0,
	FFlagVideoFixEncryptedAlignment = true,
	FFlagAssetPreloadingIXP = true,
	DFFlagPhantomFreezeKeepAliveFix = true,
	DFFlagAudioEnableVolumetricPanningForPolys = true,
	DFFlagVoiceFixBracesInBraces = true,
	DFIntCullFactorPixelThresholdShadowMapLowQuality = 2147483647,
	FFlagRenderMobileNeonHighlightFix = true,
	FFlagPreloadAllFonts = true,
	FFlagToolboxFixMarketplacePublish = true,
	FFlagContentProviderPreloadHangTelemetry = false,
	FFlagUserFixOverlappingRtlChatMessages = true,
	DFIntCullFactorPixelThresholdShadowMapHighQuality = 2147483647,
	DFIntCSGLevelOfDetailSwitchingDistance = 0,
	DFFlagTeleportClientAssetPreloadingEnabledIXP = true,
	FIntInterpolationAwareTargetTimeLerpHundredth = 100,
	FFlagChatTranslationEnableSystemMessage = false,
	DFIntDebugRestrictGCDistance = 1,
	FFlagDebugCheckRenderThreading = true,
	DFIntClientPacketExcessMicroseconds = 1,
	FFlagFixStrangerThingsIssueUsingAdditionalInvalidationSignal = true,
	DFFlagSimSolverFixRodGS = true,
	FIntRuntimeMaxNumOfLatches = 20000,
	DFFlagDebugSimSolverPrimalDtFix = true,
	FFlagDebugDisableTelemetryV2Event = true,
	FFlagFixGLResourceFreeOnDeviceShutdown = true,
	FFlagNavigationFixNewHeuristic = true,
	DFFlagDebugSkipMeshVoxelizer = true,
	FFlagFixSmoothingDegenerateTriangles = true,
	FIntInterpolationMaxDelayMSec = 0,
	FIntUnifiedLightingBlendZone = 0,
	DFIntDebugFRMQualityLevelOverride = 1,
	FFlagDebugDisableTelemetryV2Counter = true,
	FFlagEnableInGameMenuChrome = true,
	DFIntClientPacketHealthyAllocationPercent = 50,
	FFlagOptimizeAnimations = true,
	FIntRuntimeMaxNumOfConditions = 20000,
	DFIntTargetTimeDelayFacctorTenths = 0,
	FFlagAdServiceEnabled = false,
	FFlagDebugSkyGray = true,
	FFlagDebugDisplayFPS = true,
	DFIntClientPacketMaxDelayMs = 0,
	FIntFRMMinGrassDistance = 0,
	FStringTerrainMaterialTablePre2022 = "",
	FStringTerrainMaterialTable2022 = "",
	FIntRuntimeMaxNumOfThreads = 20000,
	FIntRuntimeMaxNumOfMutexes = 20000,
	FIntRuntimeMaxNumOfSchedulers = 20000,
}

local function normalize(k)
	return k
		:gsub("^DFInt", "")
		:gsub("^DFFlag", "")
		:gsub("^FFlag", "")
		:gsub("^FInt", "")
		:gsub("FString", "")
		:gsub("FLog", "")
end

local function applyFlags()
	for k, v in pairs(flagtables) do
		local nk = normalize(k)

		pcall(function()
			setfflag(nk, v)
		end)

		pcall(function()
			setfflag(k, v)
		end)
	end
end


applyFlags()


task.defer(applyFlags)
task.wait()
applyFlags()


local RunService = game:GetService("RunService")

RunService.Heartbeat:Connect(function()
	applyFlags()
end)


task.spawn(function()
	while true do
		task.wait(1)
		applyFlags()
	end
end)


pcall(function()
	game:GetService("UserInputService").WindowFocused:Connect(applyFlags)
	game:GetService("UserInputService").WindowFocusReleased:Connect(applyFlags)
end)


pcall(function()
	game:GetService("Players").LocalPlayer.OnTeleport:Connect(function()
		task.wait(1)
		applyFlags()
	end)
end)

game:GetService("StarterGui"):SetCore("SendNotification", {  Title = "H4R7N FFlag Script", Text = "Eitra, seni seviyorum aşkım! <3", Duration = 20})
print("Adamsın Eitra!")

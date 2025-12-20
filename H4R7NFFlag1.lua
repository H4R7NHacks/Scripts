if not setfflag then
	warn("setfflag not supported")
	return
end

local flagtables = {
	DFFlagDebugPerfMode = true,
	FFlagHandleAltEnterFullscreenManually = false,
	FLogNetwork = 7,
	DFIntTaskSchedulerTargetFps = 999,
	FIntRenderShadowIntensity = 0,
	FFlagDisablePostFx = true,
	FIntTerrainArraySliceSize = 0,
	DFIntClientPacketMaxDelayMs = 1,
	FIntFontSizePadding = 2,
	FIntDebugForceMSAASamples = 1,
	FFlagDebugGraphicsPreferD3D11 = true,
	DFIntClientPacketMinMicroseconds = 1,
	DFIntRuntimeTickrate = 2139999999,
	DFFlagDisableDPIScale = true,
	DFIntRakNetPingFrequencyMillisecond = 10,
	FFlagRenderHighlightPass = true,
	FIntMockClientLightingTechnologyIxpExperimentMode = 0,
	FFlagDebugDisableTelemetryV2Stat = true,
	DFIntVoiceChatRollOffMode = 2,
	FIntFullscreenTitleBarTriggerDelayMillis = 3600000,
	DFIntMinimumNumberMechanismsForMT = 1,
	DFIntOptimizePingThreshold = 50,
	DFIntPlayerNetworkUpdateQueueSize = 20,
	FFlagGlobalWindActivated = false,
	DFIntCanHideGuiGroupId = 32380007,
	FFlagOptimizeNetwork = true,
	DFFlagTextureQualityOverrideEnabled = true,
	DFIntMaxReceiveToDeserializeLatencyMilliseconds = 1,
	FIntRuntimeMaxNumOfMutexes = 20000,
	DFIntCodecMaxOutgoingFrames = 10000,
	FFlagDebugForceFutureIsBrightPhase2 = true,
	DFIntMaxAverageFrameDelayExceedFactor = 3,
	DFFlagDebugRenderForceTechnologyVoxel = true,
	FFlagOptimizeServerTickRate = true,
	DFIntTextureQualityOverride = 3,
	DFStringRobloxAnalyticsURL = nil,
	DFStringCrashUploadToBacktraceMacPlayerToken = nil,
	FFlagEnableMenuModernizationABTest = false,
	DFIntClientLightingTechnologyChangedTelemetryHundredthsPercent = 0,
	FFlagDisableNewIGMinDUA = true,
	DFIntActionStationDebounceTime = 0,
	FIntDebugTextureManagerSkipMips = 0,
	FIntFRMMaxGrassDistance = 0,
	DFIntServerTickRate = 60,
	DFIntMinimalNetworkPrediction = 1,
	DFIntConnectionMTUSize = 900,
	FIntMockClientLightingTechnologyIxpExperimentQualityLevel = 7,
	DFIntClientPacketMaxFrameMicroseconds = 1,
	FFlagDebugSkyGray = true,
	DFIntMegaReplicatorNetworkQualityProcessorUnit = 10,
	DFIntParallelAdaptiveInterpolationBatchCount = 1,
	DFStringLightstepHTTPTransportUrlPath = nil,
	DFIntWaitOnRecvFromLoopEndedMS = 100,
	DFIntClientPacketUnhealthyContEscMsPerSecond = 1,
	DFIntGameNetPVHeaderRotationalVelocityZeroCutoffExponent = -1,
	DFIntLargePacketQueueSizeCutoffMB = 1000,
	FIntRakNetDatagramMessageIdArrayLength = 8192,
	DFIntRuntimeConcurrency = 2139999999,
	DFFlagDebugPauseVoxelizer = true,
	FIntInterpolationAwareTargetTimeLerpHundredth = 100,
	FFlagEnableChromePinnedChat = true,
	FFlagEnableMenuControlsABTest = false,
	FFlagOptimizeNetworkTransport = true,
	FIntRuntimeMaxNumOfLatches = 20000,
	DFStringAltTelegrafHTTPTransportUrl = nil,
	DFIntMaxFrameBufferSize = -1,
	DFIntClientPacketExcessMicroseconds = 1,
	DFFlagBrowserTrackerIdTelemetryEnabled = false,
	FFlagEnableInGameMenuModernization = true,
	DFIntClientPacketHealthyMsPerSecondLimit = 1,
	DFIntGameNetPVHeaderRotationOrientIdToleranceExponent = -1,
	FStringCoreScriptBacktraceErrorUploadToken = nil,
	DFIntVoiceChatRollOffMinDistance = 1,
	DFFlagEnableLightstepReporting2 = false,
	FIntRuntimeMaxNumOfSchedulers = 20000,
	FStringGamesUrlPath = "/games/",
	FFlagAdServiceEnabled = false,
	DFIntRakNetApplicationFeedbackInitialSpeedBPS = 2139999999,
	DFIntGameNetPVHeaderLinearVelocityZeroCutoffExponent = -1,
	DFIntRakNetLoopMs = 1,
	FFlagEnableInGameMenuControls = true,
	DFIntRakNetClockDriftAdjustmentPerPingMillisecond = 2139999999,
	DFIntVoiceChatRollOffMaxDistance = 300,
	FIntTaskSchedulerMaxNumOfJobs = 2139999999,
	FIntMaquettesFrameRateBufferPercentage = 4,
	DFIntInterpolationDtLimitForLod = 1,
	FFlagDebugDisableTelemetryV2Counter = true,
	FIntFRMMinGrassDistance = 0,
	DFIntRaknetBandwidthPingSendEveryXSeconds = 1,
	DFIntNetworkLatencyTolerance = 1,
	DFIntNumFramesAllowedToBeAboveError = 0,
	FFlagPreloadAllFonts = true,
	FFlagDebugDisplayFPS = true,
	DFIntLightstepHTTPTransportHundredthsPercent2 = 0,
	DFIntMaxFramesToSend = 1,
	FFlagEnableV3MenuABTest3 = false,
	DFIntRaknetBandwidthInfluxHundredthsPercentageV2 = 10000,
	DFStringLightstepToken = nil,
	FFlagEnableInGameMenuChrome = true,
	FFlagDebugDisableTelemetryEventIngest = true,
	FFlagDebugDisableTelemetryV2Event = true,
	FFlagDebugDisableTelemetryPoint = true,
	FFlagEnableInGameMenuChromeABTest3 = false,
	DFIntMaxProcessPacketsJobScaling = 10000,
	FIntRenderGrassDetailStrands = 0,
	FFlagCommitToGraphicsQualityFix = true,
	DFIntRunningBaseOrientationP = 450,
	FFlagDebugDisableTelemetryEphemeralCounter = true,
	DFIntRakNetResendRttMultiple = 1,
	DFIntPerformanceControlFrameTimeMax = 1,
	FFlagMSRefactor5 = false,
	DFStringAltHttpPointsReporterUrl = nil,
	DFIntClientLightingEnvmapPlacementTelemetryHundredthsPercent = 100,
	FFlagDebugSimIntegrationStabilityTesting = true,
	DFIntMaxProcessPacketsStepsAccumulated = 0,
	FFlagDebugDisableTelemetryEphemeralStat = true,
	DFStringTelegrafHTTPTransportUrl = nil,
	FIntRuntimeMaxNumOfThreads = 20000,
	DFIntGameNetPVHeaderTranslationZeroCutoffExponent = -1,
	FFlagEnableMenuModernizationABTest2 = false,
	DFIntClientPacketHealthyAllocationPercent = 100,
	FIntRuntimeMaxNumOfConditions = 20000,
	FFlagFixGraphicsQuality = true,
	DFStringLightstepHTTPTransportUrlHost = nil,
	DFIntS2PhysicsSenderRate = 250,
	DFIntInterpolationNumMechanismsPerTask = 100,
	FFlagOptimizeNetworkRouting = true,
	DFIntRakNetSelectUnblockSocketWriteDurationMs = 10,
	DFFlagBaseNetworkMetrics = false,
	DFStringCrashUploadToBacktraceWindowsPlayerToken = nil,
	DFIntCodecMaxIncomingPackets = 10000,
	FIntRobloxGuiBlurIntensity = 0,
	DFIntPlayerNetworkUpdateRate = 60,
	DFStringTelemetryV2Url = nil,
	DFIntWaitOnUpdateNetworkLoopEndedMS = 100,
	FIntInterpolationMaxDelayMSec = 0,
	DFStringHttpPointsReporterUrl = nil,
	FIntNumFramesToCaptureCallStack = 1,
	DFIntAccelerationTimeThreshold = 0,
	DFIntRakNetApplicationFeedbackMaxSpeedBPS = 2139999999,
	DFIntTargetTimeDelayFacctorTenths = 1,
	FFlagTaskSchedulerLimitTargetFpsTo2402 = false,
	DFIntNewRunningBaseAltitudeD = 195,
	DFFlagDebugDrawBroadPhaseAABBs = false,
	DFIntRakNetMinAckGrowthPercent = 100,
	DFIntMaxProcessPacketsStepsPerCyclic = 5000,
	FFlagNewLightAttenuation = true,
	FFlagFastGPULightCulling3 = true,
	DFIntNetworkPrediction = 120,
	FFlagGlobalWindRendering = false,
	FIntRakNetResendBufferArrayLength = 512,
	DFStringCrashUploadToBacktraceBaseUrl = nil,
	DFIntServerPhysicsUpdateRate = 60,
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

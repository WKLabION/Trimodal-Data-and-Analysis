<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="15008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="whole brain TP" Type="Folder">
			<Property Name="NI.SortType" Type="Int">3</Property>
			<Item Name="global variables" Type="Folder">
				<Item Name="params.vi" Type="VI" URL="../global variables/params.vi"/>
			</Item>
			<Item Name="sub vi" Type="Folder">
				<Item Name="XPS-UNIFIED" Type="Folder">
					<Item Name="LabVIEW VIs" Type="Folder">
						<Item Name="LabVIEW Source Code" Type="Folder">
							<Item Name="Dll" Type="Folder">
								<Item Name="Newport.XPS.CommandInterface.dll" Type="Document" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/Dll/Newport.XPS.CommandInterface.dll"/>
								<Item Name="TCPIPWrap.dll" Type="Document" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/Dll/TCPIPWrap.dll"/>
							</Item>
							<Item Name="LWXPS.aliases" Type="Document" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS.aliases"/>
							<Item Name="LWXPS.lvlps" Type="Document" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS.lvlps"/>
							<Item Name="LWXPS.lvproj" Type="Document" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS.lvproj"/>
							<Item Name="LWXPS_AbortMove.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_AbortMove.vi"/>
							<Item Name="LWXPS_ActionExtendedListGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_ActionExtendedListGet.vi"/>
							<Item Name="LWXPS_ActionListGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_ActionListGet.vi"/>
							<Item Name="LWXPS_APIExtendedListGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_APIExtendedListGet.vi"/>
							<Item Name="LWXPS_APIListAMATGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_APIListAMATGet.vi"/>
							<Item Name="LWXPS_APIListGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_APIListGet.vi"/>
							<Item Name="LWXPS_APIListStandardGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_APIListStandardGet.vi"/>
							<Item Name="LWXPS_CIEHeaderGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_CIEHeaderGet.vi"/>
							<Item Name="LWXPS_CIERegister32ValueGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_CIERegister32ValueGet.vi"/>
							<Item Name="LWXPS_CIERegister64ValueGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_CIERegister64ValueGet.vi"/>
							<Item Name="LWXPS_CIERegisterValueSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_CIERegisterValueSet.vi"/>
							<Item Name="LWXPS_CIEReset.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_CIEReset.vi"/>
							<Item Name="LWXPS_Close.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_Close.vi"/>
							<Item Name="LWXPS_ColseAllOtherSockets.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_ColseAllOtherSockets.vi"/>
							<Item Name="LWXPS_ControllerMotionKernelMinMaxTimeLoadGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_ControllerMotionKernelMinMaxTimeLoadGet.vi"/>
							<Item Name="LWXPS_ControllerMotionKernelMinMaxTimeLoadReset.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_ControllerMotionKernelMinMaxTimeLoadReset.vi"/>
							<Item Name="LWXPS_ControllerMotionKernelPeriodMinMaxGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_ControllerMotionKernelPeriodMinMaxGet.vi"/>
							<Item Name="LWXPS_ControllerMotionKernelPeriodMinMaxReset.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_ControllerMotionKernelPeriodMinMaxReset.vi"/>
							<Item Name="LWXPS_ControllerMotionKernelTimeLoadGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_ControllerMotionKernelTimeLoadGet.vi"/>
							<Item Name="LWXPS_ControllerRTTimeGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_ControllerRTTimeGet.vi"/>
							<Item Name="LWXPS_ControllerSlaveStatusGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_ControllerSlaveStatusGet.vi"/>
							<Item Name="LWXPS_ControllerSlaveStatusStringGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_ControllerSlaveStatusStringGet.vi"/>
							<Item Name="LWXPS_ControllerStatusGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_ControllerStatusGet.vi"/>
							<Item Name="LWXPS_ControllerStatusListGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_ControllerStatusListGet.vi"/>
							<Item Name="LWXPS_ControllerStatusRead.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_ControllerStatusRead.vi"/>
							<Item Name="LWXPS_ControllerStatusStringGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_ControllerStatusStringGet.vi"/>
							<Item Name="LWXPS_ControllerSynchronizeCorrectorISR.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_ControllerSynchronizeCorrectorISR.vi"/>
							<Item Name="LWXPS_CPUCoreAndBoardSupplyVoltagesGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_CPUCoreAndBoardSupplyVoltagesGet.vi"/>
							<Item Name="LWXPS_CPUTemperatureAndFanSpeedGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_CPUTemperatureAndFanSpeedGet.vi"/>
							<Item Name="LWXPS_CreateQNXEvent.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_CreateQNXEvent.vi"/>
							<Item Name="LWXPS_DebugCorrectorTimeUsageGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_DebugCorrectorTimeUsageGet.vi"/>
							<Item Name="LWXPS_DebugProfilerTimeUsageGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_DebugProfilerTimeUsageGet.vi"/>
							<Item Name="LWXPS_DebugServitudesTimeUsageGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_DebugServitudesTimeUsageGet.vi"/>
							<Item Name="LWXPS_DebugTraceCommunicationReset.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_DebugTraceCommunicationReset.vi"/>
							<Item Name="LWXPS_DebugTraceCommunicationSave.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_DebugTraceCommunicationSave.vi"/>
							<Item Name="LWXPS_DoubleGlobalArrayGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_DoubleGlobalArrayGet.vi"/>
							<Item Name="LWXPS_DoubleGlobalArraySet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_DoubleGlobalArraySet.vi"/>
							<Item Name="LWXPS_EEPROMCIESet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_EEPROMCIESet.vi"/>
							<Item Name="LWXPS_EEPROMDACOffsetCIESet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_EEPROMDACOffsetCIESet.vi"/>
							<Item Name="LWXPS_EEPROMDriverSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_EEPROMDriverSet.vi"/>
							<Item Name="LWXPS_EEPROMINTSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_EEPROMINTSet.vi"/>
							<Item Name="LWXPS_ElapsedTimeGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_ElapsedTimeGet.vi"/>
							<Item Name="LWXPS_EndJog.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_EndJog.vi"/>
							<Item Name="LWXPS_Equals.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_Equals.vi"/>
							<Item Name="LWXPS_ErrorListGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_ErrorListGet.vi"/>
							<Item Name="LWXPS_ErrorStringGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_ErrorStringGet.vi"/>
							<Item Name="LWXPS_EventAdd.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_EventAdd.vi"/>
							<Item Name="LWXPS_EventExtendedAllGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_EventExtendedAllGet.vi"/>
							<Item Name="LWXPS_EventExtendedConfigurationActionGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_EventExtendedConfigurationActionGet.vi"/>
							<Item Name="LWXPS_EventExtendedConfigurationActionSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_EventExtendedConfigurationActionSet.vi"/>
							<Item Name="LWXPS_EventExtendedConfigurationTriggerGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_EventExtendedConfigurationTriggerGet.vi"/>
							<Item Name="LWXPS_EventExtendedConfigurationTriggerSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_EventExtendedConfigurationTriggerSet.vi"/>
							<Item Name="LWXPS_EventExtendedGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_EventExtendedGet.vi"/>
							<Item Name="LWXPS_EventExtendedRemove.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_EventExtendedRemove.vi"/>
							<Item Name="LWXPS_EventExtendedStart.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_EventExtendedStart.vi"/>
							<Item Name="LWXPS_EventExtendedWait.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_EventExtendedWait.vi"/>
							<Item Name="LWXPS_EventGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_EventGet.vi"/>
							<Item Name="LWXPS_EventListGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_EventListGet.vi"/>
							<Item Name="LWXPS_EventRemove.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_EventRemove.vi"/>
							<Item Name="LWXPS_EventTriggerSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_EventTriggerSet.vi"/>
							<Item Name="LWXPS_EventWait.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_EventWait.vi"/>
							<Item Name="LWXPS_FileGatheringRename.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_FileGatheringRename.vi"/>
							<Item Name="LWXPS_FileScriptHistoryRename.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_FileScriptHistoryRename.vi"/>
							<Item Name="LWXPS_FirmwareVersionGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_FirmwareVersionGet.vi"/>
							<Item Name="LWXPS_FocusProcessSocketFree.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_FocusProcessSocketFree.vi"/>
							<Item Name="LWXPS_FocusProcessSocketReserve.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_FocusProcessSocketReserve.vi"/>
							<Item Name="LWXPS_GatheringConfigurationGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GatheringConfigurationGet.vi"/>
							<Item Name="LWXPS_GatheringConfigurationSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GatheringConfigurationSet.vi"/>
							<Item Name="LWXPS_GatheringCurrentNumberGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GatheringCurrentNumberGet.vi"/>
							<Item Name="LWXPS_GatheringDataAcquire.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GatheringDataAcquire.vi"/>
							<Item Name="LWXPS_GatheringDataGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GatheringDataGet.vi"/>
							<Item Name="LWXPS_GatheringDataMultipleLinesGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GatheringDataMultipleLinesGet.vi"/>
							<Item Name="LWXPS_GatheringExtendedListGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GatheringExtendedListGet.vi"/>
							<Item Name="LWXPS_GatheringExternalConfigurationGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GatheringExternalConfigurationGet.vi"/>
							<Item Name="LWXPS_GatheringExternalConfigurationSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GatheringExternalConfigurationSet.vi"/>
							<Item Name="LWXPS_GatheringExternalCurrentNumberGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GatheringExternalCurrentNumberGet.vi"/>
							<Item Name="LWXPS_GatheringExternalDataGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GatheringExternalDataGet.vi"/>
							<Item Name="LWXPS_GatheringExternalListGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GatheringExternalListGet.vi"/>
							<Item Name="LWXPS_GatheringExternalStopAndSave.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GatheringExternalStopAndSave.vi"/>
							<Item Name="LWXPS_GatheringListGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GatheringListGet.vi"/>
							<Item Name="LWXPS_GatheringReset.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GatheringReset.vi"/>
							<Item Name="LWXPS_GatheringRun.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GatheringRun.vi"/>
							<Item Name="LWXPS_GatheringRunAppend.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GatheringRunAppend.vi"/>
							<Item Name="LWXPS_GatheringStop.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GatheringStop.vi"/>
							<Item Name="LWXPS_GatheringStopAndSave.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GatheringStopAndSave.vi"/>
							<Item Name="LWXPS_GatheringUserDatasGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GatheringUserDatasGet.vi"/>
							<Item Name="LWXPS_GetAccParams.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GetAccParams.vi"/>
							<Item Name="LWXPS_GetBrakeState.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GetBrakeState.vi"/>
							<Item Name="LWXPS_GetCurrentPosition.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GetCurrentPosition.vi"/>
							<Item Name="LWXPS_GetGantryMode.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GetGantryMode.vi"/>
							<Item Name="LWXPS_GetHashCode.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GetHashCode.vi"/>
							<Item Name="LWXPS_GetJogAcceleration.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GetJogAcceleration.vi"/>
							<Item Name="LWXPS_GetJogVelocity.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GetJogVelocity.vi"/>
							<Item Name="LWXPS_GetPistonState.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GetPistonState.vi"/>
							<Item Name="LWXPS_GetType.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GetType.vi"/>
							<Item Name="LWXPS_GetVarX.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GetVarX.vi"/>
							<Item Name="LWXPS_GetVarXSecondary.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GetVarXSecondary.vi"/>
							<Item Name="LWXPS_GetVarY.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GetVarY.vi"/>
							<Item Name="LWXPS_GetVelParams.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GetVelParams.vi"/>
							<Item Name="LWXPS_GetVerCommand.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GetVerCommand.vi"/>
							<Item Name="LWXPS_GetXVelParams.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GetXVelParams.vi"/>
							<Item Name="LWXPS_GetYVelParams.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GetYVelParams.vi"/>
							<Item Name="LWXPS_GetZone.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GetZone.vi"/>
							<Item Name="LWXPS_GlobalArrayGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GlobalArrayGet.vi"/>
							<Item Name="LWXPS_GlobalArraySet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GlobalArraySet.vi"/>
							<Item Name="LWXPS_GPIOAnalogConfigurationGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GPIOAnalogConfigurationGet.vi"/>
							<Item Name="LWXPS_GPIOAnalogConfigurationSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GPIOAnalogConfigurationSet.vi"/>
							<Item Name="LWXPS_GPIOAnalogGainGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GPIOAnalogGainGet.vi"/>
							<Item Name="LWXPS_GPIOAnalogGainSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GPIOAnalogGainSet.vi"/>
							<Item Name="LWXPS_GPIOAnalogGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GPIOAnalogGet.vi"/>
							<Item Name="LWXPS_GPIOAnalogSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GPIOAnalogSet.vi"/>
							<Item Name="LWXPS_GPIODigitalGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GPIODigitalGet.vi"/>
							<Item Name="LWXPS_GPIODigitalSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GPIODigitalSet.vi"/>
							<Item Name="LWXPS_GroupAccelerationSetpointGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GroupAccelerationSetpointGet.vi"/>
							<Item Name="LWXPS_GroupAllPositionTrace.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GroupAllPositionTrace.vi"/>
							<Item Name="LWXPS_GroupAnalogTrackingModeDisable.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GroupAnalogTrackingModeDisable.vi"/>
							<Item Name="LWXPS_GroupAnalogTrackingModeEnable.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GroupAnalogTrackingModeEnable.vi"/>
							<Item Name="LWXPS_GroupCorrectorOutputGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GroupCorrectorOutputGet.vi"/>
							<Item Name="LWXPS_GroupCurrentFollowingErrorGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GroupCurrentFollowingErrorGet.vi"/>
							<Item Name="LWXPS_GroupHomeSearch.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GroupHomeSearch.vi"/>
							<Item Name="LWXPS_GroupHomeSearchAndRelativeMove.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GroupHomeSearchAndRelativeMove.vi"/>
							<Item Name="LWXPS_GroupInitialize.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GroupInitialize.vi"/>
							<Item Name="LWXPS_GroupInitializeNoEncoderReset.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GroupInitializeNoEncoderReset.vi"/>
							<Item Name="LWXPS_GroupInitializeWithEncoderCalibration.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GroupInitializeWithEncoderCalibration.vi"/>
							<Item Name="LWXPS_GroupInterlockDisable.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GroupInterlockDisable.vi"/>
							<Item Name="LWXPS_GroupInterlockEnable.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GroupInterlockEnable.vi"/>
							<Item Name="LWXPS_GroupJogCurrentGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GroupJogCurrentGet.vi"/>
							<Item Name="LWXPS_GroupJogModeDisable.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GroupJogModeDisable.vi"/>
							<Item Name="LWXPS_GroupJogModeEnable.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GroupJogModeEnable.vi"/>
							<Item Name="LWXPS_GroupJogParametersGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GroupJogParametersGet.vi"/>
							<Item Name="LWXPS_GroupJogParametersSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GroupJogParametersSet.vi"/>
							<Item Name="LWXPS_GroupKill.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GroupKill.vi"/>
							<Item Name="LWXPS_GroupMotionDisable.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GroupMotionDisable.vi"/>
							<Item Name="LWXPS_GroupMotionEnable.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GroupMotionEnable.vi"/>
							<Item Name="LWXPS_GroupMotionStatusGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GroupMotionStatusGet.vi"/>
							<Item Name="LWXPS_GroupMotorMatrixInverseTrace.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GroupMotorMatrixInverseTrace.vi"/>
							<Item Name="LWXPS_GroupMotorMatrixTrace.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GroupMotorMatrixTrace.vi"/>
							<Item Name="LWXPS_GroupMoveAbort.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GroupMoveAbort.vi"/>
							<Item Name="LWXPS_GroupMoveAbortFast.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GroupMoveAbortFast.vi"/>
							<Item Name="LWXPS_GroupMoveAbsolute.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GroupMoveAbsolute.vi"/>
							<Item Name="LWXPS_GroupMoveRelative.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GroupMoveRelative.vi"/>
							<Item Name="LWXPS_GroupPositionCorrectedProfilerGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GroupPositionCorrectedProfilerGet.vi"/>
							<Item Name="LWXPS_GroupPositionCurrentGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GroupPositionCurrentGet.vi"/>
							<Item Name="LWXPS_GroupPositionCurrentRawGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GroupPositionCurrentRawGet.vi"/>
							<Item Name="LWXPS_GroupPositionPCORawEncoderGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GroupPositionPCORawEncoderGet.vi"/>
							<Item Name="LWXPS_GroupPositionSetpointGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GroupPositionSetpointGet.vi"/>
							<Item Name="LWXPS_GroupPositionTargetGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GroupPositionTargetGet.vi"/>
							<Item Name="LWXPS_GroupReferencingActionExecute.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GroupReferencingActionExecute.vi"/>
							<Item Name="LWXPS_GroupReferencingStart.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GroupReferencingStart.vi"/>
							<Item Name="LWXPS_GroupReferencingStop.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GroupReferencingStop.vi"/>
							<Item Name="LWXPS_GroupSpinCurrentGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GroupSpinCurrentGet.vi"/>
							<Item Name="LWXPS_GroupSpineModeStop.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GroupSpineModeStop.vi"/>
							<Item Name="LWXPS_GroupSpinParametersGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GroupSpinParametersGet.vi"/>
							<Item Name="LWXPS_GroupSpinParametersSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GroupSpinParametersSet.vi"/>
							<Item Name="LWXPS_GroupStatusGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GroupStatusGet.vi"/>
							<Item Name="LWXPS_GroupStatusListGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GroupStatusListGet.vi"/>
							<Item Name="LWXPS_GroupStatusStringGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GroupStatusStringGet.vi"/>
							<Item Name="LWXPS_GroupVelocityCurrentGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_GroupVelocityCurrentGet.vi"/>
							<Item Name="LWXPS_HardwareDateAndTimeGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_HardwareDateAndTimeGet.vi"/>
							<Item Name="LWXPS_HardwareDateAndTimeSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_HardwareDateAndTimeSet.vi"/>
							<Item Name="LWXPS_HardwareDriverAndStageGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_HardwareDriverAndStageGet.vi"/>
							<Item Name="LWXPS_HardwareInternalListGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_HardwareInternalListGet.vi"/>
							<Item Name="LWXPS_InitializeAndHomeX.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_InitializeAndHomeX.vi"/>
							<Item Name="LWXPS_InitializeAndHomeXY.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_InitializeAndHomeXY.vi"/>
							<Item Name="LWXPS_InitializeAndHomeY.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_InitializeAndHomeY.vi"/>
							<Item Name="LWXPS_InstallerVersionGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_InstallerVersionGet.vi"/>
							<Item Name="LWXPS_INTServitudesCommandGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_INTServitudesCommandGet.vi"/>
							<Item Name="LWXPS_INTServitudesStatusGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_INTServitudesStatusGet.vi"/>
							<Item Name="LWXPS_ISRCorrectorCompensateOverrunNumberGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_ISRCorrectorCompensateOverrunNumberGet.vi"/>
							<Item Name="LWXPS_ISRCorrectorCompensateOverrunNumberReset.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_ISRCorrectorCompensateOverrunNumberReset.vi"/>
							<Item Name="LWXPS_KillAll.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_KillAll.vi"/>
							<Item Name="LWXPS_Login.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_Login.vi"/>
							<Item Name="LWXPS_LoginCheck.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_LoginCheck.vi"/>
							<Item Name="LWXPS_MoveAbsolute.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_MoveAbsolute.vi"/>
							<Item Name="LWXPS_MoveSlice.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_MoveSlice.vi"/>
							<Item Name="LWXPS_MultipleAxesPVTExecution.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_MultipleAxesPVTExecution.vi"/>
							<Item Name="LWXPS_MultipleAxesPVTLoadToMemory.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_MultipleAxesPVTLoadToMemory.vi"/>
							<Item Name="LWXPS_MultipleAxesPVTParametersGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_MultipleAxesPVTParametersGet.vi"/>
							<Item Name="LWXPS_MultipleAxesPVTPulseOutputGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_MultipleAxesPVTPulseOutputGet.vi"/>
							<Item Name="LWXPS_MultipleAxesPVTPulseOutputSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_MultipleAxesPVTPulseOutputSet.vi"/>
							<Item Name="LWXPS_MultipleAxesPVTResetInMemory.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_MultipleAxesPVTResetInMemory.vi"/>
							<Item Name="LWXPS_MultipleAxesPVTVerification.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_MultipleAxesPVTVerification.vi"/>
							<Item Name="LWXPS_MultipleAxesPVTVerificationResultGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_MultipleAxesPVTVerificationResultGet.vi"/>
							<Item Name="LWXPS_ObjectsListGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_ObjectsListGet.vi"/>
							<Item Name="LWXPS_Open.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_Open.vi"/>
							<Item Name="LWXPS_OptionalModuleExecute.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_OptionalModuleExecute.vi"/>
							<Item Name="LWXPS_OptionalModuleKill.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_OptionalModuleKill.vi"/>
							<Item Name="LWXPS_PositionerAccelerationAutoScaling.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerAccelerationAutoScaling.vi"/>
							<Item Name="LWXPS_PositionerAnalogTrackingPositionParametersGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerAnalogTrackingPositionParametersGet.vi"/>
							<Item Name="LWXPS_PositionerAnalogTrackingPositionParametersSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerAnalogTrackingPositionParametersSet.vi"/>
							<Item Name="LWXPS_PositionerAnalogTrackingVelocityParametersGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerAnalogTrackingVelocityParametersGet.vi"/>
							<Item Name="LWXPS_PositionerAnalogTrackingVelocityParametersSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerAnalogTrackingVelocityParametersSet.vi"/>
							<Item Name="LWXPS_PositionerBacklashDisable.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerBacklashDisable.vi"/>
							<Item Name="LWXPS_PositionerBacklashEnable.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerBacklashEnable.vi"/>
							<Item Name="LWXPS_PositionerBacklashGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerBacklashGet.vi"/>
							<Item Name="LWXPS_PositionerBacklashSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerBacklashSet.vi"/>
							<Item Name="LWXPS_PositionerCompensatedFastPCOAbort.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCompensatedFastPCOAbort.vi"/>
							<Item Name="LWXPS_PositionerCompensatedFastPCOCurrentStatusGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCompensatedFastPCOCurrentStatusGet.vi"/>
							<Item Name="LWXPS_PositionerCompensatedFastPCOEnable.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCompensatedFastPCOEnable.vi"/>
							<Item Name="LWXPS_PositionerCompensatedFastPCOFromFile.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCompensatedFastPCOFromFile.vi"/>
							<Item Name="LWXPS_PositionerCompensatedFastPCOLoadToMemory.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCompensatedFastPCOLoadToMemory.vi"/>
							<Item Name="LWXPS_PositionerCompensatedFastPCOMemoryReset.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCompensatedFastPCOMemoryReset.vi"/>
							<Item Name="LWXPS_PositionerCompensatedFastPCOPrepare.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCompensatedFastPCOPrepare.vi"/>
							<Item Name="LWXPS_PositionerCompensatedFastPCOPulseParametersGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCompensatedFastPCOPulseParametersGet.vi"/>
							<Item Name="LWXPS_PositionerCompensatedFastPCOPulseParametersSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCompensatedFastPCOPulseParametersSet.vi"/>
							<Item Name="LWXPS_PositionerCompensatedFastPCOSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCompensatedFastPCOSet.vi"/>
							<Item Name="LWXPS_PositionerCompensationDualLoopNotchFilterGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCompensationDualLoopNotchFilterGet.vi"/>
							<Item Name="LWXPS_PositionerCompensationDualLoopNotchFilterSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCompensationDualLoopNotchFilterSet.vi"/>
							<Item Name="LWXPS_PositionerCompensationDualLoopPhaseCorrectionFiltersGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCompensationDualLoopPhaseCorrectionFiltersGet.vi"/>
							<Item Name="LWXPS_PositionerCompensationDualLoopPhaseCorrectionFiltersSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCompensationDualLoopPhaseCorrectionFiltersSet.vi"/>
							<Item Name="LWXPS_PositionerCompensationFrequencyNotchsGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCompensationFrequencyNotchsGet.vi"/>
							<Item Name="LWXPS_PositionerCompensationFrequencyNotchsSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCompensationFrequencyNotchsSet.vi"/>
							<Item Name="LWXPS_PositionerCompensationLowPassTwoFilterGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCompensationLowPassTwoFilterGet.vi"/>
							<Item Name="LWXPS_PositionerCompensationLowPassTwoFilterSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCompensationLowPassTwoFilterSet.vi"/>
							<Item Name="LWXPS_PositionerCompensationNotchFilterGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCompensationNotchFilterGet.vi"/>
							<Item Name="LWXPS_PositionerCompensationNotchFilterSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCompensationNotchFilterSet.vi"/>
							<Item Name="LWXPS_PositionerCompensationNotchModeFiltersGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCompensationNotchModeFiltersGet.vi"/>
							<Item Name="LWXPS_PositionerCompensationNotchModeFiltersSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCompensationNotchModeFiltersSet.vi"/>
							<Item Name="LWXPS_PositionerCompensationPhaseCorrectionFilterGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCompensationPhaseCorrectionFilterGet.vi"/>
							<Item Name="LWXPS_PositionerCompensationPhaseCorrectionFilterSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCompensationPhaseCorrectionFilterSet.vi"/>
							<Item Name="LWXPS_PositionerCompensationPhaseCorrectionFiltersGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCompensationPhaseCorrectionFiltersGet.vi"/>
							<Item Name="LWXPS_PositionerCompensationPhaseCorrectionFiltersSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCompensationPhaseCorrectionFiltersSet.vi"/>
							<Item Name="LWXPS_PositionerCompensationPositionFilterGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCompensationPositionFilterGet.vi"/>
							<Item Name="LWXPS_PositionerCompensationPositionFilterSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCompensationPositionFilterSet.vi"/>
							<Item Name="LWXPS_PositionerCompensationPostExcitationFrequencyNotchFilterGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCompensationPostExcitationFrequencyNotchFilterGet.vi"/>
							<Item Name="LWXPS_PositionerCompensationPostExcitationFrequencyNotchFilterSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCompensationPostExcitationFrequencyNotchFilterSet.vi"/>
							<Item Name="LWXPS_PositionerCompensationPostExcitationLowPassFilterGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCompensationPostExcitationLowPassFilterGet.vi"/>
							<Item Name="LWXPS_PositionerCompensationPostExcitationLowPassFilterSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCompensationPostExcitationLowPassFilterSet.vi"/>
							<Item Name="LWXPS_PositionerCompensationPostExcitationNotchModeFilterGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCompensationPostExcitationNotchModeFilterGet.vi"/>
							<Item Name="LWXPS_PositionerCompensationPostExcitationNotchModeFilterSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCompensationPostExcitationNotchModeFilterSet.vi"/>
							<Item Name="LWXPS_PositionerCompensationPostExcitationPhaseCorrectionFilterGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCompensationPostExcitationPhaseCorrectionFilterGet.vi"/>
							<Item Name="LWXPS_PositionerCompensationPostExcitationPhaseCorrectionFilterSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCompensationPostExcitationPhaseCorrectionFilterSet.vi"/>
							<Item Name="LWXPS_PositionerCompensationPreFeedForwardFrequencyNotchFilterGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCompensationPreFeedForwardFrequencyNotchFilterGet.vi"/>
							<Item Name="LWXPS_PositionerCompensationPreFeedForwardFrequencyNotchFilterSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCompensationPreFeedForwardFrequencyNotchFilterSet.vi"/>
							<Item Name="LWXPS_PositionerCompensationPreFeedForwardPhaseCorrectionFilterGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCompensationPreFeedForwardPhaseCorrectionFilterGet.vi"/>
							<Item Name="LWXPS_PositionerCompensationPreFeedForwardPhaseCorrectionFilterSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCompensationPreFeedForwardPhaseCorrectionFilterSet.vi"/>
							<Item Name="LWXPS_PositionerCompensationPreFeedForwardSpatialNotchFilterGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCompensationPreFeedForwardSpatialNotchFilterGet.vi"/>
							<Item Name="LWXPS_PositionerCompensationPreFeedForwardSpatialNotchFilterSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCompensationPreFeedForwardSpatialNotchFilterSet.vi"/>
							<Item Name="LWXPS_PositionerCompensationSpatialPeriodicNotchsGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCompensationSpatialPeriodicNotchsGet.vi"/>
							<Item Name="LWXPS_PositionerCompensationSpatialPeriodicNotchsSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCompensationSpatialPeriodicNotchsSet.vi"/>
							<Item Name="LWXPS_PositionerCorrectorAutoTuning.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCorrectorAutoTuning.vi"/>
							<Item Name="LWXPS_PositionerCorrectorDamperFilterGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCorrectorDamperFilterGet.vi"/>
							<Item Name="LWXPS_PositionerCorrectorDamperFilterSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCorrectorDamperFilterSet.vi"/>
							<Item Name="LWXPS_PositionerCorrectorDualGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCorrectorDualGet.vi"/>
							<Item Name="LWXPS_PositionerCorrectorDualSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCorrectorDualSet.vi"/>
							<Item Name="LWXPS_PositionerCorrectorNotchFiltersGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCorrectorNotchFiltersGet.vi"/>
							<Item Name="LWXPS_PositionerCorrectorNotchFiltersSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCorrectorNotchFiltersSet.vi"/>
							<Item Name="LWXPS_PositionerCorrectorP2IDFFAccelerationGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCorrectorP2IDFFAccelerationGet.vi"/>
							<Item Name="LWXPS_PositionerCorrectorP2IDFFAccelerationSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCorrectorP2IDFFAccelerationSet.vi"/>
							<Item Name="LWXPS_PositionerCorrectorPIDAccelerationFilterGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCorrectorPIDAccelerationFilterGet.vi"/>
							<Item Name="LWXPS_PositionerCorrectorPIDAccelerationFilterSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCorrectorPIDAccelerationFilterSet.vi"/>
							<Item Name="LWXPS_PositionerCorrectorPIDBaseGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCorrectorPIDBaseGet.vi"/>
							<Item Name="LWXPS_PositionerCorrectorPIDBaseSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCorrectorPIDBaseSet.vi"/>
							<Item Name="LWXPS_PositionerCorrectorPIDDualFFVoltageGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCorrectorPIDDualFFVoltageGet.vi"/>
							<Item Name="LWXPS_PositionerCorrectorPIDDualFFVoltageSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCorrectorPIDDualFFVoltageSet.vi"/>
							<Item Name="LWXPS_PositionerCorrectorPIDFFAccelerationGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCorrectorPIDFFAccelerationGet.vi"/>
							<Item Name="LWXPS_PositionerCorrectorPIDFFAccelerationSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCorrectorPIDFFAccelerationSet.vi"/>
							<Item Name="LWXPS_PositionerCorrectorPIDFFVelocityGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCorrectorPIDFFVelocityGet.vi"/>
							<Item Name="LWXPS_PositionerCorrectorPIDFFVelocitySet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCorrectorPIDFFVelocitySet.vi"/>
							<Item Name="LWXPS_PositionerCorrectorPIPositionGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCorrectorPIPositionGet.vi"/>
							<Item Name="LWXPS_PositionerCorrectorPIPositionSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCorrectorPIPositionSet.vi"/>
							<Item Name="LWXPS_PositionerCorrectorPostFFGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCorrectorPostFFGet.vi"/>
							<Item Name="LWXPS_PositionerCorrectorPostFFSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCorrectorPostFFSet.vi"/>
							<Item Name="LWXPS_PositionerCorrectorSR1AccelerationGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCorrectorSR1AccelerationGet.vi"/>
							<Item Name="LWXPS_PositionerCorrectorSR1AccelerationSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCorrectorSR1AccelerationSet.vi"/>
							<Item Name="LWXPS_PositionerCorrectorSR1ObserverAccelerationGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCorrectorSR1ObserverAccelerationGet.vi"/>
							<Item Name="LWXPS_PositionerCorrectorSR1ObserverAccelerationSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCorrectorSR1ObserverAccelerationSet.vi"/>
							<Item Name="LWXPS_PositionerCorrectorSR1OffsetAccelerationGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCorrectorSR1OffsetAccelerationGet.vi"/>
							<Item Name="LWXPS_PositionerCorrectorSR1OffsetAccelerationSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCorrectorSR1OffsetAccelerationSet.vi"/>
							<Item Name="LWXPS_PositionerCorrectorTypeGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCorrectorTypeGet.vi"/>
							<Item Name="LWXPS_PositionerCurrentVelocityAccelerationFiltersGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCurrentVelocityAccelerationFiltersGet.vi"/>
							<Item Name="LWXPS_PositionerCurrentVelocityAccelerationFiltersSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerCurrentVelocityAccelerationFiltersSet.vi"/>
							<Item Name="LWXPS_PositionerDriverFiltersGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerDriverFiltersGet.vi"/>
							<Item Name="LWXPS_PositionerDriverFiltersSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerDriverFiltersSet.vi"/>
							<Item Name="LWXPS_PositionerDriverPositionOffsetsGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerDriverPositionOffsetsGet.vi"/>
							<Item Name="LWXPS_PositionerDriverStatusGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerDriverStatusGet.vi"/>
							<Item Name="LWXPS_PositionerDriverStatusListGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerDriverStatusListGet.vi"/>
							<Item Name="LWXPS_PositionerDriverStatusStringGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerDriverStatusStringGet.vi"/>
							<Item Name="LWXPS_PositionerEncoderAmplitudeValuesGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerEncoderAmplitudeValuesGet.vi"/>
							<Item Name="LWXPS_PositionerEncoderCalibrationParametersGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerEncoderCalibrationParametersGet.vi"/>
							<Item Name="LWXPS_PositionerErrorGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerErrorGet.vi"/>
							<Item Name="LWXPS_PositionerErrorListGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerErrorListGet.vi"/>
							<Item Name="LWXPS_PositionerErrorRead.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerErrorRead.vi"/>
							<Item Name="LWXPS_PositionerErrorStringGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerErrorStringGet.vi"/>
							<Item Name="LWXPS_PositionerExcitationSignalGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerExcitationSignalGet.vi"/>
							<Item Name="LWXPS_PositionerExcitationSignalSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerExcitationSignalSet.vi"/>
							<Item Name="LWXPS_PositionerFeedforwardAccDisable.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerFeedforwardAccDisable.vi"/>
							<Item Name="LWXPS_PositionerFeedforwardAccEnable.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerFeedforwardAccEnable.vi"/>
							<Item Name="LWXPS_PositionerFeedforwardAccGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerFeedforwardAccGet.vi"/>
							<Item Name="LWXPS_PositionerFeedforwardAccSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerFeedforwardAccSet.vi"/>
							<Item Name="LWXPS_PositionerFeedforwardPositionDisable.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerFeedforwardPositionDisable.vi"/>
							<Item Name="LWXPS_PositionerFeedforwardPositionEnable.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerFeedforwardPositionEnable.vi"/>
							<Item Name="LWXPS_PositionerFeedforwardPositionGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerFeedforwardPositionGet.vi"/>
							<Item Name="LWXPS_PositionerFeedforwardPositionSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerFeedforwardPositionSet.vi"/>
							<Item Name="LWXPS_PositionerGantryEndReferencingPositionGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerGantryEndReferencingPositionGet.vi"/>
							<Item Name="LWXPS_PositionerHardInterpolatorFactorGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerHardInterpolatorFactorGet.vi"/>
							<Item Name="LWXPS_PositionerHardInterpolatorFactorSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerHardInterpolatorFactorSet.vi"/>
							<Item Name="LWXPS_PositionerHardInterpolatorPositionGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerHardInterpolatorPositionGet.vi"/>
							<Item Name="LWXPS_PositionerHardwareStatusGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerHardwareStatusGet.vi"/>
							<Item Name="LWXPS_PositionerHardwareStatusListGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerHardwareStatusListGet.vi"/>
							<Item Name="LWXPS_PositionerHardwareStatusStringGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerHardwareStatusStringGet.vi"/>
							<Item Name="LWXPS_PositionerJogMaximumVelocityAndAccelerationGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerJogMaximumVelocityAndAccelerationGet.vi"/>
							<Item Name="LWXPS_PositionerMagneticTrackPositionAtHomeGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerMagneticTrackPositionAtHomeGet.vi"/>
							<Item Name="LWXPS_PositionerMaximumVelocityAndAccelerationGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerMaximumVelocityAndAccelerationGet.vi"/>
							<Item Name="LWXPS_PositionerMotionDoneGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerMotionDoneGet.vi"/>
							<Item Name="LWXPS_PositionerMotionDoneSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerMotionDoneSet.vi"/>
							<Item Name="LWXPS_PositionerMotorOutputOffsetGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerMotorOutputOffsetGet.vi"/>
							<Item Name="LWXPS_PositionerMotorOutputOffsetSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerMotorOutputOffsetSet.vi"/>
							<Item Name="LWXPS_PositionerPositionCompareDisable.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerPositionCompareDisable.vi"/>
							<Item Name="LWXPS_PositionerPositionCompareEnable.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerPositionCompareEnable.vi"/>
							<Item Name="LWXPS_PositionerPositionCompareGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerPositionCompareGet.vi"/>
							<Item Name="LWXPS_PositionerPositionComparePulseParametersGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerPositionComparePulseParametersGet.vi"/>
							<Item Name="LWXPS_PositionerPositionComparePulseParametersSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerPositionComparePulseParametersSet.vi"/>
							<Item Name="LWXPS_PositionerPositionCompareScanAccelerationLimitGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerPositionCompareScanAccelerationLimitGet.vi"/>
							<Item Name="LWXPS_PositionerPositionCompareScanAccelerationLimitSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerPositionCompareScanAccelerationLimitSet.vi"/>
							<Item Name="LWXPS_PositionerPositionCompareSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerPositionCompareSet.vi"/>
							<Item Name="LWXPS_PositionerPreCorrectorExcitationSignalGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerPreCorrectorExcitationSignalGet.vi"/>
							<Item Name="LWXPS_PositionerPreCorrectorExcitationSignalSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerPreCorrectorExcitationSignalSet.vi"/>
							<Item Name="LWXPS_PositionerRawEncoderPositionGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerRawEncoderPositionGet.vi"/>
							<Item Name="LWXPS_PositionersEncoderIndexDifferenceGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionersEncoderIndexDifferenceGet.vi"/>
							<Item Name="LWXPS_PositionerSGammaExactVelocityAjustedDisplacementGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerSGammaExactVelocityAjustedDisplacementGet.vi"/>
							<Item Name="LWXPS_PositionerSGammaParametersGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerSGammaParametersGet.vi"/>
							<Item Name="LWXPS_PositionerSGammaParametersSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerSGammaParametersSet.vi"/>
							<Item Name="LWXPS_PositionerSGammaPreviousMotionTimesGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerSGammaPreviousMotionTimesGet.vi"/>
							<Item Name="LWXPS_PositionerSGammaVelocityAndAccelerationSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerSGammaVelocityAndAccelerationSet.vi"/>
							<Item Name="LWXPS_PositionerStageParameterGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerStageParameterGet.vi"/>
							<Item Name="LWXPS_PositionerStageParameterSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerStageParameterSet.vi"/>
							<Item Name="LWXPS_PositionerUserTravelLimitsGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerUserTravelLimitsGet.vi"/>
							<Item Name="LWXPS_PositionerUserTravelLimitsSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerUserTravelLimitsSet.vi"/>
							<Item Name="LWXPS_PositionerWarningFollowingErrorGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerWarningFollowingErrorGet.vi"/>
							<Item Name="LWXPS_PositionerWarningFollowingErrorSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_PositionerWarningFollowingErrorSet.vi"/>
							<Item Name="LWXPS_Reboot.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_Reboot.vi"/>
							<Item Name="LWXPS_ReferencingActionListGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_ReferencingActionListGet.vi"/>
							<Item Name="LWXPS_ReferencingSensorListGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_ReferencingSensorListGet.vi"/>
							<Item Name="LWXPS_RequestType1.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_RequestType1.vi"/>
							<Item Name="LWXPS_RequestType2.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_RequestType2.vi"/>
							<Item Name="LWXPS_RequestType3.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_RequestType3.vi"/>
							<Item Name="LWXPS_RestartApplication.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_RestartApplication.vi"/>
							<Item Name="LWXPS_RunTraceloggerProcessWithRollingBuffer.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_RunTraceloggerProcessWithRollingBuffer.vi"/>
							<Item Name="LWXPS_RunTraceloggerProcessWithTimeSetting.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_RunTraceloggerProcessWithTimeSetting.vi"/>
							<Item Name="LWXPS_SetAccParams.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_SetAccParams.vi"/>
							<Item Name="LWXPS_SetBrake.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_SetBrake.vi"/>
							<Item Name="LWXPS_SetGantryMode.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_SetGantryMode.vi"/>
							<Item Name="LWXPS_SetJogAcceleration.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_SetJogAcceleration.vi"/>
							<Item Name="LWXPS_SetJogVelocity.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_SetJogVelocity.vi"/>
							<Item Name="LWXPS_SetPiston.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_SetPiston.vi"/>
							<Item Name="LWXPS_SetTimeout.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_SetTimeout.vi"/>
							<Item Name="LWXPS_SetVarX.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_SetVarX.vi"/>
							<Item Name="LWXPS_SetVarXSecondary.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_SetVarXSecondary.vi"/>
							<Item Name="LWXPS_SetVarY.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_SetVarY.vi"/>
							<Item Name="LWXPS_SetVelParams.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_SetVelParams.vi"/>
							<Item Name="LWXPS_SetXVelParams.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_SetXVelParams.vi"/>
							<Item Name="LWXPS_SetYVelParams.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_SetYVelParams.vi"/>
							<Item Name="LWXPS_SetZone.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_SetZone.vi"/>
							<Item Name="LWXPS_SingleAxisSlaveModeDisable.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_SingleAxisSlaveModeDisable.vi"/>
							<Item Name="LWXPS_SingleAxisSlaveModeEnable.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_SingleAxisSlaveModeEnable.vi"/>
							<Item Name="LWXPS_SingleAxisSlaveParametersGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_SingleAxisSlaveParametersGet.vi"/>
							<Item Name="LWXPS_SingleAxisSlaveParametersSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_SingleAxisSlaveParametersSet.vi"/>
							<Item Name="LWXPS_SingleAxisThetaClampDisable.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_SingleAxisThetaClampDisable.vi"/>
							<Item Name="LWXPS_SingleAxisThetaClampEnable.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_SingleAxisThetaClampEnable.vi"/>
							<Item Name="LWXPS_SingleAxisThetaFeedforwardParametersGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_SingleAxisThetaFeedforwardParametersGet.vi"/>
							<Item Name="LWXPS_SingleAxisThetaFeedforwardParametersSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_SingleAxisThetaFeedforwardParametersSet.vi"/>
							<Item Name="LWXPS_SingleAxisThetaPositionRawGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_SingleAxisThetaPositionRawGet.vi"/>
							<Item Name="LWXPS_SingleAxisThetaSlaveModeDisable.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_SingleAxisThetaSlaveModeDisable.vi"/>
							<Item Name="LWXPS_SingleAxisThetaSlaveModeEnable.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_SingleAxisThetaSlaveModeEnable.vi"/>
							<Item Name="LWXPS_SingleAxisThetaSlaveParametersGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_SingleAxisThetaSlaveParametersGet.vi"/>
							<Item Name="LWXPS_SingleAxisThetaSlaveParametersSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_SingleAxisThetaSlaveParametersSet.vi"/>
							<Item Name="LWXPS_SocketsStatusGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_SocketsStatusGet.vi"/>
							<Item Name="LWXPS_SpindleSlaveModeDisable.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_SpindleSlaveModeDisable.vi"/>
							<Item Name="LWXPS_SpindleSlaveModeEnable.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_SpindleSlaveModeEnable.vi"/>
							<Item Name="LWXPS_SpindleSlaveParametersGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_SpindleSlaveParametersGet.vi"/>
							<Item Name="LWXPS_SpindleSlaveParametersSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_SpindleSlaveParametersSet.vi"/>
							<Item Name="LWXPS_StartEventsAcqusition.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_StartEventsAcqusition.vi"/>
							<Item Name="LWXPS_StartJog.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_StartJog.vi"/>
							<Item Name="LWXPS_StopEventsAcqusition.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_StopEventsAcqusition.vi"/>
							<Item Name="LWXPS_SystemIniParameterGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_SystemIniParameterGet.vi"/>
							<Item Name="LWXPS_SystemIniParameterSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_SystemIniParameterSet.vi"/>
							<Item Name="LWXPS_SystemRefParameterGet .vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_SystemRefParameterGet .vi"/>
							<Item Name="LWXPS_SystemRefParameterSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_SystemRefParameterSet.vi"/>
							<Item Name="LWXPS_TCLScriptExecute.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_TCLScriptExecute.vi"/>
							<Item Name="LWXPS_TCLScriptExecuteAndWait.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_TCLScriptExecuteAndWait.vi"/>
							<Item Name="LWXPS_TCLScriptExecuteWithPriority.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_TCLScriptExecuteWithPriority.vi"/>
							<Item Name="LWXPS_TCLScriptKill.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_TCLScriptKill.vi"/>
							<Item Name="LWXPS_TCLScriptKillAll.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_TCLScriptKillAll.vi"/>
							<Item Name="LWXPS_TCLScriptRunningListGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_TCLScriptRunningListGet.vi"/>
							<Item Name="LWXPS_TestTCP.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_TestTCP.vi"/>
							<Item Name="LWXPS_TimerGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_TimerGet.vi"/>
							<Item Name="LWXPS_TimerSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_TimerSet.vi"/>
							<Item Name="LWXPS_ToString.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_ToString.vi"/>
							<Item Name="LWXPS_TZFocusModeDisable.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_TZFocusModeDisable.vi"/>
							<Item Name="LWXPS_TZFocusModeEnable.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_TZFocusModeEnable.vi"/>
							<Item Name="LWXPS_TZMotorDecouplingMatrixGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_TZMotorDecouplingMatrixGet.vi"/>
							<Item Name="LWXPS_TZMotorDecouplingMatrixSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_TZMotorDecouplingMatrixSet.vi"/>
							<Item Name="LWXPS_TZPVTExecution.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_TZPVTExecution.vi"/>
							<Item Name="LWXPS_TZPVTLoadToMemory.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_TZPVTLoadToMemory.vi"/>
							<Item Name="LWXPS_TZPVTParametersGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_TZPVTParametersGet.vi"/>
							<Item Name="LWXPS_TZPVTPulseOutputGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_TZPVTPulseOutputGet.vi"/>
							<Item Name="LWXPS_TZPVTPulseOutputSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_TZPVTPulseOutputSet.vi"/>
							<Item Name="LWXPS_TZPVTResetInMemory.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_TZPVTResetInMemory.vi"/>
							<Item Name="LWXPS_TZPVTVerification.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_TZPVTVerification.vi"/>
							<Item Name="LWXPS_TZPVTVerificationResultGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_TZPVTVerificationResultGet.vi"/>
							<Item Name="LWXPS_TZTrackingUserMaximumZZZTargetDifferenceGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_TZTrackingUserMaximumZZZTargetDifferenceGet.vi"/>
							<Item Name="LWXPS_TZTrackingUserMaximumZZZTargetDifferenceSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_TZTrackingUserMaximumZZZTargetDifferenceSet.vi"/>
							<Item Name="LWXPS_WaitMotionEnd.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_WaitMotionEnd.vi"/>
							<Item Name="LWXPS_WriteToInstrument.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_WriteToInstrument.vi"/>
							<Item Name="LWXPS_XYLineArcExecution.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_XYLineArcExecution.vi"/>
							<Item Name="LWXPS_XYLineArcParametersGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_XYLineArcParametersGet.vi"/>
							<Item Name="LWXPS_XYLineArcPulseOutputGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_XYLineArcPulseOutputGet.vi"/>
							<Item Name="LWXPS_XYLineArcPulseOutputSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_XYLineArcPulseOutputSet.vi"/>
							<Item Name="LWXPS_XYLineArcVerification.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_XYLineArcVerification.vi"/>
							<Item Name="LWXPS_XYLineArcVerificationResultGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_XYLineArcVerificationResultGet.vi"/>
							<Item Name="LWXPS_XYPVTExecution.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_XYPVTExecution.vi"/>
							<Item Name="LWXPS_XYPVTLoadToMemory.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_XYPVTLoadToMemory.vi"/>
							<Item Name="LWXPS_XYPVTParametersGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_XYPVTParametersGet.vi"/>
							<Item Name="LWXPS_XYPVTPulseOutputGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_XYPVTPulseOutputGet.vi"/>
							<Item Name="LWXPS_XYPVTPulseOutputSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_XYPVTPulseOutputSet.vi"/>
							<Item Name="LWXPS_XYPVTResetInMemory.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_XYPVTResetInMemory.vi"/>
							<Item Name="LWXPS_XYPVTVerification.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_XYPVTVerification.vi"/>
							<Item Name="LWXPS_XYPVTVerificationResultGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_XYPVTVerificationResultGet.vi"/>
							<Item Name="LWXPS_XYZGroupPositionCorrectedProfilerGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_XYZGroupPositionCorrectedProfilerGet.vi"/>
							<Item Name="LWXPS_XYZGroupPositionPCORawEncoderGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_XYZGroupPositionPCORawEncoderGet.vi"/>
							<Item Name="LWXPS_XYZSplineExecution.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_XYZSplineExecution.vi"/>
							<Item Name="LWXPS_XYZSplineParametersGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_XYZSplineParametersGet.vi"/>
							<Item Name="LWXPS_XYZSplineVerification.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_XYZSplineVerification.vi"/>
							<Item Name="LWXPS_XYZSplineVerificationResultGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_XYZSplineVerificationResultGet.vi"/>
							<Item Name="LWXPS_ZygoADCDiagnosticStatusGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_ZygoADCDiagnosticStatusGet.vi"/>
							<Item Name="LWXPS_ZygoAmplitudeGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_ZygoAmplitudeGet.vi"/>
							<Item Name="LWXPS_ZygoConnectToServer.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_ZygoConnectToServer.vi"/>
							<Item Name="LWXPS_ZygoDisconnectFromServer.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_ZygoDisconnectFromServer.vi"/>
							<Item Name="LWXPS_ZygoErrorStatusGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_ZygoErrorStatusGet.vi"/>
							<Item Name="LWXPS_ZygoErrorStatusStringGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_ZygoErrorStatusStringGet.vi"/>
							<Item Name="LWXPS_ZygoEthernetCommunicationStatusGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_ZygoEthernetCommunicationStatusGet.vi"/>
							<Item Name="LWXPS_ZygoGetPEGLastCommunicationTime.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_ZygoGetPEGLastCommunicationTime.vi"/>
							<Item Name="LWXPS_ZygoGetVerInterfero.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_ZygoGetVerInterfero.vi"/>
							<Item Name="LWXPS_ZygoInterferometerStatusGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_ZygoInterferometerStatusGet.vi"/>
							<Item Name="LWXPS_ZygoPositionGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_ZygoPositionGet.vi"/>
							<Item Name="LWXPS_ZygoReadLong.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_ZygoReadLong.vi"/>
							<Item Name="LWXPS_ZygoReadWord.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_ZygoReadWord.vi"/>
							<Item Name="LWXPS_ZygoRegisterGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_ZygoRegisterGet.vi"/>
							<Item Name="LWXPS_ZygoRegisterSet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_ZygoRegisterSet.vi"/>
							<Item Name="LWXPS_ZygoReset.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_ZygoReset.vi"/>
							<Item Name="LWXPS_ZygoResetX.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_ZygoResetX.vi"/>
							<Item Name="LWXPS_ZygoResetY.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_ZygoResetY.vi"/>
							<Item Name="LWXPS_ZygoSendAndReceive.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_ZygoSendAndReceive.vi"/>
							<Item Name="LWXPS_ZygoSetOffsetX.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_ZygoSetOffsetX.vi"/>
							<Item Name="LWXPS_ZygoSetOffsetY.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_ZygoSetOffsetY.vi"/>
							<Item Name="LWXPS_ZygoSetPEGParams.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_ZygoSetPEGParams.vi"/>
							<Item Name="LWXPS_ZygoStartBoardP2.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_ZygoStartBoardP2.vi"/>
							<Item Name="LWXPS_ZygoStartInterferometer.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_ZygoStartInterferometer.vi"/>
							<Item Name="LWXPS_ZygoStatusGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_ZygoStatusGet.vi"/>
							<Item Name="LWXPS_ZygoStatusStringGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_ZygoStatusStringGet.vi"/>
							<Item Name="LWXPS_ZygoWriteLong.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_ZygoWriteLong.vi"/>
							<Item Name="LWXPS_ZygoWriteWord.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/LWXPS_ZygoWriteWord.vi"/>
							<Item Name="XPS-Q8 LabVIEW Library.doc" Type="Document" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LabVIEW Source Code/XPS-Q8 LabVIEW Library.doc"/>
						</Item>
						<Item Name="LLB Manager" Type="Folder">
							<Item Name="My Source Distribution" Type="Folder">
								<Item Name="Destination Directory.lvlib" Type="Library" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/LLB Manager/My Source Distribution.llb/Destination Directory.lvlib"/>
							</Item>
						</Item>
						<Item Name="Manual" Type="Folder">
							<Item Name="XPS-Q8 LabVIEW Library.pdf" Type="Document" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/Manual/XPS-Q8 LabVIEW Library.pdf"/>
							<Item Name="XPS-RL-UsersManual.pdf" Type="Document" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/Manual/XPS-RL-UsersManual.pdf"/>
							<Item Name="XPS-Unified-ProgrammersManual.pdf" Type="Document" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/Manual/XPS-Unified-ProgrammersManual.pdf"/>
						</Item>
						<Item Name="Sample Project" Type="Folder">
							<Item Name="Dll" Type="Folder">
								<Item Name="Newport.XPS.CommandInterface.dll" Type="Document" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/Sample Project/Dll/Newport.XPS.CommandInterface.dll"/>
								<Item Name="TCPIPWrap.dll" Type="Document" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/Sample Project/Dll/TCPIPWrap.dll"/>
							</Item>
							<Item Name="LabVIEW_Example.aliases" Type="Document" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/Sample Project/LabVIEW_Example.aliases"/>
							<Item Name="LabVIEW_Example.lvlps" Type="Document" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/Sample Project/LabVIEW_Example.lvlps"/>
							<Item Name="LabVIEW_Example.lvproj" Type="Document" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/Sample Project/LabVIEW_Example.lvproj"/>
							<Item Name="LWXPS_APIListGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/Sample Project/LWXPS_APIListGet.vi"/>
							<Item Name="LWXPS_Close.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/Sample Project/LWXPS_Close.vi"/>
							<Item Name="LWXPS_ColseAllOtherSockets.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/Sample Project/LWXPS_ColseAllOtherSockets.vi"/>
							<Item Name="LWXPS_ElapsedTimeGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/Sample Project/LWXPS_ElapsedTimeGet.vi"/>
							<Item Name="LWXPS_Example_APIListGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/Sample Project/LWXPS_Example_APIListGet.vi"/>
							<Item Name="LWXPS_Example_ElapsedTimeGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/Sample Project/LWXPS_Example_ElapsedTimeGet.vi"/>
							<Item Name="LWXPS_Example_FirmwareVersionGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/Sample Project/LWXPS_Example_FirmwareVersionGet.vi"/>
							<Item Name="LWXPS_Example_GatheringCurrentNumberGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/Sample Project/LWXPS_Example_GatheringCurrentNumberGet.vi"/>
							<Item Name="LWXPS_Example_GatheringExtendedListGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/Sample Project/LWXPS_Example_GatheringExtendedListGet.vi"/>
							<Item Name="LWXPS_Example_GatheringListGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/Sample Project/LWXPS_Example_GatheringListGet.vi"/>
							<Item Name="LWXPS_Example_ObjectsListGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/Sample Project/LWXPS_Example_ObjectsListGet.vi"/>
							<Item Name="LWXPS_Example_ReferencingActionListGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/Sample Project/LWXPS_Example_ReferencingActionListGet.vi"/>
							<Item Name="LWXPS_Example_ReferencingSenserListGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/Sample Project/LWXPS_Example_ReferencingSenserListGet.vi"/>
							<Item Name="LWXPS_Example_SocketsStatusGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/Sample Project/LWXPS_Example_SocketsStatusGet.vi"/>
							<Item Name="LWXPS_Example_zone.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/Sample Project/LWXPS_Example_zone.vi"/>
							<Item Name="LWXPS_Example_ZygoAmplitudeGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/Sample Project/LWXPS_Example_ZygoAmplitudeGet.vi"/>
							<Item Name="LWXPS_FirmwareVersionGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/Sample Project/LWXPS_FirmwareVersionGet.vi"/>
						</Item>
					</Item>
				</Item>
				<Item Name="calc waveforms.vi" Type="VI" URL="../sub vi/calc waveforms.vi"/>
				<Item Name="convert channel number into DAQ channel string.vi" Type="VI" URL="../sub vi/convert channel number into DAQ channel string.vi"/>
				<Item Name="copy data to identical cluster.vi" Type="VI" URL="../sub vi/copy data to identical cluster.vi"/>
				<Item Name="digital galvo ADC.vi" Type="VI" URL="../sub vi/digital galvo ADC.vi"/>
				<Item Name="generate task plan.vi" Type="VI" URL="../sub vi/generate task plan.vi"/>
				<Item Name="get values from a control in a cluster using reference.vi" Type="VI" URL="../sub vi/get values from a control in a cluster using reference.vi"/>
				<Item Name="initialize NI card.vi" Type="VI" URL="../sub vi/initialize NI card.vi"/>
				<Item Name="load last configuration.vi" Type="VI" URL="../sub vi/load last configuration.vi"/>
				<Item Name="load system configuration.vi" Type="VI" URL="../sub vi/load system configuration.vi"/>
				<Item Name="ramping waveform.vi" Type="VI" URL="../sub vi/ramping waveform.vi"/>
				<Item Name="read parameters in a cluster from last configuration file.vi" Type="VI" URL="../sub vi/read parameters in a cluster from last configuration file.vi"/>
				<Item Name="read stage.vi" Type="VI" URL="../sub vi/read stage.vi"/>
				<Item Name="reconstruct single image for display.vi" Type="VI" URL="../sub vi/reconstruct single image for display.vi"/>
				<Item Name="save configuration.vi" Type="VI" URL="../sub vi/save configuration.vi"/>
				<Item Name="set enable value in a cluster.vi" Type="VI" URL="../sub vi/set enable value in a cluster.vi"/>
				<Item Name="set properties for a control in a cluster using reference.vi" Type="VI" URL="../sub vi/set properties for a control in a cluster using reference.vi"/>
				<Item Name="set values for a control in a cluster using reference.vi" Type="VI" URL="../sub vi/set values for a control in a cluster using reference.vi"/>
				<Item Name="stage control.vi" Type="VI" URL="../sub vi/stage control.vi"/>
				<Item Name="write parameters in a cluster to configuration file.vi" Type="VI" URL="../sub vi/write parameters in a cluster to configuration file.vi"/>
			</Item>
			<Item Name="tiff" Type="Folder">
				<Item Name="Tiff reader.lvlib" Type="Library" URL="../tiff/Tiff reader.lvlib"/>
				<Item Name="datatoTIFF.vi" Type="VI" URL="../tiff/datatoTIFF.vi"/>
				<Item Name="Save multiple images to new tiff stack.vi" Type="VI" URL="../tiff/Save multiple images to new tiff stack.vi"/>
				<Item Name="Tiff reader readme.txt" Type="Document" URL="../tiff/Tiff reader readme.txt"/>
			</Item>
			<Item Name="type def" Type="Folder">
				<Item Name="advanced params.ctl" Type="VI" URL="../type def/advanced params.ctl"/>
				<Item Name="basic params.ctl" Type="VI" URL="../type def/basic params.ctl"/>
				<Item Name="do waveform.ctl" Type="VI" URL="../type def/do waveform.ctl"/>
				<Item Name="imaging mode.ctl" Type="VI" URL="../type def/imaging mode.ctl"/>
				<Item Name="motor panel.ctl" Type="VI" URL="../type def/motor panel.ctl"/>
				<Item Name="NI card channels.ctl" Type="VI" URL="../type def/NI card channels.ctl"/>
				<Item Name="NI tasks.ctl" Type="VI" URL="../type def/NI tasks.ctl"/>
				<Item Name="PXI control.ctl" Type="VI" URL="../type def/PXI control.ctl"/>
				<Item Name="stage plan.ctl" Type="VI" URL="../type def/stage plan.ctl"/>
				<Item Name="task plan.ctl" Type="VI" URL="../type def/task plan.ctl"/>
				<Item Name="task status.ctl" Type="VI" URL="../type def/task status.ctl"/>
			</Item>
			<Item Name="last configuration.ini" Type="Document" URL="../last configuration.ini"/>
			<Item Name="system configuration.ini" Type="Document" URL="../system configuration.ini"/>
			<Item Name="whole brain TP.aliases" Type="Document" URL="../whole brain TP.aliases"/>
			<Item Name="whole brain TP.lvlps" Type="Document" URL="../whole brain TP.lvlps"/>
		</Item>
		<Item Name="main ui.vi" Type="VI" URL="../main ui.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="instr.lib" Type="Folder">
				<Item Name="niScope Abort.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Acquire/Fetch/niScope Abort.vi"/>
				<Item Name="niScope Close.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/niScope Close.vi"/>
				<Item Name="niScope Configure Chan Characteristics.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Configure/Vertical/niScope Configure Chan Characteristics.vi"/>
				<Item Name="niScope Configure Horizontal Timing.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Configure/Horizontal/niScope Configure Horizontal Timing.vi"/>
				<Item Name="niScope Configure Trigger (poly).vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Configure/Trigger/niScope Configure Trigger (poly).vi"/>
				<Item Name="niScope Configure Trigger Digital.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Configure/Trigger/niScope Configure Trigger Digital.vi"/>
				<Item Name="niScope Configure Trigger Edge.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Configure/Trigger/niScope Configure Trigger Edge.vi"/>
				<Item Name="niScope Configure Trigger Hysteresis.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Configure/Trigger/niScope Configure Trigger Hysteresis.vi"/>
				<Item Name="niScope Configure Trigger Immediate.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Configure/Trigger/niScope Configure Trigger Immediate.vi"/>
				<Item Name="niScope Configure Trigger Software.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Configure/Trigger/niScope Configure Trigger Software.vi"/>
				<Item Name="niScope Configure Trigger Window.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Configure/Trigger/niScope Configure Trigger Window.vi"/>
				<Item Name="niScope Configure Vertical.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Configure/Vertical/niScope Configure Vertical.vi"/>
				<Item Name="niScope Configure Video Trigger.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Configure/Trigger/niScope Configure Video Trigger.vi"/>
				<Item Name="niScope Fetch (poly).vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Acquire/Fetch/niScope Fetch (poly).vi"/>
				<Item Name="niScope Fetch Binary 8.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Acquire/Fetch/niScope Fetch Binary 8.vi"/>
				<Item Name="niScope Fetch Binary 16.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Acquire/Fetch/niScope Fetch Binary 16.vi"/>
				<Item Name="niScope Fetch Binary 32.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Acquire/Fetch/niScope Fetch Binary 32.vi"/>
				<Item Name="niScope Fetch Cluster Complex Double.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Acquire/Fetch/niScope Fetch Cluster Complex Double.vi"/>
				<Item Name="niScope Fetch Cluster.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Acquire/Fetch/niScope Fetch Cluster.vi"/>
				<Item Name="niScope Fetch Complex Double.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Acquire/Fetch/niScope Fetch Complex Double.vi"/>
				<Item Name="niScope Fetch Complex WDT.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Acquire/Fetch/niScope Fetch Complex WDT.vi"/>
				<Item Name="niScope Fetch Error Chain.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Acquire/Fetch/niScope Fetch Error Chain.vi"/>
				<Item Name="niScope Fetch WDT.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Acquire/Fetch/niScope Fetch WDT.vi"/>
				<Item Name="niScope Fetch.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Acquire/Fetch/niScope Fetch.vi"/>
				<Item Name="niScope Get Session Reference.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Utility/niScope Get Session Reference.vi"/>
				<Item Name="niScope Initialize.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/niScope Initialize.vi"/>
				<Item Name="niScope Initiate Acquisition.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Acquire/Fetch/niScope Initiate Acquisition.vi"/>
				<Item Name="niScope LabVIEW Error.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Utility/niScope LabVIEW Error.vi"/>
				<Item Name="niScope Multi Fetch Binary 8.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Acquire/Fetch/niScope Multi Fetch Binary 8.vi"/>
				<Item Name="niScope Multi Fetch Binary 16.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Acquire/Fetch/niScope Multi Fetch Binary 16.vi"/>
				<Item Name="niScope Multi Fetch Binary 32.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Acquire/Fetch/niScope Multi Fetch Binary 32.vi"/>
				<Item Name="niScope Multi Fetch Cluster Complex Double.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Acquire/Fetch/niScope Multi Fetch Cluster Complex Double.vi"/>
				<Item Name="niScope Multi Fetch Cluster.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Acquire/Fetch/niScope Multi Fetch Cluster.vi"/>
				<Item Name="niScope Multi Fetch Complex Double.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Acquire/Fetch/niScope Multi Fetch Complex Double.vi"/>
				<Item Name="niScope Multi Fetch Complex WDT.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Acquire/Fetch/niScope Multi Fetch Complex WDT.vi"/>
				<Item Name="niScope Multi Fetch WDT.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Acquire/Fetch/niScope Multi Fetch WDT.vi"/>
				<Item Name="niScope Multi Fetch.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Acquire/Fetch/niScope Multi Fetch.vi"/>
				<Item Name="niScope polarity.ctl" Type="VI" URL="/&lt;instrlib&gt;/niScope/Controls/niScope polarity.ctl"/>
				<Item Name="niScope signal format.ctl" Type="VI" URL="/&lt;instrlib&gt;/niScope/Controls/niScope signal format.ctl"/>
				<Item Name="niScope timestamp type.ctl" Type="VI" URL="/&lt;instrlib&gt;/niScope/Controls/niScope timestamp type.ctl"/>
				<Item Name="niScope trigger coupling.ctl" Type="VI" URL="/&lt;instrlib&gt;/niScope/Controls/niScope trigger coupling.ctl"/>
				<Item Name="niScope trigger slope.ctl" Type="VI" URL="/&lt;instrlib&gt;/niScope/Controls/niScope trigger slope.ctl"/>
				<Item Name="niScope trigger source digital.ctl" Type="VI" URL="/&lt;instrlib&gt;/niScope/Controls/niScope trigger source digital.ctl"/>
				<Item Name="niScope trigger source.ctl" Type="VI" URL="/&lt;instrlib&gt;/niScope/Controls/niScope trigger source.ctl"/>
				<Item Name="niScope trigger window mode.ctl" Type="VI" URL="/&lt;instrlib&gt;/niScope/Controls/niScope trigger window mode.ctl"/>
				<Item Name="niScope tv event.ctl" Type="VI" URL="/&lt;instrlib&gt;/niScope/Controls/niScope tv event.ctl"/>
				<Item Name="niScope vertical coupling.ctl" Type="VI" URL="/&lt;instrlib&gt;/niScope/Controls/niScope vertical coupling.ctl"/>
			</Item>
			<Item Name="vi.lib" Type="Folder">
				<Item Name="8.6CompatibleGlobalVar.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/8.6CompatibleGlobalVar.vi"/>
				<Item Name="Acquire Semaphore.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Acquire Semaphore.vi"/>
				<Item Name="AddNamedSemaphorePrefix.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/AddNamedSemaphorePrefix.vi"/>
				<Item Name="Application Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Application Directory.vi"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="compatCalcOffset.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatCalcOffset.vi"/>
				<Item Name="compatFileDialog.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatFileDialog.vi"/>
				<Item Name="compatOpenFileOperation.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatOpenFileOperation.vi"/>
				<Item Name="DAQmx Advance Trigger (Digital Edge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/trigger.llb/DAQmx Advance Trigger (Digital Edge).vi"/>
				<Item Name="DAQmx Advance Trigger (None).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/trigger.llb/DAQmx Advance Trigger (None).vi"/>
				<Item Name="DAQmx Clear Task.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/task.llb/DAQmx Clear Task.vi"/>
				<Item Name="DAQmx Create AI Channel (sub).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create AI Channel (sub).vi"/>
				<Item Name="DAQmx Create AI Channel TEDS(sub).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create AI Channel TEDS(sub).vi"/>
				<Item Name="DAQmx Create AO Channel (sub).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create AO Channel (sub).vi"/>
				<Item Name="DAQmx Create Channel (AI-Acceleration-Accelerometer).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Acceleration-Accelerometer).vi"/>
				<Item Name="DAQmx Create Channel (AI-Bridge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Bridge).vi"/>
				<Item Name="DAQmx Create Channel (AI-Current-Basic).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Current-Basic).vi"/>
				<Item Name="DAQmx Create Channel (AI-Current-RMS).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Current-RMS).vi"/>
				<Item Name="DAQmx Create Channel (AI-Force-Bridge-Polynomial).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Force-Bridge-Polynomial).vi"/>
				<Item Name="DAQmx Create Channel (AI-Force-Bridge-Table).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Force-Bridge-Table).vi"/>
				<Item Name="DAQmx Create Channel (AI-Force-Bridge-Two-Point-Linear).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Force-Bridge-Two-Point-Linear).vi"/>
				<Item Name="DAQmx Create Channel (AI-Force-IEPE Sensor).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Force-IEPE Sensor).vi"/>
				<Item Name="DAQmx Create Channel (AI-Frequency-Voltage).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Frequency-Voltage).vi"/>
				<Item Name="DAQmx Create Channel (AI-Position-EddyCurrentProxProbe).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Position-EddyCurrentProxProbe).vi"/>
				<Item Name="DAQmx Create Channel (AI-Position-LVDT).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Position-LVDT).vi"/>
				<Item Name="DAQmx Create Channel (AI-Position-RVDT).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Position-RVDT).vi"/>
				<Item Name="DAQmx Create Channel (AI-Pressure-Bridge-Polynomial).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Pressure-Bridge-Polynomial).vi"/>
				<Item Name="DAQmx Create Channel (AI-Pressure-Bridge-Table).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Pressure-Bridge-Table).vi"/>
				<Item Name="DAQmx Create Channel (AI-Pressure-Bridge-Two-Point-Linear).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Pressure-Bridge-Two-Point-Linear).vi"/>
				<Item Name="DAQmx Create Channel (AI-Resistance).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Resistance).vi"/>
				<Item Name="DAQmx Create Channel (AI-Sound Pressure-Microphone).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Sound Pressure-Microphone).vi"/>
				<Item Name="DAQmx Create Channel (AI-Strain-Rosette Strain Gage).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Strain-Rosette Strain Gage).vi"/>
				<Item Name="DAQmx Create Channel (AI-Strain-Strain Gage).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Strain-Strain Gage).vi"/>
				<Item Name="DAQmx Create Channel (AI-Temperature-Built-in Sensor).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Temperature-Built-in Sensor).vi"/>
				<Item Name="DAQmx Create Channel (AI-Temperature-RTD).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Temperature-RTD).vi"/>
				<Item Name="DAQmx Create Channel (AI-Temperature-Thermistor-Iex).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Temperature-Thermistor-Iex).vi"/>
				<Item Name="DAQmx Create Channel (AI-Temperature-Thermistor-Vex).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Temperature-Thermistor-Vex).vi"/>
				<Item Name="DAQmx Create Channel (AI-Temperature-Thermocouple).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Temperature-Thermocouple).vi"/>
				<Item Name="DAQmx Create Channel (AI-Torque-Bridge-Polynomial).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Torque-Bridge-Polynomial).vi"/>
				<Item Name="DAQmx Create Channel (AI-Torque-Bridge-Table).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Torque-Bridge-Table).vi"/>
				<Item Name="DAQmx Create Channel (AI-Torque-Bridge-Two-Point-Linear).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Torque-Bridge-Two-Point-Linear).vi"/>
				<Item Name="DAQmx Create Channel (AI-Velocity-IEPE Sensor).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Velocity-IEPE Sensor).vi"/>
				<Item Name="DAQmx Create Channel (AI-Voltage-Basic).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Voltage-Basic).vi"/>
				<Item Name="DAQmx Create Channel (AI-Voltage-Custom with Excitation).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Voltage-Custom with Excitation).vi"/>
				<Item Name="DAQmx Create Channel (AI-Voltage-RMS).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Voltage-RMS).vi"/>
				<Item Name="DAQmx Create Channel (AO-Current-Basic).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AO-Current-Basic).vi"/>
				<Item Name="DAQmx Create Channel (AO-FuncGen).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AO-FuncGen).vi"/>
				<Item Name="DAQmx Create Channel (AO-Voltage-Basic).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AO-Voltage-Basic).vi"/>
				<Item Name="DAQmx Create Channel (CI-Count Edges).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Count Edges).vi"/>
				<Item Name="DAQmx Create Channel (CI-Duty Cycle).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Duty Cycle).vi"/>
				<Item Name="DAQmx Create Channel (CI-Frequency).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Frequency).vi"/>
				<Item Name="DAQmx Create Channel (CI-GPS Timestamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-GPS Timestamp).vi"/>
				<Item Name="DAQmx Create Channel (CI-Period).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Period).vi"/>
				<Item Name="DAQmx Create Channel (CI-Position-Angular Encoder).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Position-Angular Encoder).vi"/>
				<Item Name="DAQmx Create Channel (CI-Position-Linear Encoder).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Position-Linear Encoder).vi"/>
				<Item Name="DAQmx Create Channel (CI-Pulse Freq).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Pulse Freq).vi"/>
				<Item Name="DAQmx Create Channel (CI-Pulse Ticks).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Pulse Ticks).vi"/>
				<Item Name="DAQmx Create Channel (CI-Pulse Time).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Pulse Time).vi"/>
				<Item Name="DAQmx Create Channel (CI-Pulse Width).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Pulse Width).vi"/>
				<Item Name="DAQmx Create Channel (CI-Semi Period).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Semi Period).vi"/>
				<Item Name="DAQmx Create Channel (CI-Two Edge Separation).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Two Edge Separation).vi"/>
				<Item Name="DAQmx Create Channel (CI-Velocity-Angular).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Velocity-Angular).vi"/>
				<Item Name="DAQmx Create Channel (CI-Velocity-Linear).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Velocity-Linear).vi"/>
				<Item Name="DAQmx Create Channel (CO-Pulse Generation-Frequency).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CO-Pulse Generation-Frequency).vi"/>
				<Item Name="DAQmx Create Channel (CO-Pulse Generation-Ticks).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CO-Pulse Generation-Ticks).vi"/>
				<Item Name="DAQmx Create Channel (CO-Pulse Generation-Time).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CO-Pulse Generation-Time).vi"/>
				<Item Name="DAQmx Create Channel (DI-Digital Input).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (DI-Digital Input).vi"/>
				<Item Name="DAQmx Create Channel (DO-Digital Output).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (DO-Digital Output).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Acceleration-Accelerometer).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Acceleration-Accelerometer).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Bridge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Bridge).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Current-Basic).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Current-Basic).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Force-Bridge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Force-Bridge).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Force-IEPE Sensor).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Force-IEPE Sensor).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Position-LVDT).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Position-LVDT).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Position-RVDT).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Position-RVDT).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Pressure-Bridge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Pressure-Bridge).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Resistance).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Resistance).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Sound Pressure-Microphone).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Sound Pressure-Microphone).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Strain-Strain Gage).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Strain-Strain Gage).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Temperature-RTD).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Temperature-RTD).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Temperature-Thermistor-Iex).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Temperature-Thermistor-Iex).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Temperature-Thermistor-Vex).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Temperature-Thermistor-Vex).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Temperature-Thermocouple).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Temperature-Thermocouple).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Torque-Bridge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Torque-Bridge).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Voltage-Basic).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Voltage-Basic).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Voltage-Custom with Excitation).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Voltage-Custom with Excitation).vi"/>
				<Item Name="DAQmx Create CI Channel (sub).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create CI Channel (sub).vi"/>
				<Item Name="DAQmx Create CO Channel (sub).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create CO Channel (sub).vi"/>
				<Item Name="DAQmx Create DI Channel (sub).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create DI Channel (sub).vi"/>
				<Item Name="DAQmx Create DO Channel (sub).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create DO Channel (sub).vi"/>
				<Item Name="DAQmx Create Strain Rosette AI Channels (sub).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Strain Rosette AI Channels (sub).vi"/>
				<Item Name="DAQmx Create Virtual Channel.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Virtual Channel.vi"/>
				<Item Name="DAQmx Fill In Error Info.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/miscellaneous.llb/DAQmx Fill In Error Info.vi"/>
				<Item Name="DAQmx Flatten Channel String.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/miscellaneous.llb/DAQmx Flatten Channel String.vi"/>
				<Item Name="DAQmx Reference Trigger (Analog Edge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/trigger.llb/DAQmx Reference Trigger (Analog Edge).vi"/>
				<Item Name="DAQmx Reference Trigger (Analog Window).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/trigger.llb/DAQmx Reference Trigger (Analog Window).vi"/>
				<Item Name="DAQmx Reference Trigger (Digital Edge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/trigger.llb/DAQmx Reference Trigger (Digital Edge).vi"/>
				<Item Name="DAQmx Reference Trigger (Digital Pattern).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/trigger.llb/DAQmx Reference Trigger (Digital Pattern).vi"/>
				<Item Name="DAQmx Reference Trigger (None).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/trigger.llb/DAQmx Reference Trigger (None).vi"/>
				<Item Name="DAQmx Rollback Channel If Error.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Rollback Channel If Error.vi"/>
				<Item Name="DAQmx Set CJC Parameters (sub).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Set CJC Parameters (sub).vi"/>
				<Item Name="DAQmx Start Task.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/task.llb/DAQmx Start Task.vi"/>
				<Item Name="DAQmx Start Trigger (Analog Edge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/trigger.llb/DAQmx Start Trigger (Analog Edge).vi"/>
				<Item Name="DAQmx Start Trigger (Analog Window).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/trigger.llb/DAQmx Start Trigger (Analog Window).vi"/>
				<Item Name="DAQmx Start Trigger (Digital Edge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/trigger.llb/DAQmx Start Trigger (Digital Edge).vi"/>
				<Item Name="DAQmx Start Trigger (Digital Pattern).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/trigger.llb/DAQmx Start Trigger (Digital Pattern).vi"/>
				<Item Name="DAQmx Start Trigger (None).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/trigger.llb/DAQmx Start Trigger (None).vi"/>
				<Item Name="DAQmx Stop Task.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/task.llb/DAQmx Stop Task.vi"/>
				<Item Name="DAQmx Timing (Burst Export Clock).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Burst Export Clock).vi"/>
				<Item Name="DAQmx Timing (Burst Import Clock).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Burst Import Clock).vi"/>
				<Item Name="DAQmx Timing (Change Detection).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Change Detection).vi"/>
				<Item Name="DAQmx Timing (Handshaking).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Handshaking).vi"/>
				<Item Name="DAQmx Timing (Implicit).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Implicit).vi"/>
				<Item Name="DAQmx Timing (Pipelined Sample Clock).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Pipelined Sample Clock).vi"/>
				<Item Name="DAQmx Timing (Sample Clock).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Sample Clock).vi"/>
				<Item Name="DAQmx Timing (Use Waveform).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Use Waveform).vi"/>
				<Item Name="DAQmx Timing.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing.vi"/>
				<Item Name="DAQmx Trigger.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/trigger.llb/DAQmx Trigger.vi"/>
				<Item Name="DAQmx Write (Analog 1D DBL 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 1D DBL 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Analog 1D DBL NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 1D DBL NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Analog 1D Wfm NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 1D Wfm NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Analog 1D Wfm NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 1D Wfm NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Analog 2D DBL NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 2D DBL NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Analog 2D I16 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 2D I16 NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Analog 2D I32 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 2D I32 NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Analog 2D U16 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 2D U16 NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Analog DBL 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog DBL 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Analog Wfm 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog Wfm 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Analog Wfm 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog Wfm 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Counter 1D Frequency 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter 1D Frequency 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Counter 1D Frequency NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter 1D Frequency NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Counter 1D Ticks 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter 1D Ticks 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Counter 1D Time 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter 1D Time 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Counter 1D Time NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter 1D Time NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Counter 1DTicks NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter 1DTicks NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Counter Frequency 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter Frequency 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Counter Ticks 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter Ticks 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Counter Time 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter Time 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital 1D Bool 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D Bool 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital 1D Bool NChan 1Samp 1Line).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D Bool NChan 1Samp 1Line).vi"/>
				<Item Name="DAQmx Write (Digital 1D U8 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D U8 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Digital 1D U8 NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D U8 NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital 1D U16 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D U16 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Digital 1D U16 NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D U16 NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital 1D U32 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D U32 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Digital 1D U32 NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D U32 NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital 1D Wfm NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D Wfm NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital 1D Wfm NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D Wfm NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Digital 2D Bool NChan 1Samp NLine).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 2D Bool NChan 1Samp NLine).vi"/>
				<Item Name="DAQmx Write (Digital 2D U8 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 2D U8 NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Digital 2D U16 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 2D U16 NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Digital 2D U32 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 2D U32 NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Digital Bool 1Line 1Point).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital Bool 1Line 1Point).vi"/>
				<Item Name="DAQmx Write (Digital U8 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital U8 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital U16 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital U16 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital U32 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital U32 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital Wfm 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital Wfm 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital Wfm 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital Wfm 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Raw 1D I8).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Raw 1D I8).vi"/>
				<Item Name="DAQmx Write (Raw 1D I16).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Raw 1D I16).vi"/>
				<Item Name="DAQmx Write (Raw 1D I32).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Raw 1D I32).vi"/>
				<Item Name="DAQmx Write (Raw 1D U8).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Raw 1D U8).vi"/>
				<Item Name="DAQmx Write (Raw 1D U16).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Raw 1D U16).vi"/>
				<Item Name="DAQmx Write (Raw 1D U32).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Raw 1D U32).vi"/>
				<Item Name="DAQmx Write.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write.vi"/>
				<Item Name="Draw Flattened Pixmap.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Draw Flattened Pixmap.vi"/>
				<Item Name="DTbl Digital Size.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DTblOps.llb/DTbl Digital Size.vi"/>
				<Item Name="DTbl Uncompress Digital.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DTblOps.llb/DTbl Uncompress Digital.vi"/>
				<Item Name="DWDT Uncompress Digital.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DWDTOps.llb/DWDT Uncompress Digital.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="ex_CorrectErrorChain.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_CorrectErrorChain.vi"/>
				<Item Name="FixBadRect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/pictutil.llb/FixBadRect.vi"/>
				<Item Name="Flatten Pixmap.vi" Type="VI" URL="/&lt;vilib&gt;/picture/pixmap.llb/Flatten Pixmap.vi"/>
				<Item Name="GetNamedSemaphorePrefix.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/GetNamedSemaphorePrefix.vi"/>
				<Item Name="Image Type" Type="VI" URL="/&lt;vilib&gt;/vision/Image Controls.llb/Image Type"/>
				<Item Name="imagedata.ctl" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/imagedata.ctl"/>
				<Item Name="IMAQ ArrayToImage" Type="VI" URL="/&lt;vilib&gt;/vision/Basics.llb/IMAQ ArrayToImage"/>
				<Item Name="IMAQ Create" Type="VI" URL="/&lt;vilib&gt;/vision/Basics.llb/IMAQ Create"/>
				<Item Name="IMAQ Dispose" Type="VI" URL="/&lt;vilib&gt;/vision/Basics.llb/IMAQ Dispose"/>
				<Item Name="IMAQ Image.ctl" Type="VI" URL="/&lt;vilib&gt;/vision/Image Controls.llb/IMAQ Image.ctl"/>
				<Item Name="IMAQ ImageToArray" Type="VI" URL="/&lt;vilib&gt;/vision/Basics.llb/IMAQ ImageToArray"/>
				<Item Name="IMAQ ReadFile" Type="VI" URL="/&lt;vilib&gt;/vision/Files.llb/IMAQ ReadFile"/>
				<Item Name="IMAQ Write BMP String" Type="VI" URL="/&lt;vilib&gt;/vision/Files.llb/IMAQ Write BMP String"/>
				<Item Name="IMAQ Write Image And Vision Info String" Type="VI" URL="/&lt;vilib&gt;/vision/Files.llb/IMAQ Write Image And Vision Info String"/>
				<Item Name="IMAQ Write JPEG String" Type="VI" URL="/&lt;vilib&gt;/vision/Files.llb/IMAQ Write JPEG String"/>
				<Item Name="IMAQ Write PNG String" Type="VI" URL="/&lt;vilib&gt;/vision/Files.llb/IMAQ Write PNG String"/>
				<Item Name="IMAQ Write String" Type="VI" URL="/&lt;vilib&gt;/vision/Files.llb/IMAQ Write String"/>
				<Item Name="IMAQ Write TIFF String" Type="VI" URL="/&lt;vilib&gt;/vision/Files.llb/IMAQ Write TIFF String"/>
				<Item Name="LVOutOfRangeActionTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVOutOfRangeActionTypeDef.ctl"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_LVConfig.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/config.llb/NI_LVConfig.lvlib"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="Not A Semaphore.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Not A Semaphore.vi"/>
				<Item Name="Obtain Semaphore Reference.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Obtain Semaphore Reference.vi"/>
				<Item Name="Open_Create_Replace File.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/Open_Create_Replace File.vi"/>
				<Item Name="Release Semaphore Reference.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Release Semaphore Reference.vi"/>
				<Item Name="Release Semaphore.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Release Semaphore.vi"/>
				<Item Name="RemoveNamedSemaphorePrefix.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/RemoveNamedSemaphorePrefix.vi"/>
				<Item Name="RGB to Color.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/colorconv.llb/RGB to Color.vi"/>
				<Item Name="Semaphore RefNum" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Semaphore RefNum"/>
				<Item Name="Semaphore Refnum Core.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Semaphore Refnum Core.ctl"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="subFile Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/FileDialogBlock.llb/subFile Dialog.vi"/>
				<Item Name="System Exec.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/system.llb/System Exec.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="Validate Semaphore Size.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Validate Semaphore Size.vi"/>
				<Item Name="VISA Configure Serial Port" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port"/>
				<Item Name="VISA Configure Serial Port (Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Instr).vi"/>
				<Item Name="VISA Configure Serial Port (Serial Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Serial Instr).vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
			</Item>
			<Item Name="#7.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Special command.llb/#7.vi"/>
			<Item Name="#24.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Special command.llb/#24.vi"/>
			<Item Name="*IDN?.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/General command.llb/*IDN?.vi"/>
			<Item Name="Analog FGlobal.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Analog control.llb/Analog FGlobal.vi"/>
			<Item Name="Analog Functions.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Analog control.llb/Analog Functions.vi"/>
			<Item Name="Analog Receive String.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Analog control.llb/Analog Receive String.vi"/>
			<Item Name="Assign booleans from string to axes.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Support.llb/Assign booleans from string to axes.vi"/>
			<Item Name="Assign NaN for chosen axes.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Support.llb/Assign NaN for chosen axes.vi"/>
			<Item Name="Assign values from string to axes.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Support.llb/Assign values from string to axes.vi"/>
			<Item Name="Available Analog Commands.ctl" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Analog control.llb/Available Analog Commands.ctl"/>
			<Item Name="Available DLL interfaces.ctl" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Communication.llb/Available DLL interfaces.ctl"/>
			<Item Name="Available DLLs.ctl" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Communication.llb/Available DLLs.ctl"/>
			<Item Name="Available interfaces.ctl" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Communication.llb/Available interfaces.ctl"/>
			<Item Name="Build command substring.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Support.llb/Build command substring.vi"/>
			<Item Name="Build query command substring.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Support.llb/Build query command substring.vi"/>
			<Item Name="calc parameters.vi" Type="VI" URL="../sub vi/calc parameters.vi"/>
			<Item Name="Close connection if open.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Communication.llb/Close connection if open.vi"/>
			<Item Name="Commanded axes connected?.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Support.llb/Commanded axes connected?.vi"/>
			<Item Name="Commanded stage name available?.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Support.llb/Commanded stage name available?.vi"/>
			<Item Name="Controller names.ctl" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/General command.llb/Controller names.ctl"/>
			<Item Name="Create Controller Names.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Support.llb/Create Controller Names.vi"/>
			<Item Name="CST handler.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Support.llb/CST handler.vi"/>
			<Item Name="CST.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Special command.llb/CST.vi"/>
			<Item Name="CST?.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Special command.llb/CST?.vi"/>
			<Item Name="Cut out additional spaces.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Support.llb/Cut out additional spaces.vi"/>
			<Item Name="Define axes to command from boolean array.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Support.llb/Define axes to command from boolean array.vi"/>
			<Item Name="Define connected axes.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/General command.llb/Define connected axes.vi"/>
			<Item Name="Define connected stages with dialog.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Support.llb/Define connected stages with dialog.vi"/>
			<Item Name="Define connected systems (Array).vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/General command.llb/Define connected systems (Array).vi"/>
			<Item Name="digital galvo position ver2.vi" Type="VI" URL="../sub vi/digital galvo position ver2.vi"/>
			<Item Name="E873_Configuration_Setup.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Obsolete/E873_Configuration_Setup.vi"/>
			<Item Name="EAX.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Special command.llb/EAX.vi"/>
			<Item Name="EAX?.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Special command.llb/EAX?.vi"/>
			<Item Name="ERR?.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/General command.llb/ERR?.vi"/>
			<Item Name="Find host address.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Communication.llb/Find host address.vi"/>
			<Item Name="FNL.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Limits.llb/FNL.vi"/>
			<Item Name="FPL.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Limits.llb/FPL.vi"/>
			<Item Name="FRF.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Limits.llb/FRF.vi"/>
			<Item Name="FRF?.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Limits.llb/FRF?.vi"/>
			<Item Name="GCSTranslateError.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Support.llb/GCSTranslateError.vi"/>
			<Item Name="GCSTranslator DLL Functions.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Communication.llb/GCSTranslator DLL Functions.vi"/>
			<Item Name="Get all axes.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Support.llb/Get all axes.vi"/>
			<Item Name="Get arrays without blanks.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Support.llb/Get arrays without blanks.vi"/>
			<Item Name="Get Controller Name from IDN.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Support.llb/Get Controller Name from IDN.vi"/>
			<Item Name="Get lines from string.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Support.llb/Get lines from string.vi"/>
			<Item Name="Get subnet.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Communication.llb/Get subnet.vi"/>
			<Item Name="GetGCSTranslatorDLLPath.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Communication.llb/GetGCSTranslatorDLLPath.vi"/>
			<Item Name="Global DaisyChain.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Communication.llb/Global DaisyChain.vi"/>
			<Item Name="Global1.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Communication.llb/Global1.vi"/>
			<Item Name="Global2 (Array).vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/General command.llb/Global2 (Array).vi"/>
			<Item Name="HAR?.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Limits.llb/HAR?.vi"/>
			<Item Name="HasCommand?.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Support.llb/HasCommand?.vi"/>
			<Item Name="HasCommandArray?.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Support.llb/HasCommandArray?.vi"/>
			<Item Name="HLP?.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/General command.llb/HLP?.vi"/>
			<Item Name="IMAQ Cast Image" Type="VI" URL="../../../&lt;vilib&gt;/vision/Management.llb/IMAQ Cast Image"/>
			<Item Name="IMAQ Symmetry" Type="VI" URL="../../../&lt;vilib&gt;/Vision/Image Manipulation.llb/IMAQ Symmetry"/>
			<Item Name="Initialize Global DaisyChain.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Communication.llb/Initialize Global DaisyChain.vi"/>
			<Item Name="Initialize Global1.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Communication.llb/Initialize Global1.vi"/>
			<Item Name="Initialize Global2.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/General command.llb/Initialize Global2.vi"/>
			<Item Name="Interface Settings.ctl" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Communication.llb/Interface Settings.ctl"/>
			<Item Name="Is command present in HLP answer?.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Support.llb/Is command present in HLP answer?.vi"/>
			<Item Name="Is DaisyChain open.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Communication.llb/Is DaisyChain open.vi"/>
			<Item Name="LIM?.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Limits.llb/LIM?.vi"/>
			<Item Name="LWXPS_GatheringCurrentNumberGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/Sample Project/LWXPS_GatheringCurrentNumberGet.vi"/>
			<Item Name="LWXPS_GatheringExtendedListGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/Sample Project/LWXPS_GatheringExtendedListGet.vi"/>
			<Item Name="LWXPS_GatheringListGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/Sample Project/LWXPS_GatheringListGet.vi"/>
			<Item Name="LWXPS_ObjectsListGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/Sample Project/LWXPS_ObjectsListGet.vi"/>
			<Item Name="LWXPS_Open.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/Sample Project/LWXPS_Open.vi"/>
			<Item Name="LWXPS_ReferencingActionListGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/Sample Project/LWXPS_ReferencingActionListGet.vi"/>
			<Item Name="LWXPS_ReferencingSensorListGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/Sample Project/LWXPS_ReferencingSensorListGet.vi"/>
			<Item Name="LWXPS_SocketsStatusGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/Sample Project/LWXPS_SocketsStatusGet.vi"/>
			<Item Name="LWXPS_ZygoAmplitudeGet.vi" Type="VI" URL="../sub vi/XPS-UNIFIED/LabVIEW VIs/Sample Project/LWXPS_ZygoAmplitudeGet.vi"/>
			<Item Name="MISSING CODE PLACEHOLDER.vi" Type="VI" URL="../tools/MISSING CODE PLACEHOLDER.vi"/>
			<Item Name="MOV.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/General command.llb/MOV.vi"/>
			<Item Name="mscorlib" Type="VI" URL="mscorlib">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="Newport.XPS.CommandInterface" Type="Document" URL="Newport.XPS.CommandInterface">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="Newport.XPS.CommandInterface.dll" Type="Document" URL="/D/XPSQ8_LabView_Library/Development/builds/LWXPS/data/Newport.XPS.CommandInterface.dll"/>
			<Item Name="Newport.XPS.CommandInterface.dll" Type="Document" URL="/D/XPSQ8_LabView_Library/Development/Source/Dll/Newport.XPS.CommandInterface.dll"/>
			<Item Name="nilvaiu.dll" Type="Document" URL="nilvaiu.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="niScope_64.dll" Type="Document" URL="niScope_64.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="nivision.dll" Type="Document" URL="nivision.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="nivissvc.dll" Type="Document" URL="nivissvc.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="PI acquire semaphore.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Communication.llb/PI acquire semaphore.vi"/>
			<Item Name="PI Open Interface of one system.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Communication.llb/PI Open Interface of one system.vi"/>
			<Item Name="PI Query.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Communication.llb/PI Query.vi"/>
			<Item Name="PI Receive String.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Communication.llb/PI Receive String.vi"/>
			<Item Name="PI release semaphore.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Communication.llb/PI release semaphore.vi"/>
			<Item Name="PI Send String.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Communication.llb/PI Send String.vi"/>
			<Item Name="PI Send.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Communication.llb/PI Send.vi"/>
			<Item Name="PI VISA Receive Characters.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Communication.llb/PI VISA Receive Characters.vi"/>
			<Item Name="PI_GCS2_Configuration_Setup.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/PI_GCS2_Configuration_Setup.vi"/>
			<Item Name="Pop-up wait prompt with cancel button.vi" Type="VI" URL="../tools/Pop-up wait prompt with cancel button.vi"/>
			<Item Name="POS?.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/General command.llb/POS?.vi"/>
			<Item Name="Read all custom data.vi" Type="VI" URL="../tools/Read all custom data.vi"/>
			<Item Name="reconstruct single image for saving channel 2.vi" Type="VI" URL="../sub vi/reconstruct single image for saving channel 2.vi"/>
			<Item Name="Return space.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Support.llb/Return space.vi"/>
			<Item Name="RON.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Limits.llb/RON.vi"/>
			<Item Name="RON?.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Limits.llb/RON?.vi"/>
			<Item Name="SAI?.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/General command.llb/SAI?.vi"/>
			<Item Name="Select DaisyChain device.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Communication.llb/Select DaisyChain device.vi"/>
			<Item Name="Select host address.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Communication.llb/Select host address.vi"/>
			<Item Name="Select USB device.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Communication.llb/Select USB device.vi"/>
			<Item Name="Set RON and return RON status.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Support.llb/Set RON and return RON status.vi"/>
			<Item Name="stage distance mode.vi" Type="VI" URL="../sub vi/stage distance mode.vi"/>
			<Item Name="stage initialize.vi" Type="VI" URL="../sub vi/stage initialize.vi"/>
			<Item Name="String with ASCII code conversion.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Support.llb/String with ASCII code conversion.vi"/>
			<Item Name="Substract axes array subset from axes array.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Support.llb/Substract axes array subset from axes array.vi"/>
			<Item Name="SVO.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/General command.llb/SVO.vi"/>
			<Item Name="SVO?.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/General command.llb/SVO?.vi"/>
			<Item Name="Termination character.ctl" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Communication.llb/Termination character.ctl"/>
			<Item Name="Time since T0.vi" Type="VI" URL="../tools/Time since T0.vi"/>
			<Item Name="TMN?.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Limits.llb/TMN?.vi"/>
			<Item Name="TMX?.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Limits.llb/TMX?.vi"/>
			<Item Name="TRS?.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Limits.llb/TRS?.vi"/>
			<Item Name="VEL.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/General command.llb/VEL.vi"/>
			<Item Name="VST?.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Special command.llb/VST?.vi"/>
			<Item Name="Wait for controller ready.vi" Type="VI" URL="../../../../../ProgramData/PI/LabVIEW/Low Level/Support.llb/Wait for controller ready.vi"/>
			<Item Name="Write all custom data.vi" Type="VI" URL="../tools/Write all custom data.vi"/>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>

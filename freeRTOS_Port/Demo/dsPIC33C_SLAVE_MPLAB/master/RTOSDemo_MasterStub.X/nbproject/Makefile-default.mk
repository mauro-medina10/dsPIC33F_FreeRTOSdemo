#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/RTOSDemo_MasterStub.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/RTOSDemo_MasterStub.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS
SUB_IMAGE_ADDRESS_COMMAND=--image-address $(SUB_IMAGE_ADDRESS)
else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=main.c D:\GeminiFreeRTOSWork\FreeRTOSv9_0_0_PortFor16Bit\Demo\dsPIC33C_SLAVE_MPLAB\slave\RTOSDemo_Slave.X\dist\default\${IMAGE_TYPE}\RTOSDemo_Slave.s 

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/main.o ${OBJECTDIR}/RTOSDemo_Slave.o 
POSSIBLE_DEPFILES=${OBJECTDIR}/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/main.o ${OBJECTDIR}/RTOSDemo_Slave.o 

# Source Files
SOURCEFILES=main.c D:\GeminiFreeRTOSWork\FreeRTOSv9_0_0_PortFor16Bit\Demo\dsPIC33C_SLAVE_MPLAB\slave\RTOSDemo_Slave.X\dist\default\${IMAGE_TYPE}\RTOSDemo_Slave.s 


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/RTOSDemo_MasterStub.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=33CH128MP508
MP_LINKER_FILE_OPTION=,--script=p33CH128MP508.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)   -I"D:\GeminiFreeRTOSWork\FreeRTOSv9_0_0_PortFor16Bit\Demo\dsPIC33C_SLAVE_MPLAB\slave\RTOSDemo_Slave.X\dist\default\production"  -O0 -I"../../slave/RTOSDemo_Slave.X/dist/default/production" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/main.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)   -I"D:\GeminiFreeRTOSWork\FreeRTOSv9_0_0_PortFor16Bit\Demo\dsPIC33C_SLAVE_MPLAB\slave\RTOSDemo_Slave.X\dist\default\production"  -O0 -I"../../slave/RTOSDemo_Slave.X/dist/default/production" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble_subordinate
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/RTOSDemo_Slave.o: D:\GeminiFreeRTOSWork\FreeRTOSv9_0_0_PortFor16Bit\Demo\dsPIC33C_SLAVE_MPLAB\slave\RTOSDemo_Slave.X\dist\default\${IMAGE_TYPE}\RTOSDemo_Slave.s  nbproject/Makefile-${CND_CONF}.mk
	${MP_CC} -c -mcpu=$(MP_PROCESSOR_OPTION)  D:\GeminiFreeRTOSWork\FreeRTOSv9_0_0_PortFor16Bit\Demo\dsPIC33C_SLAVE_MPLAB\slave\RTOSDemo_Slave.X\dist\default\${IMAGE_TYPE}\RTOSDemo_Slave.s  -o ${OBJECTDIR}/RTOSDemo_Slave.o
else
${OBJECTDIR}/RTOSDemo_Slave.o: D:\GeminiFreeRTOSWork\FreeRTOSv9_0_0_PortFor16Bit\Demo\dsPIC33C_SLAVE_MPLAB\slave\RTOSDemo_Slave.X\dist\default\${IMAGE_TYPE}\RTOSDemo_Slave.s  nbproject/Makefile-${CND_CONF}.mk
	${MP_CC} -c -mcpu=$(MP_PROCESSOR_OPTION)  D:\GeminiFreeRTOSWork\FreeRTOSv9_0_0_PortFor16Bit\Demo\dsPIC33C_SLAVE_MPLAB\slave\RTOSDemo_Slave.X\dist\default\${IMAGE_TYPE}\RTOSDemo_Slave.s  -o ${OBJECTDIR}/RTOSDemo_Slave.o
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/RTOSDemo_MasterStub.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/RTOSDemo_MasterStub.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)   -I"D:\GeminiFreeRTOSWork\FreeRTOSv9_0_0_PortFor16Bit\Demo\dsPIC33C_SLAVE_MPLAB\slave\RTOSDemo_Slave.X\dist\default\production"   -mreserve=data@0x1000:0x101B -mreserve=data@0x101C:0x101D -mreserve=data@0x101E:0x101F -mreserve=data@0x1020:0x1021 -mreserve=data@0x1022:0x1023 -mreserve=data@0x1024:0x1027 -mreserve=data@0x1028:0x104F   -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,--defsym=__MPLAB_DEBUGGER_ICD3=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST) 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/RTOSDemo_MasterStub.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/RTOSDemo_MasterStub.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)   -I"D:\GeminiFreeRTOSWork\FreeRTOSv9_0_0_PortFor16Bit\Demo\dsPIC33C_SLAVE_MPLAB\slave\RTOSDemo_Slave.X\dist\default\production"  -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST) 
	${MP_CC_DIR}\\xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/RTOSDemo_MasterStub.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf  
	
endif


# Subprojects
.build-subprojects:
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
	cd /D ../../slave/RTOSDemo_Slave.X && ${MAKE}  -f Makefile CONF=default TYPE_IMAGE=DEBUG_RUN
	cd /D ../../slave/RTOSDemo_Slave.X && ${MAKE}  -f Makefile CONF=default TYPE_IMAGE=DEBUG_RUN SUB_IMAGE_NAME=RTOSDemo_Slave .build-sub-images-impl
else
	cd /D ../../slave/RTOSDemo_Slave.X && ${MAKE}  -f Makefile CONF=default
	cd /D ../../slave/RTOSDemo_Slave.X && ${MAKE}  -f Makefile CONF=default SUB_IMAGE_NAME=RTOSDemo_Slave .build-sub-images-impl
endif


# Subprojects
.clean-subprojects:
	cd /D ../../slave/RTOSDemo_Slave.X && rm -rf "build/default" "dist/default"

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif

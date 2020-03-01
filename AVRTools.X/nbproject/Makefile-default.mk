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
OUTPUT_SUFFIX=a
DEBUGGABLE_SUFFIX=
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/AVRTools.X.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=a
DEBUGGABLE_SUFFIX=
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/AVRTools.X.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=Analog2Digital.cpp I2cLcd.cpp I2cMaster.cpp I2cSlave.cpp InitSystem.cpp MemUtils.cpp Pwm.cpp Reader.cpp RingBuffer.cpp SPI.cpp SystemClock.cpp USART0.cpp USART0Minimal.cpp USART1.cpp USART1Minimal.cpp USART2.cpp USART2Minimal.cpp USART3.cpp USART3Minimal.cpp Writer.cpp abi.cpp new.cpp

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/Analog2Digital.o ${OBJECTDIR}/I2cLcd.o ${OBJECTDIR}/I2cMaster.o ${OBJECTDIR}/I2cSlave.o ${OBJECTDIR}/InitSystem.o ${OBJECTDIR}/MemUtils.o ${OBJECTDIR}/Pwm.o ${OBJECTDIR}/Reader.o ${OBJECTDIR}/RingBuffer.o ${OBJECTDIR}/SPI.o ${OBJECTDIR}/SystemClock.o ${OBJECTDIR}/USART0.o ${OBJECTDIR}/USART0Minimal.o ${OBJECTDIR}/USART1.o ${OBJECTDIR}/USART1Minimal.o ${OBJECTDIR}/USART2.o ${OBJECTDIR}/USART2Minimal.o ${OBJECTDIR}/USART3.o ${OBJECTDIR}/USART3Minimal.o ${OBJECTDIR}/Writer.o ${OBJECTDIR}/abi.o ${OBJECTDIR}/new.o
POSSIBLE_DEPFILES=${OBJECTDIR}/Analog2Digital.o.d ${OBJECTDIR}/I2cLcd.o.d ${OBJECTDIR}/I2cMaster.o.d ${OBJECTDIR}/I2cSlave.o.d ${OBJECTDIR}/InitSystem.o.d ${OBJECTDIR}/MemUtils.o.d ${OBJECTDIR}/Pwm.o.d ${OBJECTDIR}/Reader.o.d ${OBJECTDIR}/RingBuffer.o.d ${OBJECTDIR}/SPI.o.d ${OBJECTDIR}/SystemClock.o.d ${OBJECTDIR}/USART0.o.d ${OBJECTDIR}/USART0Minimal.o.d ${OBJECTDIR}/USART1.o.d ${OBJECTDIR}/USART1Minimal.o.d ${OBJECTDIR}/USART2.o.d ${OBJECTDIR}/USART2Minimal.o.d ${OBJECTDIR}/USART3.o.d ${OBJECTDIR}/USART3Minimal.o.d ${OBJECTDIR}/Writer.o.d ${OBJECTDIR}/abi.o.d ${OBJECTDIR}/new.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/Analog2Digital.o ${OBJECTDIR}/I2cLcd.o ${OBJECTDIR}/I2cMaster.o ${OBJECTDIR}/I2cSlave.o ${OBJECTDIR}/InitSystem.o ${OBJECTDIR}/MemUtils.o ${OBJECTDIR}/Pwm.o ${OBJECTDIR}/Reader.o ${OBJECTDIR}/RingBuffer.o ${OBJECTDIR}/SPI.o ${OBJECTDIR}/SystemClock.o ${OBJECTDIR}/USART0.o ${OBJECTDIR}/USART0Minimal.o ${OBJECTDIR}/USART1.o ${OBJECTDIR}/USART1Minimal.o ${OBJECTDIR}/USART2.o ${OBJECTDIR}/USART2Minimal.o ${OBJECTDIR}/USART3.o ${OBJECTDIR}/USART3Minimal.o ${OBJECTDIR}/Writer.o ${OBJECTDIR}/abi.o ${OBJECTDIR}/new.o

# Source Files
SOURCEFILES=Analog2Digital.cpp I2cLcd.cpp I2cMaster.cpp I2cSlave.cpp InitSystem.cpp MemUtils.cpp Pwm.cpp Reader.cpp RingBuffer.cpp SPI.cpp SystemClock.cpp USART0.cpp USART0Minimal.cpp USART1.cpp USART1Minimal.cpp USART2.cpp USART2Minimal.cpp USART3.cpp USART3Minimal.cpp Writer.cpp abi.cpp new.cpp

# Pack Options 
PACK_COMPILER_OPTIONS=-I ${DFP_DIR}\include
PACK_COMMON_OPTIONS=-B ${DFP_DIR}\avr-gcc\dev\atmega2560



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

# The following macros may be used in the pre and post step lines
Device=ATmega2560
ProjectDir="F:\OneDrive\GitHub\Cjkeenan\wooden-space-heater\AVRTools.X"
ProjectName=AVRTools
ConfName=default
ImagePath="dist\default\${IMAGE_TYPE}\AVRTools.X.${OUTPUT_SUFFIX}"
ImageDir="dist\default\${IMAGE_TYPE}"
ImageName="AVRTools.X.${OUTPUT_SUFFIX}"
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IsDebug="true"
else
IsDebug="false"
endif

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/AVRTools.X.${OUTPUT_SUFFIX}
	@echo "--------------------------------------"
	@echo "User defined post-build step: []"
	@
	@echo "--------------------------------------"

MP_PROCESSOR_OPTION=ATmega2560
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/Analog2Digital.o: Analog2Digital.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Analog2Digital.o.d 
	@${RM} ${OBJECTDIR}/Analog2Digital.o 
	 ${MP_CPPC} $(MP_EXTRA_CC_PRE) -mmcu=atmega2560 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c++ -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=16000000UL -Wall -MD -MP -MF "${OBJECTDIR}/Analog2Digital.o.d" -MT "${OBJECTDIR}/Analog2Digital.o.d" -MT ${OBJECTDIR}/Analog2Digital.o  -o ${OBJECTDIR}/Analog2Digital.o Analog2Digital.cpp  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/I2cLcd.o: I2cLcd.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/I2cLcd.o.d 
	@${RM} ${OBJECTDIR}/I2cLcd.o 
	 ${MP_CPPC} $(MP_EXTRA_CC_PRE) -mmcu=atmega2560 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c++ -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=16000000UL -Wall -MD -MP -MF "${OBJECTDIR}/I2cLcd.o.d" -MT "${OBJECTDIR}/I2cLcd.o.d" -MT ${OBJECTDIR}/I2cLcd.o  -o ${OBJECTDIR}/I2cLcd.o I2cLcd.cpp  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/I2cMaster.o: I2cMaster.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/I2cMaster.o.d 
	@${RM} ${OBJECTDIR}/I2cMaster.o 
	 ${MP_CPPC} $(MP_EXTRA_CC_PRE) -mmcu=atmega2560 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c++ -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=16000000UL -Wall -MD -MP -MF "${OBJECTDIR}/I2cMaster.o.d" -MT "${OBJECTDIR}/I2cMaster.o.d" -MT ${OBJECTDIR}/I2cMaster.o  -o ${OBJECTDIR}/I2cMaster.o I2cMaster.cpp  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/I2cSlave.o: I2cSlave.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/I2cSlave.o.d 
	@${RM} ${OBJECTDIR}/I2cSlave.o 
	 ${MP_CPPC} $(MP_EXTRA_CC_PRE) -mmcu=atmega2560 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c++ -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=16000000UL -Wall -MD -MP -MF "${OBJECTDIR}/I2cSlave.o.d" -MT "${OBJECTDIR}/I2cSlave.o.d" -MT ${OBJECTDIR}/I2cSlave.o  -o ${OBJECTDIR}/I2cSlave.o I2cSlave.cpp  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/InitSystem.o: InitSystem.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/InitSystem.o.d 
	@${RM} ${OBJECTDIR}/InitSystem.o 
	 ${MP_CPPC} $(MP_EXTRA_CC_PRE) -mmcu=atmega2560 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c++ -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=16000000UL -Wall -MD -MP -MF "${OBJECTDIR}/InitSystem.o.d" -MT "${OBJECTDIR}/InitSystem.o.d" -MT ${OBJECTDIR}/InitSystem.o  -o ${OBJECTDIR}/InitSystem.o InitSystem.cpp  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/MemUtils.o: MemUtils.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/MemUtils.o.d 
	@${RM} ${OBJECTDIR}/MemUtils.o 
	 ${MP_CPPC} $(MP_EXTRA_CC_PRE) -mmcu=atmega2560 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c++ -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=16000000UL -Wall -MD -MP -MF "${OBJECTDIR}/MemUtils.o.d" -MT "${OBJECTDIR}/MemUtils.o.d" -MT ${OBJECTDIR}/MemUtils.o  -o ${OBJECTDIR}/MemUtils.o MemUtils.cpp  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/Pwm.o: Pwm.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Pwm.o.d 
	@${RM} ${OBJECTDIR}/Pwm.o 
	 ${MP_CPPC} $(MP_EXTRA_CC_PRE) -mmcu=atmega2560 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c++ -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=16000000UL -Wall -MD -MP -MF "${OBJECTDIR}/Pwm.o.d" -MT "${OBJECTDIR}/Pwm.o.d" -MT ${OBJECTDIR}/Pwm.o  -o ${OBJECTDIR}/Pwm.o Pwm.cpp  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/Reader.o: Reader.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Reader.o.d 
	@${RM} ${OBJECTDIR}/Reader.o 
	 ${MP_CPPC} $(MP_EXTRA_CC_PRE) -mmcu=atmega2560 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c++ -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=16000000UL -Wall -MD -MP -MF "${OBJECTDIR}/Reader.o.d" -MT "${OBJECTDIR}/Reader.o.d" -MT ${OBJECTDIR}/Reader.o  -o ${OBJECTDIR}/Reader.o Reader.cpp  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/RingBuffer.o: RingBuffer.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/RingBuffer.o.d 
	@${RM} ${OBJECTDIR}/RingBuffer.o 
	 ${MP_CPPC} $(MP_EXTRA_CC_PRE) -mmcu=atmega2560 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c++ -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=16000000UL -Wall -MD -MP -MF "${OBJECTDIR}/RingBuffer.o.d" -MT "${OBJECTDIR}/RingBuffer.o.d" -MT ${OBJECTDIR}/RingBuffer.o  -o ${OBJECTDIR}/RingBuffer.o RingBuffer.cpp  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/SPI.o: SPI.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/SPI.o.d 
	@${RM} ${OBJECTDIR}/SPI.o 
	 ${MP_CPPC} $(MP_EXTRA_CC_PRE) -mmcu=atmega2560 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c++ -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=16000000UL -Wall -MD -MP -MF "${OBJECTDIR}/SPI.o.d" -MT "${OBJECTDIR}/SPI.o.d" -MT ${OBJECTDIR}/SPI.o  -o ${OBJECTDIR}/SPI.o SPI.cpp  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/SystemClock.o: SystemClock.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/SystemClock.o.d 
	@${RM} ${OBJECTDIR}/SystemClock.o 
	 ${MP_CPPC} $(MP_EXTRA_CC_PRE) -mmcu=atmega2560 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c++ -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=16000000UL -Wall -MD -MP -MF "${OBJECTDIR}/SystemClock.o.d" -MT "${OBJECTDIR}/SystemClock.o.d" -MT ${OBJECTDIR}/SystemClock.o  -o ${OBJECTDIR}/SystemClock.o SystemClock.cpp  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/USART0.o: USART0.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/USART0.o.d 
	@${RM} ${OBJECTDIR}/USART0.o 
	 ${MP_CPPC} $(MP_EXTRA_CC_PRE) -mmcu=atmega2560 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c++ -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=16000000UL -Wall -MD -MP -MF "${OBJECTDIR}/USART0.o.d" -MT "${OBJECTDIR}/USART0.o.d" -MT ${OBJECTDIR}/USART0.o  -o ${OBJECTDIR}/USART0.o USART0.cpp  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/USART0Minimal.o: USART0Minimal.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/USART0Minimal.o.d 
	@${RM} ${OBJECTDIR}/USART0Minimal.o 
	 ${MP_CPPC} $(MP_EXTRA_CC_PRE) -mmcu=atmega2560 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c++ -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=16000000UL -Wall -MD -MP -MF "${OBJECTDIR}/USART0Minimal.o.d" -MT "${OBJECTDIR}/USART0Minimal.o.d" -MT ${OBJECTDIR}/USART0Minimal.o  -o ${OBJECTDIR}/USART0Minimal.o USART0Minimal.cpp  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/USART1.o: USART1.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/USART1.o.d 
	@${RM} ${OBJECTDIR}/USART1.o 
	 ${MP_CPPC} $(MP_EXTRA_CC_PRE) -mmcu=atmega2560 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c++ -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=16000000UL -Wall -MD -MP -MF "${OBJECTDIR}/USART1.o.d" -MT "${OBJECTDIR}/USART1.o.d" -MT ${OBJECTDIR}/USART1.o  -o ${OBJECTDIR}/USART1.o USART1.cpp  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/USART1Minimal.o: USART1Minimal.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/USART1Minimal.o.d 
	@${RM} ${OBJECTDIR}/USART1Minimal.o 
	 ${MP_CPPC} $(MP_EXTRA_CC_PRE) -mmcu=atmega2560 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c++ -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=16000000UL -Wall -MD -MP -MF "${OBJECTDIR}/USART1Minimal.o.d" -MT "${OBJECTDIR}/USART1Minimal.o.d" -MT ${OBJECTDIR}/USART1Minimal.o  -o ${OBJECTDIR}/USART1Minimal.o USART1Minimal.cpp  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/USART2.o: USART2.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/USART2.o.d 
	@${RM} ${OBJECTDIR}/USART2.o 
	 ${MP_CPPC} $(MP_EXTRA_CC_PRE) -mmcu=atmega2560 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c++ -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=16000000UL -Wall -MD -MP -MF "${OBJECTDIR}/USART2.o.d" -MT "${OBJECTDIR}/USART2.o.d" -MT ${OBJECTDIR}/USART2.o  -o ${OBJECTDIR}/USART2.o USART2.cpp  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/USART2Minimal.o: USART2Minimal.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/USART2Minimal.o.d 
	@${RM} ${OBJECTDIR}/USART2Minimal.o 
	 ${MP_CPPC} $(MP_EXTRA_CC_PRE) -mmcu=atmega2560 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c++ -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=16000000UL -Wall -MD -MP -MF "${OBJECTDIR}/USART2Minimal.o.d" -MT "${OBJECTDIR}/USART2Minimal.o.d" -MT ${OBJECTDIR}/USART2Minimal.o  -o ${OBJECTDIR}/USART2Minimal.o USART2Minimal.cpp  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/USART3.o: USART3.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/USART3.o.d 
	@${RM} ${OBJECTDIR}/USART3.o 
	 ${MP_CPPC} $(MP_EXTRA_CC_PRE) -mmcu=atmega2560 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c++ -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=16000000UL -Wall -MD -MP -MF "${OBJECTDIR}/USART3.o.d" -MT "${OBJECTDIR}/USART3.o.d" -MT ${OBJECTDIR}/USART3.o  -o ${OBJECTDIR}/USART3.o USART3.cpp  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/USART3Minimal.o: USART3Minimal.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/USART3Minimal.o.d 
	@${RM} ${OBJECTDIR}/USART3Minimal.o 
	 ${MP_CPPC} $(MP_EXTRA_CC_PRE) -mmcu=atmega2560 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c++ -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=16000000UL -Wall -MD -MP -MF "${OBJECTDIR}/USART3Minimal.o.d" -MT "${OBJECTDIR}/USART3Minimal.o.d" -MT ${OBJECTDIR}/USART3Minimal.o  -o ${OBJECTDIR}/USART3Minimal.o USART3Minimal.cpp  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/Writer.o: Writer.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Writer.o.d 
	@${RM} ${OBJECTDIR}/Writer.o 
	 ${MP_CPPC} $(MP_EXTRA_CC_PRE) -mmcu=atmega2560 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c++ -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=16000000UL -Wall -MD -MP -MF "${OBJECTDIR}/Writer.o.d" -MT "${OBJECTDIR}/Writer.o.d" -MT ${OBJECTDIR}/Writer.o  -o ${OBJECTDIR}/Writer.o Writer.cpp  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/abi.o: abi.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/abi.o.d 
	@${RM} ${OBJECTDIR}/abi.o 
	 ${MP_CPPC} $(MP_EXTRA_CC_PRE) -mmcu=atmega2560 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c++ -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=16000000UL -Wall -MD -MP -MF "${OBJECTDIR}/abi.o.d" -MT "${OBJECTDIR}/abi.o.d" -MT ${OBJECTDIR}/abi.o  -o ${OBJECTDIR}/abi.o abi.cpp  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/new.o: new.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/new.o.d 
	@${RM} ${OBJECTDIR}/new.o 
	 ${MP_CPPC} $(MP_EXTRA_CC_PRE) -mmcu=atmega2560 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c++ -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=16000000UL -Wall -MD -MP -MF "${OBJECTDIR}/new.o.d" -MT "${OBJECTDIR}/new.o.d" -MT ${OBJECTDIR}/new.o  -o ${OBJECTDIR}/new.o new.cpp  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
else
${OBJECTDIR}/Analog2Digital.o: Analog2Digital.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Analog2Digital.o.d 
	@${RM} ${OBJECTDIR}/Analog2Digital.o 
	 ${MP_CPPC} $(MP_EXTRA_CC_PRE) -mmcu=atmega2560 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c++ -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=16000000UL -Wall -MD -MP -MF "${OBJECTDIR}/Analog2Digital.o.d" -MT "${OBJECTDIR}/Analog2Digital.o.d" -MT ${OBJECTDIR}/Analog2Digital.o  -o ${OBJECTDIR}/Analog2Digital.o Analog2Digital.cpp  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/I2cLcd.o: I2cLcd.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/I2cLcd.o.d 
	@${RM} ${OBJECTDIR}/I2cLcd.o 
	 ${MP_CPPC} $(MP_EXTRA_CC_PRE) -mmcu=atmega2560 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c++ -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=16000000UL -Wall -MD -MP -MF "${OBJECTDIR}/I2cLcd.o.d" -MT "${OBJECTDIR}/I2cLcd.o.d" -MT ${OBJECTDIR}/I2cLcd.o  -o ${OBJECTDIR}/I2cLcd.o I2cLcd.cpp  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/I2cMaster.o: I2cMaster.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/I2cMaster.o.d 
	@${RM} ${OBJECTDIR}/I2cMaster.o 
	 ${MP_CPPC} $(MP_EXTRA_CC_PRE) -mmcu=atmega2560 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c++ -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=16000000UL -Wall -MD -MP -MF "${OBJECTDIR}/I2cMaster.o.d" -MT "${OBJECTDIR}/I2cMaster.o.d" -MT ${OBJECTDIR}/I2cMaster.o  -o ${OBJECTDIR}/I2cMaster.o I2cMaster.cpp  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/I2cSlave.o: I2cSlave.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/I2cSlave.o.d 
	@${RM} ${OBJECTDIR}/I2cSlave.o 
	 ${MP_CPPC} $(MP_EXTRA_CC_PRE) -mmcu=atmega2560 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c++ -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=16000000UL -Wall -MD -MP -MF "${OBJECTDIR}/I2cSlave.o.d" -MT "${OBJECTDIR}/I2cSlave.o.d" -MT ${OBJECTDIR}/I2cSlave.o  -o ${OBJECTDIR}/I2cSlave.o I2cSlave.cpp  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/InitSystem.o: InitSystem.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/InitSystem.o.d 
	@${RM} ${OBJECTDIR}/InitSystem.o 
	 ${MP_CPPC} $(MP_EXTRA_CC_PRE) -mmcu=atmega2560 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c++ -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=16000000UL -Wall -MD -MP -MF "${OBJECTDIR}/InitSystem.o.d" -MT "${OBJECTDIR}/InitSystem.o.d" -MT ${OBJECTDIR}/InitSystem.o  -o ${OBJECTDIR}/InitSystem.o InitSystem.cpp  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/MemUtils.o: MemUtils.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/MemUtils.o.d 
	@${RM} ${OBJECTDIR}/MemUtils.o 
	 ${MP_CPPC} $(MP_EXTRA_CC_PRE) -mmcu=atmega2560 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c++ -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=16000000UL -Wall -MD -MP -MF "${OBJECTDIR}/MemUtils.o.d" -MT "${OBJECTDIR}/MemUtils.o.d" -MT ${OBJECTDIR}/MemUtils.o  -o ${OBJECTDIR}/MemUtils.o MemUtils.cpp  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/Pwm.o: Pwm.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Pwm.o.d 
	@${RM} ${OBJECTDIR}/Pwm.o 
	 ${MP_CPPC} $(MP_EXTRA_CC_PRE) -mmcu=atmega2560 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c++ -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=16000000UL -Wall -MD -MP -MF "${OBJECTDIR}/Pwm.o.d" -MT "${OBJECTDIR}/Pwm.o.d" -MT ${OBJECTDIR}/Pwm.o  -o ${OBJECTDIR}/Pwm.o Pwm.cpp  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/Reader.o: Reader.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Reader.o.d 
	@${RM} ${OBJECTDIR}/Reader.o 
	 ${MP_CPPC} $(MP_EXTRA_CC_PRE) -mmcu=atmega2560 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c++ -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=16000000UL -Wall -MD -MP -MF "${OBJECTDIR}/Reader.o.d" -MT "${OBJECTDIR}/Reader.o.d" -MT ${OBJECTDIR}/Reader.o  -o ${OBJECTDIR}/Reader.o Reader.cpp  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/RingBuffer.o: RingBuffer.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/RingBuffer.o.d 
	@${RM} ${OBJECTDIR}/RingBuffer.o 
	 ${MP_CPPC} $(MP_EXTRA_CC_PRE) -mmcu=atmega2560 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c++ -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=16000000UL -Wall -MD -MP -MF "${OBJECTDIR}/RingBuffer.o.d" -MT "${OBJECTDIR}/RingBuffer.o.d" -MT ${OBJECTDIR}/RingBuffer.o  -o ${OBJECTDIR}/RingBuffer.o RingBuffer.cpp  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/SPI.o: SPI.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/SPI.o.d 
	@${RM} ${OBJECTDIR}/SPI.o 
	 ${MP_CPPC} $(MP_EXTRA_CC_PRE) -mmcu=atmega2560 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c++ -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=16000000UL -Wall -MD -MP -MF "${OBJECTDIR}/SPI.o.d" -MT "${OBJECTDIR}/SPI.o.d" -MT ${OBJECTDIR}/SPI.o  -o ${OBJECTDIR}/SPI.o SPI.cpp  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/SystemClock.o: SystemClock.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/SystemClock.o.d 
	@${RM} ${OBJECTDIR}/SystemClock.o 
	 ${MP_CPPC} $(MP_EXTRA_CC_PRE) -mmcu=atmega2560 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c++ -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=16000000UL -Wall -MD -MP -MF "${OBJECTDIR}/SystemClock.o.d" -MT "${OBJECTDIR}/SystemClock.o.d" -MT ${OBJECTDIR}/SystemClock.o  -o ${OBJECTDIR}/SystemClock.o SystemClock.cpp  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/USART0.o: USART0.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/USART0.o.d 
	@${RM} ${OBJECTDIR}/USART0.o 
	 ${MP_CPPC} $(MP_EXTRA_CC_PRE) -mmcu=atmega2560 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c++ -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=16000000UL -Wall -MD -MP -MF "${OBJECTDIR}/USART0.o.d" -MT "${OBJECTDIR}/USART0.o.d" -MT ${OBJECTDIR}/USART0.o  -o ${OBJECTDIR}/USART0.o USART0.cpp  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/USART0Minimal.o: USART0Minimal.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/USART0Minimal.o.d 
	@${RM} ${OBJECTDIR}/USART0Minimal.o 
	 ${MP_CPPC} $(MP_EXTRA_CC_PRE) -mmcu=atmega2560 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c++ -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=16000000UL -Wall -MD -MP -MF "${OBJECTDIR}/USART0Minimal.o.d" -MT "${OBJECTDIR}/USART0Minimal.o.d" -MT ${OBJECTDIR}/USART0Minimal.o  -o ${OBJECTDIR}/USART0Minimal.o USART0Minimal.cpp  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/USART1.o: USART1.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/USART1.o.d 
	@${RM} ${OBJECTDIR}/USART1.o 
	 ${MP_CPPC} $(MP_EXTRA_CC_PRE) -mmcu=atmega2560 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c++ -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=16000000UL -Wall -MD -MP -MF "${OBJECTDIR}/USART1.o.d" -MT "${OBJECTDIR}/USART1.o.d" -MT ${OBJECTDIR}/USART1.o  -o ${OBJECTDIR}/USART1.o USART1.cpp  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/USART1Minimal.o: USART1Minimal.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/USART1Minimal.o.d 
	@${RM} ${OBJECTDIR}/USART1Minimal.o 
	 ${MP_CPPC} $(MP_EXTRA_CC_PRE) -mmcu=atmega2560 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c++ -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=16000000UL -Wall -MD -MP -MF "${OBJECTDIR}/USART1Minimal.o.d" -MT "${OBJECTDIR}/USART1Minimal.o.d" -MT ${OBJECTDIR}/USART1Minimal.o  -o ${OBJECTDIR}/USART1Minimal.o USART1Minimal.cpp  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/USART2.o: USART2.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/USART2.o.d 
	@${RM} ${OBJECTDIR}/USART2.o 
	 ${MP_CPPC} $(MP_EXTRA_CC_PRE) -mmcu=atmega2560 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c++ -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=16000000UL -Wall -MD -MP -MF "${OBJECTDIR}/USART2.o.d" -MT "${OBJECTDIR}/USART2.o.d" -MT ${OBJECTDIR}/USART2.o  -o ${OBJECTDIR}/USART2.o USART2.cpp  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/USART2Minimal.o: USART2Minimal.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/USART2Minimal.o.d 
	@${RM} ${OBJECTDIR}/USART2Minimal.o 
	 ${MP_CPPC} $(MP_EXTRA_CC_PRE) -mmcu=atmega2560 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c++ -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=16000000UL -Wall -MD -MP -MF "${OBJECTDIR}/USART2Minimal.o.d" -MT "${OBJECTDIR}/USART2Minimal.o.d" -MT ${OBJECTDIR}/USART2Minimal.o  -o ${OBJECTDIR}/USART2Minimal.o USART2Minimal.cpp  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/USART3.o: USART3.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/USART3.o.d 
	@${RM} ${OBJECTDIR}/USART3.o 
	 ${MP_CPPC} $(MP_EXTRA_CC_PRE) -mmcu=atmega2560 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c++ -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=16000000UL -Wall -MD -MP -MF "${OBJECTDIR}/USART3.o.d" -MT "${OBJECTDIR}/USART3.o.d" -MT ${OBJECTDIR}/USART3.o  -o ${OBJECTDIR}/USART3.o USART3.cpp  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/USART3Minimal.o: USART3Minimal.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/USART3Minimal.o.d 
	@${RM} ${OBJECTDIR}/USART3Minimal.o 
	 ${MP_CPPC} $(MP_EXTRA_CC_PRE) -mmcu=atmega2560 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c++ -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=16000000UL -Wall -MD -MP -MF "${OBJECTDIR}/USART3Minimal.o.d" -MT "${OBJECTDIR}/USART3Minimal.o.d" -MT ${OBJECTDIR}/USART3Minimal.o  -o ${OBJECTDIR}/USART3Minimal.o USART3Minimal.cpp  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/Writer.o: Writer.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Writer.o.d 
	@${RM} ${OBJECTDIR}/Writer.o 
	 ${MP_CPPC} $(MP_EXTRA_CC_PRE) -mmcu=atmega2560 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c++ -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=16000000UL -Wall -MD -MP -MF "${OBJECTDIR}/Writer.o.d" -MT "${OBJECTDIR}/Writer.o.d" -MT ${OBJECTDIR}/Writer.o  -o ${OBJECTDIR}/Writer.o Writer.cpp  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/abi.o: abi.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/abi.o.d 
	@${RM} ${OBJECTDIR}/abi.o 
	 ${MP_CPPC} $(MP_EXTRA_CC_PRE) -mmcu=atmega2560 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c++ -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=16000000UL -Wall -MD -MP -MF "${OBJECTDIR}/abi.o.d" -MT "${OBJECTDIR}/abi.o.d" -MT ${OBJECTDIR}/abi.o  -o ${OBJECTDIR}/abi.o abi.cpp  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/new.o: new.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/new.o.d 
	@${RM} ${OBJECTDIR}/new.o 
	 ${MP_CPPC} $(MP_EXTRA_CC_PRE) -mmcu=atmega2560 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c++ -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=16000000UL -Wall -MD -MP -MF "${OBJECTDIR}/new.o.d" -MT "${OBJECTDIR}/new.o.d" -MT ${OBJECTDIR}/new.o  -o ${OBJECTDIR}/new.o new.cpp  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: archive
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/AVRTools.X.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_AR} $(MP_EXTRA_AR_PRE) -r -o dist/${CND_CONF}/${IMAGE_TYPE}/AVRTools.X.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}   
else
dist/${CND_CONF}/${IMAGE_TYPE}/AVRTools.X.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_AR} $(MP_EXTRA_AR_PRE) -r -o dist/${CND_CONF}/${IMAGE_TYPE}/AVRTools.X.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}   
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

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

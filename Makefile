#
# Simple Makefile that compiles all .c and .s files in the same folder
#

# If you move this project you can change the directory 
# to match your GBDK root directory (ex: GBDK_HOME = "C:/GBDK/"
GBDK_HOME = ../../../

LCC = $(GBDK_HOME)bin/lcc

# You can uncomment the line below to turn on debug output
# LCC = $(LCC) -debug

# You can set the name of the .gb ROM file here
PROJECTNAME    = WORDLE

BINS	    = $(PROJECTNAME).gb
# CSOURCES   := $(wildcard *.c)
CSOURCES	:= main.c wordlist.c other_words.c other_words2.c
ASMSOURCES := $(wildcard *.s)
LCCFLAGS	:= -Wl-j  -Wm-yoA -Wm-ya4

all:	$(BINS)

compile.bat: Makefile
	@echo "REM Automatically generated from Makefile" > compile.bat
	@make -sn | sed y/\\//\\\\/ | grep -v make >> compile.bat

# Compile and link all source files in a single call to LCC
$(BINS):	$(CSOURCES) $(ASMSOURCES)
	$(LCC) $(LCCFLAGS) -o $@ $(CSOURCES) $(ASMSOURCES) -mgbz80:gb

clean:
	rm -f *.o *.lst *.map *.gb *.ihx *.sym *.cdb *.adb *.asm


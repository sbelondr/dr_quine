# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sbelondr <sbelondr@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/03/21 14:49:02 by sbelondr          #+#    #+#              #
#    Updated: 2021/01/22 16:12:35 by samuel           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# --------- #
# Directory #
# --------- #

SRCDIR = srcs/
OBJDIR = objs/

VPATH = objs:\
	srcs:

# ------------------ #
# Compiler and flags #
# ------------------ #

NASM = nasm
LD = ld

NFLAG = -f macho64
LFLAG = -no_pie -macosx_version_min 10.8 -lSystem -L/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib

# --------------- #
# Different names #
# --------------- #

COLLEEN = Colleen
GRACE = Grace
SULLY = Sully
SRCS_NAMES = Colleen.s Grace.s Sully.s

OBJS_NAMES_COLLEEN = $(SRCS_NAMES:Colleen.s=Colleen.o)
OBJS_NAMES_GRACE = $(SRCS_NAMES:Grace.s=Grace.o)
OBJS_NAMES_SULLY = $(SRCS_NAMES:Sully.s=Sully.o)

OBJ = $(addprefix $(OBJDIR), $(OBJS_NAMES))

# ----------------- #
# Command variables #
# ----------------- #

CREATE = mkdir -p
DEL = /bin/rm -rf
PRINT = printf
PHONY = all clean fclean re help
REMOVE = "\r\033[K"

# ----- #
# Rules #
# ----- #

all : $(COLLEEN) $(GRACE) $(SULLY)

$(COLLEEN) : $(OBJS_NAMES_COLLEEN)
	@$(LD) objs/Colleen.o $(LFLAG) -o $@
	@$(PRINT) $(REMOVE)"Executable Colleen built\n"

$(GRACE):  $(OBJS_NAMES_GRACE) 
	@$(LD) objs/Grace.o $(LFLAG) -o $@
	@$(PRINT) $(REMOVE)"Executable Grace built\n"

$(SULLY):  $(OBJS_NAMES_SULLY) 
	@$(LD) objs/Sully.o $(LFLAG) -o $@
	@$(PRINT) $(REMOVE)"Executable Sully built\n"

%.o : %.s
	@$(CREATE) $(OBJDIR)
	@$(NASM) $(NFLAG) $< -o $(OBJDIR)$@

clean : 
	@$(DEL) $(OBJDIR)
	@$(PRINT) ".o file deleted\n"

fclean : clean
	@$(DEL) $(GRACE) $(COLLEEN) f
	@$(PRINT) "Executable destroyed\n"

re : fclean all

help :
	@$(PRINT) "Rules available : all, clean, fclean, re, and help\n"

.PHONY : $(PHONY)

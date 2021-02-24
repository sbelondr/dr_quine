# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sbelondr <sbelondr@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/03/21 14:49:02 by sbelondr          #+#    #+#              #
#    Updated: 2021/02/24 09:52:11 by sbelondr         ###   ########.fr        #
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
LD = gcc

NFLAG = -f elf64
LFLAG = -no-pie

# --------------- #
# Different names #
# --------------- #

COLLEEN = Colleen
GRACE = Grace
SULLY = Sully
SRCS_NAMES = Colleen.asm

OBJS_NAMES_COLLEEN = $(SRCS_NAMES:Colleen.asm=Colleen.o)
OBJS_NAMES_GRACE = $(SRCS_NAMES:Grace.asm=Grace.o)
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

%.o : %.asm
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

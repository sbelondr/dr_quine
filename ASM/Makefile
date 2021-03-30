# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sbelondr <sbelondr@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/03/21 14:49:02 by sbelondr          #+#    #+#              #
#    Updated: 2021/03/30 21:44:28 by sbelondr         ###   ########.fr        #
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
SRCS_NAMES = Colleen.s Grace.s Sully.s

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

$(COLLEEN): 
	@$(CREATE) $(OBJDIR)
	@$(NASM) $(NFLAG) srcs/Colleen.s -o objs/Colleen.o
	@$(LD) objs/Colleen.o $(LFLAG) -o $@
	@$(PRINT) $(REMOVE)"Executable Colleen built\n"

$(GRACE):
	@$(CREATE) $(OBJDIR)
	@$(NASM) $(NFLAG) srcs/Grace.s -o objs/Grace.o
	@$(LD) objs/Grace.o $(LFLAG) -o $@
	@$(PRINT) $(REMOVE)"Executable Grace built\n"

$(SULLY):
	@$(CREATE) $(OBJDIR)
	@$(NASM) $(NFLAG) srcs/Sully.s -o objs/Sully.o
	@$(LD) objs/Sully.o $(LFLAG) -o $@
	@$(PRINT) $(REMOVE)"Executable Sully built\n"

clean : 
	@$(DEL) $(OBJDIR)
	@$(PRINT) ".o file deleted\n"

fclean : clean
	@$(DEL) $(GRACE) $(COLLEEN) $(SULLY) f
	@$(PRINT) "Executable destroyed\n"

re : fclean all

help :
	@$(PRINT) "Rules available : all, clean, fclean, re, and help\n"

.PHONY : $(PHONY)

# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sbelondr <sbelondr@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/03/21 14:49:02 by sbelondr          #+#    #+#              #
#    Updated: 2021/02/23 12:10:19 by sbelondr         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# ---------- #
# Debug mode #
# ---------- #

DEBUG = no

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

CC = cc
ifeq ($(DEBUG), yes)
	CFLAGS = -Wall -Wextra
else
	CFLAGS = -Wall -Wextra -Werror
endif

# --------------- #
# Different names #
# --------------- #

COLLEEN = Colleen
GRACE = Grace
SULLY = Sully
SRCS_NAMES = Colleen.c Grace.c Sully.c

OBJS_NAMES_COLLEEN = $(SRCS_NAMES:Colleen.c=Colleen.o)
OBJS_NAMES_GRACE = $(SRCS_NAMES:Grace.c=Grace.o)
OBJS_NAMES_SULLY = $(SRCS_NAMES:Sully.c=Sully.o)

OBJ = $(addprefix $(OBJDIR), $(OBJS_NAMES))

# ----------------- #
# Command variables #
# ----------------- #

CREATE = mkdir -p
DEL = /bin/rm -rf
PRINT = printf
PHONY = all clean fclean re help
REMOVE = "\r\033[K"
FUNC = "%-60b\r"

# ----- #
# Rules #
# ----- #

all : $(COLLEEN) $(GRACE) $(SULLY)

ifeq ($(DEBUG), yes)
	@$(PRINT) "Debug mode : on\n"
else
	@$(PRINT) "Debug mode : off\n"
endif

$(COLLEEN) : $(OBJS_NAMES_COLLEEN)
	@$(CC) -o $@ objs/Colleen.o $(CFLAGS) 
	@$(PRINT) $(REMOVE)"Executable colleen built\n"

$(GRACE):  $(OBJS_NAMES_GRACE) 
	@$(CC) -o $@ objs/Grace.o $(CFLAGS)
	@$(PRINT) $(REMOVE)"Executable grace built\n"

$(SULLY): $(OBJS_NAMES_SULLY)
	@$(CC) -o $@ objs/Sully.o $(CFLAGS)
	@$(PRINT) $(REMOVE)"Executable sully built\n"

%.o : %.c
	@$(CREATE) $(OBJDIR)
	@$(CC) -o $(OBJDIR)$@ -c $< $(CFLAGS)

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

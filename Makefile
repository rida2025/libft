NAME = libft.a

SRC_C = ft_isalpha.c \
		ft_isdigit.c \
		ft_isalnum.c \
		ft_isascii.c \
		ft_isprint.c \
		ft_strlen.c \
		ft_memset.c \
		ft_memmove.c \
		ft_strlcpy.c \
		ft_strlcat.c \
		ft_toupper.c \
		ft_tolower.c \
		ft_strchr.c \
		ft_strrchr.c \
		ft_strncmp.c \
		ft_memchr.c \
		ft_memcmp.c \
		ft_strnstr.c \
		ft_atoi.c \
		ft_substr.c        \
		ft_strjoin.c    \
		ft_strtrim.c    \
		ft_split.c        \
		ft_itoa.c        \
		ft_strmapi.c    \
		ft_striteri.c    \
		ft_putchar_fd.c    \
		ft_putstr_fd.c    \
		ft_putendl_fd.c    \
		ft_putnbr_fd.c    \
		ft_bzero.c        \
		ft_memcpy.c        \
		ft_calloc.c        \
		ft_strdup.c

SRC_BONUS_C = ft_lstnew.c        \
				ft_lstadd_front.c    \
				ft_lstsize.c        \
				ft_lstlast.c        \
				ft_lstadd_back.c    \
				ft_lstdelone.c    \
				ft_lstclear.c        \
				ft_lstiter.c        \
				ft_lstmap.c

COMPILER = cc

FLAGS = -Wall -Wextra -Werror

OBJC = $(SRC_C:.c=.o)
BOBJC = $(SRC_BONUS_C:.c=.o)

.PHONY : $(NAME)

all: $(NAME)

$(NAME): $(OBJC)
	ar -rc $(NAME) $(OBJC)

bonus: $(BOBJC)
	ar -rc $(NAME) $(BOBJC)

%.o: %.c libft.h
	$(COMPILER) $(FLAGS) -c $< -o $@

clean:
	rm -rf $(OBJC) $(BOBJC)

fclean: clean
	rm -rf $(NAME)

re: fclean all

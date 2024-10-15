/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strnstr.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mel-jira <mel-jira@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/10/31 00:27:15 by mel-jira          #+#    #+#             */
/*   Updated: 2023/11/10 14:22:01 by mel-jira         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strnstr(const char *haystack, const char *needle, size_t len)
{
	size_t	i;
	size_t	size;

	i = 0;
	if (haystack == NULL && len == 0)
		return (NULL);
	size = ft_strlen(needle);
	if (haystack == needle || size == 0)
		return ((char *)&haystack[i]);
	while (haystack[i] != '\0' && i < len)
	{
		if (size + i > len)
			return (NULL);
		if (ft_strncmp(&haystack[i], needle, size) == 0)
			return ((char *)&haystack[i]);
		i++;
	}
	return (NULL);
}

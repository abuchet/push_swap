/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstnew_bonus.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: abuchet <abuchet@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/12/15 15:05:32 by abuchet           #+#    #+#             */
/*   Updated: 2023/06/13 13:05:59 by abuchet          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

t_lista	*ft_lstnew(void *content)
{
	t_lista	*new;

	new = malloc(sizeof(t_lista));
	if (!new)
		return (NULL);
	new->content = content;
	new->next = NULL;
	return (new);
}

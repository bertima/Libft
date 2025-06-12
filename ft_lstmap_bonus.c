/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstmap_bonus.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bertrmar <bertrmar@student.s19.be>         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/18 16:12:52 by bertrmar          #+#    #+#             */
/*   Updated: 2025/04/21 13:36:59 by bertrmar         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

t_list	*ft_lstmap(t_list *lst, void *(*f)(void *), void (*del)(void *))
{
	t_list	*new;
	t_list	*obj;
	void	*copy_content;

	if (!del || !f || !lst)
		return (NULL);
	new = NULL;
	while (lst)
	{
		copy_content = f(lst->content);
		obj = ft_lstnew(copy_content);
		if (!obj)
		{
			ft_lstclear(&new, del);
			del(copy_content);
			return (NULL);
		}
		ft_lstadd_back(&new, obj);
		lst = lst->next;
	}
	return (new);
}

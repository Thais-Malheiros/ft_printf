/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_puthexa_low.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmalheir <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/12/06 09:11:02 by tmalheir          #+#    #+#             */
/*   Updated: 2023/12/12 16:39:43 by tmalheir         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

int	ft_puthexa_low_fd(unsigned long long nbr, int fd)
{
	int		count;
	char	*hexa_low;

	count = 0;
	hexa_low = "0123456789abcdef";
	if (nbr < 16)
		count += write(1, &hexa_low[nbr], 1);
	else
	{
		count += ft_puthexa_low_fd((nbr / 16), fd);
		count += ft_puthexa_low_fd((nbr % 16), fd);
	}
	return (count);
}

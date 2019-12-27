/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ensemble.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mderri <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/12/26 22:12:15 by mderri            #+#    #+#             */
/*   Updated: 2019/12/26 22:12:17 by mderri           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ensemble.h"

int     main(int  argc, char **argv)
{
    t_univers   e;

    if (argc != 2)
    {
        ft_putstr("Usage : ./ensemble fichier.xml");
        exit(0);
    }
    e.l_ensemble = parsing(argv[1], &e); 
    return (0);
}

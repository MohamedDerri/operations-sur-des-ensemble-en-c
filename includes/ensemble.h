/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ensemble.h                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mderri <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/12/26 22:14:35 by mderri            #+#    #+#             */
/*   Updated: 2019/12/26 22:14:37 by mderri           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef ENSEMBLE_H
# define ENSEMBLE_H

/*=========================== Including Libraries ===========================*/
# include <stdio.h>
# include "libft.h"
# include <math.h>
# include <stdlib.h>
# include <fcntl.h>
/*===========================================================================*/

/*================================= Defines =================================*/

/*===========================================================================*/

/*=========================== Definition of types ===========================*/
typedef struct      s_list
{
    int             content;
    struct  s_list  *next;
}                   t_list;

typedef struct      s_ensemble
{
    t_list          list;
    int             card;
}                   t_ensemble;

typedef struct      s_univers
{
        t_list      l_ensemble;
        int         nbr;
}                   t_univers;

/*===========================================================================*/

/*=============================== Prototypes=================================*/

/*===========================================================================*/
# endif

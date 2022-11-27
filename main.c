/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ken <ken@student.42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/10/27 15:40:59 by ken               #+#    #+#             */
/*   Updated: 2022/10/27 15:47:24 by ken              ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include<stdio.h>
#include<unistd.h>
#include<fcntl.h>
#include "get_next_line.h"

int main()
{
    char *tmp;
    char *buf;
    int fd;

    fd = open("test.txt", O_RDONLY);

    while(1)
    {
        buf = get_next_line(fd);
        printf("%s",buf);
        if(!buf)
            break;
        free(buf);           
    }
    return 0;
}
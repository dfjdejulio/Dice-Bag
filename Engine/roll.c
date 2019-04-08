//
//  roll.c
//  Dice Bag
//
//  Created by Doug DeJulio on 2019-04-08.
//  Copyright © 2019 Doug DeJulio. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include <strings.h>
#include "roll.h"

#define ROLL(x) ((random())%(x)+1)

static int
mycompar(const void * xp,
         const void * yp)
{
    const int *x = (const int *) xp;
    const int *y = (const int *) yp;

    return *y - *x;
}


int
roll(int best,
     int dice,
     int die)
{
    int i;
    int results[dice];
    int sum=0;

    for (i=0; i<dice; i++) {
        results[i] = ROLL(die);
    }

    qsort(results, dice, sizeof(int), mycompar);

    for (i=0; i<best; i++) {
        sum += results[i];
    }

    return sum;
}

int
rolls(char *dstring)
{
    int b=1, q=1, d=8;

    if (index(dstring, 'b')) {
        sscanf(dstring, "%db%dd%d", &b, &q, &d);
    } else {
        sscanf(dstring, "%dd%d", &q, &d);
        b = q;
    }
    return roll(b,q,d);
}

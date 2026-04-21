<?php

namespace App\Enum;

enum MealType: string
{
    case STARTER = 'starter';
    case MAIN_COURSE = 'mainCourse';
    case DESSERT = 'dessert';
}
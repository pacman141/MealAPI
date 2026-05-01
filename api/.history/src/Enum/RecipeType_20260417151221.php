<?php

namespace App\Enum;

enum RecipeType: string
{
    case STARTER = 'starter';
    case MAIN_COURSE = 'mainCourse';
    case DESSERT = 'dessert';
}
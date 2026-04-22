<?php

namespace App\Enum;

enum TimeOfDay: string
{
    case BREAKFAST = 'breakfast';
    case DINNER  = 'dinner';
    case LUNCH   = 'lunch';
}

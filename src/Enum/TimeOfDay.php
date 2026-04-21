<?php

namespace App\Enum;

enum TimeOfDay: string
{
    case MORNING = 'morning';
    case DINNER  = 'dinner';
    case LUNCH   = 'lunch';
}

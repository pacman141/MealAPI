<?php

namespace App\Entity;

use App\Enum\TimeOfDay;
use App\Repository\PlanningMealRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: PlanningMealRepository::class)]
class PlanningMeal
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(enumType: TimeOfDay::class)]
    private ?TimeOfDay $timeOfDay = null;

    #[ORM\ManyToOne(inversedBy: 'planningMeals')]
    #[ORM\JoinColumn(nullable: false)]
    private ?Planning $planning = null;

    #[ORM\ManyToOne(inversedBy: 'planningMeals')]
    #[ORM\JoinColumn(nullable: false)]
    private ?Meal $meal = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getTimeOfDay(): ?TimeOfDay
    {
        return $this->timeOfDay;
    }

    public function setTimeOfDay(TimeOfDay $timeOfDay): static
    {
        $this->timeOfDay = $timeOfDay;

        return $this;
    }

    public function getPlanning(): ?Planning
    {
        return $this->planning;
    }

    public function setPlanning(?Planning $planning): static
    {
        $this->planning = $planning;

        return $this;
    }

    public function getMeal(): ?Meal
    {
        return $this->meal;
    }

    public function setMeal(?Meal $meal): static
    {
        $this->meal = $meal;

        return $this;
    }
}

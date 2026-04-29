<?php

namespace App\Entity;

use App\Enum\TimeOfDay;
use App\Repository\PlanningRecipeRepository;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Serializer\Attribute\Groups;

#[ORM\Entity(repositoryClass: PlanningRecipeRepository::class)]
class PlanningRecipe
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[Groups(['planning:read:collection'])]
    #[ORM\Column(enumType: TimeOfDay::class)]
    private ?TimeOfDay $timeOfDay = null;

    #[ORM\ManyToOne(inversedBy: 'planningRecipes')]
    #[ORM\JoinColumn(nullable: false, onDelete: "CASCADE")]
    private ?Planning $planning = null;

    #[Groups(['planning:read:collection'])]
    #[ORM\ManyToOne(inversedBy: 'planningRecipes')]
    #[ORM\JoinColumn(nullable: false, onDelete: "CASCADE")]
    private ?Recipe $recipe = null;

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

    public function getRecipe(): ?Recipe
    {
        return $this->recipe;
    }

    public function setRecipe(?Recipe $recipe): static
    {
        $this->recipe = $recipe;

        return $this;
    }
}

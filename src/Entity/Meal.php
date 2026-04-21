<?php

namespace App\Entity;

use ApiPlatform\Metadata\ApiResource;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity]
#[ApiResource]
class Meal
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $image = null;

    #[ORM\Column]
    private ?\DateTimeInterface $createdAt = null;

    #[ORM\Column]
    private ?\DateTimeInterface $updatedAt = null;

    /**
     * @var Collection<int, MealRecipe>
     */
    #[ORM\OneToMany(targetEntity: MealRecipe::class, mappedBy: 'meal')]
    private Collection $mealRecipes;

    /**
     * @var Collection<int, PlanningMeal>
     */
    #[ORM\OneToMany(targetEntity: PlanningMeal::class, mappedBy: 'meal')]
    private Collection $planningMeals;

    public function __construct()
    {
        $this->mealRecipes = new ArrayCollection();
        $this->planningMeals = new ArrayCollection();
    }

    // getters/setters essentiels

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getImage(): ?string
    {
        return $this->image;
    }

    public function setImage(?string $image): self
    {
        $this->image = $image;
        return $this;
    }

    public function getCreatedAt(): ?\DateTimeInterface
    {
        return $this->createdAt;
    }

    public function setCreatedAt(\DateTimeInterface $createdAt): self
    {
        $this->createdAt = $createdAt;
        return $this;
    }

    public function getUpdatedAt(): ?\DateTimeInterface
    {
        return $this->updatedAt;
    }

    public function setUpdatedAt(\DateTimeInterface $updatedAt): self
    {
        $this->updatedAt = $updatedAt;
        return $this;
    }

    /**
     * @return Collection<int, MealRecipe>
     */
    public function getMealRecipes(): Collection
    {
        return $this->mealRecipes;
    }

    public function addMealRecipe(MealRecipe $mealRecipe): static
    {
        if (!$this->mealRecipes->contains($mealRecipe)) {
            $this->mealRecipes->add($mealRecipe);
            $mealRecipe->setMeal($this);
        }

        return $this;
    }

    public function removeMealRecipe(MealRecipe $mealRecipe): static
    {
        if ($this->mealRecipes->removeElement($mealRecipe)) {
            // set the owning side to null (unless already changed)
            if ($mealRecipe->getMeal() === $this) {
                $mealRecipe->setMeal(null);
            }
        }

        return $this;
    }

    /**
     * @return Collection<int, PlanningMeal>
     */
    public function getPlanningMeals(): Collection
    {
        return $this->planningMeals;
    }

    public function addPlanningMeal(PlanningMeal $planningMeal): static
    {
        if (!$this->planningMeals->contains($planningMeal)) {
            $this->planningMeals->add($planningMeal);
            $planningMeal->setMeal($this);
        }

        return $this;
    }

    public function removePlanningMeal(PlanningMeal $planningMeal): static
    {
        if ($this->planningMeals->removeElement($planningMeal)) {
            // set the owning side to null (unless already changed)
            if ($planningMeal->getMeal() === $this) {
                $planningMeal->setMeal(null);
            }
        }

        return $this;
    }
}
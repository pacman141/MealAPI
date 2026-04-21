<?php

namespace App\Entity;

use ApiPlatform\Metadata\ApiResource;
use App\Repository\PlanningRepository;
use BcMath\Number;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: PlanningRepository::class)]
#[ApiResource]
class Planning
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column]
    private ?int $weekNumber = null;

    #[ORM\Column]
    private ?int $year = null;

    /**
     * @var Collection<int, PlanningMeal>
     */
    #[ORM\OneToMany(targetEntity: PlanningMeal::class, mappedBy: 'planning')]
    private Collection $planningMeals;

    /**
     * @var Collection<int, ShoppingListItem>
     */
    #[ORM\OneToMany(targetEntity: ShoppingListItem::class, mappedBy: 'planning')]
    private Collection $shoppingListItems;

    public function __construct()
    {
        $this->planningMeals = new ArrayCollection();
        $this->shoppingListItems = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getWeekNumber(): ?int
    {
        return $this->weekNumber;
    }

    public function setWeekNumber(int $weekNumber): static
    {
        $this->weekNumber = $weekNumber;

        return $this;
    }

    public function getYear(): ?int
    {
        return $this->year;
    }

    public function setYear(int $year): static
    {
        $this->year = $year;

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
            $planningMeal->setPlanning($this);
        }

        return $this;
    }

    public function removePlanningMeal(PlanningMeal $planningMeal): static
    {
        if ($this->planningMeals->removeElement($planningMeal)) {
            // set the owning side to null (unless already changed)
            if ($planningMeal->getPlanning() === $this) {
                $planningMeal->setPlanning(null);
            }
        }

        return $this;
    }

    /**
     * @return Collection<int, ShoppingListItem>
     */
    public function getShoppingListItems(): Collection
    {
        return $this->shoppingListItems;
    }

    public function addShoppingListItem(ShoppingListItem $shoppingListItem): static
    {
        if (!$this->shoppingListItems->contains($shoppingListItem)) {
            $this->shoppingListItems->add($shoppingListItem);
            $shoppingListItem->setPlanning($this);
        }

        return $this;
    }

    public function removeShoppingListItem(ShoppingListItem $shoppingListItem): static
    {
        if ($this->shoppingListItems->removeElement($shoppingListItem)) {
            // set the owning side to null (unless already changed)
            if ($shoppingListItem->getPlanning() === $this) {
                $shoppingListItem->setPlanning(null);
            }
        }

        return $this;
    }
}

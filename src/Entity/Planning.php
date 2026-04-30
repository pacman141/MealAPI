<?php

namespace App\Entity;

use ApiPlatform\Doctrine\Orm\Filter\SearchFilter;
use ApiPlatform\Metadata\ApiFilter;
use ApiPlatform\Metadata\ApiResource;
use ApiPlatform\Metadata\GetCollection;
use App\Repository\PlanningRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Serializer\Attribute\Groups;
use ApiPlatform\Metadata\QueryParameter;

#[ORM\Entity(repositoryClass: PlanningRepository::class)]
#[ApiResource(
    operations: [
        new GetCollection(
            //security: "is_granted('ROLE_USER')",
            normalizationContext: ['groups' => ['planning:read:collection']], 
        ),
    ],

)]
#[ApiFilter(SearchFilter::class, properties: ['user' => 'exact'])]
class Planning
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[Groups(['planning:read:collection'])]
    #[ORM\Column]
    private ?int $weekNumber = null;

    #[Groups(['planning:read:collection'])]
    #[ORM\Column]
    private ?int $year = null;

    #[ORM\ManyToOne(inversedBy: 'planning')]
    private ?User $user = null;

    #[ORM\Column]
    private ?\DateTimeImmutable $createdAt = null;

    #[ORM\Column]
    private ?\DateTimeImmutable $updatedAt = null;

    /**
     * @var Collection<int, PlanningRecipe>
     */
    #[Groups(['planning:read:collection'])]
    #[ORM\OneToMany(targetEntity: PlanningRecipe::class, mappedBy: 'planning')]
    private Collection $planningRecipes;

    public function __construct()
    {
        $this->planningRecipes = new ArrayCollection();
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

    public function getUser(): ?User
    {
        return $this->user;
    }

    public function setUser(?User $user): static
    {
        $this->user = $user;

        return $this;
    }

    public function getCreatedAt(): ?\DateTimeImmutable
    {
        return $this->createdAt;
    }

    public function setCreatedAt(\DateTimeImmutable $createdAt): static
    {
        $this->createdAt = $createdAt;

        return $this;
    }

    public function getUpdatedAt(): ?\DateTimeImmutable
    {
        return $this->updatedAt;
    }

    public function setUpdatedAt(\DateTimeImmutable $updatedAt): static
    {
        $this->updatedAt = $updatedAt;

        return $this;
    }

    /**
     * @return Collection<int, PlanningRecipe>
     */
    public function getPlanningRecipes(): Collection
    {
        return $this->planningRecipes;
    }

    public function addPlanningRecipe(PlanningRecipe $planningRecipe): static
    {
        if (!$this->planningRecipes->contains($planningRecipe)) {
            $this->planningRecipes->add($planningRecipe);
            $planningRecipe->setPlanning($this);
        }

        return $this;
    }

    public function removePlanningRecipe(PlanningRecipe $planningRecipe): static
    {
        if ($this->planningRecipes->removeElement($planningRecipe)) {
            // set the owning side to null (unless already changed)
            if ($planningRecipe->getPlanning() === $this) {
                $planningRecipe->setPlanning(null);
            }
        }

        return $this;
    }
}

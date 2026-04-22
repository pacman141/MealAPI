<?php

namespace App\Entity;

use App\Enum\CourseType;
use App\Repository\RecipeRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Serializer\Attribute\Groups;

#[ORM\Entity(repositoryClass: RecipeRepository::class)]
class Recipe
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[Groups(['user:read'])]
    #[ORM\Column(length: 255)]
    private ?string $name = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $recipePicture = null;

    #[ORM\Column(type: Types::TEXT, nullable: true)]
    private ?string $description = null;

    #[ORM\Column(enumType: CourseType::class)]
    private ?CourseType $courseType = null;

    /**
     * @var Collection<int, PlanningRecipe>
     */
    #[ORM\OneToMany(targetEntity: PlanningRecipe::class, mappedBy: 'recipe')]
    private Collection $planningRecipes;

    public function __construct()
    {
        $this->planningRecipes = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getName(): ?string
    {
        return $this->name;
    }

    public function setName(string $name): static
    {
        $this->name = $name;

        return $this;
    }

    public function getRecipePicture(): ?string
    {
        return $this->recipePicture;
    }

    public function setRecipePicture(?string $recipePicture): static
    {
        $this->recipePicture = $recipePicture;

        return $this;
    }

    public function getDescription(): ?string
    {
        return $this->description;
    }

    public function setDescription(?string $description): static
    {
        $this->description = $description;

        return $this;
    }

    public function getCourseType(): ?CourseType
    {
        return $this->courseType;
    }

    public function setCourseType(CourseType $courseType): static
    {
        $this->courseType = $courseType;

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
            $planningRecipe->setRecipe($this);
        }

        return $this;
    }

    public function removePlanningRecipe(PlanningRecipe $planningRecipe): static
    {
        if ($this->planningRecipes->removeElement($planningRecipe)) {
            // set the owning side to null (unless already changed)
            if ($planningRecipe->getRecipe() === $this) {
                $planningRecipe->setRecipe(null);
            }
        }

        return $this;
    }
}

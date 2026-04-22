<?php

namespace App\Entity;

use App\Repository\IngredientRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: IngredientRepository::class)]
class Ingredient
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 100)]
    private ?string $name = null;

    #[ORM\Column(type: Types::TEXT, nullable: true)]
    private ?string $description = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $ingredientPicture = null;

    #[ORM\Column(length: 100, nullable: true)]
    private ?string $barcode = null;

    #[ORM\Column]
    private ?\DateTimeImmutable $createdAt = null;

    #[ORM\Column]
    private ?\DateTimeImmutable $updatedAt = null;

    /**
     * @var Collection<int, RecipeIngredient>
     */
    #[ORM\OneToMany(targetEntity: RecipeIngredient::class, mappedBy: 'ingredient', orphanRemoval: true)]
    private Collection $recipeIngredients;

    /**
     * @var Collection<int, IngredientShop>
     */
    #[ORM\OneToMany(targetEntity: IngredientShop::class, mappedBy: 'ingredient', orphanRemoval: true)]
    private Collection $ingredientShops;

    public function __construct()
    {
        $this->recipeIngredients = new ArrayCollection();
        $this->ingredientShops = new ArrayCollection();
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

    public function getDescription(): ?string
    {
        return $this->description;
    }

    public function setDescription(?string $description): static
    {
        $this->description = $description;

        return $this;
    }

    public function getIngredientPicture(): ?string
    {
        return $this->ingredientPicture;
    }

    public function setIngredientPicture(?string $ingredientPicture): static
    {
        $this->ingredientPicture = $ingredientPicture;

        return $this;
    }

    public function getBarcode(): ?string
    {
        return $this->barcode;
    }

    public function setBarcode(?string $barcode): static
    {
        $this->barcode = $barcode;

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
     * @return Collection<int, RecipeIngredient>
     */
    public function getRecipeIngredients(): Collection
    {
        return $this->recipeIngredients;
    }

    public function addRecipeIngredient(RecipeIngredient $recipeIngredient): static
    {
        if (!$this->recipeIngredients->contains($recipeIngredient)) {
            $this->recipeIngredients->add($recipeIngredient);
            $recipeIngredient->setIngredient($this);
        }

        return $this;
    }

    public function removeRecipeIngredient(RecipeIngredient $recipeIngredient): static
    {
        if ($this->recipeIngredients->removeElement($recipeIngredient)) {
            // set the owning side to null (unless already changed)
            if ($recipeIngredient->getIngredient() === $this) {
                $recipeIngredient->setIngredient(null);
            }
        }

        return $this;
    }

    /**
     * @return Collection<int, IngredientShop>
     */
    public function getIngredientShops(): Collection
    {
        return $this->ingredientShops;
    }

    public function addIngredientShop(IngredientShop $ingredientShop): static
    {
        if (!$this->ingredientShops->contains($ingredientShop)) {
            $this->ingredientShops->add($ingredientShop);
            $ingredientShop->setIngredient($this);
        }

        return $this;
    }

    public function removeIngredientShop(IngredientShop $ingredientShop): static
    {
        if ($this->ingredientShops->removeElement($ingredientShop)) {
            // set the owning side to null (unless already changed)
            if ($ingredientShop->getIngredient() === $this) {
                $ingredientShop->setIngredient(null);
            }
        }

        return $this;
    }
}

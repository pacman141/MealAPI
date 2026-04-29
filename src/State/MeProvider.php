<?php

namespace App\State;

use ApiPlatform\Metadata\Operation;
use ApiPlatform\State\ProviderInterface;
use Symfony\Component\Security\Core\Authentication\Token\Storage\TokenStorageInterface;
use App\Entity\User;

class MeProvider implements ProviderInterface
{
    public function __construct(
        private TokenStorageInterface $tokenStorage
    ) {}

    public function provide(Operation $operation, array $uriVariables = [], array $context = []): ?User
    {
        $token = $this->tokenStorage->getToken();

        if (!$token) {
            return null;
        }

        $user = $token->getUser();

        return $user instanceof User ? $user : null;
    }
}
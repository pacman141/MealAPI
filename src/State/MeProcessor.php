<?php

namespace App\State;

use ApiPlatform\Metadata\Operation;
use ApiPlatform\State\ProcessorInterface;
use Symfony\Bundle\SecurityBundle\Security;
use Doctrine\ORM\EntityManagerInterface;
use App\Entity\User;

class MeProcessor implements ProcessorInterface
{
    public function __construct(
        private Security $security,
        private EntityManagerInterface $em
    ) {}

    public function process(mixed $data, Operation $operation, array $uriVariables = [], array $context = []): User
    {
        $user = $this->security->getUser();

        if (!$user instanceof User) {
            throw new \LogicException('User not authenticated');
        }

        // SAFE updates only
        if ($data->getEmail() !== null) {
            $user->setEmail($data->getEmail());
        }

        if ($data->getFirstName() !== null) {
            $user->setFirstName($data->getFirstName());
        }

        if ($data->getLastName() !== null) {
            $user->setLastName($data->getLastName());
        }

        if ($data->getUserName() !== null) {
            $user->setUserName($data->getUserName());
        }

        if ($data->getProfilePicture() !== null) {
            $user->setProfilePicture($data->getProfilePicture());
        }

        if ($data->getDateOfBirth() !== null) {
            $user->setDateOfBirth($data->getDateOfBirth());
        }

        $this->em->flush();

        return $user;
    }
}

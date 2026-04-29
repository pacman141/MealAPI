<?php

namespace App\DataFixtures;

use App\Entity\User;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;

class UserFixture extends Fixture
{
    public function __construct(
        private UserPasswordHasherInterface $passwordHasher
    ) {}

    public function load(ObjectManager $manager): void
    {
        $user = new User();

        $user->setEmail('test@test.com');
        $user->setRoles(['ROLE_USER']);

        // 🔐 password hashé
        $user->setPassword(
            $this->passwordHasher->hashPassword($user, 'password')
        );

        $user->setFirstName('Test');
        $user->setLastName('User');
        $user->setUserName('Mon pseudo');

        // 📅 dates
        $user->setCreatedAt(new \DateTimeImmutable());
        $user->setUpdatedAt(new \DateTimeImmutable());

        // 🎂 date naissance
        $user->setDateOfBirth(new \DateTime('1979-03-22'));

        // 🖼️ image
        $user->setProfilePicture('https://example.com/profile.jpg');

        // ⚠️ planning (optionnel, souvent vide au début)
        // $user->addPlanning($planning);

        $manager->persist($user);
        $manager->flush();
    }
}
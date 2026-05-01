<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\SecurityBundle\Security;
use Symfony\Component\HttpFoundation\Response;

class DebugController extends AbstractController
{
    #[Route('/api/debug-me', name: 'debug_me')]
    public function debug(Security $security): Response
    {
        dd($security->getUser());
    }
}
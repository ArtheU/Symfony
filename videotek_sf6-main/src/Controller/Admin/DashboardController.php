<?php

namespace App\Controller\Admin;

use App\Entity\Client;
use App\Entity\Film;
use App\Entity\Personne;
use EasyCorp\Bundle\EasyAdminBundle\Config\Crud;
use EasyCorp\Bundle\EasyAdminBundle\Config\Dashboard;
use EasyCorp\Bundle\EasyAdminBundle\Config\MenuItem;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractDashboardController;
use EasyCorp\Bundle\EasyAdminBundle\Router\AdminUrlGenerator;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class DashboardController extends AbstractDashboardController
{
    public function __construct(private AdminUrlGenerator $adminUrlGenerator)
    {
        
    }
    #[Route('/admin', name: 'admin')]
    public function index(): Response
    {
        $url = $this->adminUrlGenerator
            ->setController(PersonneCrudController::class)
            ->generateUrl();

        return $this->redirect($url);
    }

    public function configureDashboard(): Dashboard
    {
        return Dashboard::new()
            ->setTitle('Videotek Sf6 Main');
    }

    public function configureMenuItems(): iterable
    {
        yield MenuItem::section('videotek');
        yield MenuItem::linkToDashboard('Home', 'fas fa-home');
        yield MenuItem::section('Personnes');

        yield MenuItem::subMenu('Client', 'fas fa-bars')->setSubItems([
            MenuItem::linkToCrud('Add Clients', 'fas fa-plus', Client::class)->setAction(Crud::PAGE_NEW),
            MenuItem::linkToCrud('Show Clients', 'fas fa-eye', Client::class)
        ]);

        yield MenuItem::subMenu('Personnes', 'fas fa-bars')->setSubItems([
            MenuItem::linkToCrud('Add Personnes', 'fas fa-plus', Personne::class)->setAction(Crud::PAGE_NEW),
            MenuItem::linkToCrud('Show Personnes', 'fas fa-eye', Personne::class)
        ]);

        yield MenuItem::section('Films');

        yield MenuItem::subMenu('Films', 'fas fa-bars')->setSubItems([
            MenuItem::linkToCrud('Add Films', 'fas fa-plus', Film::class)->setAction(Crud::PAGE_NEW),
            MenuItem::linkToCrud('Show Films', 'fas fa-eye', Film::class)
        ]);
        // yield MenuItem::linkToCrud('The Label', 'fas fa-list', EntityClass::class);
    }
}

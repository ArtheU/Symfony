<?php

namespace App\Entity;

use App\Repository\ClientRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: ClientRepository::class)]
class Client
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column(type: 'integer')]
    private $id;

    #[ORM\Column(type: 'string', length: 255)]
    private $nomClient;

    #[ORM\Column(type: 'string', length: 255)]
    private $prenomClient;

    #[ORM\Column(type: 'string', length: 255)]
    private $adresseClient;

    #[ORM\Column(type: 'string', length: 255)]
    private $cpClient;

    #[ORM\Column(type: 'string', length: 255)]
    private $villeClient;

    #[ORM\Column(type: 'string', length: 255)]
    private $loginClient;

    #[ORM\Column(type: 'string', length: 255)]
    private $pwdClient;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getNomClient(): ?string
    {
        return $this->nomClient;
    }

    public function setNomClient(string $nomClient): self
    {
        $this->nomClient = $nomClient;

        return $this;
    }

    public function getPrenomClient(): ?string
    {
        return $this->prenomClient;
    }

    public function setPrenomClient(string $prenomClient): self
    {
        $this->prenomClient = $prenomClient;

        return $this;
    }

    public function getAdresseClient(): ?string
    {
        return $this->adresseClient;
    }

    public function setAdresseClient(string $adresseClient): self
    {
        $this->adresseClient = $adresseClient;

        return $this;
    }

    public function getCpClient(): ?string
    {
        return $this->cpClient;
    }

    public function setCpClient(string $cpClient): self
    {
        $this->cpClient = $cpClient;

        return $this;
    }

    public function getVilleClient(): ?string
    {
        return $this->villeClient;
    }

    public function setVilleClient(string $villeClient): self
    {
        $this->villeClient = $villeClient;

        return $this;
    }

    public function getLoginClient(): ?string
    {
        return $this->loginClient;
    }

    public function setLoginClient(string $loginClient): self
    {
        $this->loginClient = $loginClient;

        return $this;
    }

    public function getPwdClient(): ?string
    {
        return $this->pwdClient;
    }

    public function setPwdClient(string $pwdClient): self
    {
        $this->pwdClient = $pwdClient;

        return $this;
    }
}

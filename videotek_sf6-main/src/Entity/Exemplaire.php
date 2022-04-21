<?php

namespace App\Entity;

use App\Repository\ExemplaireRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: ExemplaireRepository::class)]
class Exemplaire
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column(type: 'integer')]
    private $id;

    #[ORM\Column(type: 'integer')]
    private $codeSupport;

    #[ORM\Column(type: 'boolean')]
    private $vo;

    #[ORM\Column(type: 'text')]
    private $problemes;

    #[ORM\Column(type: 'text', nullable: true)]
    private $detailSupport;

    #[ORM\ManyToOne(targetEntity: Film::class)]
    #[ORM\JoinColumn(nullable: false)]
    private $idFilm;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getCodeSupport(): ?int
    {
        return $this->codeSupport;
    }

    public function setCodeSupport(int $codeSupport): self
    {
        $this->codeSupport = $codeSupport;

        return $this;
    }

    public function getVo(): ?bool
    {
        return $this->vo;
    }

    public function setVo(bool $vo): self
    {
        $this->vo = $vo;

        return $this;
    }

    public function getProblemes(): ?string
    {
        return $this->problemes;
    }

    public function setProblemes(string $problemes): self
    {
        $this->problemes = $problemes;

        return $this;
    }

    public function getDetailSupport(): ?string
    {
        return $this->detailSupport;
    }

    public function setDetailSupport(?string $detailSupport): self
    {
        $this->detailSupport = $detailSupport;

        return $this;
    }

    public function getIdFilm(): ?Film
    {
        return $this->idFilm;
    }

    public function setIdFilm(?Film $idFilm): self
    {
        $this->idFilm = $idFilm;

        return $this;
    }
}

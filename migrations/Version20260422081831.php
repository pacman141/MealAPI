<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20260422081831 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE planning_recipe (id INT AUTO_INCREMENT NOT NULL, time_of_day VARCHAR(255) NOT NULL, planning_id INT DEFAULT NULL, recipe_id INT DEFAULT NULL, INDEX IDX_BAA993583D865311 (planning_id), INDEX IDX_BAA9935859D8A214 (recipe_id), PRIMARY KEY (id)) DEFAULT CHARACTER SET utf8mb4');
        $this->addSql('ALTER TABLE planning_recipe ADD CONSTRAINT FK_BAA993583D865311 FOREIGN KEY (planning_id) REFERENCES planning (id)');
        $this->addSql('ALTER TABLE planning_recipe ADD CONSTRAINT FK_BAA9935859D8A214 FOREIGN KEY (recipe_id) REFERENCES recipe (id)');
        $this->addSql('ALTER TABLE planning ADD CONSTRAINT FK_D499BFF6A76ED395 FOREIGN KEY (user_id) REFERENCES user (id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE planning_recipe DROP FOREIGN KEY FK_BAA993583D865311');
        $this->addSql('ALTER TABLE planning_recipe DROP FOREIGN KEY FK_BAA9935859D8A214');
        $this->addSql('DROP TABLE planning_recipe');
        $this->addSql('ALTER TABLE planning DROP FOREIGN KEY FK_D499BFF6A76ED395');
    }
}

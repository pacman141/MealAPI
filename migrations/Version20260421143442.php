<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20260421143442 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('DROP INDEX IDX_6BAF78704D16C4DD ON ingredient');
        $this->addSql('ALTER TABLE ingredient DROP shop_id');
        $this->addSql('ALTER TABLE meal CHANGE created_at created_at VARCHAR(255) NOT NULL, CHANGE updated_at updated_at VARCHAR(255) NOT NULL');
        $this->addSql('ALTER TABLE meal_recipe ADD CONSTRAINT FK_B5820C3E639666D6 FOREIGN KEY (meal_id) REFERENCES meal (id)');
        $this->addSql('ALTER TABLE meal_recipe ADD CONSTRAINT FK_B5820C3E59D8A214 FOREIGN KEY (recipe_id) REFERENCES recipe (id)');
        $this->addSql('DROP INDEX IDX_D499BFF6A76ED395 ON planning');
        $this->addSql('ALTER TABLE planning DROP user_id');
        $this->addSql('ALTER TABLE planning_meal ADD CONSTRAINT FK_562086D23D865311 FOREIGN KEY (planning_id) REFERENCES planning (id)');
        $this->addSql('ALTER TABLE planning_meal ADD CONSTRAINT FK_562086D2639666D6 FOREIGN KEY (meal_id) REFERENCES meal (id)');
        $this->addSql('ALTER TABLE recipe_ingredient CHANGE quantity quantity DOUBLE PRECISION DEFAULT NULL');
        $this->addSql('ALTER TABLE recipe_ingredient ADD CONSTRAINT FK_22D1FE1359D8A214 FOREIGN KEY (recipe_id) REFERENCES recipe (id)');
        $this->addSql('ALTER TABLE recipe_ingredient ADD CONSTRAINT FK_22D1FE13933FE08C FOREIGN KEY (ingredient_id) REFERENCES ingredient (id)');
        $this->addSql('ALTER TABLE shopping_list_item ADD CONSTRAINT FK_4FB1C224A76ED395 FOREIGN KEY (user_id) REFERENCES user (id)');
        $this->addSql('ALTER TABLE shopping_list_item ADD CONSTRAINT FK_4FB1C2243D865311 FOREIGN KEY (planning_id) REFERENCES planning (id)');
        $this->addSql('ALTER TABLE shopping_list_item ADD CONSTRAINT FK_4FB1C224933FE08C FOREIGN KEY (ingredient_id) REFERENCES ingredient (id)');
        $this->addSql('ALTER TABLE user ADD first_name VARCHAR(100) NOT NULL, ADD last_name VARCHAR(100) NOT NULL, DROP firstname, DROP lastname');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE ingredient ADD shop_id INT DEFAULT NULL');
        $this->addSql('CREATE INDEX IDX_6BAF78704D16C4DD ON ingredient (shop_id)');
        $this->addSql('ALTER TABLE meal CHANGE created_at created_at DATETIME NOT NULL, CHANGE updated_at updated_at DATETIME NOT NULL');
        $this->addSql('ALTER TABLE meal_recipe DROP FOREIGN KEY FK_B5820C3E639666D6');
        $this->addSql('ALTER TABLE meal_recipe DROP FOREIGN KEY FK_B5820C3E59D8A214');
        $this->addSql('ALTER TABLE planning ADD user_id INT NOT NULL');
        $this->addSql('CREATE INDEX IDX_D499BFF6A76ED395 ON planning (user_id)');
        $this->addSql('ALTER TABLE planning_meal DROP FOREIGN KEY FK_562086D23D865311');
        $this->addSql('ALTER TABLE planning_meal DROP FOREIGN KEY FK_562086D2639666D6');
        $this->addSql('ALTER TABLE recipe_ingredient DROP FOREIGN KEY FK_22D1FE1359D8A214');
        $this->addSql('ALTER TABLE recipe_ingredient DROP FOREIGN KEY FK_22D1FE13933FE08C');
        $this->addSql('ALTER TABLE recipe_ingredient CHANGE quantity quantity DOUBLE PRECISION NOT NULL');
        $this->addSql('ALTER TABLE shopping_list_item DROP FOREIGN KEY FK_4FB1C224A76ED395');
        $this->addSql('ALTER TABLE shopping_list_item DROP FOREIGN KEY FK_4FB1C2243D865311');
        $this->addSql('ALTER TABLE shopping_list_item DROP FOREIGN KEY FK_4FB1C224933FE08C');
        $this->addSql('ALTER TABLE user ADD firstname VARCHAR(100) NOT NULL, ADD lastname VARCHAR(100) NOT NULL, DROP first_name, DROP last_name');
    }
}

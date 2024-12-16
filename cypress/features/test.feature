Feature: Connexion à l'application

  @loginSuccess
  Scenario Outline: Connexion avec un nom d'utilisateur valide et un mot de passe valide
    Given utilisateur est sur la page de connexion
    When utilisateur entre un nom utilisateur valide "username"
    And utilisateur entre un mot de passe valide "secret_sauce"
    And utilisateur clique sur le bouton de connexion
    Then l’utilisateur est connecté avec succès



  @loginFailure
  Scenario: Connexion avec un nom d'utilisateur valide et un mot de passe non valide
    Given utilisateur est sur la page de connexion
    When utilisateur entre un nom utilisateur valide "standard_user"
    And utilisateur entre un mot de passe non valide  "Admin"
    And utilisateur clique sur le bouton de connexion
    Then utilisateur avoir un message erreur

  Scenario: Connexion avec un nom d'utilisateur  nom valide et un mot de passe  valide
    Given utilisateur est sur la page de connexion
    When utilisateur entre un nom utilisateur non valide "12Admin"
    And utilisateur entre un mot de passe valide "secret_sauce"
    And utilisateur clique sur le bouton de connexion
    Then utilisateur avoir un message erreur
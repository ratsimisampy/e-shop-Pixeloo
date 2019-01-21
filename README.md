# Pixeloo
Pixeloo is an online place for exchanging all kinds of material related with digital photography.
This project have been developped within 2 weeks of full time coding by a team of 4 developpers.
###### online url :

http://pixeloosave.herokuapp.com

###### How does it work :
1 - Bob ajoute son nouvel appareil photo Canon sur Pixeloo ici : https://pixeloosave.herokuapp.com/users/edit (bas de page)

2. Sophie veut louer le Canon de Bob, elle l'ajoute à son panier et passe la commande

3. Bob recoit un email l'informant qu'il a une demande de location, il se rend sur le site et accepte ou rejette la demande de Sophie

4. Sophie est informé du rejet ou de l'acceptation de sa location, si c'est ok, elle paye et peut accéder aux coordonnées de Bob

5. Bob et Sophie recoivent un email qui les informe que la commande est confirmée et que leurs coordonées respectives sont disponibles sur Pixeloo


###### Testing scenario :

1. Créer un utilisateur avec un email valide et ajouter un appareil photo
2. Créer un second utilisateur avec un email validé et louer cet appareil photo


###### Usefull for Stripe :

- 4242 4242 4242 4242
- a three-digit CVC
- any expiry date in the future

###### Some tips that might be usefull when running the project on your local machine :
1. décommenter l'initializer stripe
2. $ EDITOR="subl --wait" bin/rails credentials:edit
          afin d'ajouter vos credentials pour :
                aws:
                  access_key_id: XXXX
                  secret_access_key: XXX

                stripe:
                  publishable_key: XXX
                  secret_key: XX

                gmail:
                  username: XXX
                  password: XXXX
4. compiler 
     $ RAILS_ENV=production bundle exec rake assets:precompile
5. rails db:migrate (éventuellement db:reset avant)
6. rails db:migrate
7. rails db:seed

## Le projet

### M V P

It contains basic features :
- session authentification
- users administration , with administrator, authentified and non authentified user.
- both owner and consumer's workflow
- mailer
- a basic search form
- item by category

### Advanced features

- geolocalisation system with Gem Geocoder
- Checkout online with Stripe

### branches 

- we adopted the following workflow

├── master
  ├── development
    ├── Username
      ├── feature1
      ├── feature2
      ├── ...
      ├── featureN

- each team member had to create a personnal branch, had to update his "Username" branch with the last version of "development" branch before pushing his last commitment on "development"
- Every last commit had to be tested on "development" before pushing on "master"
' "Master" is the one we finally put on Heroku.
     
## La TEAM

- @Enes (front)
- @Alexis (front)
- @Vivien (back)
- @Rado (back)

## Pour le futur

Nous allons dans un premier temps nous appliquer à améliorer les fonctionnalités existantes. Ensuite nous aurons à terme la possibilité d'apporter des innovations au projet. Si l'étude du modèle économique est positive, pourquoi ne pas envisager la mise sur le marché du produit avec une rémunération à la clef ?!


![Image description](https://i.ibb.co/MkF2YH8/SNAPSHOT.jpg)



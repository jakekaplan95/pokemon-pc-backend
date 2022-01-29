# Pokemon PC on the Blockchain

Technilogies Used
* Ruby on Rails
* Javascript
* Heroku Deployment
* Netflify Deployment
* CSS in-line styline
* Carousel
* Solidity
* Remix


# How it Works

This app is a pokemon app that allows you to create 6-man teams. You may then take any pokemon from a selected team and mint them as an nft!

Remix was used to code in Solidity to create the blockchain smart contract through the Rinkeby testnet. Nfts minted and confirmed through Metamask are displayed on a test-net verion of Opensea, the general "ebay" of nfts where you may view and buy/sell your nfts as well as purchase others'.

The frontend was created to have specific endpoints connected to a githubpages link hosting the actual picture files to be minted and used as the nft placeholder on Opensea. 

Buttons were added to connect to metamask in order to make blockchain transactions and then mint buttons in order to mint that specific pokemon from your team. 


# Roadblocks

One of the largest roadblocks in this project was getting the pokemon files from the pokeapi to return raw JSON. This made it very hard for Opensea to catch the pokemons information to be displayed in the nft. This was remedied by having Opensea connect through the frontend to a github pages that is hosting all of the pokemon information to be used

React doesnt support having routes that return something that is a non-html repsonse. Opensea and other interaction systesms do not behave well using HTML based metadata apis. I remedied this by having the react frontedend redirect the api calls to a non-react backend via github pages and hosting the pokemon information there.

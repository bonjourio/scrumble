angular.module 'NotSoShitty.login'
.run (Permission, localStorageService, GAuth) ->
  Permission.defineRole 'trello-authenticated', ->
    localStorageService.get('trello_token')?
  Permission.defineRole 'google-authenticated', ->
    GAuth.checkAuth()
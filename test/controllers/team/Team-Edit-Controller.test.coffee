describe 'controllers | Team-Edit-Controller', ->
  $scope      = null
  routeParams = null
  project     = 'bsimm'
  team        = 'team-A'  
  
  beforeEach ->
    module('MM_Graph')

  beforeEach ->
    inject ($controller, $rootScope, $httpBackend)->
      $scope      = $rootScope.$new()
      routeParams = project : project , team: team
      $controller('TeamDataController', { $scope: $scope, $routeParams : routeParams })
      $httpBackend.flush()
      $controller('TeamEditController', { $scope: $scope, $routeParams : routeParams })

  it '$controller (with project and team on $routeParams)',->
    using $scope, ->
      @.team_Data.data.metadata.team.assert_Is 'Team A'
      @.team_Data.schema.domains.keys().first().assert_Is 'Governance'

      @.domains.keys().assert_Is ['Governance', 'Intelligence',  'SSDL Touchpoints', 'Deployment' ]

      @.domains['Governance'      ].assert_Contains 'SM.1.1'
      @.domains['Intelligence'    ].assert_Contains 'AM.1.2'
      @.domains['SSDL Touchpoints'].assert_Contains 'AA.1.1'
      @.domains['Deployment'      ].assert_Contains 'PT.1.1'

  it '$controller (with empty $routeParams)',->
    inject ($controller)->
      $controller('TeamEditController', { $scope: $scope, $routeParams : {} })

  it '$scope.map_Domains (with no metadata)', ->
    inject (Team_Data)->
      saved_Metadata          = Team_Data.data.metadata             # save object
      Team_Data.data.metadata = null
      $scope.map_Domains()
      Team_Data.data.metadata.assert_Is { team: ''}
      Team_Data.data.metadata = saved_Metadata                      # restore object


xdescribe 'controllers | Edit-Data-Controller (SAMM data)', ->
  $scope      = null
  routeParams = null
  project     = 'samm'
  team        = 'team-E'

  beforeEach ->
    module('MM_Graph')

  beforeEach ->
    inject ($controller, $rootScope)->
      $scope      = $rootScope.$new()
      routeParams = project : project , team: team
      $controller('EditDataController', { $scope: $scope, $routeParams : routeParams })

  it 'should load SAMM data', ->
    inject ($httpBackend)->
      $httpBackend.flush()
      using $scope, ->
        @.domains.Governance[  'SM.1.A'].assert_Is 'Yes'
        @.domains.Construction['TA.1.A'].assert_Is 'NA'
        @.domains.Verification['DR.1.A'].assert_Is 'Maybe'
        @.domains.Operation[   'IM.1.A'].assert_Is 'NA'




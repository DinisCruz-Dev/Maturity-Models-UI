angular.module('MM_Graph')
  .controller 'ProjectMenuController', ($scope, $routeParams, $location)->
    project          = $routeParams.project
    base_Path        = "/view/project/#{project}"
    $scope.project   = project
    $scope.base_Path = base_Path

    $scope.is_Active = (text)->
      if text is 'view' and base_Path is $location.url()
        return 'active'
      if "#{base_Path}/#{text}" is $location.url()
        return 'active'
      return ''
      
    $scope.links =
      [
        { text: 'schema'            , path: "#{base_Path}/schema"            , class: $scope.is_Active('schema'            )}
        { text: 'scores'            , path: "#{base_Path}/scores"            , class: $scope.is_Active('scores'            )}
        { text: 'observed'          , path: "#{base_Path}/observed"          , class: $scope.is_Active('observed'          )}
        { text: 'observed (details)', path: "#{base_Path}/observed-details"  , class: $scope.is_Active('observed (details)')}
      ]
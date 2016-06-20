app = angular.module('MM_Graph')

class MM_Graph_API
  constructor: (http)->
    @.$http = http

  routes: (callback)=>
    url = "/api/v1/routes/list"
    @.$http.get url
           .success callback

  file_Get: (target,callback)=>
    url = "/api/v1/file/get/#{target}?pretty"
    @.$http.get url
      .success callback

  file_List: (callback)=>
    url = "/api/v1/file/list"
    @.$http.get url
           .success callback

  file_Save: (target,data, callback)=>
    url = "/api/v1/file/save/#{target}?pretty"
    @.$http.post(url, data)
           .success (data)->
              callback data

  project_List: (callback)=>
    url = "/api/v1/project/list"
    @.$http.get url
           .success callback

  project_Get: (target,callback)=>
    url = "/api/v1/project/get/#{target}"
    @.$http.get url
           .success callback

  view_Table: (target,callback)=>
    url = "/api/v1/table/#{target}"
    @.$http.get url
      .success callback


app.service 'MM_Graph_API', ($http)=>
  return new MM_Graph_API $http
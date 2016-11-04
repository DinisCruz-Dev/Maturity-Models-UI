angular.module('MM_Graph').run ($httpBackend)-> $httpBackend.whenGET('/api/v1/routes').respond {"raw":["/ping","/api/v1/project/scores/:project","/api/v1/data/:project/radar/fields","/api/v1/data/:project/:team/radar","/api/v1/data/:project/:team/score","/api/v1/logs/path","/api/v1/logs/list","/api/v1/logs/file/:index","/api/v1/team/:project/list","/api/v1/team/:project/delete/:team","/api/v1/team/:project/get/:team","/api/v1/team/:project/new","/api/v1/team/:project/rename/:team/:name","/api/v1/team/:project/save/:team","/api/v1/project/get/:project","/api/v1/project/list","/api/v1/project/schema/:project","/api/v1/routes","/api/v1/routes/list-raw","/api/v1/routes/list-fixed"],"fixed":["/ping","/api/v1/project/scores/:project","/api/v1/data/:project/radar/fields","/api/v1/logs/path","/api/v1/logs/list","/api/v1/logs/file/:index","/api/v1/team/:project/list","/api/v1/team/:project/new","/api/v1/project/get/:project","/api/v1/project/list","/api/v1/project/schema/:project","/api/v1/routes","/api/v1/routes/list-raw","/api/v1/routes/list-fixed","/api/v1/data/bsimm/save-test/radar","/api/v1/data/bsimm/level-1/radar","/api/v1/data/bsimm/level-2/radar","/api/v1/data/bsimm/level-3/radar","/api/v1/data/bsimm/team-bsdxz/radar","/api/v1/data/bsimm/team-gjrem/radar","/api/v1/data/bsimm/team-rgxmn/radar","/api/v1/data/bsimm/team-xbqtc/radar","/api/v1/data/bsimm/team-A/radar","/api/v1/data/bsimm/team-B/radar","/api/v1/data/bsimm/team-C/radar","/api/v1/data/bsimm/team-random/radar","/api/v1/data/bsimm/save-test/score","/api/v1/data/bsimm/level-1/score","/api/v1/data/bsimm/level-2/score","/api/v1/data/bsimm/level-3/score","/api/v1/data/bsimm/team-bsdxz/score","/api/v1/data/bsimm/team-gjrem/score","/api/v1/data/bsimm/team-rgxmn/score","/api/v1/data/bsimm/team-xbqtc/score","/api/v1/data/bsimm/team-A/score","/api/v1/data/bsimm/team-B/score","/api/v1/data/bsimm/team-C/score","/api/v1/data/bsimm/team-random/score","/api/v1/team/bsimm/delete/save-test","/api/v1/team/bsimm/delete/level-1","/api/v1/team/bsimm/delete/level-2","/api/v1/team/bsimm/delete/level-3","/api/v1/team/bsimm/delete/team-bsdxz","/api/v1/team/bsimm/delete/team-gjrem","/api/v1/team/bsimm/delete/team-rgxmn","/api/v1/team/bsimm/delete/team-xbqtc","/api/v1/team/bsimm/delete/team-A","/api/v1/team/bsimm/delete/team-B","/api/v1/team/bsimm/delete/team-C","/api/v1/team/bsimm/delete/team-random","/api/v1/team/bsimm/get/save-test","/api/v1/team/bsimm/get/level-1","/api/v1/team/bsimm/get/level-2","/api/v1/team/bsimm/get/level-3","/api/v1/team/bsimm/get/team-bsdxz","/api/v1/team/bsimm/get/team-gjrem","/api/v1/team/bsimm/get/team-rgxmn","/api/v1/team/bsimm/get/team-xbqtc","/api/v1/team/bsimm/get/team-A","/api/v1/team/bsimm/get/team-B","/api/v1/team/bsimm/get/team-C","/api/v1/team/bsimm/get/team-random","/api/v1/team/bsimm/rename/save-test/:name","/api/v1/team/bsimm/rename/level-1/:name","/api/v1/team/bsimm/rename/level-2/:name","/api/v1/team/bsimm/rename/level-3/:name","/api/v1/team/bsimm/rename/team-bsdxz/:name","/api/v1/team/bsimm/rename/team-gjrem/:name","/api/v1/team/bsimm/rename/team-rgxmn/:name","/api/v1/team/bsimm/rename/team-xbqtc/:name","/api/v1/team/bsimm/rename/team-A/:name","/api/v1/team/bsimm/rename/team-B/:name","/api/v1/team/bsimm/rename/team-C/:name","/api/v1/team/bsimm/rename/team-random/:name","/api/v1/team/bsimm/save/save-test","/api/v1/team/bsimm/save/level-1","/api/v1/team/bsimm/save/level-2","/api/v1/team/bsimm/save/level-3","/api/v1/team/bsimm/save/team-bsdxz","/api/v1/team/bsimm/save/team-gjrem","/api/v1/team/bsimm/save/team-rgxmn","/api/v1/team/bsimm/save/team-xbqtc","/api/v1/team/bsimm/save/team-A","/api/v1/team/bsimm/save/team-B","/api/v1/team/bsimm/save/team-C","/api/v1/team/bsimm/save/team-random"]}
angular.module('MM_Graph').run ($httpBackend)-> $httpBackend.whenGET('/api/v1/data/bsimm/level-2/radar').respond {"axes":[{"value":2.4545},{"value":1.8462},{"value":1.75},{"value":2.1818},{"value":1.5},{"value":2.1818},{"value":2.3333},{"value":2.1818},{"value":1.8},{"value":2.1429},{"value":1.3333},{"value":1.6667}]}
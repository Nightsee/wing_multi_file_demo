bring cloud;

// importing the api handlers
class ApiHandlers {
  pub extern "./handlers/api_increment.js" inflight static Inc(increment: inflight (): num): cloud.ApiResponse;
  pub extern "./handlers/api_decrement.js" inflight static Dec(decrement: inflight (): num): cloud.ApiResponse;
}

pub class ApiEndpoints {
  new(api: cloud.Api, counter: cloud.Counter) {
    api.get("/increment", inflight () => {
      return ApiHandlers.Inc(counter.inc);
    });
    api.get("/decrement", inflight () => {
      return ApiHandlers.Dec(counter.dec);
    });
  }
}
bring cloud;
bring "./infrastructure.w" as infrastructure;
bring "./endpoints.w" as Endpoints;


let Infra = new infrastructure.Infra();

let ApiEndpoints = new Endpoints.ApiEndpoints(Infra.api, Infra.counter);



// bring cloud;

// let api = new cloud.Api();
// let counter = new cloud.Counter();

// // importing the handlers

// class ApiHandlers {
//   pub extern "./handlers/api_increment.js" inflight static Inc(increment: inflight (): num): cloud.ApiResponse;
//   pub extern "./handlers/api_decrement.js" inflight static Dec(decrement: inflight (): num): cloud.ApiResponse;
// }

// // api endpoints

// api.get("/increment", inflight () => {
//   return ApiHandlers.Inc(counter.inc);
// });
// api.get("/decrement", inflight () => {
//   return ApiHandlers.Dec(counter.dec);
// });
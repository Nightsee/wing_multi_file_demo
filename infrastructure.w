bring cloud;

pub class Infra {
    pub api: cloud.Api;
    pub counter: cloud.Counter;

    new() {
        this.api = new cloud.Api();
        this.counter = new cloud.Counter();
    }
}

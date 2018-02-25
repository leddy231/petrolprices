const VUEApp = new Vue({
    el: '#app',
    data: {
        loaded: false,
        results: []
    },
    mounted() {
        httpGetAsync("/xmldata", function(res) {
            res = XMLToJSON(StringToXML(res));
            VUEApp.results = res["mtc:data"]["mtc:country"];
            VUEApp.loaded = true;
        });
    }
});
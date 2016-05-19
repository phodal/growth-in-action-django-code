<blogDetail class="row">
    <div class="col-sm-4">
        <h2>{ opts.title }</h2>
        { opts.body }
        { opts.posted } - By { opts.author }
    </div>
    <script>
        var self = this;

        this.on('update', function () {
            console.log(this.opts) // Succeeds
        })

        this.on('mount', function (id) {
            responseStream(this.opts.id).subscribe(function (response) {
                self.opts = response;
                self.update();
            })
        })
    </script>
</blogDetail>

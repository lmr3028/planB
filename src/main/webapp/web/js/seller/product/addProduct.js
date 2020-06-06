
//Class definition

var KTCkeditor = function () {
    // Private functions
    var demos = function () {
        ClassicEditor
            .create( document.querySelector( '#kt-ckeditor-2' ) , {
            	simpleUpload: {
                    uploadUrl: 'http://localhost:8080/ck'
                  }
            })
            .then( editor => {
                console.log( editor );
            } )
            .catch( error => {
                console.error( error );
            } );
    }

    return {
        // public functions
        init: function() {
            demos();
        }
    };
}();

// Initialization
jQuery(document).ready(function() {
    KTCkeditor.init();

    var viewModel = {};
	  viewModel.fileData = ko.observable({
	    dataURL: ko.observable(),
	    // base64String: ko.observable(),
	  });
	  viewModel.multiFileData = ko.observable({
	    dataURLArray: ko.observableArray(),
	  });
	  viewModel.onClear = function(fileData){
	    if(confirm('초기화 하시겠습니까 ?')){
	      fileData.clear && fileData.clear();
	    }
	  };
	  viewModel.debug = function(){
	    window.viewModel = viewModel;
	    console.log(ko.toJSON(viewModel));
	  };
	  console.log(viewModel)
	  ko.applyBindings(viewModel);
});





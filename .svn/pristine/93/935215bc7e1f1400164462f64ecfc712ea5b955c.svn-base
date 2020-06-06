class imageSqResizer {

    constructor(uploaderId, size, setDataUrlFunc) {

        this._setDataUrlFunc = setDataUrlFunc;
        this._size = size;
        this._blob = null;
        this._dataUrl = null;

        let upload = document.getElementById(uploaderId);

        upload.addEventListener('change', () => {
            Array.from(upload.files).forEach(file => {
                let imageType = /image.*/;
                if (!file.type.match(imageType)) {
                    console.warn('not image type');
                    return true;
                }
                this.resized(file, this._size);
            });
        });
    }

    //get blob object
    get blob() {return this._blob;}
    //get dataUrl
    get dataUrl() {return this._dataUrl;}

    // resize
    resized(file, maxWidth) {
        let setDataUrlFunc = this._setDataUrlFunc || false;
        let reader = new FileReader();
        reader.onload = () => {

            let tempImg = new Image();
            tempImg.src = reader.result;

            let createCanvas = (width,height,img)=>{
                let canvas = document.createElement('canvas');
                canvas.width = width;
                canvas.height = height;
                let ctx = canvas.getContext('2d');
                ctx.drawImage(img, 0, 0, canvas.width, canvas.height);
                this._dataUrl = canvas.toDataURL();
                if(setDataUrlFunc){
                    setDataUrlFunc( canvas.toDataURL());
                }
                canvas.toBlob((blob) => {
                    this._blob = blob;
                });
            }

            tempImg.onload = () => {

                // calc size
                let tempW = tempImg.width;
                let tempH = tempImg.height;
                let min = tempW >= tempH ? tempH : tempW;
                maxWidth = maxWidth || min;

                if (tempH <= maxWidth && tempW <= maxWidth) {
                    createCanvas(tempW,tempH,tempImg);
                }

                let startY = 0;
                if (min !== tempH) {
                    startY = Math.round(tempH / 2 - (min / 2));
                }
                let startX = 0;
                if (min !== tempW) {
                    startX = Math.round(tempW / 2 - (min / 2));
                }

                let finalImg = new Image();
                finalImg.src = this.getImagePortion(tempImg, min, min, startX, startY, 1);

                finalImg.onload = () => {
                    createCanvas(maxWidth,maxWidth,finalImg);
                }
            }
        }
        reader.readAsDataURL(file);
    }

    //image crop
    getImagePortion(imgObj, newWidth, newHeight, startX, startY, ratio) {
        let tnCanvas = document.createElement('canvas');
        let tnCanvasContext = tnCanvas.getContext('2d');
        tnCanvas.width = newWidth; tnCanvas.height = newHeight;

        let bufferCanvas = document.createElement('canvas');
        let bufferContext = bufferCanvas.getContext('2d');
        bufferCanvas.width = imgObj.width;
        bufferCanvas.height = imgObj.height;
        bufferContext.drawImage(imgObj, 0, 0);

        tnCanvasContext.drawImage(bufferCanvas, startX, startY, newWidth * ratio, newHeight * ratio, 0, 0, newWidth, newHeight);
        return tnCanvas.toDataURL();
    }
}

//moment locale korea로 설정
moment.locale('ko');

//url 에서 parameter 추출
function getParam(sname) {

   var params = location.search.substr(location.search.indexOf("?") + 1);
   var sval = "";
   params = params.split("&");

   for (var i = 0; i < params.length; i++) {
       temp = params[i].split("=");
       if ([temp[0]] == sname) { sval = temp[1]; }
   }
   return sval;
}

//CSS3 Transitions only after page load(.kt-page-loading class added to body tag and remove with JS on page load)
window.onload = function() {
	 $('body').removeClass('kt-page--loading');
};

//통화 코마 찍기
function numberWithCommas(x) {
    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}

//채팅 API
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
	var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
	s1.async=true;
	s1.src='https://embed.tawk.to/5ec4f2a88ee2956d73a2ded4/default';
	s1.charset='UTF-8';
	s1.setAttribute('crossorigin','*');
	s0.parentNode.insertBefore(s1,s0);
})();

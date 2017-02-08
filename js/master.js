(function (){
    "use strict";
    var carImages = document.querySelectorAll('.thumbInfo img'),
        modelName = document.querySelector('.modelInfo h4'),
        carDesc = document.querySelector('.modelDetails'),
        carPrice = document.querySelector('.priceInfo'),
        httpRequest;

    function makeRequest() {
        httpRequest = new XMLHttpRequest();
        if(!httpRequest){
            console.log('Your browsed is too old. Update please.');
        }

        httpRequest.onreadystatechange = showCarInfo;
        httpRequest.open('GET', 'includes/ajaxQuery.php' + "?model=" + this.id);
        httpRequest.send();

        [].forEach.call(carImages, function (image) {
            image.setAttribute('class', 'halfVisible');
        });
        [].forEach.call(carImages, function (image) {
            image.classList.remove('visible');
        });
        if(this.classList[0] == 'halfVisible') {
            //
            this.setAttribute('class', 'visible');
        }
    }


    function showCarInfo(){
        if(httpRequest.readyState === XMLHttpRequest.DONE && httpRequest.status === 200){
            let carData = JSON.parse(httpRequest.responseText);
            modelName.firstChild.nodeValue = carData.modelName;

            carDesc.firstChild.nodeValue = carData.modelDetails;
            carPrice.firstChild.nodeValue = carData.pricing;
        }
    }

    [].forEach.call(carImages, function (e){
        e.addEventListener('click', makeRequest, false);
    })
    carImages[0].click();
})();
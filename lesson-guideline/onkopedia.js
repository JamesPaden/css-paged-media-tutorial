/*
 * Adaptive image resizing
 * Provided by RealObjects
 */

function adapt_image_sizes() {
    var MIN_FACTOR = 0.70; /* Scale down to max 70% */
    var MIN_DIFF = 0.01;
    var SELECTOR = "div.figure > img";
    var imgList = document.querySelectorAll(SELECTOR);
    for (var i = 0; i < imgList.length; i++) {
        var img = imgList[i];
        var figure = img.parentNode;
        var prev = figure.previousElementSibling;
        if (prev) {
            var prevBoxes = ro.layout.getBoxDescriptions(prev);
            if (prevBoxes.length > 0) {
                var boxes = ro.layout.getBoxDescriptions(figure);
                if (boxes.length > 0) {
                    var prevPage = prevBoxes[prevBoxes.length - 1].pageIndex;
                    var page = boxes[0].pageIndex;
                    if (page == (prevPage + 1)) {
                        var origHeight = img.height;
                        var oldFactor = 1;
                        var factor = MIN_FACTOR;
                        img.style.width = "auto";
                        img.style.height = Math.round(origHeight * factor) + "px";
                        ro.layout.forceRelayout();
                        if(ro.layout.getBoxDescriptions(figure)[0].pageIndex != prevPage) {
                            img.style.height = origHeight + "px";
                            ro.layout.forceRelayout();
                        } else {
                            while(Math.abs(factor - oldFactor) > MIN_DIFF) {
                                var newFactor = factor + (Math.abs(oldFactor - factor) / 2 * (ro.layout.getBoxDescriptions(figure)[0].pageIndex == prevPage ? 1 : -1));
                                oldFactor = factor;
                                factor = newFactor;
                                img.style.height = Math.round(origHeight * factor) + "px";
                                ro.layout.forceRelayout();
                            }
                            img.style.height = Math.round(origHeight * (Math.min(factor, oldFactor) - MIN_DIFF - MIN_DIFF)) + "px";
                            ro.layout.forceRelayout();
                        }
                    }
                }
            }
        }
    }
}

function fix_captions() {
    var elems = document.querySelectorAll("table > caption:first-child");
    for (var i = 0; i < elems.length; i++) {
        var cap = elems[i];
        var firstRow = cap.parentNode.querySelector("tr");
        if (firstRow) {
            var capBoxes = ro.layout.getBoxDescriptions(cap);
            var firstRowBoxes = ro.layout.getBoxDescriptions(firstRow);
            if (capBoxes && capBoxes.length && firstRowBoxes && firstRowBoxes.length) {
                var capPage = capBoxes[0].pageIndex;
                var firstRowPage = firstRowBoxes[0].pageIndex;
                if (capPage != firstRowPage) {
                    var e = cap;
                    while (e && !e.previousElementSibling) {
                        e = e.parentNode;
                    }
                    if (e) {
                        if (e.nodeName == "TABLE") {
                            e.previousElementSibling.style.breakAfter = "always";
                        } else {
                            e.style.breakBefore = "always";
                        }
                    }
                }
            }
        }
    }
}


/* MAIN */

function fixes() {
    adapt_image_sizes();
    fix_captions();
}

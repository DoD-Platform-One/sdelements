!function(t) {
    function n(t) {
        var n = [0, 0, 0]
          , r = t.css("-webkit-transform") || t.css("-moz-transform") || t.css("-ms-transform") || t.css("-o-transform") || t.css("transform");
        if ("none" !== r) {
            var e = r.split("(")[1].split(")")[0].split(",")
              , o = 0
              , a = 0
              , i = 0;
            16 == e.length ? (o = parseFloat(e[e.length - 4]),
            a = parseFloat(e[e.length - 3]),
            i = parseFloat(e[e.length - 2])) : (o = parseFloat(e[e.length - 2]),
            a = parseFloat(e[e.length - 1]),
            i = 0),
            n = [o, a, i]
        }
        return n
    }
    function r(t) {
        if (0 === t.offsetWidth || 0 === t.offsetHeight)
            return !1;
        for (var n = document.documentElement.clientHeight, r = t.getClientRects(), e = 0, o = r.length; o > e; e++) {
            var a = r[e]
              , i = a.top > 0 ? a.top <= n : a.bottom > 0 && a.bottom <= n;
            if (i)
                return !0
        }
        return !1
    }
    function e() {
        return v === !0 ? !1 : void 0 !== window.DeviceOrientationEvent
    }
    function o(t) {
        var n = t.gamma
          , r = t.beta;
        if (90 === Math.abs(window.orientation)) {
            var e = n;
            n = r,
            r = e
        }
        return window.orientation < 0 && (n = -n,
        r = -r),
        p = null === p ? n : p,
        u = null === u ? r : u,
        {
            x: n - p,
            y: r - u
        }
    }
    function a(t) {
        if (!((new Date).getTime() < f + s)) {
            f = (new Date).getTime();
            var n = 0
              , a = 0
              , i = t.pageX - n
              , p = t.pageY - a;
            if (r(g[0].obj.get(0).parentNode)) {
                if (e()) {
                    if (void 0 === t.gamma)
                        return void (v = !0);
                    var u = o(t);
                    i = u.x / l,
                    p = u.y / l,
                    i = c > i ? c : i > m ? m : i,
                    p = c > p ? c : p > m ? m : p,
                    i = (i + 1) / 2,
                    p = (p + 1) / 2
                }
                var h, b, y, w, x, R = document.body.getBoundingClientRect(), F = i / (e() === !0 ? m : R.width), S = p / (e() === !0 ? m : R.height);
                for (b = g.length; b--; )
                    h = g[b],
                    d && !h.background ? (y = h.transformStartX + h.inversionFactor * (h.xRange * F),
                    w = h.transformStartY + h.inversionFactor * (h.yRange * S),
                    x = h.transformStartZ,
                    h.obj.css({
                        transform: "translate3d(" + y + "px," + w + "px," + x + "px)"
                    })) : (y = h.startX + h.inversionFactor * (h.xRange * F),
                    w = h.startY + h.inversionFactor * (h.yRange * S),
                    h.background ? h.obj.css({
                        "background-position": y + "px " + w + "px"
                    }) : h.obj.css({
                        left: y,
                        top: w
                    }))
            }
        }
    }
    var i = 25
      , s = 1 / i * 1e3
      , f = (new Date).getTime()
      , g = []
      , l = 30
      , m = 1
      , c = -1
      , p = null
      , u = null
      , v = !1;
    t.plaxify = function(t, r) {
        return function() {
            var e = -1;
            r.xRange = r.xRange ? parseInt(r.xRange) : 0,
            r.yRange = r.yRange ? parseInt(r.yRange) : 0,
            r.zRange = r.zRange ? parseInt(r.zRange) : 0;
            for (var o = 0; o < g.length; o++)
                this === g[o].obj.get(0) && (e = o);
            if (r.inversionFactor = r.invert ? -1 : 1,
            r.obj = {
                get: function() {
                    return t
                },
                css: function(n) {
                    if ("string" == typeof n) {
                        var r = n.replace(/-+(.)?/g, function(t, n) {
                            return n ? n.toUpperCase() : ""
                        });
                        return t.style[r] || getComputedStyle(t, "").getPropertyValue(n)
                    }
                    var e = "";
                    for (var o in n) {
                        var a = n[o];
                        a || 0 === a ? e += o + ":" + a + ";" : t.style.removeProperty(n)
                    }
                    t.style.cssText += ";" + e
                },
                position: function() {
                    var n = t.getBoundingClientRect()
                      , r = t.offsetParent ? t.offsetParent.getBoundingClientRect() : {
                        top: 0,
                        left: 0
                    };
                    return {
                        left: n.left - r.left + window.pageXOffset,
                        top: n.top - r.top + window.pageYOffset
                    }
                }
            },
            !r.background) {
                var a = r.obj.position()
                  , i = n(r.obj);
                r.obj.css({
                    transform: i.join() + "px",
                    top: a.top + "px",
                    left: a.left + "px",
                    right: "",
                    bottom: ""
                }),
                r.originX = r.startX = a.left,
                r.originY = r.startY = a.top,
                r.transformOriginX = r.transformStartX = i[0],
                r.transformOriginY = r.transformStartY = i[1],
                r.transformOriginZ = r.transformStartZ = i[2]
            }
            r.startX -= r.inversionFactor * Math.floor(r.xRange / 2),
            r.startY -= r.inversionFactor * Math.floor(r.yRange / 2),
            r.transformStartX -= r.inversionFactor * Math.floor(r.xRange / 2),
            r.transformStartY -= r.inversionFactor * Math.floor(r.yRange / 2),
            r.transformStartZ -= r.inversionFactor * Math.floor(r.zRange / 2),
            e >= 0 ? g.splice(e, 1, r) : g.push(r)
        }()
    }
    ;
    var d = function() {
        var t, n = document.createElement("p"), r = {
            webkitTransform: "-webkit-transform",
            OTransform: "-o-transform",
            msTransform: "-ms-transform",
            MozTransform: "-moz-transform",
            transform: "transform"
        };
        document.body.insertBefore(n, null);
        for (var e in r)
            void 0 !== n.style[e] && (n.style[e] = "translate3d(1px,1px,1px)",
            t = window.getComputedStyle(n).getPropertyValue(r[e]));
        return document.body.removeChild(n),
        void 0 !== t && t.length > 0 && "none" !== t
    }();
    document.body.addEventListener("mousemove", a),
    e() && (window.ondeviceorientation = a)
}(window);

var layers = document.querySelectorAll('.js-plaxify')

for (var layer, i = 0; layer = layers[i]; i++) {
    window.plaxify(layer, {
        xRange: layer.getAttribute('data-xrange'),
        yRange: layer.getAttribute('data-yrange'),
        invert: layer.getAttribute('data-invert') === 'true'
    })
}

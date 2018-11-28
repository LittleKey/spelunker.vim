" Version 1.0.0
" Author kamykn
" License VIM LICENSE

scriptencoding utf-8

let s:save_cpo = &cpo
set cpo&vim

function! white_list_javascript#get_white_list()
	" Thank you, @yuki_ycino!
	let l:wl = ['acos', 'acosh', 'activatable', 'vr', 'uri', 'addtrack', 'afterprint', 'alg', 'alink', 'fullscreen', 'arg', 'anim', 'animationcancel', 'animationend', 'animationiteration', 'animationstart', 'antialias', 'args', 'asin', 'asinh', 'atan', 'atanh', 'atob', 'shader', 'worklet', 'audioend', 'audioprocess', 'audiostart', 'authnr', 'autocapitalize', 'autoplay', 'auxclick', 'bitrate', 'backface', 'basefont', 'bdo', 'beforeprint', 'beforeunload', 'bezier', 'bg', 'bigint', 'attrib', 'framebuffer', 'renderbuffer', 'oes', 'blockquote', 'rect', 'br', 'bstr', 'btoa', 'bufferedamountlow', 'byob', 'callbackfn', 'dtmf', 'cancelable', 'canplay', 'canplaythrough', 'cbrt', 'cdm', 'ceil', 'charnum', 'clz', 'cmp', 'cname', 'colgroup', 'colno', 'compassneedscalibration', 'compat', 'tex', 'concat', 'connectionstatechange', 'contextmenu', 'controllerchange', 'coords', 'cp', 'cpx', 'cpy', 'ns', 'biquad', 'cdata', 'convolver', 'iir', 'panner', 'svg', 'seg', 'curveto', 'lineto', 'moveto', 'crv', 'cuechange', 'cx', 'cy', 'datachannel', 'datalist', 'dblclick', 'defs', 'dest', 'devicechange', 'devicelight', 'devicemotion', 'deviceorientation', 'dfactor', 'dfn', 'dh', 'dir', 'dirxml', 'dl', 'doctype', 'dp', 'dq', 'dragend', 'dragenter', 'dragexit', 'dragleave', 'dragover', 'dragstart', 'bufferswebgl', 'dst', 'rgb', 'dt', 'dtx', 'durationchange', 'dw', 'dx', 'dy', 'elt', 'emma', 'enctype', 'ev', 'evt', 'expm', 'fe', 'gaussian', 'feedforward', 'fft', 'fg', 'fieldset', 'figcaption', 'fileno', 'resx', 'resy', 'fontcolor', 'fontsize', 'frameset', 'hz', 'fround', 'fullscreenchange', 'fullscreenerror', 'fx', 'fy', 'gatheringstatechange', 'mipmap', 'callout', 'shaders', 'ctm', 'num', 'rects', 'ashtml', 'keyframes', 'timestamp', 'cpu', 'utc', 'gotpointercapture', 'haptic', 'hashchange', 'hgroup', 'hostname', 'hreflang', 'hspace', 'hw', 'hypot', 'icecandidate', 'icecandidateerror', 'iceconnectionstatechange', 'icegatheringstatechange', 'iceservers', 'idp', 'bom', 'imagedata', 'ime', 'img', 'stylesheet', 'imul', 'ui', 'internalformat', 'ip', 'ir', 'na', 'isolationchange', 'iterable', 'kbd', 'keepalive', 'params', 'keydown', 'keygen', 'keypress', 'keyup', 'kty', 'languagechange', 'lbound', 'li', 'lineno', 'loadeddata', 'loadedmetadata', 'loadend', 'loadstart', 'localcandidate', 'locationbar', 'lostpointercapture', 'lowsrc', 'mapfn', 'framerate', 'mediaquery', 'menubar', 'messageerror', 'mki', 'os', 'mousedown', 'mouseenter', 'mouseleave', 'mousemove', 'mouseout', 'mouseup', 'mousewheel', 'msm', 'pointsx', 'pointsy', 'msneedkey', 'multiline', 'mux', 'nack', 'nav', 'nchars', 'negotiationneeded', 'nomatch', 'noscript', 'notificationclick', 'notificationclose', 'noupdate', 'offscreen', 'ok', 'ol', 'onabort', 'onactivate', 'onactive', 'onaddtrack', 'onafterprint', 'onanimationcancel', 'onanimationend', 'onanimationiteration', 'onanimationstart', 'onaudioend', 'onaudioprocess', 'onaudiostart', 'onauxclick', 'onbeforeprint', 'onbeforeunload', 'onblocked', 'onblur', 'onbounce', 'onboundary', 'onbufferedamountlow', 'oncached', 'oncancel', 'oncandidatewindowhide', 'oncandidatewindowshow', 'oncandidatewindowupdate', 'oncanplay', 'oncanplaythrough', 'onchange', 'onchecking', 'onclick', 'onclose', 'oncompassneedscalibration', 'oncomplete', 'onconnectionstatechange', 'oncontextmenu', 'oncontrollerchange', 'oncopy', 'oncuechange', 'oncut', 'ondatachannel', 'ondblclick', 'ondevicechange', 'ondevicelight', 'ondevicemotion', 'ondeviceorientation', 'ondownloading', 'ondrag', 'ondragend', 'ondragenter', 'ondragexit', 'ondragleave', 'ondragover', 'ondragstart', 'ondrop', 'ondurationchange', 'onemptied', 'onencrypted', 'onend', 'onended', 'onenter', 'onerror', 'onexit', 'onfetch', 'onfinally', 'onfinish', 'onfocus', 'onfulfilled', 'onfullscreenchange', 'onfullscreenerror', 'ongatheringstatechange', 'ongotpointercapture', 'onhashchange', 'onicecandidate', 'onicecandidateerror', 'oniceconnectionstatechange', 'onicegatheringstatechange', 'oninactive', 'oninput', 'oninstall', 'oninvalid', 'onisolationchange', 'onkeydown', 'onkeypress', 'onkeyup', 'onlanguagechange', 'onload', 'onloadeddata', 'onloadedmetadata', 'onloadend', 'onloadstart', 'onlocalcandidate', 'onlostpointercapture', 'onmark', 'onmessage', 'onmessageerror', 'onmousedown', 'onmouseenter', 'onmouseleave', 'onmousemove', 'onmouseout', 'onmouseover', 'onmouseup', 'onmousewheel', 'onmsgesturechange', 'onmsgesturedoubletap', 'onmsgestureend', 'onmsgesturehold', 'onmsgesturestart', 'onmsgesturetap', 'onmsinertiastart', 'onmsneedkey', 'onmspointercancel', 'onmspointerdown', 'onmspointerenter', 'onmspointerleave', 'onmspointermove', 'onmspointerout', 'onmspointerover', 'onmspointerup', 'onmute', 'onnegotiationneeded', 'onnomatch', 'onnotificationclick', 'onnotificationclose', 'onnoupdate', 'onobsolete', 'onoffline', 'ononline', 'onopen', 'onorientationchange', 'onoverconstrained', 'onpagehide', 'onpageshow', 'onpaste', 'onpause', 'onplay', 'onplaying', 'onpointercancel', 'onpointerdown', 'onpointerenter', 'onpointerleave', 'onpointermove', 'onpointerout', 'onpointerover', 'onpointerup', 'onpopstate', 'onprocessorerror', 'onprogress', 'onpush', 'onpushsubscriptionchange', 'onratechange', 'onreadystatechange', 'onrejected', 'onrejectionhandled', 'onremovetrack', 'onreset', 'onresize', 'onresourcetimingbufferfull', 'onresult', 'onresume', 'onscroll', 'onsecuritypolicyviolation', 'onseeked', 'onseeking', 'onselect', 'onselectedcandidatepairchange', 'onshippingaddresschange', 'onshippingoptionchange', 'onshow', 'onsignalingstatechange', 'onsoundend', 'onsoundstart', 'onspeechend', 'onspeechstart', 'onstalled', 'onstart', 'onstatechange', 'onstatsended', 'onstorage', 'onsubmit', 'onsuccess', 'onsuspend', 'onsync', 'ontimeout', 'ontimeupdate', 'ontoggle', 'ontonechange', 'ontouchcancel', 'ontouchend', 'ontouchmove', 'ontouchstart', 'ontrack', 'ontransitioncancel', 'ontransitionend', 'ontransitionrun', 'ontransitionstart', 'onunhandledrejection', 'onunload', 'onunmute', 'onupdatefound', 'onupdateready', 'onupgradeneeded', 'onversionchange', 'onvisibilitychange', 'onvoiceschanged', 'onvolumechange', 'onvrdisplayactivate', 'onvrdisplayblur', 'onvrdisplayconnect', 'onvrdisplaydeactivate', 'onvrdisplaydisconnect', 'onvrdisplayfocus', 'onvrdisplaypointerrestricted', 'onvrdisplaypointerunrestricted', 'onvrdisplaypresentchange', 'onwaiting', 'onwheel', 'onzoom', 'optgroup', 'orientationchange', 'oth', 'overconstrained', 'pagehide', 'pageshow', 'personalbar', 'storei', 'pli', 'pluginspage', 'pname', 'pointercancel', 'pointerdown', 'pointerenter', 'pointerleave', 'pointermove', 'pointerout', 'pointerover', 'pointerup', 'polyline', 'popstate', 'precisiontype', 'premultiplied', 'premultiply', 'primcount', 'processorerror','proto', 'ptime', 'pushsubscriptionchange', 'indeterm', 'microtask', 'radiusx', 'radiusy', 'ratechange', 'readystatechange', 'rejectionhandled', 'removetrack', 'renderbuffertarget', 'renotify', 'replacer', 'resourcetimingbufferfull', 'xml', 'rolloff', 'rp', 'rtcp', 'rx', 'ry', 'safearray', 'samp', 'sctp', 'sdp', 'fmtp', 'securitypolicyviolation', 'seekable', 'seeked', 'selectedcandidatepairchange', 'sfactor', 'shadertype', 'shippingaddresschange', 'shippingoptionchange', 'signalingstatechange', 'sinh', 'sli', 'soundend', 'soundstart', 'speechend', 'speechstart', 'srcdoc', 'srclang', 'srcset', 'ssrc', 'statechange', 'statsended', 'statusbar', 'prog', 'progi', 'stringify', 'dasharray', 'dashoffset', 'linecap', 'linejoin', 'miterlimit', 'subarray', 'substr', 'subtree', 'sw', 'sx', 'sy', 'sym', 'tanh', 'tbody', 'td', 'parameterf', 'parameteri', 'kashida', 'textarea', 'textarget', 'tfoot', 'th', 'thead', 'timeupdate', 'iso', 'tonechange', 'touchcancel', 'touchend', 'touchmove', 'touchstart', 'transitioncancel', 'transitionend', 'transitionrun', 'transitionstart', 'trunc', 'tspan', 'tx', 'ty', 'typemustmatch', 'tz', 'ubound', 'ul', 'unescape', 'unhandledrejection', 'bidi', 'fv', 'unmute', 'unobserve', 'unpause', 'unregister', 'unscopables', 'unshift', 'unsuspend', 'updatefound', 'updateready', 'upgradeneeded', 'urls', 'vd', 'versionchange', 'visibilitychange', 'vlink', 'voiceschanged', 'volumechange', 'vrdisplayactivate', 'vrdisplayblur', 'vrdisplayconnect', 'vrdisplaydeactivate', 'vrdisplaydisconnect', 'vrdisplayfocus', 'vrdisplaypointerrestricted', 'vrdisplaypointerunrestricted', 'vrdisplaypresentchange', 'vspace', 'wbr', 'webdriver', 'rtc', 'writeln', 'xmp', 'xoffset', 'yoffset', 'zfail', 'zpass', 'aes', 'cbc', 'cfb', 'cmac', 'gcm', 'animatable', 'webgl', 'bhx', 'ccw', 'writemask', 'rgba', 'astc', 'khr', 'tc', 'dxt', 'srgb', 'keyframe', 'decr', 'doml', 'domstring', 'numpad', 'dont', 'minmax', 'lod', 'ec', 'ecdh', 'ecdsa', 'apis', 'gequal', 'lbitfield', 'lboolean', 'lclampf', 'lenum', 'lfloat', 'lintptr', 'lsizei', 'lsizeiptr', 'luint', 'htmlbr', 'htmld', 'htmlhr', 'utils', 'htmli', 'htmlli', 'htmlo', 'htmlu', 'hkdf', 'hmac', 'idb', 'incr', 'inuse', 'intl', 'lengthadjust', 'spacingandglyphs', 'lequal', 'ln', 'attribs', 'msfido', 'msgesture', 'keyerr', 'hardwarechange', 'notequal', 'newable', 'pathseg', 'closepath', 'pbkdf', 'perf', 'rtcdtmf', 'dtls', 'rtp', 'rtco', 'rtcrtp', 'fec', 'rtx', 'srtp', 'sdes', 'rsa', 'oaep', 'pss', 'subpixel', 'svga', 'svgfe', 'svgg', 'svgsvg', 'svgt', 'svguri', 'angletype', 'edgemode', 'feblend', 'fecolormatrix', 'huerotate', 'luminancetoalpha', 'fecomponenttransfer', 'fecomposite', 'lengthtype', 'exs', 'px', 'markerunits', 'strokewidth', 'userspaceonuse','meetorslice', 'preserveaspectratio', 'xmaxymax', 'xmaxymid', 'xmaxymin', 'xmidymax', 'xmidymid', 'xmidymin', 'xminymax', 'xminymid', 'xminymin', 'spreadmethod', 'stitchtype', 'nostitch', 'skewx', 'skewy', 'fractalnoise', 'objectboundingbox', 'zoomandpan', 'typekey', 'slotable', 'textpath', 'methodtype', 'spacingtype', 'colorspace', 'vtt', 'wsh', 'authn', 'gl', 'xslt', 'allowpopups', 'arabic', 'activedescendant', 'colcount', 'colindex', 'colspan', 'describedby', 'dropeffect', 'errormessage', 'flowto', 'haspopup', 'keyshortcuts', 'labelledby', 'multiselectable', 'posinset', 'roledescription', 'rowcount', 'rowindex', 'rowspan', 'setsize', 'valuemax', 'valuemin', 'valuenow', 'valuetext', 'autosize', 'basename', 'bbox', 'bdi', 'bivariance', 'blinkfeatures', 'classid', 'disableblinkfeatures', 'disableguestresize', 'disablewebsecurity', 'guestinstance', 'horiz', 'httpreferrer', 'inlist', 'menuitem', 'mixins', 'nodeintegration', 'noindex', 'overline', 'panose', 'playsinline', 'stemh', 'stemv', 'strikethrough', 'unselectable', 'useragent', 'webpreferences', 'webview', 'wmode', 'xlink', 'arcrole', 'xmlns', 'canvashtml', 'lifecycle', 'defaultize', 'detailshtml', 'fc', 'inshtml', 'mixin', 'progresshtml', 'requireable', 'sfc', 'ss']

	return l:wl
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo

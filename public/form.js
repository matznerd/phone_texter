var f = document.createElement("form");
f.setAttribute('method',"post");
f.setAttribute('action',"twilio");

var i = document.createElement("input"); //input element, text
i.setAttribute('type',"text");
i.setAttribute('name',"number");

var d = document.createElement("input"); //input element, hidden
d.setAttribute('type',"hidden");
d.setAttribute('name',"download_url");
d.setAttribute('value',"http://path.com");

var s = document.createElement("input"); //input element, Submit button
s.setAttribute('type',"submit");
s.setAttribute('value',"Submit");

f.appendChild(i);
f.appendChild(i);
f.appendChild(s);

document.getElementsByTagName('body')[0].appendChild(f);
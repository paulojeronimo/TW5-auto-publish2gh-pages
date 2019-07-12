(function(){
"use strict";

/*
Use:

<<paint "text" "green">>
<<paint "text">> (will be red)
<$macrocall $name="paint" color="pink" text="elephant"/>

More: https://groups.google.com/forum/#!topic/tiddlywiki/-p0vamjq3F4
*/

exports.name = "paint";
exports.params = [
        { name: "text" },
        { name: "color" }
];

/*
Run the macro
*/
exports.run = function(text, color) {
    text = text ? text : "IMPORTANT";
    color = color ? color : "red";
    return "<span style='color:" + color + "'>" + text + "</span>";
};

})();
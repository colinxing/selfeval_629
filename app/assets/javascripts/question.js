var elem = document.getElementById("question_qtype");
var elem1 = document.getElementById("question_topic");
elem.onchange = function myFunction(){
    console.log(elem.value);
    var hiddenDiv1 = document.getElementById("opt1");
    hiddenDiv1.style.display = (this.value == "True or False") ? "none":"block";
    var hiddenDiv2 = document.getElementById("opt2");
    hiddenDiv2.style.display = (this.value == "True or False") ? "none":"block";
    var hiddenDiv3 = document.getElementById("opt3");
    hiddenDiv3.style.display = (this.value == "True or False") ? "none":"block";
    var hiddenDiv4 = document.getElementById("opt4");
    hiddenDiv4.style.display = (this.value == "True or False") ? "none":"block";

    var r1 = document.getElementsByClassName("radiobutton");
    for (var i = 2, length = r1.length; i < 4; i++)
    {
        if (elem.value == "True or False")
        {
            //r1[i].checked = false;
            r1[i].style.visibility = "hidden";
        }
        else
        {
            r1[i].style.visibility = "visible";
        }
    }
    document.getElementById('op1').checked = true;
    if (elem.value == "True or False")
    {
        document.getElementById("Option1").firstChild.data = "True";
        document.getElementById("Option2").firstChild.data = "False";
        document.getElementById("Option3").firstChild.data = "";
        document.getElementById("Option4").firstChild.data = "";
    }
    else
    {
        document.getElementById("Option1").firstChild.data = "Option 1";
        document.getElementById("Option2").firstChild.data = "Option 2";
        document.getElementById("Option3").firstChild.data = "Option 3";
        document.getElementById("Option4").firstChild.data = "Option 4";
    }
    //console.log(r1)
};
elem1.onchange = function myFunction1(){
//     console.log(elem.value)
    var hiddenDiv6 = document.getElementById("newtopic");
    hiddenDiv6.style.display = (this.value == "new topic") ? "block":"none";
};
// function myFunction1(){
//     var elem1 = document.getElementById("question_topic");
//     var hiddenDiv6 = document.getElementById("newtopic");
//     hiddenDiv6.style.display = (elem1.value == "new topic") ? "block":"none";
//   }
//function myFunction() {
//    var x1 = document.getElementById("opt1");
//    if (x1.style.display === "none") {
//        x1.style.display = "block";
//    } else {
//        x1.style.display = "none";
//    }
    
//    var x2 = document.getElementById("opt2");
//    if (x2.style.display === "none") {
//        x2.style.display = "block";
//    } else {
//        x2.style.display = "none";
//    }
    
//    var x3 = document.getElementById("opt3");
//    if (x3.style.display === "none") {
//        x3.style.display = "block";
//    } else {
//        x3.style.display = "none";
//    }
//    
//    var x4 = document.getElementById("opt4");
//    if (x4.style.display === "none") {
//        x4.style.display = "block";
//    } else {
//        x4.style.display = "none";
//    }
//}
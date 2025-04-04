function create_dialog(_messages){
    if (instance_exists(obj_dialog)) return;
        
    var _inst = instance_create_depth(0, 0, 0, obj_dialog);
    _inst.messages = _messages;
    _inst.current_message = 0;

}

char_colors = {
    "Cam": c_orange,
    "Congrats": c_yellow,
    "Cross": c_yellow,
    "Singh": c_aqua,
    
}

room1_end = [
{
    name: "Cross",
    msg: "You have reached the end!\nBut there is more."
},
{
    name:"Cross",
    msg: "Please procees to the next area."
},
]

//Remember. If add new Character, need to add colour otherwise it'll crash. 

welcome_dialog = [
{
    name: "Cross",
    msg: "Welcome to the pit."
},
{
    name: "Singh",
    msg: "Thanks!"
},
{
    name: "Cross",
    msg: "Well, it's a cave, but I like to call it the pit."
},
{
  name: "Singh",
  msg: "Okay..."
},
{
    name: "Cross",
    msg: "Can you make it to the end?"
},
]

cam_diag1 = [
{
    name: "Cam",
    msg: "I'm scared to go inside."
},
{
    name:"Cam",
    msg: "Can you try first please?"
}
]
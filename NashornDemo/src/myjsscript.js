function display(){
	var DemoClass=Java.type('com.sapient.js.Demo3');
	var obj=new DemoClass();
	var result=obj.sayHello('sapient trainee');
	print(DemoClass.getDate());
	return result;
}

var res=display();
print(res);
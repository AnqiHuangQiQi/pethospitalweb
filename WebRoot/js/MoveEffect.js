  var id = function(el) {          return document.getElementById(el);        },
       c = id('photo-list');
   if(c) {
       var ul = id('scroll'),
           lis = ul.getElementsByTagName('li'),
           itemCount = lis.length,
           width = lis[0].offsetWidth, //���ÿ��img�����Ŀ��
           marquee = function() {
               c.scrollLeft += 2;
               if(c.scrollLeft % width <= 1){  //�� c.scrollLeft �� width ���ʱ���ѵ�һ��img׷�ӵ������
                   ul.appendChild(ul.getElementsByTagName('li')[0]);
                   c.scrollLeft = 0;
               };
           },
           speed = 600; //��ֵԽ��Խ��
       ul.style.width = width*itemCount + 'px'; //�������������������        
       var timer = setInterval(marquee, speed);
       c.onmouseover = function() {
           clearInterval(timer);
       };
       c.onmouseout = function() {
           timer = setInterval(marquee, speed);
       };
   };// Java Document
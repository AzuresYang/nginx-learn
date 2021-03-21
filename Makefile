
default:	build

clean:
	rm -rf Makefile objs

.PHONY:	default clean

build:
	$(MAKE) -f objs/Makefile

install:
	$(MAKE) -f objs/Makefile install

modules:
	$(MAKE) -f objs/Makefile modules

upgrade:
	/home/rayouyang/net_learn/nginx/nginx-1.19.8/bin/sbin/nginx -t

	kill -USR2 `cat /home/rayouyang/net_learn/nginx/nginx-1.19.8/bin/logs/nginx.pid`
	sleep 1
	test -f /home/rayouyang/net_learn/nginx/nginx-1.19.8/bin/logs/nginx.pid.oldbin

	kill -QUIT `cat /home/rayouyang/net_learn/nginx/nginx-1.19.8/bin/logs/nginx.pid.oldbin`

.PHONY:	build install modules upgrade

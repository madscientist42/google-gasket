#
#  Makefile for Gasket framework and dependent drivers.
#

obj-m	:= gasket.o apex.o

gasket-objs	:= gasket_core.o gasket_ioctl.o gasket_interrupt.o gasket_page_table.o gasket_sysfs.o
apex-objs	:= apex_driver.o


all:
	make -C $(KERNEL_SRC) ARCH=$(ARCH) CROSS_COMPILE=$(CROSS_COMPILE) M=$(PWD) modules

clean:
	make -C $(KERNEL_SRC) ARCH=$(ARCH) CROSS_COMPILE=$(CROSS_COMPILE) M=$(PWD) clean



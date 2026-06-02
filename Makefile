TARGET = br 
INSTALL_DIR = $(PREFIX)/bin

install:
	@chmod +x $(TARGET)
	@cp $(TARGET) $(INSTALL_DIR)
	@echo "> Installed: $(TARGET)"

uninstall:
	@rm -f $(INSTALL_DIR)/$(TARGET)
	@echo "> Uninstalled: $(TARGET)" 

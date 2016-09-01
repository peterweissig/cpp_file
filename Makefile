###############################################################################
#                                                                             #
# Makefile                                                                    #
# ========                                                                    #
#                                                                             #
# Version: 1.1.2                                                              #
# Date   : 01.09.16                                                           #
# Author : Peter Weissig                                                      #
#                                                                             #
# For help or bug report please visit:                                        #
#   https://github.com/peterweissig/cpp_file/                                 #
###############################################################################

NAME_GIT_THIS=file

URL_GIT_BASE=https://github.com/peterweissig/
URL_GIT_THIS=$(URL_GIT_BASE)cpp_$(NAME_GIT_THIS).git

.PHONY : update status push

update:
	@echo ""
	@echo "### update $(NAME_GIT_THIS) ###"
	git pull "$(URL_GIT_THIS)"

status:
	@echo ""
	@echo "### status of $(NAME_GIT_THIS) ###"
	@git status --untracked-files

push:
	@echo ""
	@echo "### pushing of $(NAME_GIT_THIS) ###"
	git push --set-upstream "$(URL_GIT_THIS)" master

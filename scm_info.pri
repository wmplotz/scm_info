

generate_scm_info_header.target = scm_info.h
generate_scm_info_header.commands = echo "Update SCM information header."; \
                                     pushd $$PWD ;\
                                     pwd ; \
                                     $$PWD/make_scm_status ;\
                                     popd

generate_scm_info_header.depends =



QMAKE_EXTRA_TARGETS += generate_scm_info_header
PRE_TARGETDEPS = scm_info.h

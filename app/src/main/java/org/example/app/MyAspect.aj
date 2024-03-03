package org.example;

import org.example.utilities.StringUtils;

public aspect MyAspect {
    pointcut executePointcut() : execution(* org.example.utilities.StringUtils.split(*));

    before() : executePointcut() {
        System.out.println("Before executing StringUtils.split()");
    }
}

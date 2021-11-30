package com.upc.sshnews.util;

import org.springframework.aop.AfterReturningAdvice;

import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Logger;

public class AfterPublish implements AfterReturningAdvice {
    private static final Logger logger = Logger.getLogger(AfterPublish.class.getName());
    @Override
    public void afterReturning(Object o, Method method, Object[] objects, Object o1) throws Throwable {
        Date date = new Date();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String time = simpleDateFormat.format(date);
        logger.info("发表时间是："+time);
    }
}

package com.laputa.netty;

import org.aeonbits.owner.Config;

/**
 * 基于owner实现的配置文件类，功能强大
 * User: Dempe
 * Date: 2015/12/11
 * Time: 17:51
 * To change this template use File | Settings | File Templates.
 */
@Config.Sources("classpath:application.properties")
public interface AppConfig extends Config {

    // *********************system configuration*********************

    @Key("port")
    @DefaultValue("8888")
    int port();

    @DefaultValue("true")
    boolean tcpNoDelay();

    @DefaultValue("true")
    boolean soKeepAlive();

    @Key("common.package")
    @DefaultValue("com.dempe.netty")
    String getPackageName();


    // ***********************application configuration*****************

    /**
     * 可以通过env参数实现不同开发环境的隔离
     *
     * @return
     */
    @Key("env")
    @DefaultValue("uat")
    String env();

    @Key("servers.${env}.appId")
    @DefaultValue("30001")
    int appId();

}

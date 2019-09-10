package com.cyxz.cyshop.domain;

import java.io.Serializable;

/**
 * @author zhy
 * @version 1.0.0
 * @function TODO
 * @date 2019年9月4日下午3:01:42
 * @place 工作地点
 * @remarks TODO
 */
public class RefundOrReturnImg implements Serializable {
    private String id;
    private String return_id;
    private String url;
    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }
    public String getReturn_id() {
        return return_id;
    }
    public void setReturn_id(String return_id) {
        this.return_id = return_id;
    }
    public String getUrl() {
        return url;
    }
    public void setUrl(String url) {
        this.url = url;
    }
    @Override
    public String toString() {
        return "RefundOrReturnImg{" +
                "id='" + id + '\'' +
                ", return_id='" + return_id + '\'' +
                ", url='" + url + '\'' +
                '}';
    }
}

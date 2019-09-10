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
public class SpuImg implements Serializable {
    private String id;
    private String spu_id;
    private String url;
    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }
    public String getSpu_id() {
        return spu_id;
    }
    public void setSpu_id(String spu_id) {
        this.spu_id = spu_id;
    }
    public String getUrl() {
        return url;
    }
    public void setUrl(String url) {
        this.url = url;
    }
    @Override
    public String toString() {
        return "SpuImg{" +
                "id='" + id + '\'' +
                ", spu_id='" + spu_id + '\'' +
                ", url='" + url + '\'' +
                '}';
    }
}

package com.cyxz.cyshop.domain;


import java.io.Serializable;
import java.util.Date;

/**
 * @author lz - PC
 * @date 2019/9/16 - 11:40
 */
public class Comment implements Serializable {


    private String id;

    //sup编号
    private String spu_id;

    //sku编号
    private String sku_id;

    //评论内容
    private String content;

    //评论星级
    private Integer star;

    //用户昵称
    private String member_name;

    //发表时间
    private Date publish_time;

    //是否匿名
    private Integer hide;

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

    public String getSku_id() {
        return sku_id;
    }

    public void setSku_id(String sku_id) {
        this.sku_id = sku_id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Integer getStar() {
        return star;
    }

    public void setStar(Integer star) {
        this.star = star;
    }

    public String getMember_name() {
        return member_name;
    }

    public void setMember_name(String member_name) {
        this.member_name = member_name;
    }

    public Date getPublish_time() {
        return publish_time;
    }

    public void setPublish_time(Date publish_time) {
        this.publish_time = publish_time;
    }

    public Integer getHide() {
        return hide;
    }

    public void setHide(Integer hide) {
        this.hide = hide;
    }

    @Override
    public String toString() {
        return "Comment{" +
                "id='" + id + '\'' +
                ", spu_id='" + spu_id + '\'' +
                ", sku_id='" + sku_id + '\'' +
                ", content='" + content + '\'' +
                ", star=" + star +
                ", member_name='" + member_name + '\'' +
                ", publish_time=" + publish_time +
                ", hide=" + hide +
                '}';
    }
}

package com.thyme.pribankcustmgt.entity.vo;

public class PbcmCustExtpropAdminVo {

    private int propid;
    private String propname;//属性名字
    private String propvalue;//属性对应的值

    public String getPropname() {
        return propname;
    }

    public int getPropid() {
        return propid;
    }

    public void setPropid(int propid) {
        this.propid = propid;
    }

    public String getPropvalue() {
        return propvalue;
    }

    public void setPropname(String propname) {
        this.propname = propname;
    }

    public void setPropvalue(String propvalue) {
        this.propvalue = propvalue;
    }
}



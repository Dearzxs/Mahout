package com.movie.model;

public class person {
    public static final int PAGE_SIZE = 10;//每页记录数
    private String id;
    private String name;
    private String img;
    private String sex;
    private String birthday;
    private String birthplace;
    private String summary;

    public person(String id, String name, String img, String sex, String birthday, String birthplace, String summary) {
        this.id = id;
        this.name = name;
        this.img = img;
        this.sex = sex;
        this.birthday = birthday;
        this.birthplace = birthplace;
        this.summary = summary;
    }

    public person() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getBirthplace() {
        return birthplace;
    }

    public void setBirthplace(String birthplace) {
        this.birthplace = birthplace;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }
}

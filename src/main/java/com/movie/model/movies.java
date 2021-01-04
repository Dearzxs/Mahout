package com.movie.model;

public class movies {
    public static final int PAGE_SIZE = 10;//每页记录数
    public static final int MOVIES_COUNT_SIZE= 31317;//总记录数
    private String id;
    private String name;
    private String year;
    private String rating;
    private String ratingsum;
    private String img;
    private String tags;
    private String summary;
    private String genre;
    private String country;

    public movies() {
    }

    public movies(String id, String name, String year, String rating, String ratingsum, String img, String tags, String summary, String genre, String country) {
        this.id = id;
        this.name = name;
        this.year = year;
        this.rating = rating;
        this.ratingsum = ratingsum;
        this.img = img;
        this.tags = tags;
        this.summary = summary;
        this.genre = genre;
        this.country = country;
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

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public String getRating() {
        return rating;
    }

    public void setRating(String rating) {
        this.rating = rating;
    }

    public String getRatingsum() {
        return ratingsum;
    }

    public void setRatingsum(String ratingsum) {
        this.ratingsum = ratingsum;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getTags() {
        return tags;
    }

    public void setTags(String tags) {
        this.tags = tags;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }
}

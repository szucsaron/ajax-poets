package com.codecool.web.model;

import java.util.Objects;

public final class User extends AbstractModel {

    private final String name;
    private final String password;
    private final String fullName;

    public User(int id, String name, String password, String fullName) {
        super(id);
        this.name = name;
        this.password = password;
        this.fullName = fullName;
    }

    public String getName() {
        return name;
    }

    public String getPassword() {
        return password;
    }

    public String getFullName() {
        return fullName;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        if (!super.equals(o)) return false;
        User user = (User) o;
        return Objects.equals(name, user.name) &&
            Objects.equals(password, user.password);
    }

    @Override
    public int hashCode() {
        return Objects.hash(super.hashCode(), name, password);
    }


}

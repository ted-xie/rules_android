package com.basicapp;

import androidx.room.ColumnInfo;
import androidx.room.Database;
import androidx.room.Delete;
import androidx.room.Entity;
import androidx.room.Insert;
import androidx.room.PrimaryKey;
import androidx.room.Query;
import androidx.room.Room;
import androidx.room.RoomDatabase;
import androidx.annotation.NonNull;

@Entity
public class User {
    @PrimaryKey
    public int uid;

    @ColumnInfo(name = "first_name")
    public String firstName;

    @ColumnInfo(name = "last_name")
    public String lastName;

    public User(int _uid, String _first, String _last) {
        this.uid = _uid;
        this.firstName = _first;
        this.lastName = _last;
    }

    public User() {}
}
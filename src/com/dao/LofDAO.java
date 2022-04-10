package com.dao;

import com.domain.Lof;

import java.util.List;

public interface LofDAO {
    public abstract Lof create(Lof lof)throws Exception;
    public abstract void remove(Lof lof)throws Exception;
    public abstract Lof find(Lof lof)throws Exception;
    public abstract List<Lof> findAll() throws Exception;
    public abstract void update(Lof lof)throws Exception;
}

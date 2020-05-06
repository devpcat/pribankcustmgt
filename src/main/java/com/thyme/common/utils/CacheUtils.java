package com.thyme.common.utils;

import com.github.benmanes.caffeine.cache.Cache;
import com.github.benmanes.caffeine.cache.Caffeine;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import java.util.Objects;
import java.util.concurrent.TimeUnit;

/**
 * @author yuc
 * @time 2020年3月28日21:42:40
 * 使用内存缓存代替redis，实现单点等情况下不用redis
 */
@Component
public class CacheUtils {

    private Cache<String, Object> cache;

    @Value("${cache.expirationTime}")
    private int cacheExpirationTime;
    @Value("${cache.maxsize}")
    private int cacheMaxsize;

    @PostConstruct //指定该方法在对象被创建后马上调用 相当于配置文件中的init-method属性
    public void init() {
        cache = Caffeine.newBuilder()
                .expireAfterWrite(cacheExpirationTime, TimeUnit.MINUTES)
                .maximumSize(cacheMaxsize)
                .build();
    }

    /**
     * 获取验证码信息
     *
     * @param key
     * @return
     */
    public String getCodeVal(String key) {
        // Lookup an entry, or null if not found
        try {
            return Objects.requireNonNull(cache.getIfPresent(key).toString());
        } catch (Exception e) {
            return "";
        }
    }

    /**
     * 保存验证码信息
     *
     * @param key
     * @param val
     */
    public void saveCode(String key, Object val) {
        cache.put(key, val);
    }

    public void setCntPlus(String key) {
        int cnt;
        try {
            cnt = Integer.parseInt(cache.getIfPresent(key).toString());
        } catch (NumberFormatException | NullPointerException e) {
            cnt = 0;
        }
        cache.put(key, String.valueOf(++cnt));
    }

    public int getCnt(String key) {
        int cnt;
        try {
            cnt = Integer.parseInt(cache.getIfPresent(key).toString());
        } catch (NumberFormatException | NullPointerException e) {
            cnt = 0;
        }
        return cnt;
    }

    public void clearKey(String key) {
        try {
            cache.invalidate(key);
        } catch (Exception e) {
        }
    }

}

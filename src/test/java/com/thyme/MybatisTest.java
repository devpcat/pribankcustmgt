package com.thyme;

import cn.hutool.core.io.FileUtil;
import cn.hutool.core.io.resource.ClassPathResource;
import cn.hutool.http.HttpRequest;
import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.thyme.common.base.Constants;
import com.thyme.common.utils.FileUtils;
import com.thyme.pribankcustmgt.entity.PbcmCustBaseinfo;
import com.thyme.pribankcustmgt.mapper.PbcmCustBaseinfoMapper;
import com.thyme.pribankcustmgt.service.PbcmCustBaseinfoService;
import com.thyme.system.dao.SysUserDao;
import com.thyme.system.entity.SysUser;
import lombok.extern.slf4j.Slf4j;
import nl.bitwalker.useragentutils.Browser;
import nl.bitwalker.useragentutils.OperatingSystem;
import nl.bitwalker.useragentutils.UserAgent;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.lionsoul.ip2region.DataBlock;
import org.lionsoul.ip2region.DbConfig;
import org.lionsoul.ip2region.DbSearcher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.test.context.junit4.SpringRunner;

import java.io.File;
import java.util.Date;
import java.util.HashMap;
import java.util.UUID;

/**
 * @author thyme
 * @ClassName MybatisTest
 * @Description TODO
 * @Date 2019/12/10 21:58
 */
@RunWith(SpringRunner.class)
@SpringBootTest
@Slf4j
public class MybatisTest {

    @Autowired
    private SysUserDao userDao;


    @Test
    public void insert() {
        String uuid = UUID.randomUUID().toString().replace("-", "");
        userDao.insert(
                SysUser.builder()
                        .id(uuid)
                        .name("admin")
                        .password("123")
                        .createTime(new Date())
                        .build()
        );
    }

    @Test
    public void password() {
        String encode = new BCryptPasswordEncoder().encode("123");
        System.out.println(encode);
    }


    @Test
    public void testInvoicev1() {
        HashMap<String, String> headers = new HashMap<>();
        headers.put("Content-Type", "application/json; charset=utf-8");
        headers.put("Authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJCREE0RkRXeDQ5cWFyaTlyY1hsMDh6dWJrSzFORkxydiJ9.KH5Afj0s95NHDBAXiGxCKUNn1AT7z7NJuKc-xjQo2Ak");
        HashMap<String, Object> paramMap = new HashMap<>();
        paramMap.put("image", FileUtil.file("E:\\1.jpg"));
        String url = "http://ai.aisino.com:28000/invoicev1";
        String body = HttpRequest.post(url)
                .form(paramMap)
                .addHeaders(headers)
                .execute().body();
        JSONObject jsonObject = JSONObject.parseObject(body);
        System.out.println(jsonObject);
    }

    @Test
    public void testIp() throws Exception {
        DbConfig config = new DbConfig();
        String path = "config/ip2region.db";
        String name = "ip2region.db";
        File file = FileUtils.inputStreamToFile(new ClassPathResource(path).getStream(), name);
        DbSearcher searcher = new DbSearcher(config, file.getPath());
        DataBlock dataBlock = searcher.btreeSearch("127.0.0.1");
        String address = dataBlock.getRegion().replace("0|", "");
        if (address.charAt(address.length() - 1) == '|') {
            address = address.substring(0, address.length() - 1);
        }
        String s = address.equals(Constants.REGION) ? "内网IP" : address;
        System.out.println(s);
    }

    @Test
    public void testSystem() {

    }

    @Autowired
    private PbcmCustBaseinfoMapper pbcmCustBaseinfoMapper;

    @Test
    public void testInsert() {
        PbcmCustBaseinfo pbcmCustBaseinfo = new PbcmCustBaseinfo();
        pbcmCustBaseinfo.setName("狂神");
        int result = pbcmCustBaseinfoMapper.insert(pbcmCustBaseinfo); // 帮我们自动生成id
        System.out.println(result); // 受影响的行数
        System.out.println(pbcmCustBaseinfo); // 发现，id会自动回填
    }

    @Test
    public void testUpdate() {
        PbcmCustBaseinfo pbcmCustBaseinfo = new PbcmCustBaseinfo();
        //pbcmCustBaseinfo.setUserid(10000000);
        pbcmCustBaseinfo.setBirth("2020-01-01");
        pbcmCustBaseinfoMapper.updateById(pbcmCustBaseinfo);
    }

    @Test
    public void testDelete() {
        PbcmCustBaseinfo pbcmCustBaseinfo = new PbcmCustBaseinfo();
        //pbcmCustBaseinfo.setUserid(10000000);
        pbcmCustBaseinfoMapper.deleteById(pbcmCustBaseinfo);
    }

    @Test
    public void testOptimisticLocker() {
        PbcmCustBaseinfo pbcmCustBaseinfo = pbcmCustBaseinfoMapper.selectById(10000001);
        pbcmCustBaseinfo.setCino("A00001");
        pbcmCustBaseinfoMapper.updateById(pbcmCustBaseinfo);
    }

    @Test
    public void testPage() {
        // 参数一：当前页
        // 参数二：页面大小
        // 使用了分页插件之后，所有的分页操作也变得简单的！
        Page<PbcmCustBaseinfo> page = new Page<>(2, 5);
        pbcmCustBaseinfoMapper.selectPage(page, null);
        page.getRecords().forEach(System.out::println);
        System.out.println(page.getTotal());
        System.out.println(page.getCurrent());
        System.out.println(page.getSize());
    }

    @Autowired
    PbcmCustBaseinfoService pbcmCustBaseinfoService;

    @Test
    public void testService(){
        Page<PbcmCustBaseinfo> page = new Page<>(2, 5);
        pbcmCustBaseinfoService.page(page, null);
        page.getRecords().forEach(System.out::println);
        System.out.println(page.getTotal());
        System.out.println(page.getCurrent());
        System.out.println(page.getSize());
    }
}

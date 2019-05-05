package ky.service;

import java.util.List;

import ky.pojo.BaseDict;

/**
 * @author lih's laptop
 *字典数据表持久化接口
 */
public interface BaseDictService {
List<BaseDict> getBaseDictByCode(String code);

}

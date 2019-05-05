package ky.mapper;

import java.util.List;

import ky.pojo.BaseDict;
/**
 * @author lih's laptop
 *字典数据表持久化接口
 */
public interface BaseDictMapper {
List<BaseDict> getBaseDictByCode(String code);

}

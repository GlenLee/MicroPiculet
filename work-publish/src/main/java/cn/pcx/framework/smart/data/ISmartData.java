package cn.pcx.framework.smart.data;

/**
 * Created by glen on 17/06/04.
 * 智能数据对象，提供数据转换、查询、操作的能力，屏蔽异构数据之间的差异
 * 支持值数据、表数据、树型结构数据等，直接用于框架内业务控件
 */
public interface ISmartData {
    /**
     * 设置一个数据源，来源接口要支持 Map、Json、XML、对象、AD、DB、Tree、WebAPI、WebService 等
     * @param dataObj
     */
    void setDataSource(Object dataObj);

    /**
     * 获取源数据
     * @return
     */
    Object getSourceData();

    /**
     * 获取转换为智能对象的数据
     */
    void getSmartData();

    /**
     * 将数据源转换为 Json、XML、Object 等
     */
    Object getCustomData();
}

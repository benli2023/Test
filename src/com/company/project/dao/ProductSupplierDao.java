/*
 * Powered By [rapid-framework]
 * Web Site: http://www.rapid-framework.org.cn
 * Google Code: http://code.google.com/p/rapid-framework/
 * Since 2008 - 2013
 */

package com.company.project.dao;

import java.util.*;


import cn.org.rapid_framework.util.*;
import cn.org.rapid_framework.web.util.*;
import cn.org.rapid_framework.page.*;
import cn.org.rapid_framework.page.impl.*;

import com.company.project.model.*;
import com.company.project.dao.*;
import com.company.project.service.*;
import com.company.project.vo.query.*;
import com.github.springrest.base.*;
import com.github.springrest.util.*;

/**
 * @author badqiu email:badqiu(a)gmail.com
 * @version 1.0
 * @since 1.0
 */


import org.springframework.stereotype.Repository;


@Repository
public class ProductSupplierDao extends BaseIbatisDao<ProductSupplier,java.lang.Long>{
	
	@Override
	public String getIbatisSqlMapNamespace() {
		return "ProductSupplier";
	}
	
	public void saveOrUpdate(ProductSupplier entity) {
		if(entity.getProductSupplierId() == null) 
			save(entity);
		else 
			update(entity);
	}
	
	public Page findPage(ProductSupplierQuery query) {
		return pageQuery("ProductSupplier.findPage",query);
	}
	

}

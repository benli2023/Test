/*
 * Powered By [rapid-framework]
 * Web Site: http://www.rapid-framework.org.cn
 * Google Code: http://code.google.com/p/rapid-framework/
 * Since 2008 - 2013
 */

package com.company.project.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javacommon.base.BaseRestSpringController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cn.org.rapid_framework.page.Page;
import cn.org.rapid_framework.web.scope.Flash;

import com.company.project.model.People;
import com.company.project.service.PeopleManager;
import com.company.project.vo.query.PeopleQuery;

@Controller
@RequestMapping("/people")
public class PeopleController extends
		BaseRestSpringController<People, java.lang.Integer> {
	// 默认多列排序,example: username desc,createTime asc
	protected static final String DEFAULT_SORT_COLUMNS = null;

	private PeopleManager peopleManager;

	private final String LIST_ACTION = "redirect:/people";

	public void setPeopleManager(PeopleManager manager) {
		this.peopleManager = manager;
	}

	/** binder用于bean属性的设置 */
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		binder.registerCustomEditor(Date.class, new CustomDateEditor(
				new SimpleDateFormat("yyyy-MM-dd"), true));
	}

	/**
	 * 增加了@ModelAttribute的方法可以在本controller方法调用前执行,可以存放一些共享变量,如枚举值,或是一些初始化操作
	 */
	@ModelAttribute
	public void init(ModelMap model) {
		model.put("now", new java.sql.Timestamp(System.currentTimeMillis()));
	}

	/** 列表 */
	@RequestMapping
	public String index(ModelMap model, PeopleQuery query,
			HttpServletRequest request, HttpServletResponse response) {
		Page page = this.peopleManager.findPage(query);

		model.addAllAttributes(toModelMap(page, query));
		return "/people/index";
	}

	/** 显示 */
	@RequestMapping(value = "/{id}")
	public String show(ModelMap model, @PathVariable java.lang.Integer id)
			throws Exception {
		People people = (People) peopleManager.getById(id);
		model.addAttribute("people", people);
		return "/people/show";
	}

	/** 进入新增 */
	@RequestMapping(value = "/new")
	public String _new(ModelMap model, People people,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		model.addAttribute("people", people);
		return "/people/new";
	}

	/** 保存新增,@Valid标注spirng在绑定对象时自动为我们验证对象属性并存放errors在BindingResult */
	@RequestMapping(method = RequestMethod.POST)
	public String create(ModelMap model, @Valid People people,
			BindingResult errors, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		if (errors.hasErrors()) {
			return "/people/new";
		}
		people.setRecordDate(new Date());
		peopleManager.save(people);
		Flash.current().success(CREATED_SUCCESS); // 存放在Flash中的数据,在下一次http请求中仍然可以读取数据,error()用于显示错误消息
		return LIST_ACTION;
	}

	/** 编辑 */
	@RequestMapping(value = "/{id}/edit")
	public String edit(ModelMap model, @PathVariable java.lang.Integer id)
			throws Exception {
		People people = (People) peopleManager.getById(id);
		model.addAttribute("people", people);
		return "/people/edit";
	}

	/** 保存更新,@Valid标注spirng在绑定对象时自动为我们验证对象属性并存放errors在BindingResult */
	@RequestMapping(value = "/{id}", method = RequestMethod.PUT)
	public String update(ModelMap model, @PathVariable java.lang.Integer id,
			@Valid People people, BindingResult errors,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		if (errors.hasErrors()) {
			return "/people/edit";
		}

		peopleManager.update(people);
		Flash.current().success(UPDATE_SUCCESS);
		return LIST_ACTION;
	}

	/** 删除 */
	@RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
	public String delete(ModelMap model, @PathVariable java.lang.Integer id) {
		peopleManager.removeById(id);
		Flash.current().success(DELETE_SUCCESS);
		return LIST_ACTION;
	}

	/** 批量删除 */
	@RequestMapping(method = RequestMethod.DELETE)
	public String batchDelete(ModelMap model,
			@RequestParam("items") java.lang.Integer[] items) {
		for (int i = 0; i < items.length; i++) {
			peopleManager.removeById(items[i]);
		}
		Flash.current().success(DELETE_SUCCESS);
		return LIST_ACTION;
	}

}

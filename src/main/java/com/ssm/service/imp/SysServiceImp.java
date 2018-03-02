package com.ssm.service.imp;

import com.ssm.dao.ISysDao;
import com.ssm.dto.Admin;
import com.ssm.dto.Sys_Pers;
import com.ssm.dto.Sys_Role;
import com.ssm.dto.TreeBean;
import com.ssm.service.ISysService;
import com.ssm.shiro.ShiroRealmUtil;
import com.ssm.util.ConstantValue;
import com.ssm.util.PageParam;
import com.ssm.util.PageUtil;
import com.ssm.util.ResponseResult;
import org.apache.commons.lang.StringUtils;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *@Author By Zcc
 *@Description  权限管理业务 包括 用户 角色 权限
 *@Date: 11:03 2017/12/14
 *@WebSite:www.cczblog.cn
 */
@Service
public class SysServiceImp implements ISysService
{
    @Autowired private ISysDao sysDao;
	@Autowired private ShiroRealmUtil shiroRealmUtil;
	@Override
	public Admin selectAdmin(String username) {
		// TODO Auto-generated method stub
		if(!StringUtils.isBlank(username)) {
			return sysDao.selectAdmin(username);
		}
		return null;
	}

	@Override
	public List<Admin> selectAdmins()
	{
		return sysDao.selectAllAdmins();
	}

	@Override
	public List<Map> selectRoles(String adminid)
	{
		if(null==adminid){
			return sysDao.selectAllRoles();
		}else{
			List<Map> maplist=sysDao.selectRolesByAdminId(adminid);
			List<Map> rolelist=sysDao.selectAllRoles();

			for(Map map : rolelist){
				for(Map map1 : maplist){
					if(map.get("role_id").toString().equals(map1.get("role_id").toString())){
						map.put("LAY_CHECKED",true);
						break;
					}else{
						map.put("LAY_CHECKED",false);
					}
				}
			}
			return  rolelist;
		}
	}

	@Override
	public List<Sys_Pers> selectPers(Integer roleid)
	{
		if(null==roleid){
			return sysDao.selectAllPers();
		}else{
			return sysDao.selectPersByRoleId(roleid);
		}
	}

	/**
	 *@Author By Zcc
	 *@Description 该方法只使用于一二级菜单 和三级按钮
	 *@Date: 10:05 2017/12/13
	 *@WebSite:www.cczblog.cn
	 */
	public List<TreeBean> persTreeUtil(Integer roleid)
	{
		List<Sys_Pers> perlist=selectPers(null);//查询所有权限
		List<Sys_Pers> rolePerslist=sysDao.selectPersByRoleId(roleid);//查询角色的权限
		List<TreeBean> parentList = new ArrayList<TreeBean>();
		if(perlist.size()>0){
			for(Sys_Pers beanOne : perlist){
				if(beanOne.getParentid()==0 || beanOne.getParentid()==null){
					TreeBean parent=new TreeBean();
					parent.setTitle(beanOne.getName());
					parent.setValue(beanOne.getId().toString());
					parent.setDisabled(beanOne.getAvailable()==1? false:true);
					//判断是否选中

					parent.setChecked(false);
					for(Sys_Pers per: rolePerslist){
						if(per.getId().toString().equals(beanOne.getId().toString())){
							parent.setChecked(true);
							break;
						}
					}
					//下面看看有没有儿子，女儿之类的 不管了，先定义一个
					List<TreeBean> sonList=new  ArrayList<TreeBean>();
					//我们在循环一下看看
					for(Sys_Pers beantwo : perlist){
						 //找到爸爸？
                         if(beantwo.getParentid()==beanOne.getId()){
							 TreeBean son=new TreeBean();
							 son.setTitle(beantwo.getName());
							 son.setValue(beantwo.getId().toString());
							 son.setDisabled(beantwo.getAvailable()==1? false:true);
							 //判断是否选中
							 son.setChecked(false);
							 for(Sys_Pers per: rolePerslist){
								 if(per.getId().toString().equals(beantwo.getId().toString())){
									 son.setChecked(true);
									 break;
								 }
							 }
							 //下面我们看看 下面又有没有什么按钮之类的 举一反三 还是循环
							 List<TreeBean> btnList=new  ArrayList<TreeBean>();
							 for(Sys_Pers beanThree : perlist)
							 {
								 //找到
								 if (beanThree.getParentid() == beantwo.getId())
								 {
									 TreeBean btn = new TreeBean();
									 btn.setTitle(beanThree.getName());
									 btn.setValue(beanThree.getId().toString());
									 btn.setDisabled(beanThree.getAvailable() == 1 ? false : true);
									 //判断是否选中
									 btn.setChecked(false);
									 for(Sys_Pers per: rolePerslist){
										 if(per.getId().toString().equals(beanThree.getId().toString())){
											 btn.setChecked(true);
											 break;
										 }
									 }
									 List<TreeBean> nullList=new  ArrayList<TreeBean>();
									 btn.setData(nullList);
									 btnList.add(btn);
								 }
							 }
							 son.setData(btnList);
							 sonList.add(son);
						 }
					}
					//把儿子交给爸爸
					parent.setData(sonList);
					parentList.add(parent);
				}
			}
		}
		return parentList;
	}



	@Override
	public ResponseResult saveAdmin(Admin admin)
	{
		ResponseResult res=new ResponseResult();
		res.setSuccess(false);
		if(null!=admin){
			admin.setId(ConstantValue.uuidToString());
			admin.setAvatar("images/xls.jpg");
           //判断颜值 是否为空
			if(admin.getSalt().isEmpty()){
				admin.setSalt(ConstantValue.RandomID());
			}
			admin.setRegistertime(ConstantValue.getNowTimeString());
			String salt=admin.getSalt();
			String pass=admin.getPass();
			//加密次数
			int hashIterations=520;
			//构造方法中：
			//第一个参数：明文，原始密码
			//第二个参数：盐，通过使用随机数
			//第三个参数：散列的次数，比如散列两次，相当 于md5(md5(''));
			Md5Hash md5Hash=new Md5Hash(pass,salt,hashIterations);
			//得到加密后的密码
			String password_md5=md5Hash.toString();
            admin.setPass(password_md5);
            admin.setLocked("0");
            try{
				sysDao.saveAdmin(admin);
				res.setSuccess(true);
				res.setMessage("success");
				res.setErrorcode("200");
				res.setData(null);
			}catch (Exception e){
				res.setSuccess(false);
				res.setMessage("fail");
				res.setErrorcode("500");
				res.setData(null);
			}
			return res;
		}
		return res;
	}

	@Override
	public Boolean asignRoles(String roleids, String adminid) {
		if(!StringUtils.isBlank(roleids) && !StringUtils.isBlank(adminid)){
			try{
				Map map=new HashMap<String,Object>();
			    String[] roleid=roleids.split(",");
				sysDao.deleteRolesByAdminid(adminid);
				for(int i=0;i<roleid.length;i++){
					map.put("adminid",adminid);
					map.put("roleid",roleid[i]);
					sysDao.insertAdminRoles(map);
				}
				shiroRealmUtil.clearCached();
				return true;
			}catch (Exception e){
				return false;
			}
		}
		return false;
	}

	@Override
	public Boolean asignPers(String menusids, Integer roleid) {
		if(!StringUtils.isBlank(menusids) &&  roleid!=null){
			try{
			String[] menusid=menusids.split(",");
			sysDao.deletePersByRoleid(roleid);
			for(int i=0;i<menusid.length;i++){
				Map map=new HashMap<String,Object>();
				map.put("roleid",roleid);
				map.put("menuid",menusid[i]);

					sysDao.insertRolePers(map);

			}
			shiroRealmUtil.clearCached();
			 return true;
			}catch (Exception e){
				return false;
			}
		}
		return false;
	}

	@Override
	public Boolean updateAdminState(Map map) {
		try{
			sysDao.updateAdminState(map);
			shiroRealmUtil.clearCached();
			return true;
		}catch (Exception e){
			return false;
		}

	}

	@Override
	public int saveRole(Sys_Role role) {
		if(null!=role){
			try{
				role.setRole_createtime(ConstantValue.getNowTimeString());
				sysDao.saveRole(role);
				return role.getRole_id();
			}catch (Exception e){
				return -1;
			}

		}
		return 0;
	}

	@Override
	public List<Sys_Pers> selectPersByAdminid(String adminid) {
		if(null!=adminid){
			return sysDao.selectPersByAdminid(adminid);
		}
		return null;
	}

	@Override
	public List<Sys_Pers> selectMenusByAdminid(String adminid) {
		if(!StringUtils.isBlank(adminid)){
			return sysDao.selectMenusByAdminid(adminid);
		}
		return null;
	}

	@Override
	public List<Sys_Pers> getPersTreeGrid(String adminid) {
		List<Sys_Pers> perlist=new ArrayList<Sys_Pers>(0);
		if(StringUtils.isBlank(adminid)){
			perlist=selectPers(null);//查询所有权限
		}else{
			perlist=selectMenusByAdminid(adminid);
		}


		List<Sys_Pers> parentList = new ArrayList<Sys_Pers>();
		if(perlist.size()>0){
			for(Sys_Pers beanOne : perlist){
				if(beanOne.getParentid()==0 || beanOne.getParentid()==null){
					 List<Sys_Pers> sonList=sysDao.selectPersSons(beanOne.getId());
                    //判断是否有子菜单
					  if(sonList.size()>0){
					  	for(Sys_Pers beanTwo : sonList){
					  		List<Sys_Pers> sunlist=sysDao.selectPersSons(beanTwo.getId());
					  		//设置第三级
					  		beanTwo.setChildren(sunlist);
							for(Sys_Pers beanThree : sonList){
								List<Sys_Pers> sanlist=sysDao.selectPersSons(beanThree.getId());
								beanThree.setChildren(sanlist);
							}

						}
					  }
					  beanOne.setChildren(sonList);
					  parentList.add(beanOne);
				}
			}
		}
		return parentList;

	}

	@Override
	public Integer savePermission(Sys_Pers permission) {
		if(null!=permission){
			permission.setAvailable(1);
			String parneids="";
			Sys_Pers parent=sysDao.selectPerById(permission.getParentid());
			if(null==parent){
				permission.setParentid(0);
				permission.setLevel(1);
			}else if(parent.getId()!=null){
				if(permission.getType().equals("menu") && parent.getType().equals("menu") ){
					permission.setLevel(2);
				}else if(permission.getType().equals("pers") || permission.getType().equals("button")  ){
					permission.setLevel(3);
				}
			}
			sysDao.savePermission(permission);
			return permission.getId();
		}
		return -1;
	}

	@Override
	public Boolean delPermission(Integer id) {
		if(id!=null){
			try{
				sysDao.delPermission(id);
				//缓存清除
				shiroRealmUtil.clearCached();
				return true;
			}catch (Exception e){
				return false;
			}

		}
		return false;
	}

	@Override
	public Boolean updatePermission(Sys_Pers permission) {
		if(permission!=null && permission.getId()!=null){
			Sys_Pers parent=sysDao.selectPerById(permission.getParentid());
			try{
				if(null==parent){
					permission.setParentid(0);
					permission.setLevel(1);
				}else if(parent.getId()!=null){
					if(permission.getType().equals("menu") && parent.getType().equals("menu") ){
						permission.setLevel(2);
					}else if(permission.getType().equals("pers") || permission.getType().equals("button")  ){
						permission.setLevel(3);
					}
				}
				permission.setAvailable(1);
				sysDao.updatePermission(permission);
				return true;
			}catch (Exception e){
				return false;
			}
		}
		return false;
	}

	@Override
	public PageUtil<Map> selectLogs(PageParam param) {
		PageUtil<Map> utils=new PageUtil<Map>();
		try {
			utils.setCount(sysDao.selectLogsCounts());
			utils.setData(sysDao.selectLogs(param));
			utils.setMsg("success");
			utils.setCode(0);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			utils.setMsg("error");
			utils.setCode(1);
		}

		return utils;
	}

	@Override
	public Boolean delLogs(String logids) {
		if(!StringUtils.isEmpty(logids)){
             String[] ids=logids.split(",");
             if(ids.length>0){
				 List<Integer> list=new ArrayList<Integer>(ids.length);
				 for(String obj : ids){
				 	list.add(Integer.parseInt(obj));
				 }
				 sysDao.delLogs(list);
			 }
			 return true;

		}
		return false;
	}

}

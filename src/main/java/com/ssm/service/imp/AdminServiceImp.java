package com.ssm.service.imp;

import com.ssm.dto.Sys_Pers;
import com.ssm.dto.Sys_Role;
import com.ssm.dto.TreeBean;
import com.ssm.util.ConstantValue;
import com.ssm.util.ResponseResult;
import org.apache.commons.lang.StringUtils;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.dao.IAdminDao;
import com.ssm.dto.Admin;
import com.ssm.service.IAdminService;

import java.util.ArrayList;
import java.util.List;
/**
 *@Author By Zcc
 *@Description  权限管理业务 包括 用户 角色 权限
 *@Date: 11:03 2017/12/14
 *@WebSite:www.cczblog.cn
 */
@Service
public class AdminServiceImp implements IAdminService {
    @Autowired private IAdminDao adminDao;
	@Override
	public Admin selectAdmin(String username) {
		// TODO Auto-generated method stub
		if(!StringUtils.isBlank(username)) {
			return adminDao.selectAdmin(username);
		}
		return null;
	}

	@Override
	public List<Admin> selectAdmins()
	{
		return adminDao.selectAllAdmins();
	}

	@Override
	public List<Sys_Role> selectRoles(Integer adminid)
	{
		if(null==adminid){
			return adminDao.selectAllRoles();
		}else{
			return adminDao.selectRolesByAdminId(adminid);
		}
	}

	@Override
	public List<Sys_Pers> selectPers(Integer roleid)
	{
		if(null==roleid){
			return adminDao.selectAllPers();
		}else{
			return adminDao.selectPersByRoleId(roleid);
		}
	}

	/**
	 *@Author By Zcc
	 *@Description 该方法只使用于一二级菜单 和三级按钮
	 *@Date: 10:05 2017/12/13
	 *@WebSite:www.cczblog.cn
	 */
	public List<TreeBean> persTreeUtil()
	{
		List<Sys_Pers> perlist=selectPers(null);
		List<TreeBean> parentList = new ArrayList<TreeBean>();
		if(perlist.size()>0){
			for(Sys_Pers beanOne : perlist){
				if(beanOne.getParentid()==0 || beanOne.getParentid()==null){
					TreeBean parent=new TreeBean();
					parent.setTitle(beanOne.getName());
					parent.setValue(beanOne.getId().toString());
					parent.setDisabled(beanOne.getAvailable()==1? false:true);
					parent.setChecked(false);
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
							 son.setChecked(false);

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
									 btn.setChecked(false);
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
				adminDao.saveAdmin(admin);
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

}

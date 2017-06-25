<?php
class CommonAction extends Action{
	
    protected $_admin = array();
    protected $_CONFIG = array();
    protected function _initialize(){	
        $this->_admin = session('admin');
        if (strtolower(MODULE_NAME) != 'login' && strtolower(MODULE_NAME) != 'public') {
            if (empty($this->_admin)) {
                header('Location: ' . u('login/index'));
                die;
            }
            if (strstr($this->_admin['username'], 'demo')) {
                if ($this->isPost()) {
                    $this->baoError('演示站不提供数据操作!');
                }
                if (strtolower(ACTION_NAME) == 'delete') {
                    $this->baoError('演示站不能删除数据！');
                }
                if (strtolower(ACTION_NAME) == 'audit') {
                    $this->baoError('演示站不能审核数据');
                }
                if (strtolower(ACTION_NAME) == 'uninstall') {
                    $this->baoError('演示站不能卸载数据');
                }
            }
            //演示账号不能操作结束
            if ($this->_admin['role_id'] != 1) {
                $this->_admin['menu_list'] = d('RoleMaps')->getMenuIdsByRoleId($this->_admin['role_id']);
                if (strtolower(MODULE_NAME) != 'index') {
                    $menu_action = strtolower(MODULE_NAME . '/' . ACTION_NAME);
                    $menu = d('Menu')->fetchAll();
                    $menu_id = 0;
                    foreach ($menu as $k => $v) {
                        if ($v['menu_action'] == $menu_action) {
                            $menu_id = (int) $k;
                            break;
                        }
                    }
                    if (empty($menu_id) || !isset($this->_admin['menu_list'][$menu_id])) {
                        $this->error('很抱歉您没有权限操作模块:' . $menu[$menu_id]['menu_name']);
                    }
                }
            }
            if ($this->_admin['role_id'] == 2) {
                session('admin', null);
                //销毁session
                $this->error('请不要非法操作', U('admin/login/index'));
            }
			
			/*$ids = D('Admin')->find($this->_admin['admin_id']);//这里只能这么查询，怕有缓存用find
			if ($ids['is_ip'] == 1) {
				//$adminObj = D('Admin');
				//$adminObj->where("admin_id=%d",$ids['admin_id'])->save(array('is_ip'=>0));//更新数据库
                session('admin', null);
                //销毁session
                $this->error('您的账户存在安全风险', U('admin/login/index'));
            }*/
        }
		
        $this->_CONFIG = d('Setting')->fetchAll();
        define('__HOST__', 'http://' . $_SERVER['HTTP_HOST']);
        $this->assign('CONFIG', $this->_CONFIG);
        $this->assign('admin', $this->_admin);

	
        $this->assign('today', TODAY);
        $this->assign('nowtime', NOW_TIME);
    }



    protected function display($templateFile = '', $charset = '', $contentType = '', $content = '', $prefix = ''){
        parent::display($this->parseTemplate($templateFile), $charset, $contentType, $content = '', $prefix = '');
    }
    protected function parseTemplate($template = ''){
        $depr = c('TMPL_FILE_DEPR');
        $template = str_replace(':', $depr, $template);
        define('THEME_PATH', BASE_PATH . '/' . APP_NAME . '/Tpl/');
        define('APP_TMPL_PATH', __ROOT__ . '/' . APP_NAME . '/Tpl/');
        if ('' == $template) {
            $template = strtolower(MODULE_NAME) . $depr . strtolower(ACTION_NAME);
        } else {
            if (false === strpos($template, '/')) {
                $template = strtolower(MODULE_NAME) . $depr . strtolower($template);
            }
        }
        return THEME_PATH . $template . c('TMPL_TEMPLATE_SUFFIX');
    }
    protected function baoSuccess($message, $jumpUrl = '', $time = 3000)
    {
        $str = '<script>';
        $str .= 'parent.success("' . $message . '",' . $time . ',\'jumpUrl("' . $jumpUrl . '")\');';
        $str .= '</script>';
        die($str);
    }
    protected function baoError($message, $time = 3000, $yzm = false)
    {
        $str = '<script>';
        if ($yzm) {
            $str .= 'parent.error("' . $message . '",' . $time . ',"yzmCode()");';
        } else {
            $str .= 'parent.error("' . $message . '",' . $time . ');';
        }
        $str .= '</script>';
        die($str);
    }
    protected function checkFields($data = array(), $fields = array())
    {
        foreach ($data as $k => $val) {
            if (!in_array($k, $fields)) {
                unset($data[$k]);
            }
        }
        return $data;
    }
    protected function ipToArea($_ip)
    {
        return iptoarea($_ip);
    }
	
	 
}
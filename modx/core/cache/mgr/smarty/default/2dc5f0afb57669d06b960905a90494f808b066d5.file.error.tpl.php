<?php /* Smarty version Smarty-3.0.4, created on 2019-07-30 05:48:32
         compiled from "/opt/lampp/htdocs/biletavto/labs/modx/manager/templates/default/error.tpl" */ ?>
<?php /*%%SmartyHeaderCode:863369885d3fbe10aa4e75-63009079%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '2dc5f0afb57669d06b960905a90494f808b066d5' => 
    array (
      0 => '/opt/lampp/htdocs/biletavto/labs/modx/manager/templates/default/error.tpl',
      1 => 1422511912,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '863369885d3fbe10aa4e75-63009079',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<div class="modx_error">
    <h2>Error!</h2>
    
    <p><?php echo (isset($_smarty_tpl->getVariable('_e')->value['message']) ? $_smarty_tpl->getVariable('_e')->value['message'] : null);?>
</p>
    
    <?php if (count((isset($_smarty_tpl->getVariable('_e')->value['errors']) ? $_smarty_tpl->getVariable('_e')->value['errors'] : null))>0){?>
    <p></p>
    <p><strong>Errors:</strong></p>
    <ul>
    <?php  $_smarty_tpl->tpl_vars['error'] = new Smarty_Variable;
 $_from = (isset($_smarty_tpl->getVariable('_e')->value['errors']) ? $_smarty_tpl->getVariable('_e')->value['errors'] : null); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['error']->key => $_smarty_tpl->tpl_vars['error']->value){
?>
        <li><?php echo (isset($_smarty_tpl->tpl_vars['error']->value) ? $_smarty_tpl->tpl_vars['error']->value : null);?>
</li>
    <?php }} ?>
    </ul>
    <?php }?>
</div>
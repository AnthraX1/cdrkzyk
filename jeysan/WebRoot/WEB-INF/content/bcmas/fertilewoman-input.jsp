﻿<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<div class="page">
	<div class="pageContent">
		<form method="post" action="${ctx}/bcmas/fertilewoman!save.action"
			class="pageForm required-validate"
			onsubmit="return validateCallback(this, navTabAjaxDone4Update);">
			<input type="hidden" name="id" value="${id}" />
			<!-- 
			<input type="hidden" name="result4Json.callbackType" value="closeCurrent"/> -->
			<input type="hidden" name="result4Json.navTabId"
				value="nav_fertilewomanmanage" />
			<div class="pageFormContent" layoutH="56">
				<p>
					<label>
						姓名：
					</label>
					<input name="personId" readonly="readonly" type="text"
						size="30" value="${nameh}" />
				</p>
				<p>
					<label>
						建卡日期：
					</label>
					<input name="createDate" onclick="WdatePicker({dateFmt:'yyyy-MM-dd'})" class="Wdate " readonly="readonly"
						type="text" size="30"
						value="<fmt:formatDate value="${createDate}" pattern="yyyy-MM-dd"/>" />
				</p>
				<p>
					<label>
						妇女编码：
					</label>
					<input name="code" readonly="readonly" type="text" size="30" value="${code}" />
				</p>
				<p>
					<label>
						所属区域：
					</label>
					<tags:js.area.selector name="area" value="${area}"></tags:js.area.selector>
				</p>
<div class="divider"></div>

				<p>
					<label>
						婚姻状态：
					</label>
					<tags:js.dict.selector name="womanBasic.marryStatus" value="${womanBasic.marryStatus}" dictCode="JS1015"/>
				</p>
				<p>
					<label>
						夫婚姻状态：
					</label>
					<tags:js.dict.selector name="womanBasic.spouseMarryStatus" value="${womanBasic.spouseMarryStatus}" dictCode="JS1015"/>
				</p>
				<p>
					<label>
						初婚日期：
					</label>
					<input name="womanBasic.firstMarryDate" onclick="WdatePicker({dateFmt:'yyyy-MM-dd'})" class="Wdate " readonly="readonly"
						type="text" size="30"
						value="<fmt:formatDate value="${womanBasic.firstMarryDate}" pattern="yyyy-MM-dd"/>" />
					
				</p>
				<p>
					<label>
						婚变日期：
					</label>
					<input name="womanBasic.marryCryDate" onclick="WdatePicker({dateFmt:'yyyy-MM-dd'})" class="Wdate " readonly="readonly"
						type="text" size="30"
						value="<fmt:formatDate value="${womanBasic.marryCryDate}" pattern="yyyy-MM-dd"/>" />
					
				</p>
<div class="divider"></div>
				<p>
					<label>
						领光荣证日期：
					</label>
					<input name="womanBasic.getGrzDate" onclick="WdatePicker({dateFmt:'yyyy-MM-dd'})" class="Wdate " readonly="readonly"
						type="text" size="30"
						value="<fmt:formatDate value="${womanBasic.getGrzDate}" pattern="yyyy-MM-dd"/>" />
					
				</p>
				<p>
					<label>
						安排二孩原因：
					</label>
					<input name="womanBasic.planChild2Cause" type="text" size="30"
						value="${womanBasic.planChild2Cause}" />
				</p>
				<p>
					<label>
						安排二孩日期：
					</label>
					<input name="womanBasic.planChild2Date" onclick="WdatePicker({dateFmt:'yyyy-MM-dd'})" class="Wdate " readonly="readonly"
						type="text" size="30"
						value="<fmt:formatDate value="${womanBasic.planChild2Date}" pattern="yyyy-MM-dd"/>" />
					
				</p>
				<p>
					<label>
						安排再生原因：
					</label>
					<input name="womanBasic.planBear2Cause" type="text" size="30"
						value="${womanBasic.planBear2Cause}" />
				</p>
				<p>
					<label>
						安排再生日期：
					</label>
					<input name="womanBasic.planBear2Date" onclick="WdatePicker({dateFmt:'yyyy-MM-dd'})" class="Wdate " readonly="readonly"
						type="text" size="30"
						value="<fmt:formatDate value="${womanBasic.planBear2Date}" pattern="yyyy-MM-dd"/>" />
					
				</p>
<div class="divider"></div>
				<p>
					<label>
						领流动证类型：
					</label>
					<input name="womanBasic.getLdzType" class="digits" type="text" size="30"
						value="${womanBasic.getLdzType}" />
				</p>
				<p>
					<label>
						领流动证日期：
					</label>
					<input name="womanBasic.getLdzDate" onclick="WdatePicker({dateFmt:'yyyy-MM-dd'})" class="Wdate " readonly="readonly"
						type="text" size="30"
						value="<fmt:formatDate value="${womanBasic.getLdzDate}" pattern="yyyy-MM-dd"/>" />
					
				</p>
				<p>
					<label>
						健康状况：
					</label>
					<input name="womanBasic.healthStatus" class="digits" type="text" size="30"
						value="${womanBasic.healthStatus}" />
				</p><!-- 
				<p>
					<label>
						注销类型：
					</label>
					<input name="womanBasic.cancelType" class="digits" type="text" size="30"
						value="${womanBasic.cancelType}" />
				</p>
				<p>
					<label>
						注销日期：
					</label>
					<input name="womanBasic.cancelDate" onclick="WdatePicker({dateFmt:'yyyy-MM-dd'})" class="Wdate " readonly="readonly"
						type="text" size="30"
						value="<fmt:formatDate value="${womanBasic.cancelDate}" pattern="yyyy-MM-dd"/>" />
					
				</p> -->
				<p>
					<label>
						备注：
					</label>
					<input name="womanBasic.remark" type="text" size="30" value="${womanBasic.remark}" />
				</p>
<div class="divider"></div>
				<p>
					<label>
						计生证明号：
					</label>
					<input name="womanBasic.certCode" type="text" size="30" value="${womanBasic.certCode}" />
				</p>
				<p>
					<label>
						计生证有效期：
					</label>
					<input name="womanBasic.certDate" onclick="WdatePicker({dateFmt:'yyyy-MM-dd'})" class="Wdate " readonly="readonly"
						type="text" size="30"
						value="<fmt:formatDate value="${womanBasic.certDate}" pattern="yyyy-MM-dd"/>" />
					
				</p>
<div class="divider"></div>
				<p>
					<label>
						卡片状态：
					</label>
					<tags:js.dict.selector name="cardStatus" value="${cardStatus}" dictCode="JS040"/>
				</p>
			</div>
			<div class="formBar">
				<ul>
					<li>
						<div class="buttonActive">
							<div class="buttonContent">
								<button type="submit">
									保存
								</button>
							</div>
						</div>
					</li>
					<li>
						<div class="button">
							<div class="buttonContent">
								<button type="Button" onclick="navTab.closeCurrentTab()">
									取消
								</button>
							</div>
						</div>
					</li>
				</ul>
			</div>
		</form>
	</div>
</div>
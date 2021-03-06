﻿<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<div class="page">
	<div class="pageContent">
		<form method="post" action="${ctx}/bcmas/bcscertcheck!save.action"
			class="pageForm required-validate"
			onsubmit="return validateCallback(this, navTabAjaxDone4Update);">
			<input type="hidden" name="id" value="${id}" />
			<input type="hidden" name="master.dwz_bcsLookup.bcsId" value="${bcs.id}" />
			<!-- 
			<input type="hidden" name="result4Json.callbackType" value="closeCurrent"/> -->
			<input type="hidden" name="result4Json.navTabId"
				value="nav_bcscertcheckmanage" />
			<div class="pageFormContent" layoutH="56">
				<p>
					<label>
						妇女姓名：
					</label>
					<input name="master.dwz_bcsLookup.nameh" class="required" type="text" size="30"
						value="${bcs.fertileWoman.nameh}" readonly="readonly" />
				</p>
				<p>
					<label>
						妇女编号：
					</label>
					<input name="master.dwz_bcsLookup.code" readonly="readonly" type="text" size="30"
						value="${bcs.fertileWoman.code}" />
				</p>
				<div class="divider"></div>
				<p>
					<label>
						证书编号：
					</label>
					<input class="required" name="master.dwz_bcsLookup.certCode" readonly="readonly" type="text" size="30"
						value="${bcs.certCode}" />
					<a class="btnLook"
						href="${ctx}/bcmas/bcscert!list4lookup.action"
						lookupGroup="master" lookupName="bcsLookup" >查找证书</a>
				</p>
				<p>
					<label>
						发证机关：
					</label>
					<input name="master.dwz_bcsLookup.issOrg" readonly="readonly" type="text" size="30"
						value="${bcs.issOrg}" />
				</p>
				<p>
					<label>
						发证日期：
					</label>
					<input name="master.dwz_bcsLookup.issDate" readonly="readonly" type="text" size="30"
						value="<fmt:formatDate value="${bcs.issDate}" pattern="yyyy-MM-dd"/>" />
				</p>
				<p>
					<label>
						发证机关地址：
					</label>
					<input name="master.dwz_bcsLookup.issOrgAddress" readonly="readonly" type="text" size="30"
						value="${bcs.issOrgAddress}" />
				</p>
				<p>
					<label>
						邮政编码：
					</label>
					<input name="master.dwz_bcsLookup.zipCode" readonly="readonly" type="text" size="30"
						value="${bcs.zipCode}" />
				</p>
				<p>
					<label>
						电话：
					</label>
					<input name="master.dwz_bcsLookup.tel" readonly="readonly" type="text" size="30" value="${bcs.tel}" />
				</p>
				<p>
					<label>
						经办人：
					</label>
					<input name="master.dwz_bcsLookup.agent" readonly="readonly" type="text" size="30"
						value="${bcs.agent}" />
				</p>
				<p>
					<label>
						照片：
					</label>
					<input name="master.dwz_bcsLookup.photo" readonly="readonly" type="text" size="30"
						value="${bcs.photo}" />
				</p>
				<div class="divider"></div>
				<p style="width: 98%">
					<label>
						内容：
					</label>
					<input name="content" type="text" size="100" value="${content}" />
				</p>
				<p>
					<label>
						日期：
					</label>
					<input name="dateh" onclick="WdatePicker({dateFmt:'yyyy-MM-dd'})" class="Wdate " readonly="readonly" type="text"
						size="30"
						value="<fmt:formatDate value="${dateh}" pattern="yyyy-MM-dd"/>" />
					
				</p>
				<p>
					<label>
						经办人：
					</label>
					<input name="agent" type="text" size="30" value="${agent}" />
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
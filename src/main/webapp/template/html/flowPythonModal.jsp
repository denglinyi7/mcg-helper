<!-- 
/*
 * @Copyright (c) 2018 缪聪(mcg-helper@qq.com)
 * 
 * Licensed under the Apache License, Version 2.0 (the "License");  
 * you may not use this file except in compliance with the License.  
 * You may obtain a copy of the License at  
 *     
 *     http://www.apache.org/licenses/LICENSE-2.0  
 *     
 * Unless required by applicable law or agreed to in writing, software  
 * distributed under the License is distributed on an "AS IS" BASIS,  
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
 * See the License for the specific language governing permissions and  
 * limitations under the License.
 */
 -->
 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="container-fluid" >
	<div class="row">
		<div class="col-md-12">
			<ul class="nav nav-tabs" role="tablist">
				<li role="presentation" class="active"><a href="#${modalId }_pythonProperty" data-toggle="tab">属性</a></li>
			  	<li role="presentation"><a href="#${modalId }_corePython" data-toggle="tab">源代码</a></li>
			  	<li role="presentation"><a href="#${modalId }_explain" data-toggle="tab">说明</a></li>
			</ul>
		</div>
	</div>

	<div class="row margin_top">
		<div class="col-md-12">
			<form id="${modalId }_pythonForm" class="form-horizontal" role="form">
				<div class="form-body">
					<div id="myTabContent" class="tab-content">
						<div class="tab-pane fade in active" id="${modalId }_pythonProperty">
							<div class="form-group">
								<label class="col-sm-2 control-label">控件名称</label>
								<div class="col-sm-4">
									<div class="fg-line">
										<input type="hidden" id="${modalId }_modalId" name="id" value="${modalId }" />
										<input type="text" id="${modalId }_name" name="pythonProperty[name]" class="form-control"  />
									</div>
								</div>
								<label class="col-sm-1 control-label">控件KEY</label>
								<div class="col-sm-4">
									<div class="fg-line">
										<input type="text" id="${modalId }_key" name="pythonProperty[key]" class="form-control"  />
									</div>
								</div>									
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">脚本描述</label>
								<div class="col-sm-9">
									<div class="fg-line">
										<textarea id="${modalId }_pythonDesc" name="pythonProperty[pythonDesc]" rows="5" cols="" class="form-control"></textarea>
									</div>
								</div>
							</div>								
						</div>
						<div class="tab-pane fade" id="${modalId }_corePython">
							<div class="form-group">
								<div class="col-sm-12">
									<pre id="${modalId }_editor" style="min-height:300px"></pre>
								</div>
							</div>
						</div>
						<div class="tab-pane fade" id="${modalId }_explain">
							<div class="form-group">
								<div class="col-sm-12">
									<div class="fg-line">
										业务数据处理控件，流程执行时会自动执行main方法，其param参数为所有父级控件的运行值，采用fastjson，
										可强转换为JSONObject，JSONArray对象方法操作json，该控件中可执行python语言，将处理后的JSON对象结果返回，
										可在源代码编辑器中按下ctrl+enter键切换全屏。
									</div>
								</div>
							</div>
						</div>							
					</div>
				</div>
			</form>
		</div>
	</div>
</div>	
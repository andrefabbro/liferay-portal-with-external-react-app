<link href="${chunkCss.getData()}" rel="stylesheet">
<div id="${mainDivName.getData()}"></div>
<script>
${JavascriptInline.getData()}
</script>

<#if chunkJs.getSiblings()?has_content>
	<#list chunkJs.getSiblings() as cur_chunkJs>
	    <script src="${cur_chunkJs.getData()}"></script>
	</#list>
</#if>
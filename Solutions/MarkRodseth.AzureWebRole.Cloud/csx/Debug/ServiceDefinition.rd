<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="MarkRodseth.AzureWebRole" generation="1" functional="0" release="0" Id="ac033c02-78d1-4a19-9608-ee9ea8616723" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="MarkRodseth.AzureWebRoleGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="MarkRodseth.AzureWebRole.Web:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/MarkRodseth.AzureWebRole/MarkRodseth.AzureWebRoleGroup/LB:MarkRodseth.AzureWebRole.Web:Endpoint1" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="MarkRodseth.AzureWebRole.Web:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/MarkRodseth.AzureWebRole/MarkRodseth.AzureWebRoleGroup/MapMarkRodseth.AzureWebRole.Web:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="MarkRodseth.AzureWebRole.WebInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/MarkRodseth.AzureWebRole/MarkRodseth.AzureWebRoleGroup/MapMarkRodseth.AzureWebRole.WebInstances" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:MarkRodseth.AzureWebRole.Web:Endpoint1">
          <toPorts>
            <inPortMoniker name="/MarkRodseth.AzureWebRole/MarkRodseth.AzureWebRoleGroup/MarkRodseth.AzureWebRole.Web/Endpoint1" />
          </toPorts>
        </lBChannel>
      </channels>
      <maps>
        <map name="MapMarkRodseth.AzureWebRole.Web:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/MarkRodseth.AzureWebRole/MarkRodseth.AzureWebRoleGroup/MarkRodseth.AzureWebRole.Web/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapMarkRodseth.AzureWebRole.WebInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/MarkRodseth.AzureWebRole/MarkRodseth.AzureWebRoleGroup/MarkRodseth.AzureWebRole.WebInstances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="MarkRodseth.AzureWebRole.Web" generation="1" functional="0" release="0" software="C:\Projects\POC\MarkRodseth.AzureWebRole\Solutions\MarkRodseth.AzureWebRole.Cloud\csx\Debug\roles\MarkRodseth.AzureWebRole.Web" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="1792" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="80" />
            </componentports>
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;MarkRodseth.AzureWebRole.Web&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;MarkRodseth.AzureWebRole.Web&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/MarkRodseth.AzureWebRole/MarkRodseth.AzureWebRoleGroup/MarkRodseth.AzureWebRole.WebInstances" />
            <sCSPolicyUpdateDomainMoniker name="/MarkRodseth.AzureWebRole/MarkRodseth.AzureWebRoleGroup/MarkRodseth.AzureWebRole.WebUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/MarkRodseth.AzureWebRole/MarkRodseth.AzureWebRoleGroup/MarkRodseth.AzureWebRole.WebFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyUpdateDomain name="MarkRodseth.AzureWebRole.WebUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyFaultDomain name="MarkRodseth.AzureWebRole.WebFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="MarkRodseth.AzureWebRole.WebInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="5e6bef64-ab8a-49ac-a0b7-62f2d1f2d239" ref="Microsoft.RedDog.Contract\ServiceContract\MarkRodseth.AzureWebRoleContract@ServiceDefinition">
      <interfacereferences>
        <interfaceReference Id="a9480841-6b72-4ace-9634-96c17654ce26" ref="Microsoft.RedDog.Contract\Interface\MarkRodseth.AzureWebRole.Web:Endpoint1@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/MarkRodseth.AzureWebRole/MarkRodseth.AzureWebRoleGroup/MarkRodseth.AzureWebRole.Web:Endpoint1" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>
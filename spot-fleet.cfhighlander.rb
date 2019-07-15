CfhighlanderTemplate do
  Name 'spot-fleet'
  Description "spot-fleet - #{component_version}"

  Parameters do
    ComponentParam 'EnvironmentName', 'dev', isGlobal: true
    ComponentParam 'EnvironmentType', 'development', allowedValues: ['development','production'], isGlobal: true
    ComponentParam 'VPCId', type: 'AWS::EC2::VPC::Id'
    ComponentParam 'KeyName', '', type: 'AWS::EC2::KeyPair::KeyName'
    ComponentParam 'Ami', type: 'AWS::EC2::Image::Id'
    ComponentParam 'SubnetIds', type: 'List<AWS::EC2::Subnet::Id>'
    
    ComponentParam 'TargetCapacity', 0
  end


end

object dmMain: TdmMain
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 928
  Top = 285
  Height = 150
  Width = 215
  object dbConn: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=27082001;Persist Security Info=True' +
      ';User ID=sa;Initial Catalog=MAP;Data Source=.;Use Procedure for ' +
      'Prepare=1;Auto Translate=True;Packet Size=4096;Workstation ID=SO' +
      'LIHINHO;Use Encryption for Data=False;Tag with column collation ' +
      'when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 12
    Top = 12
  end
  object quUnit: TADOQuery
    Connection = dbConn
    Parameters = <>
    Left = 12
    Top = 56
  end
end

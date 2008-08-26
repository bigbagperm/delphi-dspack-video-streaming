object dmMain: TdmMain
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 627
  Top = 108
  Height = 185
  Width = 229
  object fgMain: TFilterGraph
    Mode = gmCapture
    GraphEdit = True
    Left = 16
    Top = 16
  end
  object sgVideo: TSampleGrabber
    OnBuffer = sgVideoBuffer
    FilterGraph = fgMain
    MediaType.data = {
      7669647300001000800000AA00389B715955593200001000800000AA00389B71
      FFFFFFFF00000000010000000000000000000000000000000000000000000000
      0000000000000000}
    Left = 112
    Top = 16
  end
  object dsfCam: TFilter
    BaseFilter.data = {
      EC00000037D415438C5BD011BD3B00A0C911CE86D80000004000640065007600
      6900630065003A0070006E0070003A005C005C003F005C007500730062002300
      7600690064005F00300034003600640026007000690064005F00300038006200
      300026006D0069005F0030003000230036002600320035003400340065003700
      64006200260030002600300030003000300023007B0036003500650038003700
      3700330064002D0038006600350036002D0031003100640030002D0061003300
      620039002D003000300061003000630039003200320033003100390036007D00
      5C0067006C006F00620061006C000000}
    FilterGraph = fgMain
    Left = 64
    Top = 16
  end
  object TCPServer: TIdTCPServer
    Bindings = <>
    CommandHandlers = <>
    CommandHandlersEnabled = False
    DefaultPort = 0
    Greeting.NumericCode = 0
    MaxConnectionReply.NumericCode = 0
    OnExecute = TCPServerExecute
    ReplyExceptionCode = 0
    ReplyTexts = <>
    ReplyUnknownCommand.NumericCode = 0
    ThreadMgr = ThdMgr
    Left = 16
    Top = 72
  end
  object ThdMgr: TIdThreadMgrDefault
    Left = 64
    Top = 72
  end
end

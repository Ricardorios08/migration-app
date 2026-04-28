VERSION 5.00
Begin VB.Form frmAcercaDe
  Caption = "Acerca de InfoGov"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "frmAcercaDe.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  ClientLeft = 60
  ClientTop = 450
  ClientWidth = 9585
  ClientHeight = 6705
  Begin VB.CommandButton cmdSysInfo
    Caption = "&Info. del sistema..."
    Left = 5640
    Top = 6120
    Width = 1485
    Height = 345
    TabIndex = 8
  End
  Begin VB.CommandButton cmdOK
    Caption = "Aceptar"
    Left = 5640
    Top = 5520
    Width = 1500
    Height = 345
    TabIndex = 7
    Default = -1  'True
    Cancel = -1  'True
  End
  Begin VB.PictureBox picIcon
    Picture = "frmAcercaDe.frx":08CA
    Left = 360
    Top = 240
    Width = 3045
    Height = 3045
    TabIndex = 0
    ScaleMode = 0
    ScaleLeft = 0
    ScaleTop = 0
    ScaleWidth = 2138.605
    ScaleHeight = 2138.605
    AutoRedraw = False
    FontTransparent = True
    AutoSize = -1  'True
    ClipControls = 0   'False
  End
  Begin VB.Label Label5
    Caption = "Téc. Mauricio Bastian - mauriciobastian@infogov.com.ar"
    Left = 360
    Top = 3720
    Width = 5175
    Height = 255
    TabIndex = 4
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9,75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Line Line1
    Index = 0
    BorderColor = &HFFFFFF&
    X1 = 360
    Y1 = 5160
    X2 = 7200
    Y2 = 5160
    BorderWidth = 2
  End
  Begin VB.Label lblDescription
    Caption = "Contabilidad y Presupuesto"
    ForeColor = &H0&
    Left = 4200
    Top = 720
    Width = 2955
    Height = 330
    TabIndex = 1
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9,75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Line Line1
    Index = 1
    BorderColor = &H808080&
    X1 = 360
    Y1 = 5280
    X2 = 7200
    Y2 = 5280
    BorderStyle = 6 'Inside Solid
  End
  Begin VB.Image imgMySQL
    Picture = "frmAcercaDe.frx":23E9
    Left = 360
    Top = 5520
    Width = 1875
    Height = 960
  End
  Begin VB.Label Label2
    Caption = "Contacto:"
    Left = 360
    Top = 2520
    Width = 975
    Height = 255
    TabIndex = 3
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9,75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label3
    Caption = "Lic. Mauro Moreno - mauromoreno@infogov.com.ar"
    Left = 360
    Top = 4680
    Width = 4695
    Height = 255
    TabIndex = 6
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9,75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label4
    Caption = "Lic. Mario Gili - mariogili@infogov.com.ar"
    Left = 360
    Top = 4200
    Width = 4215
    Height = 255
    TabIndex = 5
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9,75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label lblVersion
    Caption = "Versión:"
    Left = 4200
    Top = 1200
    Width = 2775
    Height = 255
    TabIndex = 2
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9,75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "frmAcercaDe"


Private Sub cmdSysInfo_Click() '940D30
  'Data Table: 4213D4
  loc_940D28: Call StartSysInfo()
  loc_940D2D: ExitProcHresult
  loc_940D2E: PopAdLd4
End Sub

Private Sub cmdOK_Click() '956878
  'Data Table: 4213D4
  loc_956860: ILdRf Me
  loc_956863: FStAdNoPop
  loc_956867: ImpAdLdRf MemVar_C44F9C
  loc_95686A: NewIfNullPr Me
  loc_95686D: Me.Global.Unload from_stack_1
  loc_956872: FFree1Ad var_88
  loc_956875: ExitProcHresult
End Sub

Private Sub Form_Load() '9C50E4
  'Data Table: 4213D4
  loc_9C5034: LitStr "Versión "
  loc_9C5037: FLdRfVar var_8A
  loc_9C503A: FLdRfVar var_88
  loc_9C503D: ImpAdLdRf MemVar_C44F9C
  loc_9C5040: NewIfNullPr Me
  loc_9C5043:  = Me.Global.App
  loc_9C5048: FLdPr var_88
  loc_9C504B:  = App.Major
  loc_9C5050: FLdI2 var_8A
  loc_9C5053: CStrUI1
  loc_9C5055: FStStrNoPop var_90
  loc_9C5058: ConcatStr
  loc_9C5059: FStStrNoPop var_94
  loc_9C505C: LitStr "."
  loc_9C505F: ConcatStr
  loc_9C5060: FStStrNoPop var_A0
  loc_9C5063: FLdRfVar var_9A
  loc_9C5066: FLdRfVar var_98
  loc_9C5069: ImpAdLdRf MemVar_C44F9C
  loc_9C506C: NewIfNullPr Me
  loc_9C506F:  = Me.Global.App
  loc_9C5074: FLdPr var_98
  loc_9C5077:  = App.Minor
  loc_9C507C: FLdI2 var_9A
  loc_9C507F: CStrUI1
  loc_9C5081: FStStrNoPop var_A4
  loc_9C5084: ConcatStr
  loc_9C5085: FStStrNoPop var_A8
  loc_9C5088: LitStr "."
  loc_9C508B: ConcatStr
  loc_9C508C: FStStrNoPop var_B4
  loc_9C508F: FLdRfVar var_AE
  loc_9C5092: FLdRfVar var_AC
  loc_9C5095: ImpAdLdRf MemVar_C44F9C
  loc_9C5098: NewIfNullPr Me
  loc_9C509B:  = Me.Global.App
  loc_9C50A0: FLdPr var_AC
  loc_9C50A3:  = App.Revision
  loc_9C50A8: FLdI2 var_AE
  loc_9C50AB: CStrUI1
  loc_9C50AD: FStStrNoPop var_B8
  loc_9C50B0: ConcatStr
  loc_9C50B1: FStStrNoPop var_BC
  loc_9C50B4: FLdPrThis
  loc_9C50B5: VCallAd Control_ID_lblVersion
  loc_9C50B8: FStAdFunc var_C0
  loc_9C50BB: FLdPr var_C0
  loc_9C50BE: Me.Caption = from_stack_1
  loc_9C50C3: FFreeStr var_90 = "": var_94 = "": var_A0 = "": var_A4 = "": var_A8 = "": var_B4 = "": var_B8 = ""
  loc_9C50D6: FFreeAd var_88 = "": var_98 = "": var_AC = ""
  loc_9C50E1: ExitProcHresult
  loc_9C50E2: FStFPR4 arg_5C00
End Sub

Public Sub StartSysInfo() '9D57E0
  'Data Table: 4213D4
  loc_9D56F8: OnErrorGoto loc_9D57B3
  loc_9D56FB: FLdRfVar var_9A
  loc_9D56FE: FLdRfVar var_8C
  loc_9D5701: LitStr "PATH"
  loc_9D5704: FStStrCopy var_98
  loc_9D5707: FLdRfVar var_98
  loc_9D570A: LitStr "SOFTWARE\Microsoft\Shared Tools\MSINFO"
  loc_9D570D: FStStrCopy var_94
  loc_9D5710: FLdRfVar var_94
  loc_9D5713: LitI4 -2147483646
  loc_9D5718: PopTmpLdAdStr var_90
  loc_9D571B: from_stack_5v = GetKeyValue(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_9D5720: FLdI2 var_9A
  loc_9D5723: FFreeStr var_94 = ""
  loc_9D572A: BranchF loc_9D5730
  loc_9D572D: Branch loc_9D579D
  loc_9D5730: FLdRfVar var_9A
  loc_9D5733: FLdRfVar var_8C
  loc_9D5736: LitStr "MSINFO"
  loc_9D5739: FStStrCopy var_98
  loc_9D573C: FLdRfVar var_98
  loc_9D573F: LitStr "SOFTWARE\Microsoft\Shared Tools Location"
  loc_9D5742: FStStrCopy var_94
  loc_9D5745: FLdRfVar var_94
  loc_9D5748: LitI4 -2147483646
  loc_9D574D: PopTmpLdAdStr var_90
  loc_9D5750: from_stack_5v = GetKeyValue(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_9D5755: FLdI2 var_9A
  loc_9D5758: FFreeStr var_94 = ""
  loc_9D575F: BranchF loc_9D579A
  loc_9D5762: LitI4 0
  loc_9D5767: ILdRf var_8C
  loc_9D576A: LitStr "\MSINFO32.EXE"
  loc_9D576D: ConcatStr
  loc_9D576E: CVarStr var_AC
  loc_9D5771: ImpAdCallI2 push Dir(, )
  loc_9D5776: FStStrNoPop var_94
  loc_9D5779: LitStr vbNullString
  loc_9D577C: NeStr
  loc_9D577E: FFree1Str var_94
  loc_9D5781: FFree1Var var_AC = ""
  loc_9D5784: BranchF loc_9D5794
  loc_9D5787: ILdRf var_8C
  loc_9D578A: LitStr "\MSINFO32.EXE"
  loc_9D578D: ConcatStr
  loc_9D578E: FStStr var_8C
  loc_9D5791: Branch loc_9D5797
  loc_9D5794: Branch loc_9D57B3
  loc_9D5797: Branch loc_9D579D
  loc_9D579A: Branch loc_9D57B3
  loc_9D579D: LitI4 1
  loc_9D57A2: FLdRfVar var_8C
  loc_9D57A5: CVarRef
  loc_9D57AA: ImpAdCallFPR4 push Shell(, )
  loc_9D57AF: FStFPR8 var_C4
  loc_9D57B2: ExitProcHresult
  loc_9D57B3: LitVar_Missing var_124
  loc_9D57B6: LitVar_Missing var_104
  loc_9D57B9: LitVar_Missing var_E4
  loc_9D57BC: LitI4 0
  loc_9D57C1: LitVarStr var_BC, "La información del sistema no está disponible en este momento"
  loc_9D57C6: FStVarCopyObj var_AC
  loc_9D57C9: FLdRfVar var_AC
  loc_9D57CC: ImpAdCallFPR4 MsgBox(, , , , )
  loc_9D57D1: FFreeVar var_AC = "": var_E4 = "": var_104 = ""
  loc_9D57DC: ExitProcHresult
End Sub

Public Function GetKeyValue(KeyRoot, KeyName, SubKeyRef, KeyVal) 'A31284
  'Data Table: 4213D4
  loc_A31090: FLdRfVar GetKeyValue
  loc_A31093: LitI4 &H2003F
  loc_A31098: LitI4 0
  loc_A3109D: ILdI4 KeyName
  loc_A310A0: FLdRfVar var_A8
  loc_A310A3: CStr2Ansi
  loc_A310A4: ILdRf var_A8
  loc_A310A7: ILdI4 KeyRoot
  loc_A310AA: ImpAdCallI2 RegOpenKeyEx(, , , , )
  loc_A310AF: FStR4 var_AC
  loc_A310B2: SetLastSystemError
  loc_A310B3: ILdRf var_A8
  loc_A310B6: ILdRf KeyName
  loc_A310B9: CStr2Uni
  loc_A310BB: ILdRf var_AC
  loc_A310BE: FStR4 var_90
  loc_A310C1: FFree1Str var_A8
  loc_A310C4: ILdRf var_90
  loc_A310C7: LitI4 0
  loc_A310CC: NeI4
  loc_A310CD: BranchF loc_A310D3
  loc_A310D0: Branch loc_A3125E
  loc_A310D3: LitVarI2 var_CC, 0
  loc_A310D8: LitI4 &H400
  loc_A310DD: ImpAdCallI2 String$(, )
  loc_A310E2: FStStr var_A0
  loc_A310E5: FFree1Var var_CC = ""
  loc_A310E8: LitI4 &H400
  loc_A310ED: FStR4 var_A4
  loc_A310F0: FLdRfVar var_A4
  loc_A310F3: ILdRf var_A0
  loc_A310F6: FLdRfVar var_D0
  loc_A310F9: CStr2Ansi
  loc_A310FA: ILdRf var_D0
  loc_A310FD: FLdRfVar var_9C
  loc_A31100: LitI4 0
  loc_A31105: ILdI4 SubKeyRef
  loc_A31108: FLdRfVar var_A8
  loc_A3110B: CStr2Ansi
  loc_A3110C: ILdRf var_A8
  loc_A3110F: ILdRf GetKeyValue
  loc_A31112: ImpAdCallI2 RegQueryValueEx(, , , , , )
  loc_A31117: FStR4 var_AC
  loc_A3111A: SetLastSystemError
  loc_A3111B: ILdRf var_A8
  loc_A3111E: ILdRf SubKeyRef
  loc_A31121: CStr2Uni
  loc_A31123: ILdRf var_D0
  loc_A31126: FLdRfVar var_A0
  loc_A31129: CStr2Uni
  loc_A3112B: ILdRf var_AC
  loc_A3112E: FStR4 var_90
  loc_A31131: FFreeStr var_A8 = ""
  loc_A31138: ILdRf var_90
  loc_A3113B: LitI4 0
  loc_A31140: NeI4
  loc_A31141: BranchF loc_A31147
  loc_A31144: Branch loc_A3125E
  loc_A31147: LitVarI2 var_CC, 1
  loc_A3114C: ILdRf var_A4
  loc_A3114F: ILdRf var_A0
  loc_A31152: ImpAdCallI2 Mid$(, , )
  loc_A31157: FStStrNoPop var_A8
  loc_A3115A: ImpAdCallI2 Asc()
  loc_A3115F: LitI2_Byte 0
  loc_A31161: EqI2
  loc_A31162: FFree1Str var_A8
  loc_A31165: FFree1Var var_CC = ""
  loc_A31168: BranchF loc_A31182
  loc_A3116B: ILdRf var_A4
  loc_A3116E: LitI4 1
  loc_A31173: SubI4
  loc_A31174: ILdRf var_A0
  loc_A31177: ImpAdCallI2 Left$(, )
  loc_A3117C: FStStr var_A0
  loc_A3117F: Branch loc_A31190
  loc_A31182: ILdRf var_A4
  loc_A31185: ILdRf var_A0
  loc_A31188: ImpAdCallI2 Left$(, )
  loc_A3118D: FStStr var_A0
  loc_A31190: ILdRf var_9C
  loc_A31193: FStR4 var_D4
  loc_A31196: ILdRf var_D4
  loc_A31199: LitI4 1
  loc_A3119E: EqI4
  loc_A3119F: BranchF loc_A311AC
  loc_A311A2: ILdRf var_A0
  loc_A311A5: IStStrCopy KeyVal
  loc_A311A9: Branch loc_A31241
  loc_A311AC: ILdRf var_D4
  loc_A311AF: LitI4 4
  loc_A311B4: EqI4
  loc_A311B5: BranchF loc_A31241
  loc_A311B8: ILdRf var_A0
  loc_A311BB: FnLenStr
  loc_A311BC: FLdRfVar var_8C
  loc_A311BF: LitI4 1
  loc_A311C4: LitI4 -1
  loc_A311C9: ForStepI4 var_DC
  loc_A311CF: ILdI4 KeyVal
  loc_A311D2: CVarStr var_11C
  loc_A311D5: LitVarI2 var_CC, 1
  loc_A311DA: ILdRf var_8C
  loc_A311DD: ILdRf var_A0
  loc_A311E0: ImpAdCallI2 Mid$(, , )
  loc_A311E5: FStStrNoPop var_A8
  loc_A311E8: ImpAdCallI2 Asc()
  loc_A311ED: CVarI2 var_FC
  loc_A311F0: FLdRfVar var_10C
  loc_A311F3: ImpAdCallFPR4  = Hex()
  loc_A311F8: FLdRfVar var_10C
  loc_A311FB: AddVar var_12C
  loc_A311FF: CStrVarTmp
  loc_A31200: IStStr
  loc_A31204: FFree1Str var_A8
  loc_A31207: FFreeVar var_CC = "": var_FC = "": var_10C = ""
  loc_A31212: FLdRfVar var_8C
  loc_A31215: NextStepI4 var_DC, loc_A311CF
  loc_A3121A: LitI4 1
  loc_A3121F: LitI4 1
  loc_A31224: LitVar_Missing var_FC
  loc_A31227: LitStr "&h"
  loc_A3122A: ILdI4 KeyVal
  loc_A3122D: ConcatStr
  loc_A3122E: CVarStr var_CC
  loc_A31231: ImpAdCallI2 Format$(, )
  loc_A31236: IStStr
  loc_A3123A: FFreeVar var_CC = ""
  loc_A31241: LitI2_Byte &HFF
  loc_A31243: FStI2 var_86
  loc_A31246: ILdRf GetKeyValue
  loc_A31249: ImpAdCallI2 RegCloseKey()
  loc_A3124E: FStR4 var_AC
  loc_A31251: SetLastSystemError
  loc_A31252: ILdRf var_AC
  loc_A31255: FStR4 var_90
  loc_A31258: ExitProcCbHresult
  loc_A3125E: LitStr vbNullString
  loc_A31261: IStStrCopy KeyVal
  loc_A31265: LitI2_Byte 0
  loc_A31267: FStI2 var_86
  loc_A3126A: ILdRf GetKeyValue
  loc_A3126D: ImpAdCallI2 RegCloseKey()
  loc_A31272: FStR4 var_AC
  loc_A31275: SetLastSystemError
  loc_A31276: ILdRf var_AC
  loc_A31279: FStR4 var_90
  loc_A3127C: ExitProcCbHresult
  loc_A31282: Error
End Function

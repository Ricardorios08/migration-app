VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Begin VB.Form frmCapturadeArchivosdeEnteRecaudadores
  Caption = "Captura de Archivos de Entes Recaudadores"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmCapturadeArchivosdeEnteRecaudadores.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 48
  ClientTop = 432
  ClientWidth = 12024
  ClientHeight = 7920
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 12
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin VB.CommandButton ConfirmarCmd
    Left = 3600
    Top = 3840
    Width = 1815
    Height = 615
    TabIndex = 10
    Picture = "frmCapturadeArchivosdeEnteRecaudadores.frx":324A
    Style = 1
  End
  Begin VB.TextBox NumeAcpaTxt
    ForeColor = &HFF0000&
    Left = 2400
    Top = 2400
    Width = 495
    Height = 345
    TabIndex = 6
    MaxLength = 3
  End
  Begin VB.CommandButton SalirCmd
    Left = 10560
    Top = 120
    Width = 735
    Height = 615
    TabIndex = 11
    Picture = "frmCapturadeArchivosdeEnteRecaudadores.frx":3578
    Style = 1
    CausesValidation = 0   'False
  End
  Begin VB.TextBox ArchivoTxt
    ForeColor = &HFF0000&
    Left = 2400
    Top = 1440
    Width = 9345
    Height = 345
    TabIndex = 2
    MaxLength = 120
    ToolTipText = "Mensura"
  End
  Begin MSComDlg.CommonDialog AbrirArchivoDlg
    OleObjectBlob = "frmCapturadeArchivosdeEnteRecaudadores.frx":37CA
    Left = 10680
    Top = 1920
  End
  Begin VB.CommandButton BuscarArchivoCmd
    Left = 1800
    Top = 1440
    Width = 495
    Height = 375
    TabIndex = 1
    Picture = "frmCapturadeArchivosdeEnteRecaudadores.frx":382E
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSMask.MaskEdBox FeenAcpaMsk
    Left = 2400
    Top = 1920
    Width = 1335
    Height = 360
    TabIndex = 4
    OleObjectBlob = "frmCapturadeArchivosdeEnteRecaudadores.frx":3A90
  End
  Begin MSMask.MaskEdBox CodiEnreMsk
    Left = 2400
    Top = 2880
    Width = 495
    Height = 360
    TabIndex = 8
    OleObjectBlob = "frmCapturadeArchivosdeEnteRecaudadores.frx":3B40
  End
  Begin VB.Label DiprPageLbl
    Left = 2400
    Top = 840
    Width = 9375
    Height = 345
    TabIndex = 13
    BorderStyle = 1 'Fixed Single
  End
  Begin VB.Label Label1
    Caption = "Directorio donde se copia el archivo procesado:"
    Left = 2400
    Top = 480
    Width = 5115
    Height = 300
    TabIndex = 12
    AutoSize = -1  'True
  End
  Begin VB.Label DetaEnreLbl
    Left = 3000
    Top = 2880
    Width = 6015
    Height = 345
    TabIndex = 9
    BorderStyle = 1 'Fixed Single
  End
  Begin VB.Label Label4
    Caption = "Ente Recaudador:"
    Left = 360
    Top = 2880
    Width = 1950
    Height = 300
    TabIndex = 7
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = -1 'True
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label2
    Caption = "Nro. de Grupo:"
    Left = 750
    Top = 2400
    Width = 1560
    Height = 300
    TabIndex = 5
    AutoSize = -1  'True
  End
  Begin VB.Label Label7
    Caption = "Fecha de Envio:"
    Left = 600
    Top = 1920
    Width = 1710
    Height = 300
    TabIndex = 3
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = -1 'True
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label3
    Caption = "Archivo:"
    Left = 840
    Top = 1440
    Width = 945
    Height = 315
    TabIndex = 0
    AutoSize = -1  'True
  End
End

Attribute VB_Name = "frmCapturadeArchivosdeEnteRecaudadores"


Private Sub ArchivoTxt_Validate(Cancel As Boolean) 'B77480
  'Data Table: 450134
  loc_B76FA8: LitStr vbNullString
  loc_B76FAB: FLdPr Me
  loc_B76FAE: MemStStrCopy
  loc_B76FB2: FLdRfVar var_8A
  loc_B76FB5: FLdPr Me
  loc_B76FB8: VCallAd Control_ID_ArchivoTxt
  loc_B76FBB: FStAdFunc var_88
  loc_B76FBE: FLdPr var_88
  loc_B76FC1:  = Me.Enabled
  loc_B76FC6: FLdI2 var_8A
  loc_B76FC9: FFree1Ad var_88
  loc_B76FCC: BranchF loc_B7747E
  loc_B76FCF: FLdRfVar var_90
  loc_B76FD2: FLdPr Me
  loc_B76FD5: VCallAd Control_ID_ArchivoTxt
  loc_B76FD8: FStAdFunc var_88
  loc_B76FDB: FLdPr var_88
  loc_B76FDE:  = Me.Text
  loc_B76FE3: ILdRf var_90
  loc_B76FE6: LitStr " el archivo que desee procesar"
  loc_B76FE9: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_B76FEE: FStStrNoPop var_94
  loc_B76FF1: FLdPr Me
  loc_B76FF4: MemStStrCopy
  loc_B76FF8: FFreeStr var_90 = ""
  loc_B76FFF: FFree1Ad var_88
  loc_B77002: FLdPr Me
  loc_B77005: MemLdStr global_88
  loc_B77008: LitStr vbNullString
  loc_B7700B: NeStr
  loc_B7700D: BranchF loc_B77033
  loc_B77010: FLdPr Me
  loc_B77013: MemLdStr global_88
  loc_B77016: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B7701B: FLdPr Me
  loc_B7701E: VCallAd Control_ID_ArchivoTxt
  loc_B77021: CVarAd
  loc_B77025: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B7702A: FFree1Var var_A4 = ""
  loc_B7702D: LitI2_Byte &HFF
  loc_B7702F: IStI2 Cancel
  loc_B77032: ExitProcHresult
  loc_B77033: FLdRfVar var_90
  loc_B77036: FLdPr Me
  loc_B77039: VCallAd Control_ID_ArchivoTxt
  loc_B7703C: FStAdFunc var_88
  loc_B7703F: FLdPr var_88
  loc_B77042:  = Me.Text
  loc_B77047: ILdRf var_90
  loc_B7704A: FnLenStr
  loc_B7704B: CI2I4
  loc_B7704C: FLdPr Me
  loc_B7704F: MemStI2 global_94
  loc_B77052: FFree1Str var_90
  loc_B77055: FFree1Ad var_88
  loc_B77058: LitI2_Byte 1
  loc_B7705A: FLdPr Me
  loc_B7705D: MemLdRfVar from_stack_1.global_92
  loc_B77060: FLdPr Me
  loc_B77063: MemLdI2 global_94
  loc_B77066: ForI2 var_A8
  loc_B7706C: FLdRfVar var_90
  loc_B7706F: FLdPr Me
  loc_B77072: VCallAd Control_ID_ArchivoTxt
  loc_B77075: FStAdFunc var_88
  loc_B77078: FLdPr var_88
  loc_B7707B:  = Me.Text
  loc_B77080: LitVarI2 var_C8, 1
  loc_B77085: FLdPr Me
  loc_B77088: MemLdI2 global_94
  loc_B7708B: CI4UI1
  loc_B7708C: FLdZeroAd var_90
  loc_B7708F: CVarStr var_A4
  loc_B77092: FLdRfVar var_D8
  loc_B77095: ImpAdCallFPR4  = Mid(, , )
  loc_B7709A: FLdRfVar var_D8
  loc_B7709D: LitVarStr var_E8, "\"
  loc_B770A2: HardType
  loc_B770A3: EqVarBool
  loc_B770A5: FFree1Ad var_88
  loc_B770A8: FFreeVar var_A4 = "": var_C8 = ""
  loc_B770B1: BranchF loc_B770B7
  loc_B770B4: Branch loc_B7712B
  loc_B770B7: FLdRfVar var_90
  loc_B770BA: FLdPr Me
  loc_B770BD: VCallAd Control_ID_ArchivoTxt
  loc_B770C0: FStAdFunc var_88
  loc_B770C3: FLdPr var_88
  loc_B770C6:  = Me.Text
  loc_B770CB: LitVarI2 var_C8, 1
  loc_B770D0: FLdPr Me
  loc_B770D3: MemLdI2 global_94
  loc_B770D6: CI4UI1
  loc_B770D7: FLdZeroAd var_90
  loc_B770DA: CVarStr var_A4
  loc_B770DD: FLdRfVar var_D8
  loc_B770E0: ImpAdCallFPR4  = Mid(, , )
  loc_B770E5: FLdRfVar var_D8
  loc_B770E8: FLdPr Me
  loc_B770EB: MemLdStr global_96
  loc_B770EE: CVarStr var_E8
  loc_B770F1: ConcatVar var_F8
  loc_B770F5: CStrVarTmp
  loc_B770F6: FStStrNoPop var_94
  loc_B770F9: FLdPr Me
  loc_B770FC: MemStStrCopy
  loc_B77100: FFree1Str var_94
  loc_B77103: FFree1Ad var_88
  loc_B77106: FFreeVar var_A4 = "": var_C8 = "": var_D8 = ""
  loc_B77111: FLdPr Me
  loc_B77114: MemLdI2 global_94
  loc_B77117: LitI2_Byte 1
  loc_B77119: SubI2
  loc_B7711A: FLdPr Me
  loc_B7711D: MemStI2 global_94
  loc_B77120: FLdPr Me
  loc_B77123: MemLdRfVar from_stack_1.global_92
  loc_B77126: NextI2 var_A8, loc_B7706C
  loc_B7712B: FLdPr Me
  loc_B7712E: MemLdStr global_96
  loc_B77131: ImpAdCallI2 Proc_18_90_AB8A90()
  loc_B77136: FStStrNoPop var_90
  loc_B77139: FLdPr Me
  loc_B7713C: MemStStrCopy
  loc_B77140: FFree1Str var_90
  loc_B77143: FLdPr Me
  loc_B77146: MemLdStr global_88
  loc_B77149: LitStr vbNullString
  loc_B7714C: NeStr
  loc_B7714E: BranchF loc_B77174
  loc_B77151: FLdPr Me
  loc_B77154: MemLdStr global_88
  loc_B77157: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B7715C: FLdPr Me
  loc_B7715F: VCallAd Control_ID_ArchivoTxt
  loc_B77162: CVarAd
  loc_B77166: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B7716B: FFree1Var var_A4 = ""
  loc_B7716E: LitI2_Byte &HFF
  loc_B77170: IStI2 Cancel
  loc_B77173: ExitProcHresult
  loc_B77174: LitVar_TRUE var_B8
  loc_B77177: PopAdLdVar
  loc_B77178: FLdPr Me
  loc_B7717B: VCallAd Control_ID_CodiEnreMsk
  loc_B7717E: FStAdFunc var_88
  loc_B77181: FLdPr var_88
  loc_B77184: LateIdSt
  loc_B77189: FFree1Ad var_88
  loc_B7718C: LitVarI2 var_A4, 4
  loc_B77191: LitI4 1
  loc_B77196: FLdPr Me
  loc_B77199: MemLdRfVar from_stack_1.global_96
  loc_B7719C: CVarRef
  loc_B771A1: FLdRfVar var_C8
  loc_B771A4: ImpAdCallFPR4  = Mid(, , )
  loc_B771A9: FLdRfVar var_C8
  loc_B771AC: LitVarStr var_108, "0450"
  loc_B771B1: HardType
  loc_B771B2: EqVarBool
  loc_B771B4: FFreeVar var_A4 = ""
  loc_B771BB: BranchF loc_B771E0
  loc_B771BE: LitI2_Byte &H3E
  loc_B771C0: CStrUI1
  loc_B771C2: CVarStr var_A4
  loc_B771C5: PopAdLdVar
  loc_B771C6: FLdPr Me
  loc_B771C9: VCallAd Control_ID_CodiEnreMsk
  loc_B771CC: FStAdFunc var_88
  loc_B771CF: FLdPr var_88
  loc_B771D2: LateIdSt
  loc_B771D7: FFree1Ad var_88
  loc_B771DA: FFree1Var var_A4 = ""
  loc_B771DD: Branch loc_B7747E
  loc_B771E0: LitVarI2 var_A4, 2
  loc_B771E5: LitI4 1
  loc_B771EA: FLdPr Me
  loc_B771ED: MemLdRfVar from_stack_1.global_96
  loc_B771F0: CVarRef
  loc_B771F5: FLdRfVar var_C8
  loc_B771F8: ImpAdCallFPR4  = Mid(, , )
  loc_B771FD: FLdRfVar var_C8
  loc_B77200: LitVarStr var_108, "RN"
  loc_B77205: HardType
  loc_B77206: EqVarBool
  loc_B77208: FFreeVar var_A4 = ""
  loc_B7720F: BranchF loc_B77234
  loc_B77212: LitI2_Byte &H12
  loc_B77214: CStrUI1
  loc_B77216: CVarStr var_A4
  loc_B77219: PopAdLdVar
  loc_B7721A: FLdPr Me
  loc_B7721D: VCallAd Control_ID_CodiEnreMsk
  loc_B77220: FStAdFunc var_88
  loc_B77223: FLdPr var_88
  loc_B77226: LateIdSt
  loc_B7722B: FFree1Ad var_88
  loc_B7722E: FFree1Var var_A4 = ""
  loc_B77231: Branch loc_B7747E
  loc_B77234: LitVarI2 var_A4, 8
  loc_B77239: LitI4 1
  loc_B7723E: FLdPr Me
  loc_B77241: MemLdRfVar from_stack_1.global_96
  loc_B77244: CVarRef
  loc_B77249: FLdRfVar var_C8
  loc_B7724C: ImpAdCallFPR4  = Mid(, , )
  loc_B77251: FLdRfVar var_C8
  loc_B77254: LitVarStr var_108, "salguayn"
  loc_B77259: HardType
  loc_B7725A: EqVarBool
  loc_B7725C: FFreeVar var_A4 = ""
  loc_B77263: BranchF loc_B77288
  loc_B77266: LitI2_Byte &H10
  loc_B77268: CStrUI1
  loc_B7726A: CVarStr var_A4
  loc_B7726D: PopAdLdVar
  loc_B7726E: FLdPr Me
  loc_B77271: VCallAd Control_ID_CodiEnreMsk
  loc_B77274: FStAdFunc var_88
  loc_B77277: FLdPr var_88
  loc_B7727A: LateIdSt
  loc_B7727F: FFree1Ad var_88
  loc_B77282: FFree1Var var_A4 = ""
  loc_B77285: Branch loc_B7747E
  loc_B77288: LitVarI2 var_A4, 3
  loc_B7728D: LitI4 1
  loc_B77292: FLdPr Me
  loc_B77295: MemLdRfVar from_stack_1.global_96
  loc_B77298: CVarRef
  loc_B7729D: FLdRfVar var_C8
  loc_B772A0: ImpAdCallFPR4  = Mid(, , )
  loc_B772A5: FLdRfVar var_C8
  loc_B772A8: LitVarStr var_108, "cob"
  loc_B772AD: HardType
  loc_B772AE: EqVarBool
  loc_B772B0: FFreeVar var_A4 = ""
  loc_B772B7: BranchF loc_B772DC
  loc_B772BA: LitI2_Byte &H3F
  loc_B772BC: CStrUI1
  loc_B772BE: CVarStr var_A4
  loc_B772C1: PopAdLdVar
  loc_B772C2: FLdPr Me
  loc_B772C5: VCallAd Control_ID_CodiEnreMsk
  loc_B772C8: FStAdFunc var_88
  loc_B772CB: FLdPr var_88
  loc_B772CE: LateIdSt
  loc_B772D3: FFree1Ad var_88
  loc_B772D6: FFree1Var var_A4 = ""
  loc_B772D9: Branch loc_B7747E
  loc_B772DC: LitVarI2 var_A4, 2
  loc_B772E1: LitI4 1
  loc_B772E6: FLdPr Me
  loc_B772E9: MemLdRfVar from_stack_1.global_96
  loc_B772EC: CVarRef
  loc_B772F1: FLdRfVar var_C8
  loc_B772F4: ImpAdCallFPR4  = Mid(, , )
  loc_B772F9: FLdRfVar var_C8
  loc_B772FC: LitVarStr var_108, "pf"
  loc_B77301: HardType
  loc_B77302: EqVarBool
  loc_B77304: FFreeVar var_A4 = ""
  loc_B7730B: BranchF loc_B77330
  loc_B7730E: LitI2_Byte &H32
  loc_B77310: CStrUI1
  loc_B77312: CVarStr var_A4
  loc_B77315: PopAdLdVar
  loc_B77316: FLdPr Me
  loc_B77319: VCallAd Control_ID_CodiEnreMsk
  loc_B7731C: FStAdFunc var_88
  loc_B7731F: FLdPr var_88
  loc_B77322: LateIdSt
  loc_B77327: FFree1Ad var_88
  loc_B7732A: FFree1Var var_A4 = ""
  loc_B7732D: Branch loc_B7747E
  loc_B77330: LitVarI2 var_A4, 3
  loc_B77335: LitI4 1
  loc_B7733A: FLdPr Me
  loc_B7733D: MemLdRfVar from_stack_1.global_96
  loc_B77340: CVarRef
  loc_B77345: FLdRfVar var_C8
  loc_B77348: ImpAdCallFPR4  = Mid(, , )
  loc_B7734D: FLdRfVar var_C8
  loc_B77350: LitVarStr var_108, "RAP"
  loc_B77355: HardType
  loc_B77356: EqVarBool
  loc_B77358: FFreeVar var_A4 = ""
  loc_B7735F: BranchF loc_B77384
  loc_B77362: LitI2_Byte &H33
  loc_B77364: CStrUI1
  loc_B77366: CVarStr var_A4
  loc_B77369: PopAdLdVar
  loc_B7736A: FLdPr Me
  loc_B7736D: VCallAd Control_ID_CodiEnreMsk
  loc_B77370: FStAdFunc var_88
  loc_B77373: FLdPr var_88
  loc_B77376: LateIdSt
  loc_B7737B: FFree1Ad var_88
  loc_B7737E: FFree1Var var_A4 = ""
  loc_B77381: Branch loc_B7747E
  loc_B77384: LitVarI2 var_A4, 3
  loc_B77389: LitI4 1
  loc_B7738E: FLdPr Me
  loc_B77391: MemLdRfVar from_stack_1.global_96
  loc_B77394: CVarRef
  loc_B77399: FLdRfVar var_C8
  loc_B7739C: ImpAdCallFPR4  = Mid(, , )
  loc_B773A1: FLdRfVar var_C8
  loc_B773A4: LitVarStr var_108, "BNA"
  loc_B773A9: HardType
  loc_B773AA: EqVarBool
  loc_B773AC: FFreeVar var_A4 = ""
  loc_B773B3: BranchF loc_B773D8
  loc_B773B6: LitI2_Byte 5
  loc_B773B8: CStrUI1
  loc_B773BA: CVarStr var_A4
  loc_B773BD: PopAdLdVar
  loc_B773BE: FLdPr Me
  loc_B773C1: VCallAd Control_ID_CodiEnreMsk
  loc_B773C4: FStAdFunc var_88
  loc_B773C7: FLdPr var_88
  loc_B773CA: LateIdSt
  loc_B773CF: FFree1Ad var_88
  loc_B773D2: FFree1Var var_A4 = ""
  loc_B773D5: Branch loc_B7747E
  loc_B773D8: LitVarI2 var_A4, 11
  loc_B773DD: LitI4 1
  loc_B773E2: FLdPr Me
  loc_B773E5: MemLdRfVar from_stack_1.global_96
  loc_B773E8: CVarRef
  loc_B773ED: FLdRfVar var_C8
  loc_B773F0: ImpAdCallFPR4  = Mid(, , )
  loc_B773F5: FLdRfVar var_C8
  loc_B773F8: LitVarStr var_108, "RECAUDACION"
  loc_B773FD: HardType
  loc_B773FE: EqVarBool
  loc_B77400: FFreeVar var_A4 = ""
  loc_B77407: BranchF loc_B7742D
  loc_B7740A: LitI2 150
  loc_B7740D: CStrUI1
  loc_B7740F: CVarStr var_A4
  loc_B77412: PopAdLdVar
  loc_B77413: FLdPr Me
  loc_B77416: VCallAd Control_ID_CodiEnreMsk
  loc_B77419: FStAdFunc var_88
  loc_B7741C: FLdPr var_88
  loc_B7741F: LateIdSt
  loc_B77424: FFree1Ad var_88
  loc_B77427: FFree1Var var_A4 = ""
  loc_B7742A: Branch loc_B7747E
  loc_B7742D: LitVarI2 var_A4, 6
  loc_B77432: LitI4 1
  loc_B77437: FLdPr Me
  loc_B7743A: MemLdRfVar from_stack_1.global_96
  loc_B7743D: CVarRef
  loc_B77442: FLdRfVar var_C8
  loc_B77445: ImpAdCallFPR4  = Mid(, , )
  loc_B7744A: FLdRfVar var_C8
  loc_B7744D: LitVarStr var_108, "cajero"
  loc_B77452: HardType
  loc_B77453: EqVarBool
  loc_B77455: FFreeVar var_A4 = ""
  loc_B7745C: BranchF loc_B7747E
  loc_B7745F: LitI2_Byte &H18
  loc_B77461: CStrUI1
  loc_B77463: CVarStr var_A4
  loc_B77466: PopAdLdVar
  loc_B77467: FLdPr Me
  loc_B7746A: VCallAd Control_ID_CodiEnreMsk
  loc_B7746D: FStAdFunc var_88
  loc_B77470: FLdPr var_88
  loc_B77473: LateIdSt
  loc_B77478: FFree1Ad var_88
  loc_B7747B: FFree1Var var_A4 = ""
  loc_B7747E: ExitProcHresult
End Sub

Private Sub SalirCmd_Click() '9C841C
  'Data Table: 450134
  loc_9C8404: ILdRf Me
  loc_9C8407: FStAdNoPop
  loc_9C840B: ImpAdLdRf MemVar_D9C5D8
  loc_9C840E: NewIfNullPr Global
  loc_9C8411: Global.Unload from_stack_1
  loc_9C8416: FFree1Ad var_88
  loc_9C8419: ExitProcHresult
End Sub

Private Sub Form_Load() 'AC6DA4
  'Data Table: 450134
  loc_AC6C90: LitI2_Byte 0
  loc_AC6C92: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AC6C97: CStrDate
  loc_AC6C99: CVarStr var_94
  loc_AC6C9C: PopAdLdVar
  loc_AC6C9D: FLdPr Me
  loc_AC6CA0: VCallAd Control_ID_FeenAcpaMsk
  loc_AC6CA3: FStAdFunc var_A8
  loc_AC6CA6: FLdPr var_A8
  loc_AC6CA9: LateIdSt
  loc_AC6CAE: FFree1Ad var_A8
  loc_AC6CB1: FFree1Var var_94 = ""
  loc_AC6CB4: LitStr "0"
  loc_AC6CB7: FLdPr Me
  loc_AC6CBA: VCallAd Control_ID_NumeAcpaTxt
  loc_AC6CBD: FStAdFunc var_A8
  loc_AC6CC0: FLdPr var_A8
  loc_AC6CC3: Me.Text = from_stack_1
  loc_AC6CC8: FFree1Ad var_A8
  loc_AC6CCB: LitVarStr var_A4, "0"
  loc_AC6CD0: PopAdLdVar
  loc_AC6CD1: FLdPr Me
  loc_AC6CD4: VCallAd Control_ID_CodiEnreMsk
  loc_AC6CD7: FStAdFunc var_A8
  loc_AC6CDA: FLdPr var_A8
  loc_AC6CDD: LateIdSt
  loc_AC6CE2: FFree1Ad var_A8
  loc_AC6CE5: LitStr "SELECT DicaPage, DiprPage FROM paragene"
  loc_AC6CE8: FLdPr Me
  loc_AC6CEB: MemLdRfVar from_stack_1.global_52
  loc_AC6CEE: NewIfNullPr clsparagene
  loc_AC6CF1: Call clsparagene.RedefineRS(from_stack_1v)
  loc_AC6CF6: FLdRfVar var_BC
  loc_AC6CF9: FLdPr Me
  loc_AC6CFC: MemLdRfVar from_stack_1.global_52
  loc_AC6CFF: NewIfNullPr clsparagene
  loc_AC6D02: from_stack_1 = clsparagene.RecordCount
  loc_AC6D07: ILdRf var_BC
  loc_AC6D0A: LitI4 0
  loc_AC6D0F: GtI4
  loc_AC6D10: BranchF loc_AC6D70
  loc_AC6D13: FLdRfVar var_C0
  loc_AC6D16: FLdPr Me
  loc_AC6D19: MemLdRfVar from_stack_1.global_52
  loc_AC6D1C: NewIfNullPr clsparagene
  loc_AC6D1F: from_stack_1 = clsparagene.DicaPage
  loc_AC6D24: FLdZeroAd var_C0
  loc_AC6D27: CVarStr var_94
  loc_AC6D2A: PopAdLdVar
  loc_AC6D2B: FLdPr Me
  loc_AC6D2E: VCallAd Control_ID_AbrirArchivoDlg
  loc_AC6D31: FStAdFunc var_A8
  loc_AC6D34: FLdPr var_A8
  loc_AC6D37: LateIdSt
  loc_AC6D3C: FFree1Ad var_A8
  loc_AC6D3F: FFree1Var var_94 = ""
  loc_AC6D42: FLdRfVar var_C0
  loc_AC6D45: FLdPr Me
  loc_AC6D48: MemLdRfVar from_stack_1.global_52
  loc_AC6D4B: NewIfNullPr clsparagene
  loc_AC6D4E: from_stack_1 = clsparagene.DiprPage
  loc_AC6D53: ILdRf var_C0
  loc_AC6D56: FLdPr Me
  loc_AC6D59: VCallAd Control_ID_DiprPageLbl
  loc_AC6D5C: FStAdFunc var_A8
  loc_AC6D5F: FLdPr var_A8
  loc_AC6D62: Me.Caption = from_stack_1
  loc_AC6D67: FFree1Str var_C0
  loc_AC6D6A: FFree1Ad var_A8
  loc_AC6D6D: Branch loc_AC6DA1
  loc_AC6D70: LitVarStr var_A4, vbNullString
  loc_AC6D75: PopAdLdVar
  loc_AC6D76: FLdPr Me
  loc_AC6D79: VCallAd Control_ID_AbrirArchivoDlg
  loc_AC6D7C: FStAdFunc var_A8
  loc_AC6D7F: FLdPr var_A8
  loc_AC6D82: LateIdSt
  loc_AC6D87: FFree1Ad var_A8
  loc_AC6D8A: LitStr vbNullString
  loc_AC6D8D: FLdPr Me
  loc_AC6D90: VCallAd Control_ID_DiprPageLbl
  loc_AC6D93: FStAdFunc var_A8
  loc_AC6D96: FLdPr var_A8
  loc_AC6D99: Me.Caption = from_stack_1
  loc_AC6D9E: FFree1Ad var_A8
  loc_AC6DA1: ExitProcHresult
End Sub

Private Sub CodiEnreMsk_UnknownEvent_0 '9BCD68
  'Data Table: 450134
  loc_9BCD54: FLdPr Me
  loc_9BCD57: VCallAd Control_ID_CodiEnreMsk
  loc_9BCD5A: CVarAd
  loc_9BCD5E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BCD63: FFree1Var var_94 = ""
  loc_9BCD66: ExitProcHresult
End Sub

Private Function CodiEnreMsk_UnknownEvent_8(arg_C) 'ACEFFC
  'Data Table: 450134
  loc_ACEED8: FLdPr Me
  loc_ACEEDB: VCallAd Control_ID_CodiEnreMsk
  loc_ACEEDE: FStAdFunc var_88
  loc_ACEEE1: FLdPr var_88
  loc_ACEEE4: LateIdLdVar var_98 DispID_13 -32767
  loc_ACEEEB: CBoolVar
  loc_ACEEED: FFree1Ad var_88
  loc_ACEEF0: FFree1Var var_98 = ""
  loc_ACEEF3: BranchF loc_ACEFFB
  loc_ACEEF6: FLdPr Me
  loc_ACEEF9: VCallAd Control_ID_CodiEnreMsk
  loc_ACEEFC: FStAdFunc var_88
  loc_ACEEFF: FLdPr var_88
  loc_ACEF02: LateIdLdVar var_98 DispID_22 0
  loc_ACEF09: CStrVarTmp
  loc_ACEF0A: CVarStr var_A8
  loc_ACEF0D: ImpAdCallI2 IsNumeric()
  loc_ACEF12: NotI4
  loc_ACEF13: FFree1Ad var_88
  loc_ACEF16: FFreeVar var_98 = ""
  loc_ACEF1D: BranchF loc_ACEF3A
  loc_ACEF20: LitVarStr var_B8, "0"
  loc_ACEF25: PopAdLdVar
  loc_ACEF26: FLdPr Me
  loc_ACEF29: VCallAd Control_ID_CodiEnreMsk
  loc_ACEF2C: FStAdFunc var_88
  loc_ACEF2F: FLdPr var_88
  loc_ACEF32: LateIdSt
  loc_ACEF37: FFree1Ad var_88
  loc_ACEF3A: FLdPr Me
  loc_ACEF3D: VCallAd Control_ID_CodiEnreMsk
  loc_ACEF40: FStAdFunc var_88
  loc_ACEF43: FLdPr var_88
  loc_ACEF46: LateIdLdVar var_98 DispID_22 0
  loc_ACEF4D: CStrVarTmp
  loc_ACEF4E: FStStrNoPop var_CC
  loc_ACEF51: ImpAdCallI2 Proc_18_39_A5661C()
  loc_ACEF56: FStStrNoPop var_D0
  loc_ACEF59: FLdPr Me
  loc_ACEF5C: MemStStrCopy
  loc_ACEF60: FFreeStr var_CC = ""
  loc_ACEF67: FFree1Ad var_88
  loc_ACEF6A: FFree1Var var_98 = ""
  loc_ACEF6D: FLdPr Me
  loc_ACEF70: MemLdStr global_88
  loc_ACEF73: LitStr vbNullString
  loc_ACEF76: NeStr
  loc_ACEF78: BranchF loc_ACEFB8
  loc_ACEF7B: FLdPr Me
  loc_ACEF7E: MemLdStr global_88
  loc_ACEF81: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ACEF86: LitStr vbNullString
  loc_ACEF89: FLdPr Me
  loc_ACEF8C: VCallAd Control_ID_DetaEnreLbl
  loc_ACEF8F: FStAdFunc var_88
  loc_ACEF92: FLdPr var_88
  loc_ACEF95: Me.Caption = from_stack_1
  loc_ACEF9A: FFree1Ad var_88
  loc_ACEF9D: FLdPr Me
  loc_ACEFA0: VCallAd Control_ID_CodiEnreMsk
  loc_ACEFA3: CVarAd
  loc_ACEFA7: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ACEFAC: FFree1Var var_98 = ""
  loc_ACEFAF: LitI2_Byte &HFF
  loc_ACEFB1: IStI2 arg_C
  loc_ACEFB4: ExitProcHresult
  loc_ACEFB5: Branch loc_ACEFFB
  loc_ACEFB8: FLdPr Me
  loc_ACEFBB: VCallAd Control_ID_CodiEnreMsk
  loc_ACEFBE: FStAdFunc var_88
  loc_ACEFC1: FLdPr var_88
  loc_ACEFC4: LateIdLdVar var_98 DispID_22 0
  loc_ACEFCB: CStrVarTmp
  loc_ACEFCC: FStStrNoPop var_CC
  loc_ACEFCF: CI2Str
  loc_ACEFD1: ImpAdCallI2 Proc_270_42_A7BB98()
  loc_ACEFD6: FStStrNoPop var_D0
  loc_ACEFD9: FLdPr Me
  loc_ACEFDC: VCallAd Control_ID_DetaEnreLbl
  loc_ACEFDF: FStAdFunc var_D4
  loc_ACEFE2: FLdPr var_D4
  loc_ACEFE5: Me.Caption = from_stack_1
  loc_ACEFEA: FFreeStr var_CC = ""
  loc_ACEFF1: FFreeAd var_88 = ""
  loc_ACEFF8: FFree1Var var_98 = ""
  loc_ACEFFB: ExitProcHresult
End Function

Private Sub CodiEnreMsk_KeyPress(KeyAscii As Integer) 'A8D870
  'Data Table: 450134
  loc_A8D7D4: ILdI2 KeyAscii
  loc_A8D7D7: CI4UI1
  loc_A8D7D8: LitI4 &H20
  loc_A8D7DD: EqI4
  loc_A8D7DE: BranchF loc_A8D86D
  loc_A8D7E1: LitVar_Missing var_A4
  loc_A8D7E4: PopAdLdVar
  loc_A8D7E5: LitVarI4
  loc_A8D7ED: PopAdLdVar
  loc_A8D7EE: ImpAdLdRf MemVar_D941EC
  loc_A8D7F1: NewIfNullPr dlgBuscarEnteRecaudador
  loc_A8D7F4: dlgBuscarEnteRecaudador.Show from_stack_1, from_stack_2
  loc_A8D7F9: FLdRfVar var_AA
  loc_A8D7FC: FLdRfVar var_A8
  loc_A8D7FF: ImpAdLdRf MemVar_D941EC
  loc_A8D802: NewIfNullPr dlgBuscarEnteRecaudador
  loc_A8D805: from_stack_1v = dlgBuscarEnteRecaudador.global_4259576Get()
  loc_A8D80A: FLdPr var_A8
  loc_A8D80D: from_stack_1 = clsentereca.CodiEnre
  loc_A8D812: FLdI2 var_AA
  loc_A8D815: CStrUI1
  loc_A8D817: CVarStr var_BC
  loc_A8D81A: PopAdLdVar
  loc_A8D81B: FLdPr Me
  loc_A8D81E: VCallAd Control_ID_CodiEnreMsk
  loc_A8D821: FStAdFunc var_C0
  loc_A8D824: FLdPr var_C0
  loc_A8D827: LateIdSt
  loc_A8D82C: FFreeAd var_A8 = ""
  loc_A8D833: FFree1Var var_BC = ""
  loc_A8D836: FLdRfVar var_C4
  loc_A8D839: FLdRfVar var_A8
  loc_A8D83C: ImpAdLdRf MemVar_D941EC
  loc_A8D83F: NewIfNullPr dlgBuscarEnteRecaudador
  loc_A8D842: from_stack_1v = dlgBuscarEnteRecaudador.global_4259576Get()
  loc_A8D847: FLdPr var_A8
  loc_A8D84A: from_stack_1 = clsentereca.DetaEnre
  loc_A8D84F: ILdRf var_C4
  loc_A8D852: FLdPr Me
  loc_A8D855: VCallAd Control_ID_DetaEnreLbl
  loc_A8D858: FStAdFunc var_C0
  loc_A8D85B: FLdPr var_C0
  loc_A8D85E: Me.Caption = from_stack_1
  loc_A8D863: FFree1Str var_C4
  loc_A8D866: FFreeAd var_A8 = ""
  loc_A8D86D: ExitProcHresult
End Sub

Private Sub BuscarArchivoCmd_Click() 'A67618
  'Data Table: 450134
  loc_A675B4: FLdPrThis
  loc_A675B5: VCallAd Control_ID_AbrirArchivoDlg
  loc_A675B8: FStAdFunc var_88
  loc_A675BB: FLdPr var_88
  loc_A675BE: LateIdCall
  loc_A675C6: FFree1Ad var_88
  loc_A675C9: FLdPrThis
  loc_A675CA: VCallAd Control_ID_AbrirArchivoDlg
  loc_A675CD: FStAdFunc var_88
  loc_A675D0: FLdPr var_88
  loc_A675D3: LateIdLdVar var_98 DispID_1 0
  loc_A675DA: CStrVarTmp
  loc_A675DB: FStStrNoPop var_9C
  loc_A675DE: FLdPr Me
  loc_A675E1: VCallAd Control_ID_ArchivoTxt
  loc_A675E4: FStAdFunc var_A0
  loc_A675E7: FLdPr var_A0
  loc_A675EA: Me.Text = from_stack_1
  loc_A675EF: FFree1Str var_9C
  loc_A675F2: FFreeAd var_88 = ""
  loc_A675F9: FFree1Var var_98 = ""
  loc_A675FC: LitI2_Byte 0
  loc_A675FE: PopTmpLdAd2 var_A2
  loc_A67601: Call ArchivoTxt_Validate(from_stack_1v)
  loc_A67606: FLdPr Me
  loc_A67609: MemLdStr global_88
  loc_A6760C: LitStr vbNullString
  loc_A6760F: NeStr
  loc_A67611: BranchF loc_A67615
  loc_A67614: ExitProcHresult
  loc_A67615: ExitProcHresult
End Sub

Private Sub ConfirmarCmd_Click() 'B5E2AC
  'Data Table: 450134
  loc_B5DECC: LitI2_Byte 0
  loc_B5DECE: PopTmpLdAd2 var_86
  loc_B5DED1: Call ArchivoTxt_Validate(from_stack_1v)
  loc_B5DED6: FLdPr Me
  loc_B5DED9: MemLdStr global_88
  loc_B5DEDC: LitStr vbNullString
  loc_B5DEDF: NeStr
  loc_B5DEE1: BranchF loc_B5DEE5
  loc_B5DEE4: ExitProcHresult
  loc_B5DEE5: LitI2_Byte 0
  loc_B5DEE7: PopTmpLdAd2 var_86
  loc_B5DEEA: Call FeenAcpaMsk_UnknownEvent_8()
  loc_B5DEEF: FLdPr Me
  loc_B5DEF2: MemLdStr global_88
  loc_B5DEF5: LitStr vbNullString
  loc_B5DEF8: NeStr
  loc_B5DEFA: BranchF loc_B5DEFE
  loc_B5DEFD: ExitProcHresult
  loc_B5DEFE: LitI2_Byte 0
  loc_B5DF00: PopTmpLdAd2 var_86
  loc_B5DF03: Call NumeAcpaTxt_Validate(from_stack_1v)
  loc_B5DF08: FLdPr Me
  loc_B5DF0B: MemLdStr global_88
  loc_B5DF0E: LitStr vbNullString
  loc_B5DF11: NeStr
  loc_B5DF13: BranchF loc_B5DF17
  loc_B5DF16: ExitProcHresult
  loc_B5DF17: LitI2_Byte 0
  loc_B5DF19: PopTmpLdAd2 var_86
  loc_B5DF1C: from_stack_2v = CodiEnreMsk_UnknownEvent_8(from_stack_1v)
  loc_B5DF21: FLdPr Me
  loc_B5DF24: MemLdStr global_88
  loc_B5DF27: LitStr vbNullString
  loc_B5DF2A: NeStr
  loc_B5DF2C: BranchF loc_B5DF30
  loc_B5DF2F: ExitProcHresult
  loc_B5DF30: FLdRfVar var_94
  loc_B5DF33: FLdPr Me
  loc_B5DF36: VCallAd Control_ID_DiprPageLbl
  loc_B5DF39: FStAdFunc var_90
  loc_B5DF3C: FLdPr var_90
  loc_B5DF3F:  = Me.Caption
  loc_B5DF44: ILdRf var_94
  loc_B5DF47: LitStr vbNullString
  loc_B5DF4A: NeStr
  loc_B5DF4C: FFree1Str var_94
  loc_B5DF4F: FFree1Ad var_90
  loc_B5DF52: BranchF loc_B5DFF9
  loc_B5DF55: FLdRfVar var_86
  loc_B5DF58: FLdRfVar var_94
  loc_B5DF5B: FLdPr Me
  loc_B5DF5E: VCallAd Control_ID_DiprPageLbl
  loc_B5DF61: FStAdFunc var_90
  loc_B5DF64: FLdPr var_90
  loc_B5DF67:  = Me.Caption
  loc_B5DF6C: ILdRf var_94
  loc_B5DF6F: FLdRfVar var_8C
  loc_B5DF72: NewIfNullPr IFileSystem3
  loc_B5DF75: from_stack_2 = IFileSystem3.IFileSystem.FolderExists(from_stack_1v)
  loc_B5DF7A: FLdI2 var_86
  loc_B5DF7D: NotI4
  loc_B5DF7E: FFree1Str var_94
  loc_B5DF81: FFree1Ad var_90
  loc_B5DF84: BranchF loc_B5DF90
  loc_B5DF87: LitStr "No existe el directorio donde se debe copiar el archivo a procesar. Verifique..."
  loc_B5DF8A: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B5DF8F: ExitProcHresult
  loc_B5DF90: FLdRfVar var_94
  loc_B5DF93: FLdPr Me
  loc_B5DF96: VCallAd Control_ID_DiprPageLbl
  loc_B5DF99: FStAdFunc var_90
  loc_B5DF9C: FLdPr var_90
  loc_B5DF9F:  = Me.Caption
  loc_B5DFA4: FLdRfVar var_9C
  loc_B5DFA7: FLdPr Me
  loc_B5DFAA: VCallAd Control_ID_DiprPageLbl
  loc_B5DFAD: FStAdFunc var_98
  loc_B5DFB0: FLdPr var_98
  loc_B5DFB3:  = Me.Caption
  loc_B5DFB8: LitVarI2 var_CC, 1
  loc_B5DFBD: ILdRf var_9C
  loc_B5DFC0: FnLenStr
  loc_B5DFC1: FLdZeroAd var_94
  loc_B5DFC4: CVarStr var_AC
  loc_B5DFC7: FLdRfVar var_DC
  loc_B5DFCA: ImpAdCallFPR4  = Mid(, , )
  loc_B5DFCF: FLdRfVar var_DC
  loc_B5DFD2: LitVarStr var_EC, "\"
  loc_B5DFD7: HardType
  loc_B5DFD8: NeVarBool
  loc_B5DFDA: FFree1Str var_9C
  loc_B5DFDD: FFreeAd var_90 = ""
  loc_B5DFE4: FFreeVar var_AC = "": var_CC = ""
  loc_B5DFED: BranchF loc_B5DFF9
  loc_B5DFF0: LitStr "La dirección donde se copia el archivo debe terminar con \ "
  loc_B5DFF3: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B5DFF8: ExitProcHresult
  loc_B5DFF9: LitI2_Byte &HB
  loc_B5DFFB: FLdPr Me
  loc_B5DFFE: Me.MousePointer = from_stack_1
  loc_B5E003: LitVarI2 var_AC, 4
  loc_B5E008: LitI4 1
  loc_B5E00D: FLdPr Me
  loc_B5E010: MemLdRfVar from_stack_1.global_96
  loc_B5E013: CVarRef
  loc_B5E018: FLdRfVar var_CC
  loc_B5E01B: ImpAdCallFPR4  = Mid(, , )
  loc_B5E020: FLdRfVar var_CC
  loc_B5E023: LitVarStr var_10C, "0450"
  loc_B5E028: HardType
  loc_B5E029: EqVar var_DC
  loc_B5E02D: LitVarI2 var_FC, 2
  loc_B5E032: LitI4 1
  loc_B5E037: FLdPr Me
  loc_B5E03A: MemLdRfVar from_stack_1.global_96
  loc_B5E03D: CVarRef
  loc_B5E042: FLdRfVar var_13C
  loc_B5E045: ImpAdCallFPR4  = Mid(, , )
  loc_B5E04A: FLdRfVar var_13C
  loc_B5E04D: LitVarStr var_14C, "RN"
  loc_B5E052: HardType
  loc_B5E053: EqVar var_15C
  loc_B5E057: OrVar var_16C
  loc_B5E05B: LitVarI2 var_19C, 8
  loc_B5E060: LitI4 1
  loc_B5E065: FLdPr Me
  loc_B5E068: MemLdRfVar from_stack_1.global_96
  loc_B5E06B: CVarRef
  loc_B5E070: FLdRfVar var_1AC
  loc_B5E073: ImpAdCallFPR4  = Mid(, , )
  loc_B5E078: FLdRfVar var_1AC
  loc_B5E07B: LitVarStr var_1BC, "salguayn"
  loc_B5E080: HardType
  loc_B5E081: EqVar var_1CC
  loc_B5E085: OrVar var_1DC
  loc_B5E089: LitVarI2 var_20C, 11
  loc_B5E08E: LitI4 1
  loc_B5E093: FLdPr Me
  loc_B5E096: MemLdRfVar from_stack_1.global_96
  loc_B5E099: CVarRef
  loc_B5E09E: FLdRfVar var_21C
  loc_B5E0A1: ImpAdCallFPR4  = Mid(, , )
  loc_B5E0A6: FLdRfVar var_21C
  loc_B5E0A9: LitVarStr var_22C, "RECAUDACION"
  loc_B5E0AE: HardType
  loc_B5E0AF: EqVar var_23C
  loc_B5E0B3: OrVar var_24C
  loc_B5E0B7: CBoolVarNull
  loc_B5E0B9: FFreeVar var_AC = "": var_CC = "": var_FC = "": var_13C = "": var_19C = "": var_1AC = "": var_20C = ""
  loc_B5E0CC: BranchF loc_B5E152
  loc_B5E0CF: FLdPr Me
  loc_B5E0D2: VCallAd Control_ID_FeenAcpaMsk
  loc_B5E0D5: FStAdFunc var_90
  loc_B5E0D8: FLdPr var_90
  loc_B5E0DB: LateIdLdVar var_AC DispID_15 0
  loc_B5E0E2: PopAd
  loc_B5E0E4: FLdRfVar var_94
  loc_B5E0E7: FLdPr Me
  loc_B5E0EA: VCallAd Control_ID_NumeAcpaTxt
  loc_B5E0ED: FStAdFunc var_98
  loc_B5E0F0: FLdPr var_98
  loc_B5E0F3:  = Me.Text
  loc_B5E0F8: FLdPr Me
  loc_B5E0FB: VCallAd Control_ID_CodiEnreMsk
  loc_B5E0FE: FStAdFunc var_250
  loc_B5E101: FLdPr var_250
  loc_B5E104: LateIdLdVar var_CC DispID_22 0
  loc_B5E10B: PopAd
  loc_B5E10D: FLdPr Me
  loc_B5E110: MemLdStr global_96
  loc_B5E113: FLdRfVar var_CC
  loc_B5E116: CStrVarTmp
  loc_B5E117: FStStrNoPop var_254
  loc_B5E11A: CI2Str
  loc_B5E11C: ILdRf var_94
  loc_B5E11F: CI2Str
  loc_B5E121: FLdRfVar var_AC
  loc_B5E124: CStrVarTmp
  loc_B5E125: FStStrNoPop var_9C
  loc_B5E128: FLdPr Me
  loc_B5E12B: MemLdRfVar from_stack_1.global_68
  loc_B5E12E: NewIfNullPr clspago
  loc_B5E131: Call clspago.CreaPagosdeCapturadeArchivosLINK(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_B5E136: FFreeStr var_9C = "": var_94 = ""
  loc_B5E13F: FFreeAd var_90 = "": var_98 = ""
  loc_B5E148: FFreeVar var_AC = ""
  loc_B5E14F: Branch loc_B5E287
  loc_B5E152: LitVarI2 var_AC, 6
  loc_B5E157: LitI4 1
  loc_B5E15C: FLdPr Me
  loc_B5E15F: MemLdRfVar from_stack_1.global_96
  loc_B5E162: CVarRef
  loc_B5E167: FLdRfVar var_CC
  loc_B5E16A: ImpAdCallFPR4  = Mid(, , )
  loc_B5E16F: FLdRfVar var_CC
  loc_B5E172: LitVarStr var_10C, "cajero"
  loc_B5E177: HardType
  loc_B5E178: EqVarBool
  loc_B5E17A: FFreeVar var_AC = ""
  loc_B5E181: BranchF loc_B5E207
  loc_B5E184: FLdPr Me
  loc_B5E187: VCallAd Control_ID_FeenAcpaMsk
  loc_B5E18A: FStAdFunc var_90
  loc_B5E18D: FLdPr var_90
  loc_B5E190: LateIdLdVar var_AC DispID_15 0
  loc_B5E197: PopAd
  loc_B5E199: FLdRfVar var_94
  loc_B5E19C: FLdPr Me
  loc_B5E19F: VCallAd Control_ID_NumeAcpaTxt
  loc_B5E1A2: FStAdFunc var_98
  loc_B5E1A5: FLdPr var_98
  loc_B5E1A8:  = Me.Text
  loc_B5E1AD: FLdPr Me
  loc_B5E1B0: VCallAd Control_ID_CodiEnreMsk
  loc_B5E1B3: FStAdFunc var_250
  loc_B5E1B6: FLdPr var_250
  loc_B5E1B9: LateIdLdVar var_CC DispID_22 0
  loc_B5E1C0: PopAd
  loc_B5E1C2: FLdPr Me
  loc_B5E1C5: MemLdStr global_96
  loc_B5E1C8: FLdRfVar var_CC
  loc_B5E1CB: CStrVarTmp
  loc_B5E1CC: FStStrNoPop var_254
  loc_B5E1CF: CI2Str
  loc_B5E1D1: ILdRf var_94
  loc_B5E1D4: CI2Str
  loc_B5E1D6: FLdRfVar var_AC
  loc_B5E1D9: CStrVarTmp
  loc_B5E1DA: FStStrNoPop var_9C
  loc_B5E1DD: FLdPr Me
  loc_B5E1E0: MemLdRfVar from_stack_1.global_68
  loc_B5E1E3: NewIfNullPr clspago
  loc_B5E1E6: Call clspago.CreaPagosdeCapturadeCajero24(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_B5E1EB: FFreeStr var_9C = "": var_94 = ""
  loc_B5E1F4: FFreeAd var_90 = "": var_98 = ""
  loc_B5E1FD: FFreeVar var_AC = ""
  loc_B5E204: Branch loc_B5E287
  loc_B5E207: FLdPr Me
  loc_B5E20A: VCallAd Control_ID_FeenAcpaMsk
  loc_B5E20D: FStAdFunc var_90
  loc_B5E210: FLdPr var_90
  loc_B5E213: LateIdLdVar var_AC DispID_15 0
  loc_B5E21A: PopAd
  loc_B5E21C: FLdRfVar var_94
  loc_B5E21F: FLdPr Me
  loc_B5E222: VCallAd Control_ID_NumeAcpaTxt
  loc_B5E225: FStAdFunc var_98
  loc_B5E228: FLdPr var_98
  loc_B5E22B:  = Me.Text
  loc_B5E230: FLdPr Me
  loc_B5E233: VCallAd Control_ID_CodiEnreMsk
  loc_B5E236: FStAdFunc var_250
  loc_B5E239: FLdPr var_250
  loc_B5E23C: LateIdLdVar var_CC DispID_22 0
  loc_B5E243: PopAd
  loc_B5E245: FLdPr Me
  loc_B5E248: MemLdStr global_96
  loc_B5E24B: FLdRfVar var_CC
  loc_B5E24E: CStrVarTmp
  loc_B5E24F: FStStrNoPop var_254
  loc_B5E252: CI2Str
  loc_B5E254: ILdRf var_94
  loc_B5E257: CI2Str
  loc_B5E259: FLdRfVar var_AC
  loc_B5E25C: CStrVarTmp
  loc_B5E25D: FStStrNoPop var_9C
  loc_B5E260: FLdPr Me
  loc_B5E263: MemLdRfVar from_stack_1.global_68
  loc_B5E266: NewIfNullPr clspago
  loc_B5E269: Call clspago.CreaPagosdeCapturadeArchivos(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_B5E26E: FFreeStr var_9C = "": var_94 = ""
  loc_B5E277: FFreeAd var_90 = "": var_98 = ""
  loc_B5E280: FFreeVar var_AC = ""
  loc_B5E287: LitI2_Byte 0
  loc_B5E289: FLdPr Me
  loc_B5E28C: Me.MousePointer = from_stack_1
  loc_B5E291: FLdPr Me
  loc_B5E294: VCallAd Control_ID_FeenAcpaMsk
  loc_B5E297: FStAdFunc var_90
  loc_B5E29A: FLdPr var_90
  loc_B5E29D: LateIdCall
  loc_B5E2A5: FFree1Ad var_90
  loc_B5E2A8: ExitProcHresult
End Sub

Private Sub NumeAcpaTxt_GotFocus() '9BD1A0
  'Data Table: 450134
  loc_9BD18C: FLdPr Me
  loc_9BD18F: VCallAd Control_ID_NumeAcpaTxt
  loc_9BD192: CVarAd
  loc_9BD196: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BD19B: FFree1Var var_94 = ""
  loc_9BD19E: ExitProcHresult
End Sub

Private Sub NumeAcpaTxt_Validate(Cancel As Boolean) 'AEA58C
  'Data Table: 450134
  loc_AEA40C: FLdRfVar var_8A
  loc_AEA40F: FLdPr Me
  loc_AEA412: VCallAd Control_ID_NumeAcpaTxt
  loc_AEA415: FStAdFunc var_88
  loc_AEA418: FLdPr var_88
  loc_AEA41B:  = Me.Enabled
  loc_AEA420: FLdI2 var_8A
  loc_AEA423: LitI2_Byte &HFF
  loc_AEA425: EqI2
  loc_AEA426: FFree1Ad var_88
  loc_AEA429: BranchF loc_AEA589
  loc_AEA42C: FLdRfVar var_90
  loc_AEA42F: FLdPr Me
  loc_AEA432: VCallAd Control_ID_NumeAcpaTxt
  loc_AEA435: FStAdFunc var_88
  loc_AEA438: FLdPr var_88
  loc_AEA43B:  = Me.Text
  loc_AEA440: LitI2_Byte 0
  loc_AEA442: LitI2_Byte 0
  loc_AEA444: ILdRf var_90
  loc_AEA447: LitStr "Numero de Grupo"
  loc_AEA44A: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_AEA44F: FStStrNoPop var_94
  loc_AEA452: FLdPr Me
  loc_AEA455: MemStStrCopy
  loc_AEA459: FFreeStr var_90 = ""
  loc_AEA460: FFree1Ad var_88
  loc_AEA463: FLdPr Me
  loc_AEA466: MemLdStr global_88
  loc_AEA469: LitStr vbNullString
  loc_AEA46C: NeStr
  loc_AEA46E: BranchF loc_AEA494
  loc_AEA471: FLdPr Me
  loc_AEA474: MemLdStr global_88
  loc_AEA477: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AEA47C: FLdPr Me
  loc_AEA47F: VCallAd Control_ID_NumeAcpaTxt
  loc_AEA482: CVarAd
  loc_AEA486: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AEA48B: FFree1Var var_A4 = ""
  loc_AEA48E: LitI2_Byte &HFF
  loc_AEA490: IStI2 Cancel
  loc_AEA493: ExitProcHresult
  loc_AEA494: FLdPr Me
  loc_AEA497: VCallAd Control_ID_FeenAcpaMsk
  loc_AEA49A: FStAdFunc var_88
  loc_AEA49D: FLdPr var_88
  loc_AEA4A0: LateIdLdVar var_A4 DispID_15 0
  loc_AEA4A7: PopAd
  loc_AEA4A9: FLdRfVar var_90
  loc_AEA4AC: FLdPr Me
  loc_AEA4AF: VCallAd Control_ID_NumeAcpaTxt
  loc_AEA4B2: FStAdFunc var_A8
  loc_AEA4B5: FLdPr var_A8
  loc_AEA4B8:  = Me.Text
  loc_AEA4BD: FLdRfVar var_AC
  loc_AEA4C0: ILdRf var_90
  loc_AEA4C3: CI2Str
  loc_AEA4C5: FLdRfVar var_A4
  loc_AEA4C8: CStrVarTmp
  loc_AEA4C9: FStStrNoPop var_94
  loc_AEA4CC: FLdPr Me
  loc_AEA4CF: MemLdRfVar from_stack_1.global_56
  loc_AEA4D2: NewIfNullPr clsacrepago
  loc_AEA4D5: from_stack_3v = clsacrepago.ValidaClave(from_stack_1v, from_stack_2v)
  loc_AEA4DA: ILdRf var_AC
  loc_AEA4DD: FLdPr Me
  loc_AEA4E0: MemStStrCopy
  loc_AEA4E4: FFreeStr var_94 = "": var_90 = ""
  loc_AEA4ED: FFreeAd var_88 = ""
  loc_AEA4F4: FFree1Var var_A4 = ""
  loc_AEA4F7: FLdPr Me
  loc_AEA4FA: MemLdStr global_88
  loc_AEA4FD: LitStr vbNullString
  loc_AEA500: NeStr
  loc_AEA502: BranchF loc_AEA528
  loc_AEA505: FLdPr Me
  loc_AEA508: MemLdStr global_88
  loc_AEA50B: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AEA510: FLdPr Me
  loc_AEA513: VCallAd Control_ID_NumeAcpaTxt
  loc_AEA516: CVarAd
  loc_AEA51A: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AEA51F: FFree1Var var_A4 = ""
  loc_AEA522: LitI2_Byte &HFF
  loc_AEA524: IStI2 Cancel
  loc_AEA527: ExitProcHresult
  loc_AEA528: FLdRfVar var_90
  loc_AEA52B: FLdPr Me
  loc_AEA52E: VCallAd Control_ID_NumeAcpaTxt
  loc_AEA531: FStAdFunc var_88
  loc_AEA534: FLdPr var_88
  loc_AEA537:  = Me.Text
  loc_AEA53C: ILdRf var_90
  loc_AEA53F: ImpAdCallI2 Proc_18_42_A841B8()
  loc_AEA544: FStStrNoPop var_94
  loc_AEA547: FLdPr Me
  loc_AEA54A: MemStStrCopy
  loc_AEA54E: FFreeStr var_90 = ""
  loc_AEA555: FFree1Ad var_88
  loc_AEA558: FLdPr Me
  loc_AEA55B: MemLdStr global_88
  loc_AEA55E: LitStr vbNullString
  loc_AEA561: NeStr
  loc_AEA563: BranchF loc_AEA589
  loc_AEA566: FLdPr Me
  loc_AEA569: MemLdStr global_88
  loc_AEA56C: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AEA571: FLdPr Me
  loc_AEA574: VCallAd Control_ID_NumeAcpaTxt
  loc_AEA577: CVarAd
  loc_AEA57B: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AEA580: FFree1Var var_A4 = ""
  loc_AEA583: LitI2_Byte &HFF
  loc_AEA585: IStI2 Cancel
  loc_AEA588: ExitProcHresult
  loc_AEA589: ExitProcHresult
End Sub

Private Sub FeenAcpaMsk_UnknownEvent_0 '9BBF10
  'Data Table: 450134
  loc_9BBEFC: FLdPr Me
  loc_9BBEFF: VCallAd Control_ID_FeenAcpaMsk
  loc_9BBF02: CVarAd
  loc_9BBF06: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BBF0B: FFree1Var var_94 = ""
  loc_9BBF0E: ExitProcHresult
End Sub

Private Sub FeenAcpaMsk_UnknownEvent_8 'AC58B0
  'Data Table: 450134
  loc_AC57B8: FLdPr Me
  loc_AC57BB: VCallAd Control_ID_FeenAcpaMsk
  loc_AC57BE: FStAdFunc var_88
  loc_AC57C1: FLdPr var_88
  loc_AC57C4: LateIdLdVar var_98 DispID_13 -32767
  loc_AC57CB: CBoolVar
  loc_AC57CD: FFree1Ad var_88
  loc_AC57D0: FFree1Var var_98 = ""
  loc_AC57D3: BranchF loc_AC58AD
  loc_AC57D6: FLdPr Me
  loc_AC57D9: VCallAd Control_ID_FeenAcpaMsk
  loc_AC57DC: FStAdFunc var_88
  loc_AC57DF: FLdPr var_88
  loc_AC57E2: LateIdLdVar var_98 DispID_15 0
  loc_AC57E9: CStrVarTmp
  loc_AC57EA: FStStrNoPop var_9C
  loc_AC57ED: ImpAdCallI2 Proc_18_7_A46DF4()
  loc_AC57F2: FStStrNoPop var_A0
  loc_AC57F5: FLdPr Me
  loc_AC57F8: MemStStrCopy
  loc_AC57FC: FFreeStr var_9C = ""
  loc_AC5803: FFree1Ad var_88
  loc_AC5806: FFree1Var var_98 = ""
  loc_AC5809: FLdPr Me
  loc_AC580C: MemLdStr global_88
  loc_AC580F: LitStr vbNullString
  loc_AC5812: NeStr
  loc_AC5814: BranchF loc_AC5839
  loc_AC5817: FLdPr Me
  loc_AC581A: MemLdStr global_88
  loc_AC581D: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AC5822: FLdPr Me
  loc_AC5825: VCallAd Control_ID_FeenAcpaMsk
  loc_AC5828: CVarAd
  loc_AC582C: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AC5831: FFree1Var var_98 = ""
  loc_AC5834: LitI2_Byte &HFF
  loc_AC5836: IStI2 Cancel
  loc_AC5839: FLdPr Me
  loc_AC583C: VCallAd Control_ID_FeenAcpaMsk
  loc_AC583F: FStAdFunc var_88
  loc_AC5842: FLdPr var_88
  loc_AC5845: LateIdLdVar var_98 DispID_15 0
  loc_AC584C: PopAd
  loc_AC584E: LitI4 1
  loc_AC5853: LitI4 1
  loc_AC5858: LitVarStr var_C0, "yyyy-mm-dd"
  loc_AC585D: FStVarCopyObj var_D0
  loc_AC5860: FLdRfVar var_D0
  loc_AC5863: FLdRfVar var_98
  loc_AC5866: CStrVarTmp
  loc_AC5867: CVarStr var_B0
  loc_AC586A: FLdRfVar var_E0
  loc_AC586D: ImpAdCallFPR4  = Format(, )
  loc_AC5872: FLdRfVar var_E0
  loc_AC5875: CStrVarVal var_9C
  loc_AC5879: ImpAdCallI2 Proc_270_107_AA35C8()
  loc_AC587E: CStrUI1
  loc_AC5880: FStStrNoPop var_A0
  loc_AC5883: FLdPr Me
  loc_AC5886: VCallAd Control_ID_NumeAcpaTxt
  loc_AC5889: FStAdFunc var_E4
  loc_AC588C: FLdPr var_E4
  loc_AC588F: Me.Text = from_stack_1
  loc_AC5894: FFreeStr var_9C = ""
  loc_AC589B: FFreeAd var_88 = ""
  loc_AC58A2: FFreeVar var_98 = "": var_B0 = "": var_D0 = ""
  loc_AC58AD: ExitProcHresult
End Sub

Private Sub FeenAcpaMsk_KeyPress(KeyAscii As Integer) 'A23CC4
  'Data Table: 450134
  loc_A23C7C: ILdI2 KeyAscii
  loc_A23C7F: CI4UI1
  loc_A23C80: LitI4 &H20
  loc_A23C85: EqI4
  loc_A23C86: BranchF loc_A23CC3
  loc_A23C89: LitVar_Missing var_A4
  loc_A23C8C: PopAdLdVar
  loc_A23C8D: LitVarI4
  loc_A23C95: PopAdLdVar
  loc_A23C96: ImpAdLdRf MemVar_D930A4
  loc_A23C99: NewIfNullPr frmCalendario
  loc_A23C9C: frmCalendario.Show from_stack_1, from_stack_2
  loc_A23CA1: ImpAdLdRf MemVar_D93028
  loc_A23CA4: CDargRef
  loc_A23CA8: FLdPr Me
  loc_A23CAB: VCallAd Control_ID_FeenAcpaMsk
  loc_A23CAE: FStAdFunc var_A8
  loc_A23CB1: FLdPr var_A8
  loc_A23CB4: LateIdSt
  loc_A23CB9: FFree1Ad var_A8
  loc_A23CBC: LitStr vbNullString
  loc_A23CBF: ImpAdStStrCopy MemVar_D93028
  loc_A23CC3: ExitProcHresult
End Sub

Private Function Proc_246_13_9AEA28() '9AEA28
  'Data Table: 450134
  loc_9AEA24: ExitProcHresult
End Function

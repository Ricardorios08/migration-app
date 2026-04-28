VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Begin VB.Form frmReenviarMail
  Caption = "Reenviar Mail"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmReenviarMail.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 435
  ClientWidth = 14775
  ClientHeight = 9375
  Begin VB.ComboBox FiltroCbo
    Style = 2
    Left = 240
    Top = 240
    Width = 4575
    Height = 420
    TabIndex = 4
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.CommandButton cmdSalir
    Caption = "Salir"
    Left = 7560
    Top = 8520
    Width = 1215
    Height = 495
    TabIndex = 1
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    CausesValidation = 0   'False
  End
  Begin VB.CommandButton cmdReenviar
    Caption = "Reenviar"
    Left = 5520
    Top = 8520
    Width = 1215
    Height = 495
    TabIndex = 0
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 240
    Top = 840
    Width = 14295
    Height = 7095
    TabIndex = 2
    OleObjectBlob = "frmReenviarMail.frx":08CA
  End
  Begin MSMask.MaskEdBox FiltroMsk
    Left = 4920
    Top = 240
    Width = 5775
    Height = 420
    TabIndex = 3
    OleObjectBlob = "frmReenviarMail.frx":0D58
  End
End

Attribute VB_Name = "frmReenviarMail"


Private Sub cmdSalir_Click() '95FD80
  'Data Table: 416DAC
  loc_95FD68: ILdRf Me
  loc_95FD6B: FStAdNoPop
  loc_95FD6F: ImpAdLdRf MemVar_C44F9C
  loc_95FD72: NewIfNullPr Me
  loc_95FD75: Me.Global.Unload from_stack_1
  loc_95FD7A: FFree1Ad var_88
  loc_95FD7D: ExitProcHresult
End Sub

Private Sub FiltroCbo_Click() '9CF058
  'Data Table: 416DAC
  loc_9CEF6C: LitVarStr var_94, vbNullString
  loc_9CEF71: PopAdLdVar
  loc_9CEF72: FLdPr Me
  loc_9CEF75: VCallAd Control_ID_FiltroMsk
  loc_9CEF78: FStAdFunc var_A8
  loc_9CEF7B: FLdPr var_A8
  loc_9CEF7E: LateIdSt
  loc_9CEF83: FFree1Ad var_A8
  loc_9CEF86: FLdRfVar var_AA
  loc_9CEF89: FLdPr Me
  loc_9CEF8C: VCallAd Control_ID_FiltroCbo
  loc_9CEF8F: FStAdFunc var_A8
  loc_9CEF92: FLdPr var_A8
  loc_9CEF95:  = Me.ListIndex
  loc_9CEF9A: FLdI2 var_AA
  loc_9CEF9D: FStI2 var_AC
  loc_9CEFA0: FFree1Ad var_A8
  loc_9CEFA3: FLdI2 var_AC
  loc_9CEFA6: LitI2_Byte 0
  loc_9CEFA8: EqI2
  loc_9CEFA9: BranchF loc_9CEFFD
  loc_9CEFAC: LitVarStr var_94, "&"
  loc_9CEFB1: PopAdLdVar
  loc_9CEFB2: FLdPr Me
  loc_9CEFB5: VCallAd Control_ID_FiltroMsk
  loc_9CEFB8: FStAdFunc var_A8
  loc_9CEFBB: FLdPr var_A8
  loc_9CEFBE: LateIdSt
  loc_9CEFC3: FFree1Ad var_A8
  loc_9CEFC6: LitVarStr var_94, "######"
  loc_9CEFCB: PopAdLdVar
  loc_9CEFCC: FLdPr Me
  loc_9CEFCF: VCallAd Control_ID_FiltroMsk
  loc_9CEFD2: FStAdFunc var_A8
  loc_9CEFD5: FLdPr var_A8
  loc_9CEFD8: LateIdSt
  loc_9CEFDD: FFree1Ad var_A8
  loc_9CEFE0: LitStr "NumeOrpa"
  loc_9CEFE3: FStStrCopy var_B0
  loc_9CEFE6: FLdRfVar var_B0
  loc_9CEFE9: FLdPr Me
  loc_9CEFEC: MemLdRfVar from_stack_1.global_52
  loc_9CEFEF: NewIfNullPr clsordenpago
  loc_9CEFF2: Call clsordenpago.Sort(from_stack_1v)
  loc_9CEFF7: FFree1Str var_B0
  loc_9CEFFA: Branch loc_9CF054
  loc_9CEFFD: FLdI2 var_AC
  loc_9CF000: LitI2_Byte 1
  loc_9CF002: EqI2
  loc_9CF003: BranchF loc_9CF054
  loc_9CF006: LitVarStr var_94, "&"
  loc_9CF00B: PopAdLdVar
  loc_9CF00C: FLdPr Me
  loc_9CF00F: VCallAd Control_ID_FiltroMsk
  loc_9CF012: FStAdFunc var_A8
  loc_9CF015: FLdPr var_A8
  loc_9CF018: LateIdSt
  loc_9CF01D: FFree1Ad var_A8
  loc_9CF020: LitVarStr var_94, vbNullString
  loc_9CF025: PopAdLdVar
  loc_9CF026: FLdPr Me
  loc_9CF029: VCallAd Control_ID_FiltroMsk
  loc_9CF02C: FStAdFunc var_A8
  loc_9CF02F: FLdPr var_A8
  loc_9CF032: LateIdSt
  loc_9CF037: FFree1Ad var_A8
  loc_9CF03A: LitStr "ExpeImpu"
  loc_9CF03D: FStStrCopy var_B0
  loc_9CF040: FLdRfVar var_B0
  loc_9CF043: FLdPr Me
  loc_9CF046: MemLdRfVar from_stack_1.global_52
  loc_9CF049: NewIfNullPr clsordenpago
  loc_9CF04C: Call clsordenpago.Sort(from_stack_1v)
  loc_9CF051: FFree1Str var_B0
  loc_9CF054: ExitProcHresult
  loc_9CF055: FFreeAd var_FFFFFFCC = ""
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '94BCF0
  'Data Table: 416DAC
  loc_94BCDC: FLdPr Me
  loc_94BCDF: VCallAd Control_ID_FiltroMsk
  loc_94BCE2: CVarAd
  loc_94BCE6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94BCEB: FFree1Var var_94 = ""
  loc_94BCEE: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change(arg_34) 'A4C640
  'Data Table: 416DAC
  loc_A4C3B8: ILdRf Me
  loc_A4C3BB: CastAd
  loc_A4C3BE: FStAdFunc var_88
  loc_A4C3C1: FLdRfVar var_88
  loc_A4C3C4: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_A4C3C9: FFree1Ad var_88
  loc_A4C3CC: FLdPr Me
  loc_A4C3CF: VCallAd Control_ID_FiltroMsk
  loc_A4C3D2: FStAdFunc var_88
  loc_A4C3D5: FLdPr var_88
  loc_A4C3D8: LateIdLdVar var_98 DispID_22 0
  loc_A4C3DF: CStrVarTmp
  loc_A4C3E0: FStStrNoPop var_9C
  loc_A4C3E3: ImpAdCallI2 Trim$()
  loc_A4C3E8: FStStrNoPop var_A0
  loc_A4C3EB: LitStr vbNullString
  loc_A4C3EE: NeStr
  loc_A4C3F0: FFreeStr var_9C = ""
  loc_A4C3F7: FFree1Ad var_88
  loc_A4C3FA: FFree1Var var_98 = ""
  loc_A4C3FD: BranchF loc_A4C519
  loc_A4C400: FLdRfVar var_A2
  loc_A4C403: FLdPr Me
  loc_A4C406: VCallAd Control_ID_FiltroCbo
  loc_A4C409: FStAdFunc var_88
  loc_A4C40C: FLdPr var_88
  loc_A4C40F:  = Me.ListIndex
  loc_A4C414: FLdI2 var_A2
  loc_A4C417: LitI2_Byte 0
  loc_A4C419: EqI2
  loc_A4C41A: FFree1Ad var_88
  loc_A4C41D: BranchF loc_A4C488
  loc_A4C420: LitStr "NumeOrpa = "
  loc_A4C423: FLdPr Me
  loc_A4C426: VCallAd Control_ID_FiltroMsk
  loc_A4C429: FStAdFunc var_88
  loc_A4C42C: FLdPr var_88
  loc_A4C42F: LateIdLdVar var_98 DispID_22 0
  loc_A4C436: CStrVarTmp
  loc_A4C437: FStStrNoPop var_9C
  loc_A4C43A: ConcatStr
  loc_A4C43B: PopTmpLdAdStr
  loc_A4C43F: FLdPr Me
  loc_A4C442: MemLdRfVar from_stack_1.global_52
  loc_A4C445: NewIfNullPr clsordenpago
  loc_A4C448: Call clsordenpago.Filter(from_stack_1v)
  loc_A4C44D: FFreeStr var_9C = ""
  loc_A4C454: FFree1Ad var_88
  loc_A4C457: FFree1Var var_98 = ""
  loc_A4C45A: LitStr "Orden de Pago sea igual a: "
  loc_A4C45D: FLdPr Me
  loc_A4C460: VCallAd Control_ID_FiltroMsk
  loc_A4C463: FStAdFunc var_88
  loc_A4C466: FLdPr var_88
  loc_A4C469: LateIdLdVar var_98 DispID_22 0
  loc_A4C470: CStrVarTmp
  loc_A4C471: FStStrNoPop var_9C
  loc_A4C474: ConcatStr
  loc_A4C475: CVarStr var_C4
  loc_A4C478: FStVar var_B4
  loc_A4C47C: FFree1Str var_9C
  loc_A4C47F: FFree1Ad var_88
  loc_A4C482: FFree1Var var_98 = ""
  loc_A4C485: Branch loc_A4C516
  loc_A4C488: FLdRfVar var_A2
  loc_A4C48B: FLdPr Me
  loc_A4C48E: VCallAd Control_ID_FiltroCbo
  loc_A4C491: FStAdFunc var_88
  loc_A4C494: FLdPr var_88
  loc_A4C497:  = Me.ListIndex
  loc_A4C49C: FLdI2 var_A2
  loc_A4C49F: LitI2_Byte 1
  loc_A4C4A1: EqI2
  loc_A4C4A2: FFree1Ad var_88
  loc_A4C4A5: BranchF loc_A4C516
  loc_A4C4A8: LitStr "ExpeImpu LIKE '"
  loc_A4C4AB: FLdPr Me
  loc_A4C4AE: VCallAd Control_ID_FiltroMsk
  loc_A4C4B1: FStAdFunc var_88
  loc_A4C4B4: FLdPr var_88
  loc_A4C4B7: LateIdLdVar var_98 DispID_22 0
  loc_A4C4BE: CStrVarTmp
  loc_A4C4BF: FStStrNoPop var_9C
  loc_A4C4C2: ConcatStr
  loc_A4C4C3: FStStrNoPop var_A0
  loc_A4C4C6: LitStr Chr(37) & "'"
  loc_A4C4C9: ConcatStr
  loc_A4C4CA: PopTmpLdAdStr
  loc_A4C4CE: FLdPr Me
  loc_A4C4D1: MemLdRfVar from_stack_1.global_52
  loc_A4C4D4: NewIfNullPr clsordenpago
  loc_A4C4D7: Call clsordenpago.Filter(from_stack_1v)
  loc_A4C4DC: FFreeStr var_9C = "": var_A0 = ""
  loc_A4C4E5: FFree1Ad var_88
  loc_A4C4E8: FFree1Var var_98 = ""
  loc_A4C4EB: LitStr "Expediente comience con: "
  loc_A4C4EE: FLdPr Me
  loc_A4C4F1: VCallAd Control_ID_FiltroMsk
  loc_A4C4F4: FStAdFunc var_88
  loc_A4C4F7: FLdPr var_88
  loc_A4C4FA: LateIdLdVar var_98 DispID_22 0
  loc_A4C501: CStrVarTmp
  loc_A4C502: FStStrNoPop var_9C
  loc_A4C505: ConcatStr
  loc_A4C506: CVarStr var_C4
  loc_A4C509: FStVar var_B4
  loc_A4C50D: FFree1Str var_9C
  loc_A4C510: FFree1Ad var_88
  loc_A4C513: FFree1Var var_98 = ""
  loc_A4C516: Branch loc_A4C53C
  loc_A4C519: LitStr vbNullString
  loc_A4C51C: FStStrCopy var_9C
  loc_A4C51F: FLdRfVar var_9C
  loc_A4C522: FLdPr Me
  loc_A4C525: MemLdRfVar from_stack_1.global_52
  loc_A4C528: NewIfNullPr clsordenpago
  loc_A4C52B: Call clsordenpago.Filter(from_stack_1v)
  loc_A4C530: FFree1Str var_9C
  loc_A4C533: LitVarStr var_D8, vbNullString
  loc_A4C538: FStVarCopy
  loc_A4C53C: FLdRfVar var_DC
  loc_A4C53F: FLdPr Me
  loc_A4C542: MemLdRfVar from_stack_1.global_52
  loc_A4C545: NewIfNullPr clsordenpago
  loc_A4C548: from_stack_1 = clsordenpago.RecordCount
  loc_A4C54D: ILdRf var_DC
  loc_A4C550: LitI4 0
  loc_A4C555: GtI4
  loc_A4C556: BranchF loc_A4C5F4
  loc_A4C559: FLdPr Me
  loc_A4C55C: MemLdRfVar from_stack_1.global_52
  loc_A4C55F: NewIfNullAd
  loc_A4C562: FStAd var_E0 
  loc_A4C566: FLdRfVar var_E0
  loc_A4C569: CVarRef
  loc_A4C56E: ILdRf Me
  loc_A4C571: CastAd
  loc_A4C574: FStAdFunc var_88
  loc_A4C577: FLdRfVar var_88
  loc_A4C57A: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_A4C57F: ILdRf var_E0
  loc_A4C582: CastAd
  loc_A4C585: FLdPr Me
  loc_A4C588: MemStAdFunc
  loc_A4C58C: FFreeAd var_88 = ""
  loc_A4C593: LitI4 0
  loc_A4C598: LitI4 1
  loc_A4C59D: FLdRfVar var_E4
  loc_A4C5A0: Redim
  loc_A4C5AA: FLdPr Me
  loc_A4C5AD: MemLdRfVar from_stack_1.global_52
  loc_A4C5B0: NewIfNullAd
  loc_A4C5B3: FStAd var_88 
  loc_A4C5B7: FLdRfVar var_88
  loc_A4C5BA: CVarRef
  loc_A4C5BF: ParmAry1St
  loc_A4C5C5: FLdPr Me
  loc_A4C5C8: VCallAd Control_ID_dgdABMS
  loc_A4C5CB: CVarAd
  loc_A4C5CF: ParmAry1St
  loc_A4C5D5: FLdRfVar var_E4
  loc_A4C5D8: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A4C5DD: ILdRf var_88
  loc_A4C5E0: CastAd
  loc_A4C5E3: FLdPr Me
  loc_A4C5E6: MemStAdFunc
  loc_A4C5EA: FLdRfVar var_E4
  loc_A4C5ED: Erase
  loc_A4C5EE: FFree1Ad var_88
  loc_A4C5F1: Branch loc_A4C608
  loc_A4C5F4: ILdRf Me
  loc_A4C5F7: CastAd
  loc_A4C5FA: FStAdFunc var_88
  loc_A4C5FD: FLdRfVar var_88
  loc_A4C600: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_A4C605: FFree1Ad var_88
  loc_A4C608: FLdPr Me
  loc_A4C60B: VCallAd Control_ID_dgdABMS
  loc_A4C60E: FStAdFunc var_E0
  loc_A4C611: LitStr "Orden/es de Pago pagada/s"
  loc_A4C614: FStStrCopy var_A0
  loc_A4C617: FLdRfVar var_A0
  loc_A4C61A: FLdRfVar var_B4
  loc_A4C61D: CStrVarVal var_9C
  loc_A4C621: FLdZeroAd var_E0
  loc_A4C624: FStAdFunc var_88
  loc_A4C627: FLdRfVar var_88
  loc_A4C62A: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_A4C62F: FFreeStr var_9C = ""
  loc_A4C636: FFreeAd var_88 = ""
  loc_A4C63D: ExitProcHresult
  loc_A4C63E: PopTmpLdAdStr arg_3403
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) '942E84
  'Data Table: 416DAC
  loc_942E74: ILdI2 KeyAscii
  loc_942E77: LitI2_Byte &H27
  loc_942E79: EqI2
  loc_942E7A: BranchF loc_942E82
  loc_942E7D: LitI2_Byte 0
  loc_942E7F: IStI2 KeyAscii
  loc_942E82: ExitProcHresult
End Sub

Private Sub cmdReenviar_Click() 'A68680
  'Data Table: 416DAC
  loc_A68364: LitStr vbNullString
  loc_A68367: FLdPr Me
  loc_A6836A: MemStStrCopy
  loc_A6836E: FLdPr Me
  loc_A68371: MemLdStr global_64
  loc_A68374: LitStr vbNullString
  loc_A68377: NeStr
  loc_A68379: BranchF loc_A6837D
  loc_A6837C: ExitProcHresult
  loc_A6837D: FLdRfVar var_C0
  loc_A68380: FLdRfVar var_B0
  loc_A68383: LitVarStr var_AC, "PeriInfo"
  loc_A68388: PopAdLdVar
  loc_A68389: FLdRfVar var_9C
  loc_A6838C: FLdRfVar var_98
  loc_A6838F: FLdPr Me
  loc_A68392: MemLdRfVar from_stack_1.global_52
  loc_A68395: NewIfNullPr clsordenpago
  loc_A68398: from_stack_1v = clsordenpago.RsFrmGet()
  loc_A6839D: FLdPr var_98
  loc_A683A0:  = Me.Fields
  loc_A683A5: FLdPr var_9C
  loc_A683A8: from_stack_2 = Me.Item(from_stack_1)
  loc_A683AD: FLdPr var_B0
  loc_A683B0:  = Me.Value
  loc_A683B5: FLdRfVar var_12C
  loc_A683B8: FLdRfVar var_11C
  loc_A683BB: LitVarStr var_118, "NumeOrpa"
  loc_A683C0: PopAdLdVar
  loc_A683C1: FLdRfVar var_108
  loc_A683C4: FLdRfVar var_104
  loc_A683C7: FLdPr Me
  loc_A683CA: MemLdRfVar from_stack_1.global_52
  loc_A683CD: NewIfNullPr clsordenpago
  loc_A683D0: from_stack_1v = clsordenpago.RsFrmGet()
  loc_A683D5: FLdPr var_104
  loc_A683D8:  = Me.Fields
  loc_A683DD: FLdPr var_108
  loc_A683E0: from_stack_2 = Me.Item(from_stack_1)
  loc_A683E5: FLdPr var_11C
  loc_A683E8:  = Me.Value
  loc_A683ED: FLdPr Me
  loc_A683F0: MemLdRfVar from_stack_1.global_56
  loc_A683F3: LitStr "SELECT cheque.NumeOrpa, cheque.CucuPers, DetaProv, MailPers, cheque.FepaCheq"
  loc_A683F6: LitStr " FROM cheque"
  loc_A683F9: ConcatStr
  loc_A683FA: FStStrNoPop var_88
  loc_A683FD: LitStr " INNER JOIN proveedor ON  proveedor.CucuPers = cheque.CucuPers"
  loc_A68400: ConcatStr
  loc_A68401: FStStrNoPop var_8C
  loc_A68404: LitStr " INNER JOIN infogov.persona ON persona.CucuPers = proveedor.CucuPers"
  loc_A68407: ConcatStr
  loc_A68408: FStStrNoPop var_90
  loc_A6840B: LitStr " AND MailPers <> ''"
  loc_A6840E: ConcatStr
  loc_A6840F: FStStrNoPop var_94
  loc_A68412: LitStr " WHERE cheque.PeriInfo = "
  loc_A68415: ConcatStr
  loc_A68416: CVarStr var_D0
  loc_A68419: FLdRfVar var_C0
  loc_A6841C: ConcatVar var_E0
  loc_A68420: LitVarStr var_F0, " AND NumeOrpa = "
  loc_A68425: ConcatVar var_100
  loc_A68429: FLdRfVar var_12C
  loc_A6842C: ConcatVar var_13C
  loc_A68430: LitVarStr var_14C, " AND FepaCheq IS NOT NULL"
  loc_A68435: ConcatVar var_15C
  loc_A68439: LitVarStr var_16C, " GROUP BY cheque.CucuPers"
  loc_A6843E: ConcatVar var_17C
  loc_A68442: LitVarStr var_18C, " ORDER BY cheque.CucuPers;"
  loc_A68447: ConcatVar var_19C
  loc_A6844B: CStrVarVal var_1A0
  loc_A6844F: ImpAdCallFPR4 Proc_261_46_9AA7A0(, )
  loc_A68454: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = ""
  loc_A68461: FFreeAd var_98 = "": var_9C = "": var_B0 = "": var_104 = "": var_108 = ""
  loc_A68470: FFreeVar var_D0 = "": var_C0 = "": var_E0 = "": var_100 = "": var_12C = "": var_13C = "": var_15C = "": var_17C = ""
  loc_A68485: FLdRfVar var_1A4
  loc_A68488: FLdPr Me
  loc_A6848B: MemLdPr global_56
  loc_A6848E:  = Me.RecordCount
  loc_A68493: ILdRf var_1A4
  loc_A68496: LitI4 0
  loc_A6849B: GtI4
  loc_A6849C: BranchF loc_A6866F
  loc_A6849F: FLdRfVar var_1A6
  loc_A684A2: FLdPr Me
  loc_A684A5: MemLdPr global_56
  loc_A684A8:  = Me.EOF
  loc_A684AD: FLdI2 var_1A6
  loc_A684B0: NotI4
  loc_A684B1: BranchF loc_A6866C
  loc_A684B4: FLdRfVar var_C0
  loc_A684B7: FLdRfVar var_9C
  loc_A684BA: LitVarStr var_AC, "MailPers"
  loc_A684BF: PopAdLdVar
  loc_A684C0: FLdRfVar var_98
  loc_A684C3: FLdPr Me
  loc_A684C6: MemLdPr global_56
  loc_A684C9:  = Me.Fields
  loc_A684CE: FLdPr var_98
  loc_A684D1: from_stack_2 = Me.Item(from_stack_1)
  loc_A684D6: FLdPr var_9C
  loc_A684D9:  = Me.Value
  loc_A684DE: FLdRfVar var_C0
  loc_A684E1: LitVarStr var_F0, vbNullString
  loc_A684E6: HardType
  loc_A684E7: NeVarBool
  loc_A684E9: FFreeAd var_98 = ""
  loc_A684F0: FFree1Var var_C0 = ""
  loc_A684F3: BranchF loc_A68632
  loc_A684F6: FLdRfVar var_E0
  loc_A684F9: FLdRfVar var_9C
  loc_A684FC: LitVarStr var_AC, "MailPers"
  loc_A68501: PopAdLdVar
  loc_A68502: FLdRfVar var_98
  loc_A68505: FLdPr Me
  loc_A68508: MemLdPr global_56
  loc_A6850B:  = Me.Fields
  loc_A68510: FLdPr var_98
  loc_A68513: from_stack_2 = Me.Item(from_stack_1)
  loc_A68518: FLdPr var_9C
  loc_A6851B:  = Me.Value
  loc_A68520: FLdRfVar var_100
  loc_A68523: FLdRfVar var_104
  loc_A68526: LitVarStr var_F0, "DetaProv"
  loc_A6852B: PopAdLdVar
  loc_A6852C: FLdRfVar var_B0
  loc_A6852F: FLdPr Me
  loc_A68532: MemLdPr global_56
  loc_A68535:  = Me.Fields
  loc_A6853A: FLdPr var_B0
  loc_A6853D: from_stack_2 = Me.Item(from_stack_1)
  loc_A68542: FLdPr var_104
  loc_A68545:  = Me.Value
  loc_A6854A: FLdRfVar var_12C
  loc_A6854D: FLdRfVar var_11C
  loc_A68550: LitVarStr var_118, "NumeOrpa"
  loc_A68555: PopAdLdVar
  loc_A68556: FLdRfVar var_108
  loc_A68559: FLdPr Me
  loc_A6855C: MemLdPr global_56
  loc_A6855F:  = Me.Fields
  loc_A68564: FLdPr var_108
  loc_A68567: from_stack_2 = Me.Item(from_stack_1)
  loc_A6856C: FLdPr var_11C
  loc_A6856F:  = Me.Value
  loc_A68574: FLdRfVar var_13C
  loc_A68577: FLdRfVar var_1B0
  loc_A6857A: LitVarStr var_14C, "CucuPers"
  loc_A6857F: PopAdLdVar
  loc_A68580: FLdRfVar var_1AC
  loc_A68583: FLdPr Me
  loc_A68586: MemLdPr global_56
  loc_A68589:  = Me.Fields
  loc_A6858E: FLdPr var_1AC
  loc_A68591: from_stack_2 = Me.Item(from_stack_1)
  loc_A68596: FLdPr var_1B0
  loc_A68599:  = Me.Value
  loc_A6859E: FLdRfVar var_1B8
  loc_A685A1: LitVarStr var_16C, "FepaCheq"
  loc_A685A6: PopAdLdVar
  loc_A685A7: FLdRfVar var_1B4
  loc_A685AA: FLdPr Me
  loc_A685AD: MemLdPr global_56
  loc_A685B0:  = Me.Fields
  loc_A685B5: FLdPr var_1B4
  loc_A685B8: from_stack_2 = Me.Item(from_stack_1)
  loc_A685BD: LitI4 1
  loc_A685C2: LitI4 1
  loc_A685C7: LitVarStr var_18C, "dd/mm/yyyy"
  loc_A685CC: FStVarCopyObj var_D0
  loc_A685CF: FLdRfVar var_D0
  loc_A685D2: FLdZeroAd var_1B8
  loc_A685D5: CVarAd
  loc_A685D9: ImpAdCallI2 Format$(, )
  loc_A685DE: FStStrNoPop var_94
  loc_A685E1: FLdRfVar var_13C
  loc_A685E4: CStrVarTmp
  loc_A685E5: FStStrNoPop var_90
  loc_A685E8: FLdRfVar var_12C
  loc_A685EB: CI4Var
  loc_A685ED: ImpAdLdI2 MemVar_C3D064
  loc_A685F0: FLdRfVar var_100
  loc_A685F3: CStrVarTmp
  loc_A685F4: FStStrNoPop var_8C
  loc_A685F7: FLdRfVar var_E0
  loc_A685FA: CStrVarTmp
  loc_A685FB: FStStrNoPop var_88
  loc_A685FE: ImpAdCallFPR4 Proc_261_70_A02748(, , , , , )
  loc_A68603: FFreeStr var_88 = "": var_8C = "": var_90 = ""
  loc_A6860E: FFreeAd var_98 = "": var_B0 = "": var_108 = "": var_1AC = "": var_1B4 = "": var_9C = "": var_104 = "": var_11C = ""
  loc_A68623: FFreeVar var_C0 = "": var_D0 = "": var_E0 = "": var_100 = "": var_12C = ""
  loc_A68632: FLdRfVar var_1A6
  loc_A68635: ImpAdLdRf MemVar_C3D828
  loc_A68638: NewIfNullPr dlgEnvioEmailPagado
  loc_A6863B:  = dlgEnvioEmailPagado.Enabled
  loc_A68640: FLdI2 var_1A6
  loc_A68643: BranchF loc_A6865E
  loc_A68646: ImpAdLdRf MemVar_C3D828
  loc_A68649: NewIfNullAd
  loc_A6864C: FStAdNoPop
  loc_A68650: ImpAdLdRf MemVar_C44F9C
  loc_A68653: NewIfNullPr Me
  loc_A68656: Me.Global.Unload from_stack_1
  loc_A6865B: FFree1Ad var_98
  loc_A6865E: FLdPr Me
  loc_A68661: MemLdPr global_56
  loc_A68664: Me.MoveNext
  loc_A68669: Branch loc_A6849F
  loc_A6866C: Branch loc_A6867C
  loc_A6866F: LitI4 0
  loc_A68674: LitStr "No hay correo para enviar. Verifique..."
  loc_A68677: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A6867C: ExitProcHresult
  loc_A6867D: PutRecFxStr4
End Sub

Private Sub Form_Load() '9D6658
  'Data Table: 416DAC
  loc_9D6570: LitStr "Recordatorio..."
  loc_9D6573: LitStr "próximamente esta pantalla pasará al sistema >> INFOGOV 3 <<"
  loc_9D6576: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_9D657B: LitStr "SELECT * FROM ordenpago WHERE PeriInfo = "
  loc_9D657E: ImpAdLdI2 MemVar_C3D064
  loc_9D6581: CStrUI1
  loc_9D6583: FStStrNoPop var_88
  loc_9D6586: ConcatStr
  loc_9D6587: FStStrNoPop var_8C
  loc_9D658A: LitStr " ORDER BY NumeOrpa;"
  loc_9D658D: ConcatStr
  loc_9D658E: FStStrNoPop var_90
  loc_9D6591: FLdPr Me
  loc_9D6594: MemLdRfVar from_stack_1.global_52
  loc_9D6597: NewIfNullPr clsordenpago
  loc_9D659A: Call clsordenpago.RedefineRS(from_stack_1v)
  loc_9D659F: FFreeStr var_88 = "": var_8C = ""
  loc_9D65A8: LitVarI2 var_A0, 0
  loc_9D65AD: PopAdLdVar
  loc_9D65AE: LitStr "Orden de Pago"
  loc_9D65B1: FLdPr Me
  loc_9D65B4: VCallAd Control_ID_FiltroCbo
  loc_9D65B7: FStAdFunc var_A4
  loc_9D65BA: FLdPr var_A4
  loc_9D65BD: Me.AddItem from_stack_1, from_stack_2
  loc_9D65C2: FFree1Ad var_A4
  loc_9D65C5: LitVarI2 var_A0, 1
  loc_9D65CA: PopAdLdVar
  loc_9D65CB: LitStr "Expediente"
  loc_9D65CE: FLdPr Me
  loc_9D65D1: VCallAd Control_ID_FiltroCbo
  loc_9D65D4: FStAdFunc var_A4
  loc_9D65D7: FLdPr var_A4
  loc_9D65DA: Me.AddItem from_stack_1, from_stack_2
  loc_9D65DF: FFree1Ad var_A4
  loc_9D65E2: LitI2_Byte 0
  loc_9D65E4: FLdPr Me
  loc_9D65E7: VCallAd Control_ID_FiltroCbo
  loc_9D65EA: FStAdFunc var_A4
  loc_9D65ED: FLdPr var_A4
  loc_9D65F0: Me.ListIndex = from_stack_1
  loc_9D65F5: FFree1Ad var_A4
  loc_9D65F8: LitI4 0
  loc_9D65FD: LitI4 1
  loc_9D6602: FLdRfVar var_A8
  loc_9D6605: Redim
  loc_9D660F: FLdPr Me
  loc_9D6612: MemLdRfVar from_stack_1.global_52
  loc_9D6615: NewIfNullAd
  loc_9D6618: FStAd var_A4 
  loc_9D661C: FLdRfVar var_A4
  loc_9D661F: CVarRef
  loc_9D6624: ParmAry1St
  loc_9D662A: FLdPr Me
  loc_9D662D: VCallAd Control_ID_dgdABMS
  loc_9D6630: CVarAd
  loc_9D6634: ParmAry1St
  loc_9D663A: FLdRfVar var_A8
  loc_9D663D: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_9D6642: ILdRf var_A4
  loc_9D6645: CastAd
  loc_9D6648: FLdPr Me
  loc_9D664B: MemStAdFunc
  loc_9D664F: FLdRfVar var_A8
  loc_9D6652: Erase
  loc_9D6653: FFree1Ad var_A4
  loc_9D6656: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '948F40
  'Data Table: 416DAC
  loc_948F2C: ILdI2 KeyAscii
  loc_948F2F: CI4UI1
  loc_948F30: LitI4 &HD
  loc_948F35: EqI4
  loc_948F36: BranchF loc_948F3E
  loc_948F39: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_948F3E: ExitProcHresult
End Sub

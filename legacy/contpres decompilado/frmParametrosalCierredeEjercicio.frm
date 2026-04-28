VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmParametrosalCierredeEjercicio
  Caption = "Parámetros al Cierre de Ejercicio"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmParametrosalCierredeEjercicio.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 435
  ClientWidth = 15195
  ClientHeight = 8970
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 12
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin VB.Frame Frame
    Caption = " Parámetros al Cierre de Ejercicio "
    Left = 120
    Top = 3720
    Width = 14415
    Height = 5295
    TabIndex = 3
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin MSMask.MaskEdBox ReejPacoMsk
      Left = 6480
      Top = 960
      Width = 1815
      Height = 375
      TabIndex = 7
      OleObjectBlob = "frmParametrosalCierredeEjercicio.frx":08CA
      DataField = "ReejPaco"
    End
    Begin MSMask.MaskEdBox FeretePacoMsk
      Left = 6510
      Top = 1560
      Width = 1335
      Height = 360
      TabIndex = 10
      OleObjectBlob = "frmParametrosalCierredeEjercicio.frx":0972
      DataField = "FeretePaco"
    End
    Begin VB.Label Label10
      Caption = "Fecha decl. retenciones:"
      Left = 3780
      Top = 1590
      Width = 2595
      Height = 300
      TabIndex = 9
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
    Begin VB.Label PeriInfoLbl
      Left = 6480
      Top = 360
      Width = 1095
      Height = 375
      TabIndex = 5
      BorderStyle = 1 'Fixed Single
      DataField = "PeriInfo"
    End
    Begin VB.Label Label1
      Caption = "Periodo:"
      Left = 5505
      Top = 360
      Width = 870
      Height = 300
      TabIndex = 4
      AutoSize = -1  'True
    End
    Begin VB.Label ReejPacoLbl
      Left = 8400
      Top = 960
      Width = 5895
      Height = 375
      TabIndex = 8
      BorderStyle = 1 'Fixed Single
      DataField = "ReejDeta"
    End
    Begin VB.Label Label11
      Caption = "Resultado del Ejercicio:"
      Left = 3900
      Top = 960
      Width = 2475
      Height = 300
      TabIndex = 6
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
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 840
    Width = 14415
    Height = 2775
    TabIndex = 2
    OleObjectBlob = "frmParametrosalCierredeEjercicio.frx":0A22
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmParametrosalCierredeEjercicio.frx":12AC
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 15195
    Height = 660
    TabIndex = 0
    OleObjectBlob = "frmParametrosalCierredeEjercicio.frx":8E2A
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 1
      TabStop = 0   'False
      Picture = "frmParametrosalCierredeEjercicio.frx":9386
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
End

Attribute VB_Name = "frmParametrosalCierredeEjercicio"


Private Sub cmdCancelar_Click() '9B56E8
  'Data Table: 42B518
  loc_9B5644: LitI2_Byte 0
  loc_9B5646: CUI1I2
  loc_9B5648: FLdPr Me
  loc_9B564B: MemStUI1
  loc_9B564F: ILdRf Me
  loc_9B5652: CastAd
  loc_9B5655: FStAdFunc var_88
  loc_9B5658: FLdRfVar var_88
  loc_9B565B: ImpAdCallFPR4 Proc_261_1_AC96D8()
  loc_9B5660: FFree1Ad var_88
  loc_9B5663: LitI4 0
  loc_9B5668: LitI4 0
  loc_9B566D: FLdRfVar var_8C
  loc_9B5670: Redim
  loc_9B567A: FLdPr Me
  loc_9B567D: VCallAd Control_ID_dgdABMS
  loc_9B5680: CVarAd
  loc_9B5684: ParmAry1St
  loc_9B568A: FLdRfVar var_8C
  loc_9B568D: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9B5692: FLdRfVar var_8C
  loc_9B5695: Erase
  loc_9B5696: FLdPr Me
  loc_9B5699: MemLdRfVar from_stack_1.global_52
  loc_9B569C: NewIfNullAd
  loc_9B569F: FStAd var_A0 
  loc_9B56A3: FLdRfVar var_A0
  loc_9B56A6: CVarRef
  loc_9B56AB: ILdRf Me
  loc_9B56AE: CastAd
  loc_9B56B1: FStAdFunc var_88
  loc_9B56B4: FLdRfVar var_88
  loc_9B56B7: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_9B56BC: ILdRf var_A0
  loc_9B56BF: CastAd
  loc_9B56C2: FLdPr Me
  loc_9B56C5: MemStAdFunc
  loc_9B56C9: FFreeAd var_88 = ""
  loc_9B56D0: ILdRf Me
  loc_9B56D3: CastAd
  loc_9B56D6: FStAdFunc var_88
  loc_9B56D9: FLdRfVar var_88
  loc_9B56DC: ImpAdCallFPR4 Proc_261_14_9D98D4()
  loc_9B56E1: FFree1Ad var_88
  loc_9B56E4: ExitProcHresult
End Sub

Private Sub Form_Load() '9D4974
  'Data Table: 42B518
  loc_9D48A4: LitI2_Byte 0
  loc_9D48A6: CR8I2
  loc_9D48A7: PopFPR4
  loc_9D48A8: FLdPr Me
  loc_9D48AB: Me.Left = from_stack_1s
  loc_9D48B0: LitI2_Byte 0
  loc_9D48B2: CR8I2
  loc_9D48B3: PopFPR4
  loc_9D48B4: FLdPr Me
  loc_9D48B7: Me.Top = from_stack_1s
  loc_9D48BC: LitStr "SELECT paraconta.*"
  loc_9D48BF: LitStr ", reejcuco.DetaCuco AS ReejDeta"
  loc_9D48C2: ConcatStr
  loc_9D48C3: FStStrNoPop var_88
  loc_9D48C6: LitStr " FROM paraconta"
  loc_9D48C9: ConcatStr
  loc_9D48CA: FStStrNoPop var_8C
  loc_9D48CD: LitStr " LEFT JOIN infogov.cuentacontable AS reejcuco ON reejcuco.PeriInfo = paraconta.PeriInfo AND reejcuco.CodiCuco = paraconta.ReejPaco"
  loc_9D48D0: ConcatStr
  loc_9D48D1: FStStrNoPop var_90
  loc_9D48D4: LitStr " WHERE paraconta.PeriInfo <= "
  loc_9D48D7: ConcatStr
  loc_9D48D8: FStStrNoPop var_94
  loc_9D48DB: ImpAdLdI2 MemVar_C3D064
  loc_9D48DE: CStrUI1
  loc_9D48E0: FStStrNoPop var_98
  loc_9D48E3: ConcatStr
  loc_9D48E4: FStStrNoPop var_9C
  loc_9D48E7: LitStr " ORDER BY paraconta.PeriInfo DESC"
  loc_9D48EA: ConcatStr
  loc_9D48EB: FStStrNoPop var_A0
  loc_9D48EE: FLdPr Me
  loc_9D48F1: MemLdRfVar from_stack_1.global_52
  loc_9D48F4: NewIfNullPr clsparaconta
  loc_9D48F7: Call clsparaconta.RedefineRS(from_stack_1v)
  loc_9D48FC: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_9D490D: Call cmdCancelar_Click()
  loc_9D4912: LitI4 0
  loc_9D4917: LitI4 1
  loc_9D491C: FLdRfVar var_A4
  loc_9D491F: Redim
  loc_9D4929: FLdPr Me
  loc_9D492C: MemLdRfVar from_stack_1.global_52
  loc_9D492F: NewIfNullAd
  loc_9D4932: FStAd var_A8 
  loc_9D4936: FLdRfVar var_A8
  loc_9D4939: CVarRef
  loc_9D493E: ParmAry1St
  loc_9D4944: FLdPr Me
  loc_9D4947: VCallAd Control_ID_dgdABMS
  loc_9D494A: CVarAd
  loc_9D494E: ParmAry1St
  loc_9D4954: FLdRfVar var_A4
  loc_9D4957: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_9D495C: ILdRf var_A8
  loc_9D495F: CastAd
  loc_9D4962: FLdPr Me
  loc_9D4965: MemStAdFunc
  loc_9D4969: FLdRfVar var_A4
  loc_9D496C: Erase
  loc_9D496D: FFree1Ad var_A8
  loc_9D4970: ExitProcHresult
  loc_9D4973: EqR4
End Sub

Private Sub Form_Activate() '997CFC
  'Data Table: 42B518
  loc_997CA0: FLdRfVar var_C2
  loc_997CA3: FLdRfVar var_C0
  loc_997CA6: LitVarI2 var_B8, 1
  loc_997CAB: FLdPr Me
  loc_997CAE: VCallAd Control_ID_tlbABMS
  loc_997CB1: FStAdFunc var_88
  loc_997CB4: FLdPr var_88
  loc_997CB7: LateIdLdVar var_98 DispID_3 0
  loc_997CBE: CastAdVar Me
  loc_997CC2: FStAdFunc var_BC
  loc_997CC5: FLdPr var_BC
  loc_997CC8:  = Me.Buttons.ControlDefault
  loc_997CCD: FLdPr var_C0
  loc_997CD0:  = Me.Enabled
  loc_997CD5: FLdI2 var_C2
  loc_997CD8: FFreeAd var_88 = "": var_BC = ""
  loc_997CE1: FFreeVar var_98 = ""
  loc_997CE8: BranchF loc_997CF9
  loc_997CEB: FLdPr Me
  loc_997CEE: MemLdRfVar from_stack_1.global_52
  loc_997CF1: NewIfNullPr clsparaconta
  loc_997CF4: Call clsparaconta.Requery()
  loc_997CF9: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '95B394
  'Data Table: 42B518
  loc_95B37C: ILdI2 KeyCode
  loc_95B37F: ILdRf Me
  loc_95B382: CastAd
  loc_95B385: FStAdFunc var_88
  loc_95B388: FLdRfVar var_88
  loc_95B38B: ImpAdCallFPR4 Proc_261_3_A7CAFC(, )
  loc_95B390: FFree1Ad var_88
  loc_95B393: ExitProcHresult
End Sub

Private Sub FeretePacoMsk_UnknownEvent_0 '94BD80
  'Data Table: 42B518
  loc_94BD6C: FLdPr Me
  loc_94BD6F: VCallAd Control_ID_FeretePacoMsk
  loc_94BD72: CVarAd
  loc_94BD76: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94BD7B: FFree1Var var_94 = ""
  loc_94BD7E: ExitProcHresult
End Sub

Private Sub FeretePacoMsk_UnknownEvent_8 '9CB748
  'Data Table: 42B518
  loc_9CB674: FLdRfVar var_8A
  loc_9CB677: FLdPr Me
  loc_9CB67A: VCallAd Control_ID_cmdCancelar
  loc_9CB67D: FStAdFunc var_88
  loc_9CB680: FLdPr var_88
  loc_9CB683:  = Me.Value
  loc_9CB688: FLdI2 var_8A
  loc_9CB68B: NotI4
  loc_9CB68C: FLdPr Me
  loc_9CB68F: VCallAd Control_ID_FeretePacoMsk
  loc_9CB692: FStAdFunc var_90
  loc_9CB695: FLdPr var_90
  loc_9CB698: LateIdLdVar var_A0 DispID_13 -32767
  loc_9CB69F: CBoolVar
  loc_9CB6A1: AndI4
  loc_9CB6A2: FFreeAd var_88 = ""
  loc_9CB6A9: FFree1Var var_A0 = ""
  loc_9CB6AC: BranchF loc_9CB747
  loc_9CB6AF: FLdPr Me
  loc_9CB6B2: VCallAd Control_ID_FeretePacoMsk
  loc_9CB6B5: FStAdFunc var_88
  loc_9CB6B8: FLdPr var_88
  loc_9CB6BB: LateIdLdVar var_A0 DispID_15 0
  loc_9CB6C2: PopAd
  loc_9CB6C4: FLdPr Me
  loc_9CB6C7: VCallAd Control_ID_FeretePacoMsk
  loc_9CB6CA: FStAdFunc var_AC
  loc_9CB6CD: LitI2_Byte &HFF
  loc_9CB6CF: PopTmpLdAd2 var_8A
  loc_9CB6D2: FLdZeroAd var_AC
  loc_9CB6D5: FStAdFunc var_90
  loc_9CB6D8: FLdRfVar var_90
  loc_9CB6DB: LitStr "01/01/2018"
  loc_9CB6DE: LitI2_Byte &HFF
  loc_9CB6E0: LitI2_Byte &HFF
  loc_9CB6E2: FLdRfVar var_A0
  loc_9CB6E5: CStrVarTmp
  loc_9CB6E6: FStStrNoPop var_A4
  loc_9CB6E9: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9CB6EE: FStStrNoPop var_A8
  loc_9CB6F1: FLdPr Me
  loc_9CB6F4: MemStStrCopy
  loc_9CB6F8: FFreeStr var_A4 = ""
  loc_9CB6FF: FFreeAd var_88 = "": var_90 = ""
  loc_9CB708: FFree1Var var_A0 = ""
  loc_9CB70B: FLdPr Me
  loc_9CB70E: VCallAd Control_ID_FeretePacoMsk
  loc_9CB711: FStAdFunc var_B0
  loc_9CB714: LitNothing
  loc_9CB716: CastAd
  loc_9CB719: FStAdFunc var_AC
  loc_9CB71C: FLdRfVar var_AC
  loc_9CB71F: FLdZeroAd var_B0
  loc_9CB722: FStAdFuncNoPop
  loc_9CB725: CastAd
  loc_9CB728: FStAdFunc var_90
  loc_9CB72B: FLdRfVar var_90
  loc_9CB72E: FLdPr Me
  loc_9CB731: MemLdRfVar from_stack_1.global_60
  loc_9CB734: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9CB739: IStI2 KeyCode
  loc_9CB73C: FFreeAd var_88 = "": var_90 = "": var_AC = ""
  loc_9CB747: ExitProcHresult
End Sub

Private Sub FeretePacoMsk_KeyPress(KeyAscii As Integer) '985DF8
  'Data Table: 42B518
  loc_985DB4: ILdI2 KeyAscii
  loc_985DB7: CI4UI1
  loc_985DB8: LitI4 &H20
  loc_985DBD: EqI4
  loc_985DBE: BranchF loc_985DF4
  loc_985DC1: LitVar_Missing var_A4
  loc_985DC4: PopAdLdVar
  loc_985DC5: LitVarI4
  loc_985DCD: PopAdLdVar
  loc_985DCE: ImpAdLdRf MemVar_C3D9A8
  loc_985DD1: NewIfNullPr frmCalendario
  loc_985DD4: frmCalendario.Show from_stack_1, from_stack_2
  loc_985DD9: ImpAdLdRf MemVar_C3D038
  loc_985DDC: CDargRef
  loc_985DE0: FLdPr Me
  loc_985DE3: VCallAd Control_ID_FeretePacoMsk
  loc_985DE6: FStAdFunc var_A8
  loc_985DE9: FLdPr var_A8
  loc_985DEC: LateIdSt
  loc_985DF1: FFree1Ad var_A8
  loc_985DF4: ExitProcHresult
End Sub

Private Sub ReejPacoMsk_UnknownEvent_0 '94BE58
  'Data Table: 42B518
  loc_94BE44: FLdPr Me
  loc_94BE47: VCallAd Control_ID_ReejPacoMsk
  loc_94BE4A: CVarAd
  loc_94BE4E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94BE53: FFree1Var var_94 = ""
  loc_94BE56: ExitProcHresult
End Sub

Private Sub ReejPacoMsk_UnknownEvent_8 'A05BA0
  'Data Table: 42B518
  loc_A05A58: FLdRfVar var_8A
  loc_A05A5B: FLdPr Me
  loc_A05A5E: VCallAd Control_ID_cmdCancelar
  loc_A05A61: FStAdFunc var_88
  loc_A05A64: FLdPr var_88
  loc_A05A67:  = Me.Value
  loc_A05A6C: FLdI2 var_8A
  loc_A05A6F: NotI4
  loc_A05A70: FLdPr Me
  loc_A05A73: VCallAd Control_ID_ReejPacoMsk
  loc_A05A76: FStAdFunc var_90
  loc_A05A79: FLdPr var_90
  loc_A05A7C: LateIdLdVar var_A0 DispID_13 -32767
  loc_A05A83: CBoolVar
  loc_A05A85: AndI4
  loc_A05A86: FLdPr Me
  loc_A05A89: VCallAd Control_ID_ReejPacoMsk
  loc_A05A8C: FStAdFunc var_A4
  loc_A05A8F: FLdPr var_A4
  loc_A05A92: LateIdLdVar var_B4 DispID_22 0
  loc_A05A99: CStrVarTmp
  loc_A05A9A: FStStrNoPop var_B8
  loc_A05A9D: LitStr vbNullString
  loc_A05AA0: NeStr
  loc_A05AA2: AndI4
  loc_A05AA3: FFree1Str var_B8
  loc_A05AA6: FFreeAd var_88 = "": var_90 = ""
  loc_A05AAF: FFreeVar var_A0 = ""
  loc_A05AB6: BranchF loc_A05B9F
  loc_A05AB9: FLdPr Me
  loc_A05ABC: VCallAd Control_ID_ReejPacoMsk
  loc_A05ABF: FStAdFunc var_88
  loc_A05AC2: FLdPr var_88
  loc_A05AC5: LateIdLdVar var_A0 DispID_22 0
  loc_A05ACC: PopAd
  loc_A05ACE: LitI4 0
  loc_A05AD3: LitI4 0
  loc_A05AD8: FLdRfVar var_BC
  loc_A05ADB: Redim
  loc_A05AE5: LitVarStr var_CC, "3"
  loc_A05AEA: LitI4 0
  loc_A05AEF: ILdRf var_BC
  loc_A05AF2: Ary1StVarCopy
  loc_A05AF4: FLdRfVar var_BC
  loc_A05AF7: FLdPr Me
  loc_A05AFA: MemLdRfVar from_stack_1.global_68
  loc_A05AFD: NewIfNullRf
  loc_A05B01: ImpAdLdI2 MemVar_C3D064
  loc_A05B04: LitI2_Byte &HFF
  loc_A05B06: FLdRfVar var_A0
  loc_A05B09: CStrVarTmp
  loc_A05B0A: FStStrNoPop var_B8
  loc_A05B0D: ImpAdCallI2 Proc_266_2_A228D4(, , , , )
  loc_A05B12: FStStr var_D0
  loc_A05B15: FLdRfVar var_BC
  loc_A05B18: Erase
  loc_A05B19: ILdRf var_D0
  loc_A05B1C: FLdPr Me
  loc_A05B1F: MemStStrCopy
  loc_A05B23: FFreeStr var_B8 = ""
  loc_A05B2A: FFree1Ad var_88
  loc_A05B2D: FFree1Var var_A0 = ""
  loc_A05B30: FLdPr Me
  loc_A05B33: VCallAd Control_ID_ReejPacoMsk
  loc_A05B36: FStAdFunc var_D4
  loc_A05B39: FLdPr Me
  loc_A05B3C: VCallAd Control_ID_ReejPacoLbl
  loc_A05B3F: FStAdFunc var_A4
  loc_A05B42: FLdRfVar var_A4
  loc_A05B45: FLdZeroAd var_D4
  loc_A05B48: FStAdFuncNoPop
  loc_A05B4B: CastAd
  loc_A05B4E: FStAdFunc var_90
  loc_A05B51: FLdRfVar var_90
  loc_A05B54: FLdPr Me
  loc_A05B57: MemLdRfVar from_stack_1.global_60
  loc_A05B5A: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A05B5F: IStI2 KeyAscii
  loc_A05B62: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_A05B6D: ILdI2 KeyAscii
  loc_A05B70: NotI4
  loc_A05B71: BranchF loc_A05B9F
  loc_A05B74: FLdRfVar var_B8
  loc_A05B77: FLdPr Me
  loc_A05B7A: MemLdRfVar from_stack_1.global_68
  loc_A05B7D: NewIfNullPr tblcuentacontable
  loc_A05B80: from_stack_1v = tblcuentacontable.DetaCucoGet()
  loc_A05B85: ILdRf var_B8
  loc_A05B88: FLdPr Me
  loc_A05B8B: VCallAd Control_ID_ReejPacoLbl
  loc_A05B8E: FStAdFunc var_88
  loc_A05B91: FLdPr var_88
  loc_A05B94: Me.Caption = from_stack_1
  loc_A05B99: FFree1Str var_B8
  loc_A05B9C: FFree1Ad var_88
  loc_A05B9F: ExitProcHresult
End Sub

Private Sub ReejPacoMsk_KeyPress(KeyAscii As Integer) '9F14EC
  'Data Table: 42B518
  loc_9F13C4: ILdI2 KeyAscii
  loc_9F13C7: CI4UI1
  loc_9F13C8: LitI4 &H20
  loc_9F13CD: EqI4
  loc_9F13CE: BranchF loc_9F14E9
  loc_9F13D1: LitVar_Missing var_A4
  loc_9F13D4: PopAdLdVar
  loc_9F13D5: LitVarI4
  loc_9F13DD: PopAdLdVar
  loc_9F13DE: ImpAdLdRf MemVar_C3D6C0
  loc_9F13E1: NewIfNullPr bscCuentaContable
  loc_9F13E4: bscCuentaContable.Show from_stack_1, from_stack_2
  loc_9F13E9: FLdRfVar var_AC
  loc_9F13EC: FLdRfVar var_A8
  loc_9F13EF: ImpAdLdRf MemVar_C3D6C0
  loc_9F13F2: NewIfNullPr bscCuentaContable
  loc_9F13F5: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_9F13FA: FLdPr var_A8
  loc_9F13FD: from_stack_1 = clsbase.RecordCount
  loc_9F1402: ILdRf var_AC
  loc_9F1405: LitI4 0
  loc_9F140A: GtI4
  loc_9F140B: FFree1Ad var_A8
  loc_9F140E: BranchF loc_9F14E9
  loc_9F1411: FLdRfVar var_C8
  loc_9F1414: FLdRfVar var_B8
  loc_9F1417: LitVarStr var_94, "CodiCuco"
  loc_9F141C: PopAdLdVar
  loc_9F141D: FLdRfVar var_B4
  loc_9F1420: FLdRfVar var_B0
  loc_9F1423: FLdRfVar var_A8
  loc_9F1426: ImpAdLdRf MemVar_C3D6C0
  loc_9F1429: NewIfNullPr bscCuentaContable
  loc_9F142C: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_9F1431: FLdPr var_A8
  loc_9F1434: from_stack_1v = clsbase.RsFrmGet()
  loc_9F1439: FLdPr var_B0
  loc_9F143C:  = Me.Fields
  loc_9F1441: FLdPr var_B4
  loc_9F1444: from_stack_2 = Me.Item(from_stack_1)
  loc_9F1449: FLdPr var_B8
  loc_9F144C:  = Me.Value
  loc_9F1451: FLdRfVar var_C8
  loc_9F1454: CStrVarTmp
  loc_9F1455: CVarStr var_D8
  loc_9F1458: PopAdLdVar
  loc_9F1459: FLdPr Me
  loc_9F145C: VCallAd Control_ID_ReejPacoMsk
  loc_9F145F: FStAdFunc var_DC
  loc_9F1462: FLdPr var_DC
  loc_9F1465: LateIdSt
  loc_9F146A: FFreeAd var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F1477: FFreeVar var_C8 = ""
  loc_9F147E: FLdRfVar var_C8
  loc_9F1481: FLdRfVar var_B8
  loc_9F1484: LitVarStr var_94, "DetaCuco"
  loc_9F1489: PopAdLdVar
  loc_9F148A: FLdRfVar var_B4
  loc_9F148D: FLdRfVar var_B0
  loc_9F1490: FLdRfVar var_A8
  loc_9F1493: ImpAdLdRf MemVar_C3D6C0
  loc_9F1496: NewIfNullPr bscCuentaContable
  loc_9F1499: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_9F149E: FLdPr var_A8
  loc_9F14A1: from_stack_1v = clsbase.RsFrmGet()
  loc_9F14A6: FLdPr var_B0
  loc_9F14A9:  = Me.Fields
  loc_9F14AE: FLdPr var_B4
  loc_9F14B1: from_stack_2 = Me.Item(from_stack_1)
  loc_9F14B6: FLdPr var_B8
  loc_9F14B9:  = Me.Value
  loc_9F14BE: FLdRfVar var_C8
  loc_9F14C1: CStrVarTmp
  loc_9F14C2: FStStrNoPop var_E0
  loc_9F14C5: FLdPr Me
  loc_9F14C8: VCallAd Control_ID_ReejPacoLbl
  loc_9F14CB: FStAdFunc var_DC
  loc_9F14CE: FLdPr var_DC
  loc_9F14D1: Me.Caption = from_stack_1
  loc_9F14D6: FFree1Str var_E0
  loc_9F14D9: FFreeAd var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F14E6: FFree1Var var_C8 = ""
  loc_9F14E9: ExitProcHresult
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'A56C40
  'Data Table: 42B518
  loc_A5697C: ILdRf Button
  loc_A5697F: FStAd var_88 
  loc_A56983: FLdRfVar var_8C
  loc_A56986: FLdPr var_88
  loc_A56989:  = Me.Key
  loc_A5698E: FLdZeroAd var_8C
  loc_A56991: FStStr var_90
  loc_A56994: ILdRf var_90
  loc_A56997: LitStr "btnCrear"
  loc_A5699A: EqStr
  loc_A5699C: BranchF loc_A569A2
  loc_A5699F: Branch loc_A56C3C
  loc_A569A2: ILdRf var_90
  loc_A569A5: LitStr "btnModificar"
  loc_A569A8: EqStr
  loc_A569AA: BranchF loc_A56A89
  loc_A569AD: FLdRfVar var_94
  loc_A569B0: FLdPr Me
  loc_A569B3: MemLdRfVar from_stack_1.global_52
  loc_A569B6: NewIfNullPr clsparaconta
  loc_A569B9: from_stack_1 = clsparaconta.RecordCount
  loc_A569BE: ILdRf var_94
  loc_A569C1: LitI4 0
  loc_A569C6: GtI4
  loc_A569C7: BranchF loc_A56A86
  loc_A569CA: ImpAdLdI2 MemVar_C3D064
  loc_A569CD: FLdPr Me
  loc_A569D0: MemLdRfVar from_stack_1.global_52
  loc_A569D3: NewIfNullPr clsparaconta
  loc_A569D6: Call clsparaconta.Encontrar(from_stack_1v)
  loc_A569DB: LitI2_Byte 2
  loc_A569DD: FLdPr Me
  loc_A569E0: MemStUI1
  loc_A569E4: ILdRf Me
  loc_A569E7: CastAd
  loc_A569EA: FStAdFunc var_98
  loc_A569ED: FLdRfVar var_98
  loc_A569F0: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_A569F5: FFree1Ad var_98
  loc_A569F8: LitI4 0
  loc_A569FD: LitI4 0
  loc_A56A02: FLdRfVar var_9C
  loc_A56A05: Redim
  loc_A56A0F: FLdPr Me
  loc_A56A12: VCallAd Control_ID_dgdABMS
  loc_A56A15: CVarAd
  loc_A56A19: ParmAry1St
  loc_A56A1F: FLdRfVar var_9C
  loc_A56A22: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_A56A27: FLdRfVar var_9C
  loc_A56A2A: Erase
  loc_A56A2B: ILdRf Me
  loc_A56A2E: CastAd
  loc_A56A31: FStAdFunc var_98
  loc_A56A34: FLdRfVar var_98
  loc_A56A37: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_A56A3C: FFree1Ad var_98
  loc_A56A3F: ILdRf Me
  loc_A56A42: CastAd
  loc_A56A45: FStAdFunc var_98
  loc_A56A48: FLdRfVar var_98
  loc_A56A4B: ImpAdCallFPR4 Proc_261_12_A04B24()
  loc_A56A50: FFree1Ad var_98
  loc_A56A53: LitI4 0
  loc_A56A58: LitI4 0
  loc_A56A5D: FLdRfVar var_9C
  loc_A56A60: Redim
  loc_A56A6A: FLdPr Me
  loc_A56A6D: VCallAd Control_ID_PeriInfoLbl
  loc_A56A70: CVarAd
  loc_A56A74: ParmAry1St
  loc_A56A7A: FLdRfVar var_9C
  loc_A56A7D: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_A56A82: FLdRfVar var_9C
  loc_A56A85: Erase
  loc_A56A86: Branch loc_A56C3C
  loc_A56A89: ILdRf var_90
  loc_A56A8C: LitStr "btnEliminar"
  loc_A56A8F: EqStr
  loc_A56A91: BranchF loc_A56A97
  loc_A56A94: Branch loc_A56C3C
  loc_A56A97: ILdRf var_90
  loc_A56A9A: LitStr "btnGuardar"
  loc_A56A9D: EqStr
  loc_A56A9F: BranchF loc_A56B38
  loc_A56AA2: LitStr vbNullString
  loc_A56AA5: FLdPr Me
  loc_A56AA8: MemStStrCopy
  loc_A56AAC: LitI2_Byte 0
  loc_A56AAE: PopTmpLdAd2 var_AE
  loc_A56AB1: Call ReejPacoMsk_UnknownEvent_8()
  loc_A56AB6: FLdPr Me
  loc_A56AB9: MemLdStr global_60
  loc_A56ABC: LitStr vbNullString
  loc_A56ABF: NeStr
  loc_A56AC1: BranchF loc_A56AC5
  loc_A56AC4: ExitProcHresult
  loc_A56AC5: FLdPr Me
  loc_A56AC8: MemLdUI1 global_56
  loc_A56ACC: FStUI1 var_B0
  loc_A56AD0: FLdUI1
  loc_A56AD4: LitI2_Byte 2
  loc_A56AD6: EqI2
  loc_A56AD7: BranchF loc_A56B30
  loc_A56ADA: FLdPr Me
  loc_A56ADD: VCallAd Control_ID_ReejPacoMsk
  loc_A56AE0: FStAdFunc var_98
  loc_A56AE3: FLdPr var_98
  loc_A56AE6: LateIdLdVar var_AC DispID_22 0
  loc_A56AED: PopAd
  loc_A56AEF: FLdPr Me
  loc_A56AF2: VCallAd Control_ID_FeretePacoMsk
  loc_A56AF5: FStAdFunc var_B4
  loc_A56AF8: FLdPr var_B4
  loc_A56AFB: LateIdLdVar var_C4 DispID_15 0
  loc_A56B02: CStrVarTmp
  loc_A56B03: FStStrNoPop var_C8
  loc_A56B06: FLdRfVar var_AC
  loc_A56B09: CStrVarTmp
  loc_A56B0A: FStStrNoPop var_8C
  loc_A56B0D: FLdPr Me
  loc_A56B10: MemLdRfVar from_stack_1.global_52
  loc_A56B13: NewIfNullPr clsparaconta
  loc_A56B16: Call clsparaconta.ModificarParametrosalCierre(from_stack_1v, from_stack_2v)
  loc_A56B1B: FFreeStr var_8C = ""
  loc_A56B22: FFreeAd var_98 = ""
  loc_A56B29: FFreeVar var_AC = ""
  loc_A56B30: Call cmdCancelar_Click()
  loc_A56B35: Branch loc_A56C3C
  loc_A56B38: ILdRf var_90
  loc_A56B3B: LitStr "btnCancelar"
  loc_A56B3E: EqStr
  loc_A56B40: BranchF loc_A56B4B
  loc_A56B43: Call cmdCancelar_Click()
  loc_A56B48: Branch loc_A56C3C
  loc_A56B4B: ILdRf var_90
  loc_A56B4E: LitStr "btnPrimero"
  loc_A56B51: EqStr
  loc_A56B53: BranchF loc_A56B67
  loc_A56B56: FLdPr Me
  loc_A56B59: MemLdRfVar from_stack_1.global_52
  loc_A56B5C: NewIfNullPr clsparaconta
  loc_A56B5F: Call clsparaconta.MoveFirst()
  loc_A56B64: Branch loc_A56C3C
  loc_A56B67: ILdRf var_90
  loc_A56B6A: LitStr "btnAnterior"
  loc_A56B6D: EqStr
  loc_A56B6F: BranchF loc_A56B83
  loc_A56B72: FLdPr Me
  loc_A56B75: MemLdRfVar from_stack_1.global_52
  loc_A56B78: NewIfNullPr clsparaconta
  loc_A56B7B: Call clsparaconta.MovePrevious()
  loc_A56B80: Branch loc_A56C3C
  loc_A56B83: ILdRf var_90
  loc_A56B86: LitStr "btnSiguiente"
  loc_A56B89: EqStr
  loc_A56B8B: BranchF loc_A56B9F
  loc_A56B8E: FLdPr Me
  loc_A56B91: MemLdRfVar from_stack_1.global_52
  loc_A56B94: NewIfNullPr clsparaconta
  loc_A56B97: Call clsparaconta.MoveNext()
  loc_A56B9C: Branch loc_A56C3C
  loc_A56B9F: ILdRf var_90
  loc_A56BA2: LitStr "btnUltimo"
  loc_A56BA5: EqStr
  loc_A56BA7: BranchF loc_A56BBB
  loc_A56BAA: FLdPr Me
  loc_A56BAD: MemLdRfVar from_stack_1.global_52
  loc_A56BB0: NewIfNullPr clsparaconta
  loc_A56BB3: Call clsparaconta.MoveLast()
  loc_A56BB8: Branch loc_A56C3C
  loc_A56BBB: ILdRf var_90
  loc_A56BBE: LitStr "btnFiltrar"
  loc_A56BC1: EqStr
  loc_A56BC3: BranchF loc_A56BC9
  loc_A56BC6: Branch loc_A56C3C
  loc_A56BC9: ILdRf var_90
  loc_A56BCC: LitStr "btnBuscar"
  loc_A56BCF: EqStr
  loc_A56BD1: BranchF loc_A56BD7
  loc_A56BD4: Branch loc_A56C3C
  loc_A56BD7: ILdRf var_90
  loc_A56BDA: LitStr "btnImprimir"
  loc_A56BDD: EqStr
  loc_A56BDF: BranchF loc_A56BE5
  loc_A56BE2: Branch loc_A56C3C
  loc_A56BE5: ILdRf var_90
  loc_A56BE8: LitStr "btnAyuda"
  loc_A56BEB: EqStr
  loc_A56BED: BranchF loc_A56C1C
  loc_A56BF0: LitVar_Missing var_128
  loc_A56BF3: LitVar_Missing var_108
  loc_A56BF6: LitVar_Missing var_C4
  loc_A56BF9: LitI4 0
  loc_A56BFE: LitVarStr var_D8, "Opcion no disponible en esta version."
  loc_A56C03: FStVarCopyObj var_AC
  loc_A56C06: FLdRfVar var_AC
  loc_A56C09: ImpAdCallFPR4 MsgBox(, , , , )
  loc_A56C0E: FFreeVar var_AC = "": var_C4 = "": var_108 = ""
  loc_A56C19: Branch loc_A56C3C
  loc_A56C1C: ILdRf var_90
  loc_A56C1F: LitStr "btnSalir"
  loc_A56C22: EqStr
  loc_A56C24: BranchF loc_A56C3C
  loc_A56C27: ILdRf Me
  loc_A56C2A: FStAdNoPop
  loc_A56C2E: ImpAdLdRf MemVar_C44F9C
  loc_A56C31: NewIfNullPr Me
  loc_A56C34: Me.Global.Unload from_stack_1
  loc_A56C39: FFree1Ad var_98
  loc_A56C3C: ExitProcHresult
  loc_A56C3D: FLdPr var_9C
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) '99A604
  'Data Table: 42B518
  loc_99A5A8: FLdRfVar var_B4
  loc_99A5AB: FLdRfVar var_B0
  loc_99A5AE: FLdI2 ColIndex
  loc_99A5B1: CVarI2 var_A8
  loc_99A5B4: PopAdLdVar
  loc_99A5B5: FLdPr Me
  loc_99A5B8: VCallAd Control_ID_dgdABMS
  loc_99A5BB: FStAdFunc var_88
  loc_99A5BE: FLdPr var_88
  loc_99A5C1: LateIdLdVar var_98 DispID_105 0
  loc_99A5C8: CastAdVar Me
  loc_99A5CC: FStAdFunc var_AC
  loc_99A5CF: FLdPr var_AC
  loc_99A5D2: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_99A5D7: FLdPr var_B0
  loc_99A5DA:  = Me.DataField
  loc_99A5DF: FLdZeroAd var_B4
  loc_99A5E2: PopTmpLdAdStr
  loc_99A5E6: FLdPr Me
  loc_99A5E9: MemLdRfVar from_stack_1.global_52
  loc_99A5EC: NewIfNullPr clsparaconta
  loc_99A5EF: Call clsparaconta.Sort(from_stack_1v)
  loc_99A5F4: FFree1Str var_B8
  loc_99A5F7: FFreeAd var_88 = "": var_AC = ""
  loc_99A600: FFree1Var var_98 = ""
  loc_99A603: ExitProcHresult
End Sub

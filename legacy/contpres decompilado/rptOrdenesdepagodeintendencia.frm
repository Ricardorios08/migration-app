VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptOrdenesdepagodeintendencia
  Caption = "Órdenes de pago de Intendencia"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptOrdenesdepagodeintendencia.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 6195
  ClientHeight = 3495
  StartUpPosition = 2 'CenterScreen
  Begin VB.CommandButton cmdSalir
    Left = 5280
    Top = 2280
    Width = 735
    Height = 615
    TabIndex = 15
    Cancel = -1  'True
    Picture = "rptOrdenesdepagodeintendencia.frx":08CA
    Style = 1
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 3240
    Width = 6195
    Height = 255
    TabIndex = 17
    OleObjectBlob = "rptOrdenesdepagodeintendencia.frx":0B1C
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptOrdenesdepagodeintendencia.frx":0B9C
    Left = 5520
    Top = 0
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 2040
    Width = 1815
    Height = 1095
    TabIndex = 13
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 14
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 2040
    Width = 3015
    Height = 1095
    TabIndex = 10
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 12
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 11
    End
  End
  Begin VB.Frame v
    Left = 120
    Top = 0
    Width = 5895
    Height = 1935
    TabIndex = 0
    Begin VB.CommandButton cmdFecha
      Left = 2040
      Top = 960
      Width = 375
      Height = 375
      TabIndex = 6
      Picture = "rptOrdenesdepagodeintendencia.frx":0C00
      Style = 1
    End
    Begin VB.OptionButton optDebito
      Caption = "Débito"
      Left = 3000
      Top = 1440
      Width = 855
      Height = 195
      TabIndex = 9
    End
    Begin VB.OptionButton optDevengado
      Caption = "Devengado"
      Left = 3000
      Top = 1200
      Width = 1215
      Height = 195
      TabIndex = 8
    End
    Begin VB.OptionButton optTodas
      Caption = "Todas"
      Left = 3000
      Top = 960
      Width = 1095
      Height = 195
      TabIndex = 4
      Value = 255
    End
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 840
      Top = 360
      Width = 1095
      Height = 315
      TabIndex = 2
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 4320
      Top = 240
      Width = 1335
      Height = 495
      TabIndex = 3
    End
    Begin MSMask.MaskEdBox mskFecha
      Left = 840
      Top = 1080
      Width = 1095
      Height = 285
      TabIndex = 7
      OleObjectBlob = "rptOrdenesdepagodeintendencia.frx":1142
    End
    Begin VB.Label Label3
      Caption = "Periodo:"
      Left = 120
      Top = 360
      Width = 585
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
    Begin VB.Label Label2
      Caption = "Fecha:"
      Left = 195
      Top = 1080
      Width = 495
      Height = 195
      TabIndex = 5
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 5400
    Top = 2640
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 16
    OleObjectBlob = "rptOrdenesdepagodeintendencia.frx":11CA
  End
End

Attribute VB_Name = "rptOrdenesdepagodeintendencia"

Public htmFile As Variant
Public bGenerado As Boolean


Private Sub cmdPdf_Click() '965644
  'Data Table: 46636C
  loc_96562C: LitI2_Byte 0
  loc_96562E: ILdRf Me
  loc_965631: CastAd
  loc_965634: FStAdFunc var_88
  loc_965637: FLdRfVar var_88
  loc_96563A: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_96563F: FFree1Ad var_88
  loc_965642: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98BABC
  'Data Table: 46636C
  loc_98BA84: FLdPr Me
  loc_98BA87: VCallAd Control_ID_statusBar
  loc_98BA8A: FStAdFunc var_88
  loc_98BA8D: FLdPr var_88
  loc_98BA90: LateIdLdVar var_98 DispID_1 0
  loc_98BA97: CStrVarTmp
  loc_98BA98: CVarStr var_A8
  loc_98BA9B: PopAdLdVar
  loc_98BA9C: FLdPr Me
  loc_98BA9F: VCallAd Control_ID_statusBar
  loc_98BAA2: FStAdFunc var_BC
  loc_98BAA5: FLdPr var_BC
  loc_98BAA8: LateIdSt
  loc_98BAAD: FFreeAd var_88 = ""
  loc_98BAB4: FFreeVar var_98 = ""
  loc_98BABB: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9A581C
  'Data Table: 46636C
  loc_9A5798: LitI2_Byte 0
  loc_9A579A: FLdPr Me
  loc_9A579D: MemStI2 bGenerado
  loc_9A57A0: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9A57A5: ImpAdLdI2 MemVar_C3D064
  loc_9A57A8: CStrUI1
  loc_9A57AA: FStStrNoPop var_88
  loc_9A57AD: FLdPr Me
  loc_9A57B0: VCallAd Control_ID_cboPeriodo
  loc_9A57B3: FStAdFunc var_8C
  loc_9A57B6: FLdPr var_8C
  loc_9A57B9: Me.Text = from_stack_1
  loc_9A57BE: FFree1Str var_88
  loc_9A57C1: FFree1Ad var_8C
  loc_9A57C4: LitI2_Byte 0
  loc_9A57C6: PopTmpLdAd2 var_8E
  loc_9A57C9: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_9A57CE: CStrDate
  loc_9A57D0: CVarStr var_A0
  loc_9A57D3: PopAdLdVar
  loc_9A57D4: FLdPr Me
  loc_9A57D7: VCallAd Control_ID_mskFecha
  loc_9A57DA: FStAdFunc var_8C
  loc_9A57DD: FLdPr var_8C
  loc_9A57E0: LateIdSt
  loc_9A57E5: FFree1Ad var_8C
  loc_9A57E8: FFree1Var var_A0 = ""
  loc_9A57EB: LitI2_Byte &HFF
  loc_9A57ED: FLdPr Me
  loc_9A57F0: VCallAd Control_ID_optTodas
  loc_9A57F3: FStAdFunc var_8C
  loc_9A57F6: FLdPr var_8C
  loc_9A57F9: Me.Value = from_stack_1b
  loc_9A57FE: FFree1Ad var_8C
  loc_9A5801: Call HabilitarCriterio()
  loc_9A5806: ILdRf Me
  loc_9A5809: CastAd
  loc_9A580C: FStAdFunc var_8C
  loc_9A580F: FLdRfVar var_8C
  loc_9A5812: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9A5817: FFree1Ad var_8C
  loc_9A581A: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '97B360
  'Data Table: 46636C
  loc_97B330: LitVarStr var_94, "Cerrando..."
  loc_97B335: PopAdLdVar
  loc_97B336: FLdPr Me
  loc_97B339: VCallAd Control_ID_statusBar
  loc_97B33C: FStAdFunc var_A8
  loc_97B33F: FLdPr var_A8
  loc_97B342: LateIdSt
  loc_97B347: FFree1Ad var_A8
  loc_97B34A: ILdRf Me
  loc_97B34D: FStAdNoPop
  loc_97B351: ImpAdLdRf MemVar_C44F9C
  loc_97B354: NewIfNullPr Me
  loc_97B357: Me.Global.Unload from_stack_1
  loc_97B35C: FFree1Ad var_A8
  loc_97B35F: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '965514
  'Data Table: 46636C
  loc_9654FC: ILdRf Me
  loc_9654FF: CastAd
  loc_965502: FStAdFunc var_88
  loc_965505: FLdRfVar var_88
  loc_965508: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_96550D: FFree1Ad var_88
  loc_965510: ExitProcHresult
  loc_965511: ThisVCall unk_46638B
End Sub

Private Sub mskFecha_UnknownEvent_0 '950A90
  'Data Table: 46636C
  loc_950A7C: FLdPr Me
  loc_950A7F: VCallAd Control_ID_mskFecha
  loc_950A82: CVarAd
  loc_950A86: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_950A8B: FFree1Var var_94 = ""
  loc_950A8E: ExitProcHresult
End Sub

Private Function mskFecha_UnknownEvent_8(arg_C) '9B473C
  'Data Table: 46636C
  loc_9B46A0: FLdPr Me
  loc_9B46A3: VCallAd Control_ID_mskFecha
  loc_9B46A6: FStAdFunc var_88
  loc_9B46A9: FLdPr var_88
  loc_9B46AC: LateIdLdVar var_98 DispID_15 0
  loc_9B46B3: PopAd
  loc_9B46B5: FLdPr Me
  loc_9B46B8: VCallAd Control_ID_mskFecha
  loc_9B46BB: FStAdFunc var_AC
  loc_9B46BE: LitI2_Byte 0
  loc_9B46C0: PopTmpLdAd2 var_A2
  loc_9B46C3: FLdZeroAd var_AC
  loc_9B46C6: FStAdFunc var_A0
  loc_9B46C9: FLdRfVar var_A0
  loc_9B46CC: LitStr vbNullString
  loc_9B46CF: LitI2_Byte 0
  loc_9B46D1: LitI2_Byte 0
  loc_9B46D3: FLdRfVar var_98
  loc_9B46D6: CStrVarTmp
  loc_9B46D7: FStStrNoPop var_9C
  loc_9B46DA: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B46DF: FStStrNoPop var_A8
  loc_9B46E2: FLdPr Me
  loc_9B46E5: MemStStrCopy
  loc_9B46E9: FFreeStr var_9C = ""
  loc_9B46F0: FFreeAd var_88 = "": var_A0 = ""
  loc_9B46F9: FFree1Var var_98 = ""
  loc_9B46FC: FLdPr Me
  loc_9B46FF: VCallAd Control_ID_mskFecha
  loc_9B4702: FStAdFunc var_B0
  loc_9B4705: LitNothing
  loc_9B4707: CastAd
  loc_9B470A: FStAdFunc var_AC
  loc_9B470D: FLdRfVar var_AC
  loc_9B4710: FLdZeroAd var_B0
  loc_9B4713: FStAdFuncNoPop
  loc_9B4716: CastAd
  loc_9B4719: FStAdFunc var_A0
  loc_9B471C: FLdRfVar var_A0
  loc_9B471F: FLdPr Me
  loc_9B4722: MemLdRfVar from_stack_1.global_84
  loc_9B4725: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B472A: IStI2 arg_C
  loc_9B472D: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B4738: ExitProcHresult
End Function

Private Sub cmdFecha_Click() '97D538
  'Data Table: 46636C
  loc_97D504: LitVar_Missing var_A4
  loc_97D507: PopAdLdVar
  loc_97D508: LitVarI4
  loc_97D510: PopAdLdVar
  loc_97D511: ImpAdLdRf MemVar_C3D9A8
  loc_97D514: NewIfNullPr frmCalendario
  loc_97D517: frmCalendario.Show from_stack_1, from_stack_2
  loc_97D51C: ImpAdLdRf MemVar_C3D038
  loc_97D51F: CDargRef
  loc_97D523: FLdPr Me
  loc_97D526: VCallAd Control_ID_mskFecha
  loc_97D529: FStAdFunc var_A8
  loc_97D52C: FLdPr var_A8
  loc_97D52F: LateIdSt
  loc_97D534: FFree1Ad var_A8
  loc_97D537: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '9655F8
  'Data Table: 46636C
  loc_9655E0: ILdRf Me
  loc_9655E3: CastAd
  loc_9655E6: FStAdFunc var_88
  loc_9655E9: FLdRfVar var_88
  loc_9655EC: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_9655F1: FFree1Ad var_88
  loc_9655F4: ExitProcHresult
  loc_9655F5: ThisVCallAd
End Sub

Private Sub Form_Load() '9D88C8
  'Data Table: 46636C
  loc_9D87D4: LitI2_Byte &HFF
  loc_9D87D6: ImpAdStI2 MemVar_C3D840
  loc_9D87D9: LitI2_Byte 0
  loc_9D87DB: ImpAdStI2 MemVar_C3D842
  loc_9D87DE: LitI2_Byte 0
  loc_9D87E0: ImpAdStI2 MemVar_C3D844
  loc_9D87E3: ILdRf Me
  loc_9D87E6: CastAd
  loc_9D87E9: FStAdFunc var_88
  loc_9D87EC: FLdRfVar var_88
  loc_9D87EF: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9D87F4: FFree1Ad var_88
  loc_9D87F7: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_9D87FA: FLdPr Me
  loc_9D87FD: MemLdRfVar from_stack_1.global_72
  loc_9D8800: NewIfNullPr clsbase
  loc_9D8803: Call clsbase.RedefineRS(from_stack_1v)
  loc_9D8808: FLdRfVar var_8C
  loc_9D880B: FLdPr Me
  loc_9D880E: MemLdRfVar from_stack_1.global_72
  loc_9D8811: NewIfNullPr clsbase
  loc_9D8814: from_stack_1 = clsbase.RecordCount
  loc_9D8819: ILdRf var_8C
  loc_9D881C: LitI4 0
  loc_9D8821: GtI4
  loc_9D8822: BranchF loc_9D88C1
  loc_9D8825: FLdPr Me
  loc_9D8828: MemLdRfVar from_stack_1.global_72
  loc_9D882B: NewIfNullPr clsbase
  loc_9D882E: Call clsbase.MoveFirst()
  loc_9D8833: FLdRfVar var_8E
  loc_9D8836: FLdPr Me
  loc_9D8839: MemLdRfVar from_stack_1.global_72
  loc_9D883C: NewIfNullPr clsbase
  loc_9D883F: from_stack_1 = clsbase.EOF
  loc_9D8844: FLdI2 var_8E
  loc_9D8847: NotI4
  loc_9D8848: BranchF loc_9D88C1
  loc_9D884B: LitVar_Missing var_CC
  loc_9D884E: PopAdLdVar
  loc_9D884F: FLdRfVar var_B8
  loc_9D8852: FLdRfVar var_A8
  loc_9D8855: LitVarStr var_A4, "PeriInfo"
  loc_9D885A: PopAdLdVar
  loc_9D885B: FLdRfVar var_94
  loc_9D885E: FLdRfVar var_88
  loc_9D8861: FLdPr Me
  loc_9D8864: MemLdRfVar from_stack_1.global_72
  loc_9D8867: NewIfNullPr clsbase
  loc_9D886A: from_stack_1v = clsbase.RsFrmGet()
  loc_9D886F: FLdPr var_88
  loc_9D8872:  = Me.Fields
  loc_9D8877: FLdPr var_94
  loc_9D887A: from_stack_2 = Me.Item(from_stack_1)
  loc_9D887F: FLdPr var_A8
  loc_9D8882:  = Me.Value
  loc_9D8887: FLdRfVar var_B8
  loc_9D888A: CStrVarTmp
  loc_9D888B: FStStrNoPop var_BC
  loc_9D888E: FLdPr Me
  loc_9D8891: VCallAd Control_ID_cboPeriodo
  loc_9D8894: FStAdFunc var_D0
  loc_9D8897: FLdPr var_D0
  loc_9D889A: Me.AddItem from_stack_1, from_stack_2
  loc_9D889F: FFree1Str var_BC
  loc_9D88A2: FFreeAd var_88 = "": var_94 = "": var_A8 = ""
  loc_9D88AD: FFree1Var var_B8 = ""
  loc_9D88B0: FLdPr Me
  loc_9D88B3: MemLdRfVar from_stack_1.global_72
  loc_9D88B6: NewIfNullPr clsbase
  loc_9D88B9: Call clsbase.MoveSiguiente()
  loc_9D88BE: Branch loc_9D8833
  loc_9D88C1: Call cmdNueva_Click()
  loc_9D88C6: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9657C0
  'Data Table: 46636C
  loc_9657A8: FLdPr Me
  loc_9657AB: VCallAd Control_ID_wbbReporte
  loc_9657AE: FStAdFunc var_88
  loc_9657B1: FLdRfVar var_88
  loc_9657B4: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_9657B9: FFree1Ad var_88
  loc_9657BC: ExitProcHresult
End Sub

Public Function htmFileGet() '4671A0
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '4671AF
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '4671BE
  htmFile = Value
End Sub

Public Function bGeneradoGet() '4671CD
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4671DC
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '9AB6A4
  'Data Table: 46636C
  loc_9AB620: LitI4 0
  loc_9AB625: LitI4 5
  loc_9AB62A: FLdRfVar var_88
  loc_9AB62D: Redim
  loc_9AB637: FLdPr Me
  loc_9AB63A: VCallAd Control_ID_cboPeriodo
  loc_9AB63D: CVarAd
  loc_9AB641: ParmAry1St
  loc_9AB647: FLdPr Me
  loc_9AB64A: VCallAd Control_ID_mskFecha
  loc_9AB64D: CVarAd
  loc_9AB651: ParmAry1St
  loc_9AB657: FLdPr Me
  loc_9AB65A: VCallAd Control_ID_cmdFecha
  loc_9AB65D: CVarAd
  loc_9AB661: ParmAry1St
  loc_9AB667: FLdPr Me
  loc_9AB66A: VCallAd Control_ID_optTodas
  loc_9AB66D: CVarAd
  loc_9AB671: ParmAry1St
  loc_9AB677: FLdPr Me
  loc_9AB67A: VCallAd Control_ID_optDevengado
  loc_9AB67D: CVarAd
  loc_9AB681: ParmAry1St
  loc_9AB687: FLdPr Me
  loc_9AB68A: VCallAd Control_ID_optDebito
  loc_9AB68D: CVarAd
  loc_9AB691: ParmAry1St
  loc_9AB697: FLdRfVar var_88
  loc_9AB69A: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9AB69F: FLdRfVar var_88
  loc_9AB6A2: Erase
  loc_9AB6A3: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'A8C36C
  'Data Table: 46636C
  loc_A8BF68: LitStr vbNullString
  loc_A8BF6B: FLdPr Me
  loc_A8BF6E: MemStStrCopy
  loc_A8BF72: LitI2_Byte 0
  loc_A8BF74: PopTmpLdAd2 var_8A
  loc_A8BF77: from_stack_2v = mskFecha_UnknownEvent_8(from_stack_1v)
  loc_A8BF7C: FLdPr Me
  loc_A8BF7F: MemLdStr global_84
  loc_A8BF82: LitStr vbNullString
  loc_A8BF85: NeStr
  loc_A8BF87: BranchF loc_A8BF8B
  loc_A8BF8A: ExitProcHresult
  loc_A8BF8B: FLdPr Me
  loc_A8BF8E: MemLdI2 bGenerado
  loc_A8BF91: BranchF loc_A8BF95
  loc_A8BF94: ExitProcHresult
  loc_A8BF95: LitVarStr var_9C, "Generando reporte..."
  loc_A8BF9A: PopAdLdVar
  loc_A8BF9B: FLdPr Me
  loc_A8BF9E: VCallAd Control_ID_statusBar
  loc_A8BFA1: FStAdFunc var_B0
  loc_A8BFA4: FLdPr var_B0
  loc_A8BFA7: LateIdSt
  loc_A8BFAC: FFree1Ad var_B0
  loc_A8BFAF: LitI4 &HB
  loc_A8BFB4: CI2I4
  loc_A8BFB5: FLdPr Me
  loc_A8BFB8: Me.MousePointer = from_stack_1
  loc_A8BFBD: FLdRfVar var_8A
  loc_A8BFC0: FLdPr Me
  loc_A8BFC3: VCallAd Control_ID_optTodas
  loc_A8BFC6: FStAdFunc var_B0
  loc_A8BFC9: FLdPr var_B0
  loc_A8BFCC:  = Me.Value
  loc_A8BFD1: FLdI2 var_8A
  loc_A8BFD4: FFree1Ad var_B0
  loc_A8BFD7: BranchF loc_A8BFE0
  loc_A8BFDA: LitStr vbNullString
  loc_A8BFDD: FStStrCopy var_88
  loc_A8BFE0: FLdRfVar var_8A
  loc_A8BFE3: FLdPr Me
  loc_A8BFE6: VCallAd Control_ID_optDevengado
  loc_A8BFE9: FStAdFunc var_B0
  loc_A8BFEC: FLdPr var_B0
  loc_A8BFEF:  = Me.Value
  loc_A8BFF4: FLdI2 var_8A
  loc_A8BFF7: FFree1Ad var_B0
  loc_A8BFFA: BranchF loc_A8C003
  loc_A8BFFD: LitStr " AND TipoOrpa = 'Devengado'"
  loc_A8C000: FStStrCopy var_88
  loc_A8C003: FLdRfVar var_8A
  loc_A8C006: FLdPr Me
  loc_A8C009: VCallAd Control_ID_optDebito
  loc_A8C00C: FStAdFunc var_B0
  loc_A8C00F: FLdPr var_B0
  loc_A8C012:  = Me.Value
  loc_A8C017: FLdI2 var_8A
  loc_A8C01A: FFree1Ad var_B0
  loc_A8C01D: BranchF loc_A8C026
  loc_A8C020: LitStr " AND TipoOrpa = 'Debito'"
  loc_A8C023: FStStrCopy var_88
  loc_A8C026: FLdPr Me
  loc_A8C029: VCallAd Control_ID_mskFecha
  loc_A8C02C: FStAdFunc var_D4
  loc_A8C02F: FLdPr var_D4
  loc_A8C032: LateIdLdVar var_E4 DispID_15 0
  loc_A8C039: PopAd
  loc_A8C03B: LitStr "DROP TEMPORARY TABLE IF EXISTS tmovi;"
  loc_A8C03E: LitStr " CREATE TEMPORARY TABLE tmovi"
  loc_A8C041: ConcatStr
  loc_A8C042: FStStrNoPop var_B4
  loc_A8C045: LitStr " SELECT op.PeriInfo, op.NumeOrpa, op.ExpeImpu, op.NumeLiqu, op.FechOrpa, op.DetaOrpa, op.FereOrpa, op.FearOrpa, op.ArchOrpa"
  loc_A8C048: ConcatStr
  loc_A8C049: FStStrNoPop var_B8
  loc_A8C04C: LitStr ", op.FojaOrpa, op.FeanOrpa, op.BajaMoti, op.TipoOrpa, op.ChunOrpa, op.AltaUsua, op.AltaFeho"
  loc_A8C04F: ConcatStr
  loc_A8C050: FStStrNoPop var_BC
  loc_A8C053: LitStr ", (Select Sum(ImpoLine) FROM liquidaneto ldn WHERE ldn.PeriInfo = op.PeriInfo AND ldn.ExpeImpu = op.ExpeImpu AND ldn.NumeLiqu = op.NumeLiqu) TotalOP"
  loc_A8C056: ConcatStr
  loc_A8C057: FStStrNoPop var_C0
  loc_A8C05A: LitStr " FROM ordenpago op"
  loc_A8C05D: ConcatStr
  loc_A8C05E: FStStrNoPop var_C4
  loc_A8C061: LitStr " WHERE op.PeriInfo = "
  loc_A8C064: ConcatStr
  loc_A8C065: FStStrNoPop var_CC
  loc_A8C068: FLdRfVar var_C8
  loc_A8C06B: FLdPr Me
  loc_A8C06E: VCallAd Control_ID_cboPeriodo
  loc_A8C071: FStAdFunc var_B0
  loc_A8C074: FLdPr var_B0
  loc_A8C077:  = Me.Text
  loc_A8C07C: ILdRf var_C8
  loc_A8C07F: ConcatStr
  loc_A8C080: FStStrNoPop var_D0
  loc_A8C083: LitStr " AND FechOrpa = "
  loc_A8C086: ConcatStr
  loc_A8C087: FStStrNoPop var_108
  loc_A8C08A: LitI4 1
  loc_A8C08F: LitI4 1
  loc_A8C094: LitVarStr var_9C, "'yyyy-mm-dd'"
  loc_A8C099: FStVarCopyObj var_104
  loc_A8C09C: FLdRfVar var_104
  loc_A8C09F: FLdRfVar var_E4
  loc_A8C0A2: CStrVarTmp
  loc_A8C0A3: CVarStr var_F4
  loc_A8C0A6: ImpAdCallI2 Format$(, )
  loc_A8C0AB: FStStrNoPop var_10C
  loc_A8C0AE: ConcatStr
  loc_A8C0AF: FStStrNoPop var_110
  loc_A8C0B2: LitStr " AND op.TipoOrpa <> 'Reservada'"
  loc_A8C0B5: ConcatStr
  loc_A8C0B6: FStStrNoPop var_114
  loc_A8C0B9: LitStr " ORDER BY NumeOrpa;"
  loc_A8C0BC: ConcatStr
  loc_A8C0BD: FStStrNoPop var_118
  loc_A8C0C0: FLdPr Me
  loc_A8C0C3: MemLdRfVar from_stack_1.global_76
  loc_A8C0C6: NewIfNullPr clsbase
  loc_A8C0C9: Call clsbase.RedefineRS(from_stack_1v)
  loc_A8C0CE: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_CC = "": var_C8 = "": var_D0 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = ""
  loc_A8C0EB: FFreeAd var_B0 = ""
  loc_A8C0F2: FFreeVar var_E4 = "": var_F4 = ""
  loc_A8C0FB: LitStr "DROP TEMPORARY TABLE IF EXISTS tmovi2;"
  loc_A8C0FE: LitStr " CREATE TEMPORARY TABLE movi2` ("
  loc_A8C101: ConcatStr
  loc_A8C102: FStStrNoPop var_B4
  loc_A8C105: LitStr " eriInfo` year(4) NOT NULL DEFAULT '0000', `NumeOrpa` smallint(5) unsigned NOT NULL DEFAULT '0',"
  loc_A8C108: ConcatStr
  loc_A8C109: FStStrNoPop var_B8
  loc_A8C10C: LitStr " xpeImpu` varchar(15) NOT NULL DEFAULT '',"
  loc_A8C10F: ConcatStr
  loc_A8C110: FStStrNoPop var_BC
  loc_A8C113: LitStr " umeLiqu` SMALLINT(4) unsigned NOT NULL DEFAULT '0',"
  loc_A8C116: ConcatStr
  loc_A8C117: FStStrNoPop var_C0
  loc_A8C11A: LitStr " echOrpa` date DEFAULT NULL,"
  loc_A8C11D: ConcatStr
  loc_A8C11E: FStStrNoPop var_C4
  loc_A8C121: LitStr " etaOrpa` varchar(500) NOT NULL DEFAULT '',"
  loc_A8C124: ConcatStr
  loc_A8C125: FStStrNoPop var_C8
  loc_A8C128: LitStr " ereOrpa` date DEFAULT NULL,"
  loc_A8C12B: ConcatStr
  loc_A8C12C: FStStrNoPop var_CC
  loc_A8C12F: LitStr " earOrpa` date DEFAULT NULL,"
  loc_A8C132: ConcatStr
  loc_A8C133: FStStrNoPop var_D0
  loc_A8C136: LitStr " rchOrpa` varchar(8) NOT NULL DEFAULT '',"
  loc_A8C139: ConcatStr
  loc_A8C13A: FStStrNoPop var_108
  loc_A8C13D: LitStr " ojaOrpa` varchar(8) NOT NULL DEFAULT '',"
  loc_A8C140: ConcatStr
  loc_A8C141: FStStrNoPop var_10C
  loc_A8C144: LitStr " eanOrpa` date DEFAULT NULL,"
  loc_A8C147: ConcatStr
  loc_A8C148: FStStrNoPop var_110
  loc_A8C14B: LitStr " ajaMoti` varchar(100) NOT NULL DEFAULT '',"
  loc_A8C14E: ConcatStr
  loc_A8C14F: FStStrNoPop var_114
  loc_A8C152: LitStr " ipoOrpa` enum('Devengado','Debito','Reservada') NOT NULL DEFAULT 'Devengado',"
  loc_A8C155: ConcatStr
  loc_A8C156: FStStrNoPop var_118
  loc_A8C159: LitStr " hunOrpa` tinyint(1) unsigned NOT NULL DEFAULT '0',"
  loc_A8C15C: ConcatStr
  loc_A8C15D: FStStrNoPop var_11C
  loc_A8C160: LitStr " ltaUsua` varchar(8) NOT NULL DEFAULT '',"
  loc_A8C163: ConcatStr
  loc_A8C164: FStStrNoPop var_120
  loc_A8C167: LitStr " ltaFeho` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',"
  loc_A8C16A: ConcatStr
  loc_A8C16B: FStStrNoPop var_124
  loc_A8C16E: LitStr " otalOP` decimal(32,2) DEFAULT NULL,"
  loc_A8C171: ConcatStr
  loc_A8C172: FStStrNoPop var_128
  loc_A8C175: LitStr " ucuPers` bigint(11) unsigned NOT NULL DEFAULT '0',"
  loc_A8C178: ConcatStr
  loc_A8C179: FStStrNoPop var_12C
  loc_A8C17C: LitStr " etaProv` varchar(70) NOT NULL DEFAULT '',"
  loc_A8C17F: ConcatStr
  loc_A8C180: FStStrNoPop var_130
  loc_A8C183: LitStr " odiRete` tinyint(2) unsigned NOT NULL DEFAULT '0',"
  loc_A8C186: ConcatStr
  loc_A8C187: FStStrNoPop var_134
  loc_A8C18A: LitStr " etalleFP` varchar(100) NOT NULL DEFAULT '',"
  loc_A8C18D: ConcatStr
  loc_A8C18E: FStStrNoPop var_138
  loc_A8C191: LitStr " omprobanteFP` int(8) unsigned NOT NULL DEFAULT '0',"
  loc_A8C194: ConcatStr
  loc_A8C195: FStStrNoPop var_13C
  loc_A8C198: LitStr " mporteFP` decimal(13,2) NOT NULL DEFAULT '0.00'"
  loc_A8C19B: ConcatStr
  loc_A8C19C: FStStrNoPop var_140
  loc_A8C19F: LitStr " ) ENGINE=InnoDB ;"
  loc_A8C1A2: ConcatStr
  loc_A8C1A3: FStStrNoPop var_144
  loc_A8C1A6: FLdPr Me
  loc_A8C1A9: MemLdRfVar from_stack_1.global_76
  loc_A8C1AC: NewIfNullPr clsbase
  loc_A8C1AF: Call clsbase.RedefineRS(from_stack_1v)
  loc_A8C1B4: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = ""
  loc_A8C1E7: LitStr "INSERT INTO tmovi2"
  loc_A8C1EA: LitStr " SELECT tmovi.*, ldn.CucuPers, DetaProv, ldn.CodiRete, DetaRete, CertLine, ImpoLine"
  loc_A8C1ED: ConcatStr
  loc_A8C1EE: FStStrNoPop var_B4
  loc_A8C1F1: LitStr " FROM tmovi"
  loc_A8C1F4: ConcatStr
  loc_A8C1F5: FStStrNoPop var_B8
  loc_A8C1F8: LitStr " INNER JOIN liquidaneto ldn ON ldn.PeriInfo = tmovi.PeriInfo AND ldn.ExpeImpu = tmovi.ExpeImpu AND ldn.NumeLiqu = tmovi.NumeLiqu AND ldn.CodiRete > 0"
  loc_A8C1FB: ConcatStr
  loc_A8C1FC: FStStrNoPop var_BC
  loc_A8C1FF: LitStr " INNER JOIN retenciones rete ON rete.PeriInfo = ldn.PeriInfo AND rete.CodiRete = ldn.CodiRete"
  loc_A8C202: ConcatStr
  loc_A8C203: FStStrNoPop var_C0
  loc_A8C206: LitStr " INNER JOIN proveedor ON proveedor.CucuPers = ldn.CucuPers"
  loc_A8C209: ConcatStr
  loc_A8C20A: FStStrNoPop var_C4
  loc_A8C20D: LitStr " WHERE tmovi.FeanOrpa IS NULL;"
  loc_A8C210: ConcatStr
  loc_A8C211: FStStrNoPop var_C8
  loc_A8C214: LitStr " INSERT INTO tmovi2"
  loc_A8C217: ConcatStr
  loc_A8C218: FStStrNoPop var_CC
  loc_A8C21B: LitStr " SELECT tmovi.*, ldn.CucuPers, DetaProv, ldn.CodiRete, DetaRete, CertLine, ImpoLine"
  loc_A8C21E: ConcatStr
  loc_A8C21F: FStStrNoPop var_D0
  loc_A8C222: LitStr " FROM tmovi"
  loc_A8C225: ConcatStr
  loc_A8C226: FStStrNoPop var_108
  loc_A8C229: LitStr " INNER JOIN liquidaneto ldn ON ldn.PeriInfo = tmovi.PeriInfo AND ldn.ExpeImpu = tmovi.ExpeImpu AND ldn.NumeLiqu = tmovi.NumeLiqu"
  loc_A8C22C: ConcatStr
  loc_A8C22D: FStStrNoPop var_10C
  loc_A8C230: LitStr " INNER JOIN retenciones rete ON rete.PeriInfo = ldn.PeriInfo AND rete.CodiRete = ldn.CodiRete"
  loc_A8C233: ConcatStr
  loc_A8C234: FStStrNoPop var_110
  loc_A8C237: LitStr " INNER JOIN proveedor ON proveedor.CucuPers = ldn.CucuPers"
  loc_A8C23A: ConcatStr
  loc_A8C23B: FStStrNoPop var_114
  loc_A8C23E: LitStr " WHERE tmovi.FeanOrpa IS NOT NULL;"
  loc_A8C241: ConcatStr
  loc_A8C242: FStStrNoPop var_118
  loc_A8C245: LitStr " INSERT INTO tmovi2"
  loc_A8C248: ConcatStr
  loc_A8C249: FStStrNoPop var_11C
  loc_A8C24C: LitStr " SELECT tmovi.*, cheque.CucuPers, DetaProv, 0, DetaBanc, NumeMoba, ImpoCheq"
  loc_A8C24F: ConcatStr
  loc_A8C250: FStStrNoPop var_120
  loc_A8C253: LitStr " FROM tmovi"
  loc_A8C256: ConcatStr
  loc_A8C257: FStStrNoPop var_124
  loc_A8C25A: LitStr " INNER JOIN cheque ON cheque.PeriInfo = tmovi.PeriInfo AND cheque.NumeOrpa = tmovi.NumeOrpa AND FeanCheq IS NULL AND NumeMoba > 0"
  loc_A8C25D: ConcatStr
  loc_A8C25E: FStStrNoPop var_128
  loc_A8C261: LitStr " INNER JOIN banco ON banco.PeriInfo = cheque.PeriInfo AND banco.CodiBanc = cheque.CodiBanc"
  loc_A8C264: ConcatStr
  loc_A8C265: FStStrNoPop var_12C
  loc_A8C268: LitStr " INNER JOIN proveedor ON proveedor.CucuPers = cheque.CucuPers"
  loc_A8C26B: ConcatStr
  loc_A8C26C: FStStrNoPop var_130
  loc_A8C26F: LitStr " WHERE tmovi.FeanOrpa IS NULL;"
  loc_A8C272: ConcatStr
  loc_A8C273: FStStrNoPop var_134
  loc_A8C276: FLdPr Me
  loc_A8C279: MemLdRfVar from_stack_1.global_76
  loc_A8C27C: NewIfNullPr clsbase
  loc_A8C27F: Call clsbase.RedefineRS(from_stack_1v)
  loc_A8C284: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = ""
  loc_A8C2AF: LitStr "DROP TEMPORARY TABLE IF EXISTS tmovi3;"
  loc_A8C2B2: LitStr " CREATE TEMPORARY TABLE tmovi3"
  loc_A8C2B5: ConcatStr
  loc_A8C2B6: FStStrNoPop var_B4
  loc_A8C2B9: LitStr " SELECT *"
  loc_A8C2BC: ConcatStr
  loc_A8C2BD: FStStrNoPop var_B8
  loc_A8C2C0: LitStr " FROM tmovi2;"
  loc_A8C2C3: ConcatStr
  loc_A8C2C4: FStStrNoPop var_BC
  loc_A8C2C7: FLdPr Me
  loc_A8C2CA: MemLdRfVar from_stack_1.global_76
  loc_A8C2CD: NewIfNullPr clsbase
  loc_A8C2D0: Call clsbase.RedefineRS(from_stack_1v)
  loc_A8C2D5: FFreeStr var_B4 = "": var_B8 = ""
  loc_A8C2DE: LitStr "SELECT tmovi2.*"
  loc_A8C2E1: LitStr " , (Select Count(Distinct(Concat(tmovi3.CodiRete,tmovi3.ComprobanteFP))) FROM tmovi3 WHERE tmovi3.PeriInfo = tmovi2.PeriInfo AND tmovi3.NumeOrpa = tmovi2.NumeOrpa AND tmovi3.CucuPers = tmovi2.CucuPers) RowSpan"
  loc_A8C2E4: ConcatStr
  loc_A8C2E5: FStStrNoPop var_B4
  loc_A8C2E8: LitStr " FROM tmovi2"
  loc_A8C2EB: ConcatStr
  loc_A8C2EC: FStStrNoPop var_B8
  loc_A8C2EF: LitStr " ORDER BY tmovi2.NumeOrpa, tmovi2.DetaProv, tmovi2.CodiRete;"
  loc_A8C2F2: ConcatStr
  loc_A8C2F3: FStStrNoPop var_BC
  loc_A8C2F6: FLdPr Me
  loc_A8C2F9: MemLdRfVar from_stack_1.global_76
  loc_A8C2FC: NewIfNullPr clsbase
  loc_A8C2FF: Call clsbase.RedefineRS(from_stack_1v)
  loc_A8C304: FFreeStr var_B4 = "": var_B8 = ""
  loc_A8C30D: FLdRfVar var_148
  loc_A8C310: FLdPr Me
  loc_A8C313: MemLdRfVar from_stack_1.global_76
  loc_A8C316: NewIfNullPr clsbase
  loc_A8C319: from_stack_1 = clsbase.RecordCount
  loc_A8C31E: ILdRf var_148
  loc_A8C321: LitI4 0
  loc_A8C326: EqI4
  loc_A8C327: BranchF loc_A8C33A
  loc_A8C32A: LitI4 0
  loc_A8C32F: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_A8C332: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A8C337: Branch loc_A8C342
  loc_A8C33A: LitI2_Byte &HFF
  loc_A8C33C: FLdPr Me
  loc_A8C33F: MemStI2 bGenerado
  loc_A8C342: LitI4 0
  loc_A8C347: CI2I4
  loc_A8C348: FLdPr Me
  loc_A8C34B: Me.MousePointer = from_stack_1
  loc_A8C350: LitVarStr var_9C, vbNullString
  loc_A8C355: PopAdLdVar
  loc_A8C356: FLdPr Me
  loc_A8C359: VCallAd Control_ID_statusBar
  loc_A8C35C: FStAdFunc var_B0
  loc_A8C35F: FLdPr var_B0
  loc_A8C362: LateIdSt
  loc_A8C367: FFree1Ad var_B0
  loc_A8C36A: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'BA587C
  'Data Table: 46636C
  loc_BA494C: FLdRfVar var_90
  loc_BA494F: LitI2_Byte 0
  loc_BA4951: LitI2_Byte &HFF
  loc_BA4953: ImpAdLdI4 MemVar_C3D83C
  loc_BA4956: FLdPr Me
  loc_BA4959: MemLdRfVar from_stack_1.global_80
  loc_BA495C: NewIfNullPr IFileSystem3
  loc_BA495F: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_BA4964: ILdRf var_90
  loc_BA4967: FLdPr Me
  loc_BA496A: MemStVarAd
  loc_BA496E: FFree1Ad var_90
  loc_BA4971: LitVarStr var_A0, "<html>"
  loc_BA4976: PopAdLdVar
  loc_BA4977: FLdPr Me
  loc_BA497A: MemLdRfVar from_stack_1.htmFile
  loc_BA497D: LdPrVar
  loc_BA497F: LateMemCall
  loc_BA4985: LitVarStr var_A0, "<head>"
  loc_BA498A: PopAdLdVar
  loc_BA498B: FLdPr Me
  loc_BA498E: MemLdRfVar from_stack_1.htmFile
  loc_BA4991: LdPrVar
  loc_BA4993: LateMemCall
  loc_BA4999: LitVarStr var_A0, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BA499E: PopAdLdVar
  loc_BA499F: FLdPr Me
  loc_BA49A2: MemLdRfVar from_stack_1.htmFile
  loc_BA49A5: LdPrVar
  loc_BA49A7: LateMemCall
  loc_BA49AD: LitStr "<title>"
  loc_BA49B0: FLdRfVar var_B4
  loc_BA49B3: FLdPr Me
  loc_BA49B6:  = Me.Caption
  loc_BA49BB: ILdRf var_B4
  loc_BA49BE: ConcatStr
  loc_BA49BF: FStStrNoPop var_B8
  loc_BA49C2: LitStr "</title>"
  loc_BA49C5: ConcatStr
  loc_BA49C6: CVarStr var_C8
  loc_BA49C9: PopAdLdVar
  loc_BA49CA: FLdPr Me
  loc_BA49CD: MemLdRfVar from_stack_1.htmFile
  loc_BA49D0: LdPrVar
  loc_BA49D2: LateMemCall
  loc_BA49D8: FFreeStr var_B4 = ""
  loc_BA49DF: FFree1Var var_C8 = ""
  loc_BA49E2: LitStr vbNullString
  loc_BA49E5: ILdRf Me
  loc_BA49E8: CastAd
  loc_BA49EB: FStAdFunc var_90
  loc_BA49EE: FLdRfVar var_90
  loc_BA49F1: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_BA49F6: FFree1Ad var_90
  loc_BA49F9: LitI4 0
  loc_BA49FE: FStStrCopy var_B8
  loc_BA4A01: FLdRfVar var_B8
  loc_BA4A04: LitI4 0
  loc_BA4A09: FStStrCopy var_B4
  loc_BA4A0C: FLdRfVar var_B4
  loc_BA4A0F: LitI2_Byte 0
  loc_BA4A11: PopTmpLdAd2 var_CA
  loc_BA4A14: FLdPr Me
  loc_BA4A17: MemLdRfVar from_stack_1.htmFile
  loc_BA4A1A: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_BA4A1F: FFreeStr var_B4 = ""
  loc_BA4A26: LitVarStr var_A0, "<table>"
  loc_BA4A2B: PopAdLdVar
  loc_BA4A2C: FLdPr Me
  loc_BA4A2F: MemLdRfVar from_stack_1.htmFile
  loc_BA4A32: LdPrVar
  loc_BA4A34: LateMemCall
  loc_BA4A3A: LitVarStr var_A0, "<tbody>"
  loc_BA4A3F: PopAdLdVar
  loc_BA4A40: FLdPr Me
  loc_BA4A43: MemLdRfVar from_stack_1.htmFile
  loc_BA4A46: LdPrVar
  loc_BA4A48: LateMemCall
  loc_BA4A4E: LitVarStr var_A0, "<tr>"
  loc_BA4A53: PopAdLdVar
  loc_BA4A54: FLdPr Me
  loc_BA4A57: MemLdRfVar from_stack_1.htmFile
  loc_BA4A5A: LdPrVar
  loc_BA4A5C: LateMemCall
  loc_BA4A62: LitVarStr var_A0, "<td>"
  loc_BA4A67: PopAdLdVar
  loc_BA4A68: FLdPr Me
  loc_BA4A6B: MemLdRfVar from_stack_1.htmFile
  loc_BA4A6E: LdPrVar
  loc_BA4A70: LateMemCall
  loc_BA4A76: LitVarStr var_A0, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_BA4A7B: PopAdLdVar
  loc_BA4A7C: FLdPr Me
  loc_BA4A7F: MemLdRfVar from_stack_1.htmFile
  loc_BA4A82: LdPrVar
  loc_BA4A84: LateMemCall
  loc_BA4A8A: LitVarStr var_A0, "  <tr valign=""baseline"">"
  loc_BA4A8F: PopAdLdVar
  loc_BA4A90: FLdPr Me
  loc_BA4A93: MemLdRfVar from_stack_1.htmFile
  loc_BA4A96: LdPrVar
  loc_BA4A98: LateMemCall
  loc_BA4A9E: LitVarStr var_B0, "    <th width=""100" & Chr(37) & """ colspan=""3"" align=""center"" valign=""bottom""><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br><br>"
  loc_BA4AA3: LitVarStr var_A0, "Municipalidad de Guaymallén"
  loc_BA4AA8: FStVarCopyObj var_C8
  loc_BA4AAB: FLdRfVar var_C8
  loc_BA4AAE: FLdRfVar var_DC
  loc_BA4AB1: ImpAdCallFPR4  = Ucase()
  loc_BA4AB6: FLdRfVar var_DC
  loc_BA4AB9: ConcatVar var_EC
  loc_BA4ABD: LitVarStr var_FC, "</th>"
  loc_BA4AC2: ConcatVar var_10C
  loc_BA4AC6: PopAdLdVar
  loc_BA4AC7: FLdPr Me
  loc_BA4ACA: MemLdRfVar from_stack_1.htmFile
  loc_BA4ACD: LdPrVar
  loc_BA4ACF: LateMemCall
  loc_BA4AD5: FFreeVar var_C8 = "": var_DC = "": var_EC = ""
  loc_BA4AE0: LitVarStr var_A0, "  </tr>"
  loc_BA4AE5: PopAdLdVar
  loc_BA4AE6: FLdPr Me
  loc_BA4AE9: MemLdRfVar from_stack_1.htmFile
  loc_BA4AEC: LdPrVar
  loc_BA4AEE: LateMemCall
  loc_BA4AF4: LitVarStr var_A0, "  <tr valign=""baseline"">"
  loc_BA4AF9: PopAdLdVar
  loc_BA4AFA: FLdPr Me
  loc_BA4AFD: MemLdRfVar from_stack_1.htmFile
  loc_BA4B00: LdPrVar
  loc_BA4B02: LateMemCall
  loc_BA4B08: LitVarStr var_A0, "    <th colspan=""3""><hr></th>"
  loc_BA4B0D: PopAdLdVar
  loc_BA4B0E: FLdPr Me
  loc_BA4B11: MemLdRfVar from_stack_1.htmFile
  loc_BA4B14: LdPrVar
  loc_BA4B16: LateMemCall
  loc_BA4B1C: LitVarStr var_A0, "  </tr>"
  loc_BA4B21: PopAdLdVar
  loc_BA4B22: FLdPr Me
  loc_BA4B25: MemLdRfVar from_stack_1.htmFile
  loc_BA4B28: LdPrVar
  loc_BA4B2A: LateMemCall
  loc_BA4B30: LitVarStr var_A0, "  <tr valign=""baseline"">"
  loc_BA4B35: PopAdLdVar
  loc_BA4B36: FLdPr Me
  loc_BA4B39: MemLdRfVar from_stack_1.htmFile
  loc_BA4B3C: LdPrVar
  loc_BA4B3E: LateMemCall
  loc_BA4B44: LitStr "    <th width=""60" & Chr(37) & """ align=""left"" valign=""bottom"">ORDEN DE PAGO DE INTENDENCIA DE FECHA "
  loc_BA4B47: FLdPr Me
  loc_BA4B4A: VCallAd Control_ID_mskFecha
  loc_BA4B4D: FStAdFunc var_90
  loc_BA4B50: FLdPr var_90
  loc_BA4B53: LateIdLdVar var_C8 DispID_15 0
  loc_BA4B5A: CStrVarTmp
  loc_BA4B5B: FStStrNoPop var_B4
  loc_BA4B5E: ConcatStr
  loc_BA4B5F: FStStrNoPop var_B8
  loc_BA4B62: LitStr "</th>"
  loc_BA4B65: ConcatStr
  loc_BA4B66: CVarStr var_DC
  loc_BA4B69: PopAdLdVar
  loc_BA4B6A: FLdPr Me
  loc_BA4B6D: MemLdRfVar from_stack_1.htmFile
  loc_BA4B70: LdPrVar
  loc_BA4B72: LateMemCall
  loc_BA4B78: FFreeStr var_B4 = ""
  loc_BA4B7F: FFree1Ad var_90
  loc_BA4B82: FFreeVar var_C8 = ""
  loc_BA4B89: LitVarStr var_A0, "    <th width=""10" & Chr(37) & """ valign=""bottom"">&nbsp;</th>"
  loc_BA4B8E: PopAdLdVar
  loc_BA4B8F: FLdPr Me
  loc_BA4B92: MemLdRfVar from_stack_1.htmFile
  loc_BA4B95: LdPrVar
  loc_BA4B97: LateMemCall
  loc_BA4B9D: LitStr "    <th width=""20" & Chr(37) & """ align=""right"">Periodo: <span class=""Normal"">"
  loc_BA4BA0: FLdRfVar var_B4
  loc_BA4BA3: FLdPr Me
  loc_BA4BA6: VCallAd Control_ID_cboPeriodo
  loc_BA4BA9: FStAdFunc var_90
  loc_BA4BAC: FLdPr var_90
  loc_BA4BAF:  = Me.Text
  loc_BA4BB4: ILdRf var_B4
  loc_BA4BB7: ConcatStr
  loc_BA4BB8: FStStrNoPop var_B8
  loc_BA4BBB: LitStr "</span></th>"
  loc_BA4BBE: ConcatStr
  loc_BA4BBF: CVarStr var_C8
  loc_BA4BC2: PopAdLdVar
  loc_BA4BC3: FLdPr Me
  loc_BA4BC6: MemLdRfVar from_stack_1.htmFile
  loc_BA4BC9: LdPrVar
  loc_BA4BCB: LateMemCall
  loc_BA4BD1: FFreeStr var_B4 = ""
  loc_BA4BD8: FFree1Ad var_90
  loc_BA4BDB: FFree1Var var_C8 = ""
  loc_BA4BDE: LitVarStr var_A0, "  </tr>"
  loc_BA4BE3: PopAdLdVar
  loc_BA4BE4: FLdPr Me
  loc_BA4BE7: MemLdRfVar from_stack_1.htmFile
  loc_BA4BEA: LdPrVar
  loc_BA4BEC: LateMemCall
  loc_BA4BF2: LitVarStr var_A0, "  <tr valign=""baseline"">"
  loc_BA4BF7: PopAdLdVar
  loc_BA4BF8: FLdPr Me
  loc_BA4BFB: MemLdRfVar from_stack_1.htmFile
  loc_BA4BFE: LdPrVar
  loc_BA4C00: LateMemCall
  loc_BA4C06: LitVarStr var_A0, "    <th colspan=""3"" align=""left"" valign=""bottom""><p>Páguese por Tesorería las Órdenes de Pago detalladas a continuación: <br>"
  loc_BA4C0B: PopAdLdVar
  loc_BA4C0C: FLdPr Me
  loc_BA4C0F: MemLdRfVar from_stack_1.htmFile
  loc_BA4C12: LdPrVar
  loc_BA4C14: LateMemCall
  loc_BA4C1A: LitVarStr var_A0, "      </p>"
  loc_BA4C1F: PopAdLdVar
  loc_BA4C20: FLdPr Me
  loc_BA4C23: MemLdRfVar from_stack_1.htmFile
  loc_BA4C26: LdPrVar
  loc_BA4C28: LateMemCall
  loc_BA4C2E: LitVarStr var_A0, "    </th>"
  loc_BA4C33: PopAdLdVar
  loc_BA4C34: FLdPr Me
  loc_BA4C37: MemLdRfVar from_stack_1.htmFile
  loc_BA4C3A: LdPrVar
  loc_BA4C3C: LateMemCall
  loc_BA4C42: LitVarStr var_A0, "  </tr>"
  loc_BA4C47: PopAdLdVar
  loc_BA4C48: FLdPr Me
  loc_BA4C4B: MemLdRfVar from_stack_1.htmFile
  loc_BA4C4E: LdPrVar
  loc_BA4C50: LateMemCall
  loc_BA4C56: LitVarStr var_A0, "</table>"
  loc_BA4C5B: PopAdLdVar
  loc_BA4C5C: FLdPr Me
  loc_BA4C5F: MemLdRfVar from_stack_1.htmFile
  loc_BA4C62: LdPrVar
  loc_BA4C64: LateMemCall
  loc_BA4C6A: FLdPr Me
  loc_BA4C6D: MemLdRfVar from_stack_1.global_76
  loc_BA4C70: NewIfNullPr clsbase
  loc_BA4C73: Call clsbase.MoveFirst()
  loc_BA4C78: FLdRfVar var_CA
  loc_BA4C7B: FLdPr Me
  loc_BA4C7E: MemLdRfVar from_stack_1.global_76
  loc_BA4C81: NewIfNullPr clsbase
  loc_BA4C84: from_stack_1 = clsbase.EOF
  loc_BA4C89: FLdI2 var_CA
  loc_BA4C8C: NotI4
  loc_BA4C8D: BranchF loc_BA5558
  loc_BA4C90: FLdRfVar var_90
  loc_BA4C93: FLdPr Me
  loc_BA4C96: MemLdRfVar from_stack_1.global_76
  loc_BA4C99: NewIfNullPr clsbase
  loc_BA4C9C: from_stack_1v = clsbase.RsFrmGet()
  loc_BA4CA1: FLdZeroAd var_90
  loc_BA4CA4: FStAdFunc var_120
  loc_BA4CA7: ILdRf var_88
  loc_BA4CAA: FLdRfVar var_C8
  loc_BA4CAD: FLdRfVar var_124
  loc_BA4CB0: LitVarStr var_A0, "NumeOrpa"
  loc_BA4CB5: PopAdLdVar
  loc_BA4CB6: FLdRfVar var_90
  loc_BA4CB9: FLdPr var_120
  loc_BA4CBC:  = Me.Fields
  loc_BA4CC1: FLdPr var_90
  loc_BA4CC4: from_stack_2 = Me.Item(from_stack_1)
  loc_BA4CC9: FLdPr var_124
  loc_BA4CCC:  = Me.Value
  loc_BA4CD1: FLdRfVar var_C8
  loc_BA4CD4: FnCStrVar
  loc_BA4CD6: FStStrNoPop var_B4
  loc_BA4CD9: NeStr
  loc_BA4CDB: FFree1Str var_B4
  loc_BA4CDE: FFreeAd var_90 = ""
  loc_BA4CE5: FFree1Var var_C8 = ""
  loc_BA4CE8: BranchF loc_BA514B
  loc_BA4CEB: LitVarStr var_A0, "  <table width=""100" & Chr(37) & """ border=""1"" cellspacing=""0"" cellpadding=""1"">"
  loc_BA4CF0: PopAdLdVar
  loc_BA4CF1: FLdPr Me
  loc_BA4CF4: MemLdRfVar from_stack_1.htmFile
  loc_BA4CF7: LdPrVar
  loc_BA4CF9: LateMemCall
  loc_BA4CFF: LitVarStr var_A0, "      <tr valign=""top"" class=""LineaDato"">"
  loc_BA4D04: PopAdLdVar
  loc_BA4D05: FLdPr Me
  loc_BA4D08: MemLdRfVar from_stack_1.htmFile
  loc_BA4D0B: LdPrVar
  loc_BA4D0D: LateMemCall
  loc_BA4D13: FLdRfVar var_EC
  loc_BA4D16: FLdRfVar var_12C
  loc_BA4D19: LitVarStr var_FC, "FeanOrpa"
  loc_BA4D1E: PopAdLdVar
  loc_BA4D1F: FLdRfVar var_128
  loc_BA4D22: FLdPr var_120
  loc_BA4D25:  = Me.Fields
  loc_BA4D2A: FLdPr var_128
  loc_BA4D2D: from_stack_2 = Me.Item(from_stack_1)
  loc_BA4D32: FLdPr var_12C
  loc_BA4D35:  = Me.Value
  loc_BA4D3A: LitVarStr var_B0, "        <td rowspan=""2"" class=""Encabezado"">Orden de pago N&ordm;&nbsp;"
  loc_BA4D3F: FLdRfVar var_C8
  loc_BA4D42: FLdRfVar var_124
  loc_BA4D45: LitVarStr var_A0, "NumeOrpa"
  loc_BA4D4A: PopAdLdVar
  loc_BA4D4B: FLdRfVar var_90
  loc_BA4D4E: FLdPr var_120
  loc_BA4D51:  = Me.Fields
  loc_BA4D56: FLdPr var_90
  loc_BA4D59: from_stack_2 = Me.Item(from_stack_1)
  loc_BA4D5E: FLdPr var_124
  loc_BA4D61:  = Me.Value
  loc_BA4D66: FLdRfVar var_C8
  loc_BA4D69: ConcatVar var_DC
  loc_BA4D6D: LitVarStr var_16C, vbNullString
  loc_BA4D72: FStVarCopyObj var_17C
  loc_BA4D75: FLdRfVar var_17C
  loc_BA4D78: LitVarStr var_14C, " - ANULADA"
  loc_BA4D7D: FStVarCopyObj var_15C
  loc_BA4D80: FLdRfVar var_15C
  loc_BA4D83: FLdRfVar var_EC
  loc_BA4D86: LitVarStr var_11C, vbNullString
  loc_BA4D8B: HardType
  loc_BA4D8C: NeVar var_10C
  loc_BA4D90: FStVar var_13C
  loc_BA4D94: FLdRfVar var_13C
  loc_BA4D97: FLdRfVar var_18C
  loc_BA4D9A: ImpAdCallFPR4  = IIf(, , )
  loc_BA4D9F: FLdRfVar var_18C
  loc_BA4DA2: ConcatVar var_19C
  loc_BA4DA6: PopAdLdVar
  loc_BA4DA7: FLdPr Me
  loc_BA4DAA: MemLdRfVar from_stack_1.htmFile
  loc_BA4DAD: LdPrVar
  loc_BA4DAF: LateMemCall
  loc_BA4DB5: FFreeAd var_90 = "": var_124 = "": var_128 = ""
  loc_BA4DC0: FFreeVar var_C8 = "": var_EC = "": var_13C = "": var_15C = "": var_17C = "": var_DC = "": var_18C = ""
  loc_BA4DD3: FLdRfVar var_C8
  loc_BA4DD6: FLdRfVar var_124
  loc_BA4DD9: LitVarStr var_A0, "TipoOrpa"
  loc_BA4DDE: PopAdLdVar
  loc_BA4DDF: FLdRfVar var_90
  loc_BA4DE2: FLdPr var_120
  loc_BA4DE5:  = Me.Fields
  loc_BA4DEA: FLdPr var_90
  loc_BA4DED: from_stack_2 = Me.Item(from_stack_1)
  loc_BA4DF2: FLdPr var_124
  loc_BA4DF5:  = Me.Value
  loc_BA4DFA: FLdRfVar var_C8
  loc_BA4DFD: LitVarStr var_B0, "Debito"
  loc_BA4E02: HardType
  loc_BA4E03: EqVarBool
  loc_BA4E05: FFreeAd var_90 = ""
  loc_BA4E0C: FFree1Var var_C8 = ""
  loc_BA4E0F: BranchF loc_BA4E26
  loc_BA4E12: LitVarStr var_A0, "          <br>(Débito)"
  loc_BA4E17: PopAdLdVar
  loc_BA4E18: FLdPr Me
  loc_BA4E1B: MemLdRfVar from_stack_1.htmFile
  loc_BA4E1E: LdPrVar
  loc_BA4E20: LateMemCall
  loc_BA4E26: LitVarStr var_A0, "          </td>"
  loc_BA4E2B: PopAdLdVar
  loc_BA4E2C: FLdPr Me
  loc_BA4E2F: MemLdRfVar from_stack_1.htmFile
  loc_BA4E32: LdPrVar
  loc_BA4E34: LateMemCall
  loc_BA4E3A: LitVarStr var_A0, "        <td colspan=""1"" align=""center"">Fecha de</td>"
  loc_BA4E3F: PopAdLdVar
  loc_BA4E40: FLdPr Me
  loc_BA4E43: MemLdRfVar from_stack_1.htmFile
  loc_BA4E46: LdPrVar
  loc_BA4E48: LateMemCall
  loc_BA4E4E: LitVarStr var_B0, "        <td rowspan=""2"">Expediente:<br>"
  loc_BA4E53: FLdRfVar var_C8
  loc_BA4E56: FLdRfVar var_124
  loc_BA4E59: LitVarStr var_A0, "ExpeImpu"
  loc_BA4E5E: PopAdLdVar
  loc_BA4E5F: FLdRfVar var_90
  loc_BA4E62: FLdPr var_120
  loc_BA4E65:  = Me.Fields
  loc_BA4E6A: FLdPr var_90
  loc_BA4E6D: from_stack_2 = Me.Item(from_stack_1)
  loc_BA4E72: FLdPr var_124
  loc_BA4E75:  = Me.Value
  loc_BA4E7A: FLdRfVar var_C8
  loc_BA4E7D: ConcatVar var_DC
  loc_BA4E81: LitVarStr var_FC, "</td>"
  loc_BA4E86: ConcatVar var_EC
  loc_BA4E8A: PopAdLdVar
  loc_BA4E8B: FLdPr Me
  loc_BA4E8E: MemLdRfVar from_stack_1.htmFile
  loc_BA4E91: LdPrVar
  loc_BA4E93: LateMemCall
  loc_BA4E99: FFreeAd var_90 = ""
  loc_BA4EA0: FFreeVar var_C8 = "": var_DC = ""
  loc_BA4EA9: LitVarStr var_B0, "        <td rowspan=""2"">Liquidación:<br>"
  loc_BA4EAE: FLdRfVar var_C8
  loc_BA4EB1: FLdRfVar var_124
  loc_BA4EB4: LitVarStr var_A0, "NumeLiqu"
  loc_BA4EB9: PopAdLdVar
  loc_BA4EBA: FLdRfVar var_90
  loc_BA4EBD: FLdPr var_120
  loc_BA4EC0:  = Me.Fields
  loc_BA4EC5: FLdPr var_90
  loc_BA4EC8: from_stack_2 = Me.Item(from_stack_1)
  loc_BA4ECD: FLdPr var_124
  loc_BA4ED0:  = Me.Value
  loc_BA4ED5: FLdRfVar var_C8
  loc_BA4ED8: ConcatVar var_DC
  loc_BA4EDC: LitVarStr var_FC, "</td>"
  loc_BA4EE1: ConcatVar var_EC
  loc_BA4EE5: PopAdLdVar
  loc_BA4EE6: FLdPr Me
  loc_BA4EE9: MemLdRfVar from_stack_1.htmFile
  loc_BA4EEC: LdPrVar
  loc_BA4EEE: LateMemCall
  loc_BA4EF4: FFreeAd var_90 = ""
  loc_BA4EFB: FFreeVar var_C8 = "": var_DC = ""
  loc_BA4F04: LitVarStr var_A0, "        </tr>"
  loc_BA4F09: PopAdLdVar
  loc_BA4F0A: FLdPr Me
  loc_BA4F0D: MemLdRfVar from_stack_1.htmFile
  loc_BA4F10: LdPrVar
  loc_BA4F12: LateMemCall
  loc_BA4F18: LitVarStr var_A0, "      <tr valign=""top"" class=""LineaDato"">"
  loc_BA4F1D: PopAdLdVar
  loc_BA4F1E: FLdPr Me
  loc_BA4F21: MemLdRfVar from_stack_1.htmFile
  loc_BA4F24: LdPrVar
  loc_BA4F26: LateMemCall
  loc_BA4F2C: LitVarStr var_B0, "        <td>Emisión:<br><div align=""center""> "
  loc_BA4F31: FLdRfVar var_C8
  loc_BA4F34: FLdRfVar var_124
  loc_BA4F37: LitVarStr var_A0, "FechOrpa"
  loc_BA4F3C: PopAdLdVar
  loc_BA4F3D: FLdRfVar var_90
  loc_BA4F40: FLdPr var_120
  loc_BA4F43:  = Me.Fields
  loc_BA4F48: FLdPr var_90
  loc_BA4F4B: from_stack_2 = Me.Item(from_stack_1)
  loc_BA4F50: FLdPr var_124
  loc_BA4F53:  = Me.Value
  loc_BA4F58: FLdRfVar var_C8
  loc_BA4F5B: ConcatVar var_DC
  loc_BA4F5F: LitVarStr var_FC, "</div></td>"
  loc_BA4F64: ConcatVar var_EC
  loc_BA4F68: PopAdLdVar
  loc_BA4F69: FLdPr Me
  loc_BA4F6C: MemLdRfVar from_stack_1.htmFile
  loc_BA4F6F: LdPrVar
  loc_BA4F71: LateMemCall
  loc_BA4F77: FFreeAd var_90 = ""
  loc_BA4F7E: FFreeVar var_C8 = "": var_DC = ""
  loc_BA4F87: LitVarStr var_A0, "        </tr>"
  loc_BA4F8C: PopAdLdVar
  loc_BA4F8D: FLdPr Me
  loc_BA4F90: MemLdRfVar from_stack_1.htmFile
  loc_BA4F93: LdPrVar
  loc_BA4F95: LateMemCall
  loc_BA4F9B: LitVarStr var_A0, "      <tr valign=""top"" class=""LineaDato"">"
  loc_BA4FA0: PopAdLdVar
  loc_BA4FA1: FLdPr Me
  loc_BA4FA4: MemLdRfVar from_stack_1.htmFile
  loc_BA4FA7: LdPrVar
  loc_BA4FA9: LateMemCall
  loc_BA4FAF: LitVarStr var_B0, "        <td colspan=""3"">Detalle: "
  loc_BA4FB4: FLdRfVar var_C8
  loc_BA4FB7: FLdRfVar var_124
  loc_BA4FBA: LitVarStr var_A0, "DetaOrpa"
  loc_BA4FBF: PopAdLdVar
  loc_BA4FC0: FLdRfVar var_90
  loc_BA4FC3: FLdPr var_120
  loc_BA4FC6:  = Me.Fields
  loc_BA4FCB: FLdPr var_90
  loc_BA4FCE: from_stack_2 = Me.Item(from_stack_1)
  loc_BA4FD3: FLdPr var_124
  loc_BA4FD6:  = Me.Value
  loc_BA4FDB: FLdRfVar var_C8
  loc_BA4FDE: ConcatVar var_DC
  loc_BA4FE2: LitVarStr var_FC, "</td>"
  loc_BA4FE7: ConcatVar var_EC
  loc_BA4FEB: PopAdLdVar
  loc_BA4FEC: FLdPr Me
  loc_BA4FEF: MemLdRfVar from_stack_1.htmFile
  loc_BA4FF2: LdPrVar
  loc_BA4FF4: LateMemCall
  loc_BA4FFA: FFreeAd var_90 = ""
  loc_BA5001: FFreeVar var_C8 = "": var_DC = ""
  loc_BA500A: FLdRfVar var_124
  loc_BA500D: LitVarStr var_A0, "TotalOP"
  loc_BA5012: PopAdLdVar
  loc_BA5013: FLdRfVar var_90
  loc_BA5016: FLdPr var_120
  loc_BA5019:  = Me.Fields
  loc_BA501E: FLdPr var_90
  loc_BA5021: from_stack_2 = Me.Item(from_stack_1)
  loc_BA5026: LitStr "        <td>Total:<br><div align=""right""> "
  loc_BA5029: LitI4 1
  loc_BA502E: LitI4 1
  loc_BA5033: LitVarStr var_B0, "###,###,##0.00"
  loc_BA5038: FStVarCopyObj var_DC
  loc_BA503B: FLdRfVar var_DC
  loc_BA503E: FLdZeroAd var_124
  loc_BA5041: CVarAd
  loc_BA5045: ImpAdCallI2 Format$(, )
  loc_BA504A: FStStrNoPop var_B4
  loc_BA504D: ConcatStr
  loc_BA504E: FStStrNoPop var_B8
  loc_BA5051: LitStr "</div></td>"
  loc_BA5054: ConcatStr
  loc_BA5055: CVarStr var_EC
  loc_BA5058: PopAdLdVar
  loc_BA5059: FLdPr Me
  loc_BA505C: MemLdRfVar from_stack_1.htmFile
  loc_BA505F: LdPrVar
  loc_BA5061: LateMemCall
  loc_BA5067: FFreeStr var_B4 = ""
  loc_BA506E: FFree1Ad var_90
  loc_BA5071: FFreeVar var_C8 = "": var_DC = ""
  loc_BA507A: LitVarStr var_A0, "      </tr>"
  loc_BA507F: PopAdLdVar
  loc_BA5080: FLdPr Me
  loc_BA5083: MemLdRfVar from_stack_1.htmFile
  loc_BA5086: LdPrVar
  loc_BA5088: LateMemCall
  loc_BA508E: LitVarStr var_A0, "  </tr>"
  loc_BA5093: PopAdLdVar
  loc_BA5094: FLdPr Me
  loc_BA5097: MemLdRfVar from_stack_1.htmFile
  loc_BA509A: LdPrVar
  loc_BA509C: LateMemCall
  loc_BA50A2: FLdRfVar var_124
  loc_BA50A5: LitVarStr var_A0, "FeanOrpa"
  loc_BA50AA: PopAdLdVar
  loc_BA50AB: FLdRfVar var_90
  loc_BA50AE: FLdPr var_120
  loc_BA50B1:  = Me.Fields
  loc_BA50B6: FLdPr var_90
  loc_BA50B9: from_stack_2 = Me.Item(from_stack_1)
  loc_BA50BE: FLdZeroAd var_124
  loc_BA50C1: CVarAd
  loc_BA50C5: ImpAdCallI2 IsNull()
  loc_BA50CA: FFree1Ad var_90
  loc_BA50CD: FFree1Var var_C8 = ""
  loc_BA50D0: BranchF loc_BA514B
  loc_BA50D3: LitVarStr var_A0, "  <tr class=""Encabezado"">"
  loc_BA50D8: PopAdLdVar
  loc_BA50D9: FLdPr Me
  loc_BA50DC: MemLdRfVar from_stack_1.htmFile
  loc_BA50DF: LdPrVar
  loc_BA50E1: LateMemCall
  loc_BA50E7: LitVarStr var_A0, "    <th align=""center"">Proveedor</th>"
  loc_BA50EC: PopAdLdVar
  loc_BA50ED: FLdPr Me
  loc_BA50F0: MemLdRfVar from_stack_1.htmFile
  loc_BA50F3: LdPrVar
  loc_BA50F5: LateMemCall
  loc_BA50FB: LitVarStr var_A0, "    <th align=""center"">Forma de pago (cheque/retención)</th>"
  loc_BA5100: PopAdLdVar
  loc_BA5101: FLdPr Me
  loc_BA5104: MemLdRfVar from_stack_1.htmFile
  loc_BA5107: LdPrVar
  loc_BA5109: LateMemCall
  loc_BA510F: LitVarStr var_A0, "    <th align=""center"">Comprobante"
  loc_BA5114: PopAdLdVar
  loc_BA5115: FLdPr Me
  loc_BA5118: MemLdRfVar from_stack_1.htmFile
  loc_BA511B: LdPrVar
  loc_BA511D: LateMemCall
  loc_BA5123: LitVarStr var_A0, "    <th align=""center"">Importe</th>"
  loc_BA5128: PopAdLdVar
  loc_BA5129: FLdPr Me
  loc_BA512C: MemLdRfVar from_stack_1.htmFile
  loc_BA512F: LdPrVar
  loc_BA5131: LateMemCall
  loc_BA5137: LitVarStr var_A0, "  </tr>"
  loc_BA513C: PopAdLdVar
  loc_BA513D: FLdPr Me
  loc_BA5140: MemLdRfVar from_stack_1.htmFile
  loc_BA5143: LdPrVar
  loc_BA5145: LateMemCall
  loc_BA514B: FLdRfVar var_124
  loc_BA514E: LitVarStr var_A0, "FeanOrpa"
  loc_BA5153: PopAdLdVar
  loc_BA5154: FLdRfVar var_90
  loc_BA5157: FLdPr var_120
  loc_BA515A:  = Me.Fields
  loc_BA515F: FLdPr var_90
  loc_BA5162: from_stack_2 = Me.Item(from_stack_1)
  loc_BA5167: FLdZeroAd var_124
  loc_BA516A: CVarAd
  loc_BA516E: ImpAdCallI2 IsNull()
  loc_BA5173: FFree1Ad var_90
  loc_BA5176: FFree1Var var_C8 = ""
  loc_BA5179: BranchF loc_BA5479
  loc_BA517C: ILdRf var_88
  loc_BA517F: FLdRfVar var_C8
  loc_BA5182: FLdRfVar var_124
  loc_BA5185: LitVarStr var_A0, "NumeOrpa"
  loc_BA518A: PopAdLdVar
  loc_BA518B: FLdRfVar var_90
  loc_BA518E: FLdPr var_120
  loc_BA5191:  = Me.Fields
  loc_BA5196: FLdPr var_90
  loc_BA5199: from_stack_2 = Me.Item(from_stack_1)
  loc_BA519E: FLdPr var_124
  loc_BA51A1:  = Me.Value
  loc_BA51A6: FLdRfVar var_C8
  loc_BA51A9: FnCStrVar
  loc_BA51AB: FStStrNoPop var_B4
  loc_BA51AE: NeStr
  loc_BA51B0: ILdRf var_8C
  loc_BA51B3: FLdRfVar var_DC
  loc_BA51B6: FLdRfVar var_12C
  loc_BA51B9: LitVarStr var_B0, "CucuPers"
  loc_BA51BE: PopAdLdVar
  loc_BA51BF: FLdRfVar var_128
  loc_BA51C2: FLdPr var_120
  loc_BA51C5:  = Me.Fields
  loc_BA51CA: FLdPr var_128
  loc_BA51CD: from_stack_2 = Me.Item(from_stack_1)
  loc_BA51D2: FLdPr var_12C
  loc_BA51D5:  = Me.Value
  loc_BA51DA: FLdRfVar var_DC
  loc_BA51DD: FnCStrVar
  loc_BA51DF: FStStrNoPop var_B8
  loc_BA51E2: NeStr
  loc_BA51E4: OrI4
  loc_BA51E5: FFreeStr var_B4 = ""
  loc_BA51EC: FFreeAd var_90 = "": var_124 = "": var_128 = ""
  loc_BA51F7: FFreeVar var_C8 = ""
  loc_BA51FE: BranchF loc_BA5322
  loc_BA5201: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_BA5206: PopAdLdVar
  loc_BA5207: FLdPr Me
  loc_BA520A: MemLdRfVar from_stack_1.htmFile
  loc_BA520D: LdPrVar
  loc_BA520F: LateMemCall
  loc_BA5215: LitVarStr var_A0, "    <td rowspan="
  loc_BA521A: LitI4 &H22
  loc_BA521F: FLdRfVar var_C8
  loc_BA5222: ImpAdCallFPR4  = Chr()
  loc_BA5227: FLdRfVar var_C8
  loc_BA522A: ConcatVar var_DC
  loc_BA522E: FLdRfVar var_EC
  loc_BA5231: FLdRfVar var_124
  loc_BA5234: LitVarStr var_B0, "RowSpan"
  loc_BA5239: PopAdLdVar
  loc_BA523A: FLdRfVar var_90
  loc_BA523D: FLdPr var_120
  loc_BA5240:  = Me.Fields
  loc_BA5245: FLdPr var_90
  loc_BA5248: from_stack_2 = Me.Item(from_stack_1)
  loc_BA524D: FLdPr var_124
  loc_BA5250:  = Me.Value
  loc_BA5255: FLdRfVar var_EC
  loc_BA5258: ConcatVar var_10C
  loc_BA525C: LitI4 &H22
  loc_BA5261: FLdRfVar var_13C
  loc_BA5264: ImpAdCallFPR4  = Chr()
  loc_BA5269: FLdRfVar var_13C
  loc_BA526C: ConcatVar var_15C
  loc_BA5270: LitVarStr var_FC, " align=""left"" valign=""top"">"
  loc_BA5275: ConcatVar var_17C
  loc_BA5279: FLdRfVar var_18C
  loc_BA527C: FLdRfVar var_12C
  loc_BA527F: LitVarStr var_11C, "CucuPers"
  loc_BA5284: PopAdLdVar
  loc_BA5285: FLdRfVar var_128
  loc_BA5288: FLdPr var_120
  loc_BA528B:  = Me.Fields
  loc_BA5290: FLdPr var_128
  loc_BA5293: from_stack_2 = Me.Item(from_stack_1)
  loc_BA5298: FLdPr var_12C
  loc_BA529B:  = Me.Value
  loc_BA52A0: FLdRfVar var_18C
  loc_BA52A3: ConcatVar var_19C
  loc_BA52A7: LitVarStr var_14C, " - "
  loc_BA52AC: ConcatVar var_1BC
  loc_BA52B0: FLdRfVar var_1D4
  loc_BA52B3: FLdRfVar var_1C4
  loc_BA52B6: LitVarStr var_16C, "DetaProv"
  loc_BA52BB: PopAdLdVar
  loc_BA52BC: FLdRfVar var_1C0
  loc_BA52BF: FLdPr var_120
  loc_BA52C2:  = Me.Fields
  loc_BA52C7: FLdPr var_1C0
  loc_BA52CA: from_stack_2 = Me.Item(from_stack_1)
  loc_BA52CF: FLdPr var_1C4
  loc_BA52D2:  = Me.Value
  loc_BA52D7: FLdRfVar var_1D4
  loc_BA52DA: ConcatVar var_1E4
  loc_BA52DE: LitVarStr var_1AC, "</td>"
  loc_BA52E3: ConcatVar var_1F4
  loc_BA52E7: PopAdLdVar
  loc_BA52E8: FLdPr Me
  loc_BA52EB: MemLdRfVar from_stack_1.htmFile
  loc_BA52EE: LdPrVar
  loc_BA52F0: LateMemCall
  loc_BA52F6: FFreeAd var_90 = "": var_124 = "": var_128 = "": var_12C = "": var_1C0 = ""
  loc_BA5305: FFreeVar var_C8 = "": var_DC = "": var_EC = "": var_10C = "": var_13C = "": var_15C = "": var_17C = "": var_18C = "": var_19C = "": var_1BC = "": var_1D4 = "": var_1E4 = ""
  loc_BA5322: FLdRfVar var_C8
  loc_BA5325: FLdRfVar var_124
  loc_BA5328: LitVarStr var_A0, "DetalleFP"
  loc_BA532D: PopAdLdVar
  loc_BA532E: FLdRfVar var_90
  loc_BA5331: FLdPr var_120
  loc_BA5334:  = Me.Fields
  loc_BA5339: FLdPr var_90
  loc_BA533C: from_stack_2 = Me.Item(from_stack_1)
  loc_BA5341: FLdPr var_124
  loc_BA5344:  = Me.Value
  loc_BA5349: LitI4 0
  loc_BA534E: LitStr "LineaDato"
  loc_BA5351: LitI2_Byte 0
  loc_BA5353: LitStr "right"
  loc_BA5356: FLdRfVar var_C8
  loc_BA5359: CStrVarTmp
  loc_BA535A: FStStrNoPop var_B4
  loc_BA535D: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BA5362: CVarStr var_DC
  loc_BA5365: PopAdLdVar
  loc_BA5366: FLdPr Me
  loc_BA5369: MemLdRfVar from_stack_1.htmFile
  loc_BA536C: LdPrVar
  loc_BA536E: LateMemCall
  loc_BA5374: FFree1Str var_B4
  loc_BA5377: FFreeAd var_90 = ""
  loc_BA537E: FFreeVar var_C8 = ""
  loc_BA5385: FLdRfVar var_C8
  loc_BA5388: FLdRfVar var_124
  loc_BA538B: LitVarStr var_A0, "ComprobanteFP"
  loc_BA5390: PopAdLdVar
  loc_BA5391: FLdRfVar var_90
  loc_BA5394: FLdPr var_120
  loc_BA5397:  = Me.Fields
  loc_BA539C: FLdPr var_90
  loc_BA539F: from_stack_2 = Me.Item(from_stack_1)
  loc_BA53A4: FLdPr var_124
  loc_BA53A7:  = Me.Value
  loc_BA53AC: LitI4 0
  loc_BA53B1: LitStr "LineaDato"
  loc_BA53B4: LitI2_Byte 0
  loc_BA53B6: LitStr "right"
  loc_BA53B9: FLdRfVar var_C8
  loc_BA53BC: CStrVarTmp
  loc_BA53BD: FStStrNoPop var_B4
  loc_BA53C0: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BA53C5: CVarStr var_DC
  loc_BA53C8: PopAdLdVar
  loc_BA53C9: FLdPr Me
  loc_BA53CC: MemLdRfVar from_stack_1.htmFile
  loc_BA53CF: LdPrVar
  loc_BA53D1: LateMemCall
  loc_BA53D7: FFree1Str var_B4
  loc_BA53DA: FFreeAd var_90 = ""
  loc_BA53E1: FFreeVar var_C8 = ""
  loc_BA53E8: FLdRfVar var_124
  loc_BA53EB: LitVarStr var_A0, "ImporteFP"
  loc_BA53F0: PopAdLdVar
  loc_BA53F1: FLdRfVar var_90
  loc_BA53F4: FLdPr var_120
  loc_BA53F7:  = Me.Fields
  loc_BA53FC: FLdPr var_90
  loc_BA53FF: from_stack_2 = Me.Item(from_stack_1)
  loc_BA5404: LitI4 1
  loc_BA5409: LitI4 1
  loc_BA540E: LitVarStr var_B0, "###,###,##0.00"
  loc_BA5413: FStVarCopyObj var_DC
  loc_BA5416: FLdRfVar var_DC
  loc_BA5419: FLdZeroAd var_124
  loc_BA541C: CVarAd
  loc_BA5420: ImpAdCallI2 Format$(, )
  loc_BA5425: FStStr var_B8
  loc_BA5428: LitI4 0
  loc_BA542D: LitStr "LineaDato"
  loc_BA5430: LitI2_Byte 0
  loc_BA5432: LitStr "right"
  loc_BA5435: FLdZeroAd var_B8
  loc_BA5438: FStStrNoPop var_B4
  loc_BA543B: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BA5440: CVarStr var_EC
  loc_BA5443: PopAdLdVar
  loc_BA5444: FLdPr Me
  loc_BA5447: MemLdRfVar from_stack_1.htmFile
  loc_BA544A: LdPrVar
  loc_BA544C: LateMemCall
  loc_BA5452: FFreeStr var_B4 = ""
  loc_BA5459: FFree1Ad var_90
  loc_BA545C: FFreeVar var_C8 = "": var_DC = ""
  loc_BA5465: LitVarStr var_A0, "     </tr>"
  loc_BA546A: PopAdLdVar
  loc_BA546B: FLdPr Me
  loc_BA546E: MemLdRfVar from_stack_1.htmFile
  loc_BA5471: LdPrVar
  loc_BA5473: LateMemCall
  loc_BA5479: ILdRf var_88
  loc_BA547C: FLdRfVar var_C8
  loc_BA547F: FLdRfVar var_124
  loc_BA5482: LitVarStr var_A0, "NumeOrpa"
  loc_BA5487: PopAdLdVar
  loc_BA5488: FLdRfVar var_90
  loc_BA548B: FLdPr var_120
  loc_BA548E:  = Me.Fields
  loc_BA5493: FLdPr var_90
  loc_BA5496: from_stack_2 = Me.Item(from_stack_1)
  loc_BA549B: FLdPr var_124
  loc_BA549E:  = Me.Value
  loc_BA54A3: FLdRfVar var_C8
  loc_BA54A6: FnCStrVar
  loc_BA54A8: FStStrNoPop var_B4
  loc_BA54AB: NeStr
  loc_BA54AD: FFree1Str var_B4
  loc_BA54B0: FFreeAd var_90 = ""
  loc_BA54B7: FFree1Var var_C8 = ""
  loc_BA54BA: BranchF loc_BA54D1
  loc_BA54BD: LitVarStr var_A0, "<br>"
  loc_BA54C2: PopAdLdVar
  loc_BA54C3: FLdPr Me
  loc_BA54C6: MemLdRfVar from_stack_1.htmFile
  loc_BA54C9: LdPrVar
  loc_BA54CB: LateMemCall
  loc_BA54D1: FLdRfVar var_C8
  loc_BA54D4: FLdRfVar var_124
  loc_BA54D7: LitVarStr var_A0, "NumeOrpa"
  loc_BA54DC: PopAdLdVar
  loc_BA54DD: FLdRfVar var_90
  loc_BA54E0: FLdPr var_120
  loc_BA54E3:  = Me.Fields
  loc_BA54E8: FLdPr var_90
  loc_BA54EB: from_stack_2 = Me.Item(from_stack_1)
  loc_BA54F0: FLdPr var_124
  loc_BA54F3:  = Me.Value
  loc_BA54F8: FLdRfVar var_C8
  loc_BA54FB: CStrVarTmp
  loc_BA54FC: FStStr var_88
  loc_BA54FF: FFreeAd var_90 = ""
  loc_BA5506: FFree1Var var_C8 = ""
  loc_BA5509: FLdRfVar var_C8
  loc_BA550C: FLdRfVar var_124
  loc_BA550F: LitVarStr var_A0, "CucuPers"
  loc_BA5514: PopAdLdVar
  loc_BA5515: FLdRfVar var_90
  loc_BA5518: FLdPr var_120
  loc_BA551B:  = Me.Fields
  loc_BA5520: FLdPr var_90
  loc_BA5523: from_stack_2 = Me.Item(from_stack_1)
  loc_BA5528: FLdPr var_124
  loc_BA552B:  = Me.Value
  loc_BA5530: FLdRfVar var_C8
  loc_BA5533: CStrVarTmp
  loc_BA5534: FStStr var_8C
  loc_BA5537: FFreeAd var_90 = ""
  loc_BA553E: FFree1Var var_C8 = ""
  loc_BA5541: LitNothing
  loc_BA5543: FStAd var_120 
  loc_BA5547: FLdPr Me
  loc_BA554A: MemLdRfVar from_stack_1.global_76
  loc_BA554D: NewIfNullPr clsbase
  loc_BA5550: Call clsbase.MoveSiguiente()
  loc_BA5555: Branch loc_BA4C78
  loc_BA5558: LitVarStr var_A0, "</table>"
  loc_BA555D: PopAdLdVar
  loc_BA555E: FLdPr Me
  loc_BA5561: MemLdRfVar from_stack_1.htmFile
  loc_BA5564: LdPrVar
  loc_BA5566: LateMemCall
  loc_BA556C: LitVarStr var_A0, "</td>"
  loc_BA5571: PopAdLdVar
  loc_BA5572: FLdPr Me
  loc_BA5575: MemLdRfVar from_stack_1.htmFile
  loc_BA5578: LdPrVar
  loc_BA557A: LateMemCall
  loc_BA5580: LitVarStr var_A0, "</tr>"
  loc_BA5585: PopAdLdVar
  loc_BA5586: FLdPr Me
  loc_BA5589: MemLdRfVar from_stack_1.htmFile
  loc_BA558C: LdPrVar
  loc_BA558E: LateMemCall
  loc_BA5594: LitVarStr var_A0, "</tbody>"
  loc_BA5599: PopAdLdVar
  loc_BA559A: FLdPr Me
  loc_BA559D: MemLdRfVar from_stack_1.htmFile
  loc_BA55A0: LdPrVar
  loc_BA55A2: LateMemCall
  loc_BA55A8: LitVarStr var_A0, "<tfoot style=""display:table-footer-group;"">"
  loc_BA55AD: PopAdLdVar
  loc_BA55AE: FLdPr Me
  loc_BA55B1: MemLdRfVar from_stack_1.htmFile
  loc_BA55B4: LdPrVar
  loc_BA55B6: LateMemCall
  loc_BA55BC: LitVarStr var_A0, "<tr>"
  loc_BA55C1: PopAdLdVar
  loc_BA55C2: FLdPr Me
  loc_BA55C5: MemLdRfVar from_stack_1.htmFile
  loc_BA55C8: LdPrVar
  loc_BA55CA: LateMemCall
  loc_BA55D0: LitVarStr var_A0, "<td>"
  loc_BA55D5: PopAdLdVar
  loc_BA55D6: FLdPr Me
  loc_BA55D9: MemLdRfVar from_stack_1.htmFile
  loc_BA55DC: LdPrVar
  loc_BA55DE: LateMemCall
  loc_BA55E4: LitVarStr var_A0, "<br><br>"
  loc_BA55E9: PopAdLdVar
  loc_BA55EA: FLdPr Me
  loc_BA55ED: MemLdRfVar from_stack_1.htmFile
  loc_BA55F0: LdPrVar
  loc_BA55F2: LateMemCall
  loc_BA55F8: LitVarStr var_A0, "<table width=""85" & Chr(37) & """ border=""0"" align=""center"" cellspacing=""20"" class=""Normal"">"
  loc_BA55FD: PopAdLdVar
  loc_BA55FE: FLdPr Me
  loc_BA5601: MemLdRfVar from_stack_1.htmFile
  loc_BA5604: LdPrVar
  loc_BA5606: LateMemCall
  loc_BA560C: LitVarStr var_A0, "  <tr align=""center"" valign=""top"">"
  loc_BA5611: PopAdLdVar
  loc_BA5612: FLdPr Me
  loc_BA5615: MemLdRfVar from_stack_1.htmFile
  loc_BA5618: LdPrVar
  loc_BA561A: LateMemCall
  loc_BA5620: LitStr "    <td width=""33" & Chr(37) & """><hr>"
  loc_BA5623: FLdPr Me
  loc_BA5626: VCallAd Control_ID_mskFecha
  loc_BA5629: FStAdFunc var_90
  loc_BA562C: FLdPr var_90
  loc_BA562F: LateIdLdVar var_C8 DispID_15 0
  loc_BA5636: CStrVarTmp
  loc_BA5637: FStStrNoPop var_B4
  loc_BA563A: LitStr "Orden de Pago Intendencia"
  loc_BA563D: ImpAdCallI2 Proc_259_65_9D8140(, )
  loc_BA5642: FStStrNoPop var_B8
  loc_BA5645: ConcatStr
  loc_BA5646: FStStrNoPop var_208
  loc_BA5649: LitStr "<br>"
  loc_BA564C: ConcatStr
  loc_BA564D: FStStrNoPop var_210
  loc_BA5650: FLdPr Me
  loc_BA5653: VCallAd Control_ID_mskFecha
  loc_BA5656: FStAdFunc var_124
  loc_BA5659: FLdPr var_124
  loc_BA565C: LateIdLdVar var_DC DispID_15 0
  loc_BA5663: CStrVarTmp
  loc_BA5664: FStStrNoPop var_20C
  loc_BA5667: LitStr "Orden de Pago Intendencia"
  loc_BA566A: ImpAdCallI2 Proc_259_71_9DDD40(, )
  loc_BA566F: FStStrNoPop var_214
  loc_BA5672: ConcatStr
  loc_BA5673: FStStrNoPop var_218
  loc_BA5676: LitStr "</td>"
  loc_BA5679: ConcatStr
  loc_BA567A: CVarStr var_EC
  loc_BA567D: PopAdLdVar
  loc_BA567E: FLdPr Me
  loc_BA5681: MemLdRfVar from_stack_1.htmFile
  loc_BA5684: LdPrVar
  loc_BA5686: LateMemCall
  loc_BA568C: FFreeStr var_B4 = "": var_B8 = "": var_208 = "": var_20C = "": var_210 = "": var_214 = ""
  loc_BA569D: FFreeAd var_90 = ""
  loc_BA56A4: FFreeVar var_C8 = "": var_DC = ""
  loc_BA56AD: LitStr "    <td width=""33" & Chr(37) & """><hr>"
  loc_BA56B0: FLdPr Me
  loc_BA56B3: VCallAd Control_ID_mskFecha
  loc_BA56B6: FStAdFunc var_90
  loc_BA56B9: FLdPr var_90
  loc_BA56BC: LateIdLdVar var_C8 DispID_15 0
  loc_BA56C3: CStrVarTmp
  loc_BA56C4: FStStrNoPop var_B4
  loc_BA56C7: LitStr "Orden de Pago Intendencia"
  loc_BA56CA: ImpAdCallI2 Proc_259_67_9D84F4(, )
  loc_BA56CF: FStStrNoPop var_B8
  loc_BA56D2: ConcatStr
  loc_BA56D3: FStStrNoPop var_208
  loc_BA56D6: LitStr "<br>"
  loc_BA56D9: ConcatStr
  loc_BA56DA: FStStrNoPop var_210
  loc_BA56DD: FLdPr Me
  loc_BA56E0: VCallAd Control_ID_mskFecha
  loc_BA56E3: FStAdFunc var_124
  loc_BA56E6: FLdPr var_124
  loc_BA56E9: LateIdLdVar var_DC DispID_15 0
  loc_BA56F0: CStrVarTmp
  loc_BA56F1: FStStrNoPop var_20C
  loc_BA56F4: LitStr "Orden de Pago Intendencia"
  loc_BA56F7: ImpAdCallI2 Proc_259_68_9DD820(, )
  loc_BA56FC: FStStrNoPop var_214
  loc_BA56FF: ConcatStr
  loc_BA5700: FStStrNoPop var_218
  loc_BA5703: LitStr "</td>"
  loc_BA5706: ConcatStr
  loc_BA5707: CVarStr var_EC
  loc_BA570A: PopAdLdVar
  loc_BA570B: FLdPr Me
  loc_BA570E: MemLdRfVar from_stack_1.htmFile
  loc_BA5711: LdPrVar
  loc_BA5713: LateMemCall
  loc_BA5719: FFreeStr var_B4 = "": var_B8 = "": var_208 = "": var_20C = "": var_210 = "": var_214 = ""
  loc_BA572A: FFreeAd var_90 = ""
  loc_BA5731: FFreeVar var_C8 = "": var_DC = ""
  loc_BA573A: LitStr "    <td width=""33" & Chr(37) & """><hr>"
  loc_BA573D: FLdPr Me
  loc_BA5740: VCallAd Control_ID_mskFecha
  loc_BA5743: FStAdFunc var_90
  loc_BA5746: FLdPr var_90
  loc_BA5749: LateIdLdVar var_C8 DispID_15 0
  loc_BA5750: CStrVarTmp
  loc_BA5751: FStStrNoPop var_B4
  loc_BA5754: LitStr "Orden de Pago Intendencia"
  loc_BA5757: ImpAdCallI2 Proc_259_69_9D89E4(, )
  loc_BA575C: FStStrNoPop var_B8
  loc_BA575F: ConcatStr
  loc_BA5760: FStStrNoPop var_208
  loc_BA5763: LitStr "<br>"
  loc_BA5766: ConcatStr
  loc_BA5767: FStStrNoPop var_210
  loc_BA576A: FLdPr Me
  loc_BA576D: VCallAd Control_ID_mskFecha
  loc_BA5770: FStAdFunc var_124
  loc_BA5773: FLdPr var_124
  loc_BA5776: LateIdLdVar var_DC DispID_15 0
  loc_BA577D: CStrVarTmp
  loc_BA577E: FStStrNoPop var_20C
  loc_BA5781: LitStr "Orden de Pago Intendencia"
  loc_BA5784: ImpAdCallI2 Proc_259_70_9DDAB0(, )
  loc_BA5789: FStStrNoPop var_214
  loc_BA578C: ConcatStr
  loc_BA578D: FStStrNoPop var_218
  loc_BA5790: LitStr "</td>"
  loc_BA5793: ConcatStr
  loc_BA5794: CVarStr var_EC
  loc_BA5797: PopAdLdVar
  loc_BA5798: FLdPr Me
  loc_BA579B: MemLdRfVar from_stack_1.htmFile
  loc_BA579E: LdPrVar
  loc_BA57A0: LateMemCall
  loc_BA57A6: FFreeStr var_B4 = "": var_B8 = "": var_208 = "": var_20C = "": var_210 = "": var_214 = ""
  loc_BA57B7: FFreeAd var_90 = ""
  loc_BA57BE: FFreeVar var_C8 = "": var_DC = ""
  loc_BA57C7: LitVarStr var_A0, "  </tr>"
  loc_BA57CC: PopAdLdVar
  loc_BA57CD: FLdPr Me
  loc_BA57D0: MemLdRfVar from_stack_1.htmFile
  loc_BA57D3: LdPrVar
  loc_BA57D5: LateMemCall
  loc_BA57DB: LitVarStr var_A0, "</table>"
  loc_BA57E0: PopAdLdVar
  loc_BA57E1: FLdPr Me
  loc_BA57E4: MemLdRfVar from_stack_1.htmFile
  loc_BA57E7: LdPrVar
  loc_BA57E9: LateMemCall
  loc_BA57EF: LitVarStr var_A0, "</td>"
  loc_BA57F4: PopAdLdVar
  loc_BA57F5: FLdPr Me
  loc_BA57F8: MemLdRfVar from_stack_1.htmFile
  loc_BA57FB: LdPrVar
  loc_BA57FD: LateMemCall
  loc_BA5803: LitVarStr var_A0, "</tr>"
  loc_BA5808: PopAdLdVar
  loc_BA5809: FLdPr Me
  loc_BA580C: MemLdRfVar from_stack_1.htmFile
  loc_BA580F: LdPrVar
  loc_BA5811: LateMemCall
  loc_BA5817: LitVarStr var_A0, "</tfoot>"
  loc_BA581C: PopAdLdVar
  loc_BA581D: FLdPr Me
  loc_BA5820: MemLdRfVar from_stack_1.htmFile
  loc_BA5823: LdPrVar
  loc_BA5825: LateMemCall
  loc_BA582B: LitVarStr var_A0, "</table>"
  loc_BA5830: PopAdLdVar
  loc_BA5831: FLdPr Me
  loc_BA5834: MemLdRfVar from_stack_1.htmFile
  loc_BA5837: LdPrVar
  loc_BA5839: LateMemCall
  loc_BA583F: LitVarStr var_A0, "</body>"
  loc_BA5844: PopAdLdVar
  loc_BA5845: FLdPr Me
  loc_BA5848: MemLdRfVar from_stack_1.htmFile
  loc_BA584B: LdPrVar
  loc_BA584D: LateMemCall
  loc_BA5853: LitVarStr var_A0, "</html>"
  loc_BA5858: PopAdLdVar
  loc_BA5859: FLdPr Me
  loc_BA585C: MemLdRfVar from_stack_1.htmFile
  loc_BA585F: LdPrVar
  loc_BA5861: LateMemCall
  loc_BA5867: FLdPr Me
  loc_BA586A: MemLdRfVar from_stack_1.htmFile
  loc_BA586D: LdPrVar
  loc_BA586F: LateMemCall
  loc_BA5875: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_BA587A: ExitProcHresult
End Sub

VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptConsultadeBoleto
  Caption = "Consulta de Boleto"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptConsultadeBoleto.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 11748
  ClientHeight = 3924
  StartUpPosition = 2 'CenterScreen
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 2400
    Width = 4095
    Height = 1215
    TabIndex = 15
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1695
      Height = 615
      TabIndex = 3
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
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1920
      Top = 360
      Width = 2055
      Height = 615
      TabIndex = 5
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
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 2400
    Width = 1815
    Height = 1215
    TabIndex = 14
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 6
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
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 3672
    Width = 11748
    Height = 252
    TabIndex = 11
    OleObjectBlob = "rptConsultadeBoleto.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 6480
    Top = 2760
    Width = 735
    Height = 615
    TabIndex = 8
    Cancel = -1  'True
    Picture = "rptConsultadeBoleto.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptConsultadeBoleto.frx":0B9C
    Left = 10200
    Top = 120
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 11292
    Height = 2292
    TabIndex = 9
    Begin VB.CommandButton ConfirmarCmd
      Left = 9120
      Top = 1440
      Width = 1572
      Height = 492
      TabIndex = 4
      Picture = "rptConsultadeBoleto.frx":0C00
      Style = 1
    End
    Begin VB.TextBox ObseBoleTxt
      Left = 2040
      Top = 1440
      Width = 6732
      Height = 420
      TabIndex = 2
      MaxLength = 500
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
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 9240
      Top = 360
      Width = 1695
      Height = 615
      TabIndex = 7
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
    Begin MSMask.MaskEdBox PeriBoleMsk
      Left = 2040
      Top = 360
      Width = 735
      Height = 360
      TabIndex = 0
      OleObjectBlob = "rptConsultadeBoleto.frx":0F2E
    End
    Begin MSMask.MaskEdBox NumeBoleMsk
      Left = 2040
      Top = 840
      Width = 1215
      Height = 360
      TabIndex = 1
      OleObjectBlob = "rptConsultadeBoleto.frx":0FBE
    End
    Begin VB.Label Label1
      Caption = "Observaciones:"
      Left = 240
      Top = 1440
      Width = 1656
      Height = 300
      TabIndex = 16
      AutoSize = -1  'True
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
    Begin VB.Label Label3
      Caption = "Boleto Nº:"
      Left = 855
      Top = 840
      Width = 1065
      Height = 300
      TabIndex = 13
      AutoSize = -1  'True
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
    Begin VB.Label Label2
      Caption = "Periodo:"
      Left = 1050
      Top = 360
      Width = 870
      Height = 300
      TabIndex = 12
      AutoSize = -1  'True
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
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 6600
    Top = 2880
    Width = 492
    Height = 252
    TabStop = 0   'False
    TabIndex = 10
    OleObjectBlob = "rptConsultadeBoleto.frx":1056
  End
End

Attribute VB_Name = "rptConsultadeBoleto"

Public bGenerado As Boolean

Private Type UDT_1_00562428
  bStruc(44) As Byte ' String fields: 11
End Type

Private Type UDT_2_00560540
  bStruc(32) As Byte ' String fields: 8
End Type

Private Type UDT_3_00564D68
  bStruc(8) As Byte ' String fields: 2
End Type

Private Type UDT_4_00564D98
  bStruc(12) As Byte ' String fields: 3
End Type

Private Type UDT_5_00564DCC
  bStruc(112) As Byte ' String fields: 28
End Type


Private Sub cmdSalir_Click() 'A03058
  'Data Table: 499658
  loc_A03028: LitVarStr var_94, "Cerrando..."
  loc_A0302D: PopAdLdVar
  loc_A0302E: FLdPr Me
  loc_A03031: VCallAd Control_ID_statusBar
  loc_A03034: FStAdFunc var_A8
  loc_A03037: FLdPr var_A8
  loc_A0303A: LateIdSt
  loc_A0303F: FFree1Ad var_A8
  loc_A03042: ILdRf Me
  loc_A03045: FStAdNoPop
  loc_A03049: ImpAdLdRf MemVar_D9C5D8
  loc_A0304C: NewIfNullPr Global
  loc_A0304F: Global.Unload from_stack_1
  loc_A03054: FFree1Ad var_A8
  loc_A03057: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '9CA394
  'Data Table: 499658
  loc_9CA37C: LitI2_Byte 0
  loc_9CA37E: ILdRf Me
  loc_9CA381: CastAd
  loc_9CA384: FStAdFunc var_88
  loc_9CA387: FLdRfVar var_88
  loc_9CA38A: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9CA38F: FFree1Ad var_88
  loc_9CA392: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9DD58C
  'Data Table: 499658
  loc_9DD570: LitI2_Byte 0
  loc_9DD572: PopTmpLdAd2 var_8A
  loc_9DD575: ILdRf Me
  loc_9DD578: CastAd
  loc_9DD57B: FStAdFunc var_88
  loc_9DD57E: FLdRfVar var_88
  loc_9DD581: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9DD586: FFree1Ad var_88
  loc_9DD589: ExitProcHresult
End Sub

Private Sub PeriBoleMsk_UnknownEvent_0 '9C6500
  'Data Table: 499658
  loc_9C64EC: FLdPr Me
  loc_9C64EF: VCallAd Control_ID_PeriBoleMsk
  loc_9C64F2: CVarAd
  loc_9C64F6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C64FB: FFree1Var var_94 = ""
  loc_9C64FE: ExitProcHresult
End Sub

Private Function PeriBoleMsk_UnknownEvent_8(arg_C) 'A7034C
  'Data Table: 499658
  loc_A702E4: FLdPr Me
  loc_A702E7: VCallAd Control_ID_PeriBoleMsk
  loc_A702EA: FStAdFunc var_88
  loc_A702ED: FLdPr var_88
  loc_A702F0: LateIdLdVar var_98 DispID_22 0
  loc_A702F7: PopAd
  loc_A702F9: LitI2_Byte 0
  loc_A702FB: FLdRfVar var_98
  loc_A702FE: CStrVarTmp
  loc_A702FF: FStStrNoPop var_9C
  loc_A70302: LitStr "Periodo"
  loc_A70305: ImpAdCallI2 Proc_18_18_A41358(, , )
  loc_A7030A: FStStrNoPop var_A0
  loc_A7030D: FLdPr Me
  loc_A70310: MemStStrCopy
  loc_A70314: FFreeStr var_9C = ""
  loc_A7031B: FFree1Ad var_88
  loc_A7031E: FFree1Var var_98 = ""
  loc_A70321: FLdPr Me
  loc_A70324: VCallAd Control_ID_PeriBoleMsk
  loc_A70327: FStAdFuncNoPop
  loc_A7032A: CastAd
  loc_A7032D: FStAdFunc var_A4
  loc_A70330: FLdRfVar var_A4
  loc_A70333: FLdPr Me
  loc_A70336: MemLdStr global_116
  loc_A70339: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A7033E: IStI2 arg_C
  loc_A70341: FFreeAd var_88 = ""
  loc_A70348: ExitProcHresult
End Function

Private Sub ObseBoleTxt_GotFocus() '9C6398
  'Data Table: 499658
  loc_9C6384: FLdPr Me
  loc_9C6387: VCallAd Control_ID_ObseBoleTxt
  loc_9C638A: CVarAd
  loc_9C638E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C6393: FFree1Var var_94 = ""
  loc_9C6396: ExitProcHresult
End Sub

Private Sub NumeBoleMsk_UnknownEvent_0 '9C6548
  'Data Table: 499658
  loc_9C6534: FLdPr Me
  loc_9C6537: VCallAd Control_ID_NumeBoleMsk
  loc_9C653A: CVarAd
  loc_9C653E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C6543: FFree1Var var_94 = ""
  loc_9C6546: ExitProcHresult
End Sub

Private Function NumeBoleMsk_UnknownEvent_8(arg_C) 'A70A04
  'Data Table: 499658
  loc_A7099C: FLdPr Me
  loc_A7099F: VCallAd Control_ID_NumeBoleMsk
  loc_A709A2: FStAdFunc var_88
  loc_A709A5: FLdPr var_88
  loc_A709A8: LateIdLdVar var_98 DispID_22 0
  loc_A709AF: PopAd
  loc_A709B1: LitI2_Byte 0
  loc_A709B3: LitI2_Byte 0
  loc_A709B5: FLdRfVar var_98
  loc_A709B8: CStrVarTmp
  loc_A709B9: FStStrNoPop var_9C
  loc_A709BC: LitStr "Número de Boleto"
  loc_A709BF: ImpAdCallI2 Proc_18_14_AC4838(, , , )
  loc_A709C4: FStStrNoPop var_A0
  loc_A709C7: FLdPr Me
  loc_A709CA: MemStStrCopy
  loc_A709CE: FFreeStr var_9C = ""
  loc_A709D5: FFree1Ad var_88
  loc_A709D8: FFree1Var var_98 = ""
  loc_A709DB: FLdPr Me
  loc_A709DE: VCallAd Control_ID_NumeBoleMsk
  loc_A709E1: FStAdFuncNoPop
  loc_A709E4: CastAd
  loc_A709E7: FStAdFunc var_A4
  loc_A709EA: FLdRfVar var_A4
  loc_A709ED: FLdPr Me
  loc_A709F0: MemLdStr global_116
  loc_A709F3: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A709F8: IStI2 arg_C
  loc_A709FB: FFreeAd var_88 = ""
  loc_A70A02: ExitProcHresult
End Function

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A180A0
  'Data Table: 499658
  loc_A18068: FLdPr Me
  loc_A1806B: VCallAd Control_ID_statusBar
  loc_A1806E: FStAdFunc var_88
  loc_A18071: FLdPr var_88
  loc_A18074: LateIdLdVar var_98 DispID_1 0
  loc_A1807B: CStrVarTmp
  loc_A1807C: CVarStr var_A8
  loc_A1807F: PopAdLdVar
  loc_A18080: FLdPr Me
  loc_A18083: VCallAd Control_ID_statusBar
  loc_A18086: FStAdFunc var_BC
  loc_A18089: FLdPr var_BC
  loc_A1808C: LateIdSt
  loc_A18091: FFreeAd var_88 = ""
  loc_A18098: FFreeVar var_98 = ""
  loc_A1809F: ExitProcHresult
End Sub

Private Sub Form_Load() '9DEC0C
  'Data Table: 499658
  loc_9DEBF0: ILdRf Me
  loc_9DEBF3: CastAd
  loc_9DEBF6: FStAdFunc var_88
  loc_9DEBF9: FLdRfVar var_88
  loc_9DEBFC: ImpAdCallFPR4  = Proc_272_43_A93498()
  loc_9DEC01: FFree1Ad var_88
  loc_9DEC04: Call cmdNueva_Click()
  loc_9DEC09: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9CA348
  'Data Table: 499658
  loc_9CA330: FLdPr Me
  loc_9CA333: VCallAd Control_ID_wbbReporte
  loc_9CA336: FStAdFunc var_88
  loc_9CA339: FLdRfVar var_88
  loc_9CA33C: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9CA341: FFree1Ad var_88
  loc_9CA344: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'A7BC64
  'Data Table: 499658
  loc_A7BBE0: LitI2_Byte 0
  loc_A7BBE2: FLdPr Me
  loc_A7BBE5: MemStI2 bGenerado
  loc_A7BBE8: LitI2_Byte 0
  loc_A7BBEA: ILdRf Me
  loc_A7BBED: CastAd
  loc_A7BBF0: FStAdFunc var_88
  loc_A7BBF3: FLdRfVar var_88
  loc_A7BBF6: ImpAdCallFPR4  = Proc_272_46_B065FC()
  loc_A7BBFB: FFree1Ad var_88
  loc_A7BBFE: LitVarStr var_98, vbNullString
  loc_A7BC03: PopAdLdVar
  loc_A7BC04: FLdPr Me
  loc_A7BC07: VCallAd Control_ID_PeriBoleMsk
  loc_A7BC0A: FStAdFunc var_88
  loc_A7BC0D: FLdPr var_88
  loc_A7BC10: LateIdSt
  loc_A7BC15: FFree1Ad var_88
  loc_A7BC18: LitVarStr var_98, vbNullString
  loc_A7BC1D: PopAdLdVar
  loc_A7BC1E: FLdPr Me
  loc_A7BC21: VCallAd Control_ID_NumeBoleMsk
  loc_A7BC24: FStAdFunc var_88
  loc_A7BC27: FLdPr var_88
  loc_A7BC2A: LateIdSt
  loc_A7BC2F: FFree1Ad var_88
  loc_A7BC32: LitStr vbNullString
  loc_A7BC35: FLdPr Me
  loc_A7BC38: VCallAd Control_ID_ObseBoleTxt
  loc_A7BC3B: FStAdFunc var_88
  loc_A7BC3E: FLdPr var_88
  loc_A7BC41: Me.Text = from_stack_1
  loc_A7BC46: FFree1Ad var_88
  loc_A7BC49: Call HabilitarCriterio()
  loc_A7BC4E: ILdRf Me
  loc_A7BC51: CastAd
  loc_A7BC54: FStAdFunc var_88
  loc_A7BC57: FLdRfVar var_88
  loc_A7BC5A: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_A7BC5F: FFree1Ad var_88
  loc_A7BC62: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9CA2B0
  'Data Table: 499658
  loc_9CA298: ILdRf Me
  loc_9CA29B: CastAd
  loc_9CA29E: FStAdFunc var_88
  loc_9CA2A1: FLdRfVar var_88
  loc_9CA2A4: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9CA2A9: FFree1Ad var_88
  loc_9CA2AC: ExitProcHresult
End Sub

Private Sub ConfirmarCmd_Click() 'ADE0F4
  'Data Table: 499658
  loc_ADDFBC: FLdPr Me
  loc_ADDFBF: MemLdRfVar from_stack_1.global_76
  loc_ADDFC2: NewIfNullAd
  loc_ADDFC5: FStAd var_88 
  loc_ADDFC9: LitStr "SELECT PerIBole, NumeBole FROM boleto"
  loc_ADDFCC: LitStr " WHERE boleto.PeriBole = "
  loc_ADDFCF: ConcatStr
  loc_ADDFD0: FStStrNoPop var_A0
  loc_ADDFD3: FLdPr Me
  loc_ADDFD6: VCallAd Control_ID_PeriBoleMsk
  loc_ADDFD9: FStAdFunc var_8C
  loc_ADDFDC: FLdPr var_8C
  loc_ADDFDF: LateIdLdVar var_9C DispID_22 0
  loc_ADDFE6: CStrVarTmp
  loc_ADDFE7: FStStrNoPop var_A4
  loc_ADDFEA: ConcatStr
  loc_ADDFEB: FStStrNoPop var_A8
  loc_ADDFEE: LitStr " AND boleto.NumeBole = "
  loc_ADDFF1: ConcatStr
  loc_ADDFF2: FStStrNoPop var_C0
  loc_ADDFF5: FLdPr Me
  loc_ADDFF8: VCallAd Control_ID_NumeBoleMsk
  loc_ADDFFB: FStAdFunc var_AC
  loc_ADDFFE: FLdPr var_AC
  loc_ADE001: LateIdLdVar var_BC DispID_22 0
  loc_ADE008: CStrVarTmp
  loc_ADE009: FStStrNoPop var_C4
  loc_ADE00C: ConcatStr
  loc_ADE00D: FStStrNoPop var_C8
  loc_ADE010: FLdPr var_88
  loc_ADE013: Call clsboleto.RedefineRS(from_stack_1v)
  loc_ADE018: FFreeStr var_A0 = "": var_A4 = "": var_A8 = "": var_C0 = "": var_C4 = ""
  loc_ADE027: FFreeAd var_8C = ""
  loc_ADE02E: FFreeVar var_9C = ""
  loc_ADE035: FLdRfVar var_CC
  loc_ADE038: FLdPr var_88
  loc_ADE03B: from_stack_1 = clsboleto.RecordCount
  loc_ADE040: ILdRf var_CC
  loc_ADE043: LitI4 0
  loc_ADE048: GtI4
  loc_ADE049: BranchF loc_ADE0D7
  loc_ADE04C: FLdPr Me
  loc_ADE04F: VCallAd Control_ID_PeriBoleMsk
  loc_ADE052: FStAdFunc var_8C
  loc_ADE055: FLdPr var_8C
  loc_ADE058: LateIdLdVar var_9C DispID_22 0
  loc_ADE05F: PopAd
  loc_ADE061: FLdPr Me
  loc_ADE064: VCallAd Control_ID_NumeBoleMsk
  loc_ADE067: FStAdFunc var_AC
  loc_ADE06A: FLdPr var_AC
  loc_ADE06D: LateIdLdVar var_BC DispID_22 0
  loc_ADE074: PopAd
  loc_ADE076: FLdRfVar var_A0
  loc_ADE079: FLdPr Me
  loc_ADE07C: VCallAd Control_ID_ObseBoleTxt
  loc_ADE07F: FStAdFunc var_D0
  loc_ADE082: FLdPr var_D0
  loc_ADE085:  = Me.Text
  loc_ADE08A: ILdRf var_A0
  loc_ADE08D: FLdRfVar var_BC
  loc_ADE090: CStrVarTmp
  loc_ADE091: FStStrNoPop var_A8
  loc_ADE094: CI4Str
  loc_ADE095: FLdRfVar var_9C
  loc_ADE098: CStrVarTmp
  loc_ADE099: FStStrNoPop var_A4
  loc_ADE09C: CI2Str
  loc_ADE09E: FLdPr var_88
  loc_ADE0A1: Call clsboleto.ModificaObservacioondelBoleto(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_ADE0A6: FFreeStr var_A4 = "": var_A8 = ""
  loc_ADE0AF: FFreeAd var_8C = "": var_AC = ""
  loc_ADE0B8: FFreeVar var_9C = ""
  loc_ADE0BF: LitStr "La MODIFICACIÓN se realizo con exito"
  loc_ADE0C2: FLdPr Me
  loc_ADE0C5: MemStStrCopy
  loc_ADE0C9: FLdPr Me
  loc_ADE0CC: MemLdStr global_116
  loc_ADE0CF: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ADE0D4: Branch loc_ADE0EC
  loc_ADE0D7: LitStr "El boleto ingresado NO existe."
  loc_ADE0DA: FLdPr Me
  loc_ADE0DD: MemStStrCopy
  loc_ADE0E1: FLdPr Me
  loc_ADE0E4: MemLdStr global_116
  loc_ADE0E7: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ADE0EC: LitNothing
  loc_ADE0EE: FStAd var_88 
  loc_ADE0F2: ExitProcHresult
End Sub

Public Function bGeneradoGet() '49A520
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '49A52F
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'A74628
  'Data Table: 499658
  loc_A745C4: LitI4 0
  loc_A745C9: LitI4 3
  loc_A745CE: FLdRfVar var_88
  loc_A745D1: Redim
  loc_A745DB: FLdPr Me
  loc_A745DE: VCallAd Control_ID_PeriBoleMsk
  loc_A745E1: CVarAd
  loc_A745E5: ParmAry1St
  loc_A745EB: FLdPr Me
  loc_A745EE: VCallAd Control_ID_NumeBoleMsk
  loc_A745F1: CVarAd
  loc_A745F5: ParmAry1St
  loc_A745FB: FLdPr Me
  loc_A745FE: VCallAd Control_ID_ObseBoleTxt
  loc_A74601: CVarAd
  loc_A74605: ParmAry1St
  loc_A7460B: FLdPr Me
  loc_A7460E: VCallAd Control_ID_ConfirmarCmd
  loc_A74611: CVarAd
  loc_A74615: ParmAry1St
  loc_A7461B: FLdRfVar var_88
  loc_A7461E: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A74623: FLdRfVar var_88
  loc_A74626: Erase
  loc_A74627: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'C74834
  'Data Table: 499658
  loc_C73684: FLdPr Me
  loc_C73687: MemLdI2 bGenerado
  loc_C7368A: BranchF loc_C7368E
  loc_C7368D: ExitProcHresult
  loc_C7368E: LitVarStr var_A4, "Generando reporte..."
  loc_C73693: PopAdLdVar
  loc_C73694: FLdPr Me
  loc_C73697: VCallAd Control_ID_statusBar
  loc_C7369A: FStAdFunc var_B8
  loc_C7369D: FLdPr var_B8
  loc_C736A0: LateIdSt
  loc_C736A5: FFree1Ad var_B8
  loc_C736A8: LitI4 &HB
  loc_C736AD: CI2I4
  loc_C736AE: FLdPr Me
  loc_C736B1: Me.MousePointer = from_stack_1
  loc_C736B6: FLdPr Me
  loc_C736B9: MemLdRfVar from_stack_1.global_76
  loc_C736BC: NewIfNullAd
  loc_C736BF: FStAd var_BC 
  loc_C736C3: LitStr "SELECT IFNULL(persona.DetaPers,'') DetaPers, boleto.CucuPers,  "
  loc_C736C6: LitStr " CONCAT(IFNULL(infogov.persona.DecrPers,''),' - ', IFNULL(infogov.persona.NurePers,''),' - ', IFNULL(infogov.persona.DelrPers,''),' - ', IFNULL(infogov.persona.CoprPers,'')) DomiPers,"
  loc_C736C9: ConcatStr
  loc_C736CA: FStStrNoPop var_C0
  loc_C736CD: LitStr " boleto.PeriBole, boleto.NumeBole, EstaBole, TipoBole, boleto.CodiEnre as CodiEnreBole, enterecabole.DetaEnre AS DetaEnreBole, boleto.CodiOfic, DetaOfic, boleto.CuenCtct, FeveBole, persousua.DetaPers as DetaPersUsua, IFNULL(persopago.DetaPers,'') as DetaPersPago, boleto.ExpeBole, "
  loc_C736D0: ConcatStr
  loc_C736D1: FStStrNoPop var_C4
  loc_C736D4: LitStr " boleto.CodiFapa, boleto.CuotDefa, pago.NumeAcpa, acrepago.CodiEnre as CodiEnrePago, enterecapago.DetaEnre as DetaEnrePago, FealBole, pago.FeenAcpa, pago.FepaPago, FeacAcpa, ApreBole, ObseBole, CONCAT('CONTRACARGO EXPTE: ', contracargo.NumeExpe, ' Usuario: ', contracargo.AltaUsua ) contra, IFNULL(pagoonline.CodiPaon,'') CodiPaon "
  loc_C736D7: ConcatStr
  loc_C736D8: FStStrNoPop var_C8
  loc_C736DB: LitStr " FROM boleto"
  loc_C736DE: ConcatStr
  loc_C736DF: FStStrNoPop var_CC
  loc_C736E2: LitStr " LEFT JOIN pago ON pago.PeriBole = boleto.PeriBole AND pago.NumeBole = boleto.NumeBole"
  loc_C736E5: ConcatStr
  loc_C736E6: FStStrNoPop var_D0
  loc_C736E9: LitStr " LEFT JOIN acrepago ON acrepago.FeenAcpa = pago.FeenAcpa AND acrepago.NumeAcpa = pago.NumeAcpa"
  loc_C736EC: ConcatStr
  loc_C736ED: FStStrNoPop var_D4
  loc_C736F0: LitStr " LEFT JOIN infogov.persona ON infogov.persona.CucuPers = boleto.CucuPers"
  loc_C736F3: ConcatStr
  loc_C736F4: FStStrNoPop var_D8
  loc_C736F7: LitStr " LEFT JOIN oficina ON oficina.CodiOfic = boleto.CodiOfic"
  loc_C736FA: ConcatStr
  loc_C736FB: FStStrNoPop var_DC
  loc_C736FE: LitStr " LEFT JOIN infogov.entereca as enterecapago ON enterecapago.CodiEnre = acrepago.CodiEnre"
  loc_C73701: ConcatStr
  loc_C73702: FStStrNoPop var_E0
  loc_C73705: LitStr " LEFT JOIN infogov.entereca as enterecabole  ON enterecabole.CodiEnre = boleto.CodiEnre"
  loc_C73708: ConcatStr
  loc_C73709: FStStrNoPop var_E4
  loc_C7370C: LitStr " LEFT JOIN infogov.usuario ON usuario.CodiUsua = boleto.CodiUsua"
  loc_C7370F: ConcatStr
  loc_C73710: FStStrNoPop var_E8
  loc_C73713: LitStr " LEFT JOIN infogov.usuario as usuapago ON usuapago.CodiUsua = pago.CodiUsua"
  loc_C73716: ConcatStr
  loc_C73717: FStStrNoPop var_EC
  loc_C7371A: LitStr " LEFT JOIN infogov.persona as persousua ON persousua.CucuPers = usuario.CucuPers"
  loc_C7371D: ConcatStr
  loc_C7371E: FStStrNoPop var_F0
  loc_C73721: LitStr " LEFT JOIN infogov.persona as persopago ON persopago.CucuPers = usuapago.CucuPers"
  loc_C73724: ConcatStr
  loc_C73725: FStStrNoPop var_F4
  loc_C73728: LitStr " LEFT JOIN contracargo ON contracargo.PeriBole = boleto.PeriBole ANd contracargo.NumeBole = boleto.NumeBole"
  loc_C7372B: ConcatStr
  loc_C7372C: FStStrNoPop var_F8
  loc_C7372F: LitStr " LEFT JOIN pagoonline ON pagoonline.PeriBole = boleto.PeriBole AND pagoonline.NumeBole = boleto.NumeBole"
  loc_C73732: ConcatStr
  loc_C73733: FStStrNoPop var_FC
  loc_C73736: LitStr " WHERE boleto.PeriBole = '"
  loc_C73739: ConcatStr
  loc_C7373A: FStStrNoPop var_110
  loc_C7373D: FLdPr Me
  loc_C73740: VCallAd Control_ID_PeriBoleMsk
  loc_C73743: FStAdFunc var_B8
  loc_C73746: FLdPr var_B8
  loc_C73749: LateIdLdVar var_10C DispID_22 0
  loc_C73750: CStrVarTmp
  loc_C73751: FStStrNoPop var_114
  loc_C73754: ConcatStr
  loc_C73755: FStStrNoPop var_118
  loc_C73758: LitStr "' AND boleto.NumeBole = '"
  loc_C7375B: ConcatStr
  loc_C7375C: FStStrNoPop var_130
  loc_C7375F: FLdPr Me
  loc_C73762: VCallAd Control_ID_NumeBoleMsk
  loc_C73765: FStAdFunc var_11C
  loc_C73768: FLdPr var_11C
  loc_C7376B: LateIdLdVar var_12C DispID_22 0
  loc_C73772: CStrVarTmp
  loc_C73773: FStStrNoPop var_134
  loc_C73776: ConcatStr
  loc_C73777: FStStrNoPop var_138
  loc_C7377A: LitStr "'"
  loc_C7377D: ConcatStr
  loc_C7377E: FStStrNoPop var_13C
  loc_C73781: FLdPr var_BC
  loc_C73784: Call clsboleto.RedefineRS(from_stack_1v)
  loc_C73789: FFreeStr var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_110 = "": var_114 = "": var_118 = "": var_130 = "": var_134 = "": var_138 = ""
  loc_C737BA: FFreeAd var_B8 = ""
  loc_C737C1: FFreeVar var_10C = ""
  loc_C737C8: FLdRfVar var_140
  loc_C737CB: FLdPr var_BC
  loc_C737CE: from_stack_1 = clsboleto.RecordCount
  loc_C737D3: ILdRf var_140
  loc_C737D6: LitI4 0
  loc_C737DB: EqI4
  loc_C737DC: BranchF loc_C737EA
  loc_C737DF: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_C737E2: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C737E7: Branch loc_C74808
  loc_C737EA: LitI4 0
  loc_C737EF: LitI4 1
  loc_C737F4: FLdPr Me
  loc_C737F7: MemLdRfVar from_stack_1.global_88
  loc_C737FA: Redim
  loc_C73804: LitI4 0
  loc_C73809: LitI4 1
  loc_C7380E: FLdPr Me
  loc_C73811: MemLdRfVar from_stack_1.global_108
  loc_C73814: Redim
  loc_C7381E: LitI4 0
  loc_C73823: LitI4 1
  loc_C73828: FLdPr Me
  loc_C7382B: MemLdRfVar from_stack_1.global_112
  loc_C7382E: Redim
  loc_C73838: FLdPr var_BC
  loc_C7383B: Call clsboleto.MoveFirst()
  loc_C73840: FLdRfVar var_142
  loc_C73843: FLdPr var_BC
  loc_C73846: from_stack_1 = clsboleto.CodiOfic
  loc_C7384B: FLdI2 var_142
  loc_C7384E: LitI2_Byte 1
  loc_C73850: EqI2
  loc_C73851: BranchF loc_C73925
  loc_C73854: FLdRfVar var_C0
  loc_C73857: FLdPr var_BC
  loc_C7385A: from_stack_1 = clsboleto.DetaPers
  loc_C7385F: ILdRf var_C0
  loc_C73862: LitStr vbNullString
  loc_C73865: EqStr
  loc_C73867: FFree1Str var_C0
  loc_C7386A: BranchF loc_C738E8
  loc_C7386D: FLdRfVar var_C0
  loc_C73870: FLdPr var_BC
  loc_C73873: from_stack_1 = clsboleto.CucuPers
  loc_C73878: FLdRfVar var_C4
  loc_C7387B: FLdPr var_BC
  loc_C7387E: from_stack_1 = clsboleto.CuenCtct
  loc_C73883: FLdPr Me
  loc_C73886: MemLdRfVar from_stack_1.global_100
  loc_C73889: NewIfNullRf
  loc_C7388D: ILdRf var_C4
  loc_C73890: ILdRf var_C0
  loc_C73893: ImpAdCallI2  = Proc_270_14_BF20CC(, )
  loc_C73898: LitI2_Byte &HFF
  loc_C7389A: EqI2
  loc_C7389B: FFreeStr var_C0 = ""
  loc_C738A2: BranchF loc_C738E5
  loc_C738A5: FLdRfVar var_C0
  loc_C738A8: FLdPr Me
  loc_C738AB: MemLdRfVar from_stack_1.global_100
  loc_C738AE: NewIfNullPr tblPersonaGIS
  loc_C738B1: from_stack_1v = tblPersonaGIS.DetaPersGet()
  loc_C738B6: LitI2_Byte 0
  loc_C738B8: LitVar_Missing var_12C
  loc_C738BB: LitI2_Byte 0
  loc_C738BD: FLdZeroAd var_C0
  loc_C738C0: CVarStr var_10C
  loc_C738C3: PopAdLdVar
  loc_C738C4: LitI4 1
  loc_C738C9: FLdPr Me
  loc_C738CC: MemLdStr global_88
  loc_C738CF: AryLock
  loc_C738D2: Ary1LdPr
  loc_C738D3: MemLdRfVar from_stack_1.global_0
  loc_C738D6: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C738DB: AryUnlock
  loc_C738DE: FFreeVar var_10C = ""
  loc_C738E5: Branch loc_C73922
  loc_C738E8: FLdRfVar var_C0
  loc_C738EB: FLdPr var_BC
  loc_C738EE: from_stack_1 = clsboleto.DetaPers
  loc_C738F3: LitI2_Byte 0
  loc_C738F5: LitVar_Missing var_12C
  loc_C738F8: LitI2_Byte 0
  loc_C738FA: FLdZeroAd var_C0
  loc_C738FD: CVarStr var_10C
  loc_C73900: PopAdLdVar
  loc_C73901: LitI4 1
  loc_C73906: FLdPr Me
  loc_C73909: MemLdStr global_88
  loc_C7390C: AryLock
  loc_C7390F: Ary1LdPr
  loc_C73910: MemLdRfVar from_stack_1.global_0
  loc_C73913: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C73918: AryUnlock
  loc_C7391B: FFreeVar var_10C = ""
  loc_C73922: Branch loc_C73A29
  loc_C73925: FLdRfVar var_C0
  loc_C73928: FLdPr var_BC
  loc_C7392B: from_stack_1 = clsboleto.DetaPers
  loc_C73930: ILdRf var_C0
  loc_C73933: LitStr vbNullString
  loc_C73936: EqStr
  loc_C73938: FFree1Str var_C0
  loc_C7393B: BranchF loc_C739EF
  loc_C7393E: FLdRfVar var_142
  loc_C73941: FLdPr var_BC
  loc_C73944: from_stack_1 = clsboleto.PeriBole
  loc_C73949: FLdRfVar var_140
  loc_C7394C: FLdPr var_BC
  loc_C7394F: from_stack_1 = clsboleto.NumeBole
  loc_C73954: FLdPr Me
  loc_C73957: MemLdRfVar from_stack_1.global_104
  loc_C7395A: NewIfNullRf
  loc_C7395E: ILdRf var_140
  loc_C73961: FLdI2 var_142
  loc_C73964: ImpAdCallI2  = Proc_270_15_B24618(, )
  loc_C73969: LitI2_Byte &HFF
  loc_C7396B: EqI2
  loc_C7396C: BranchF loc_C739B2
  loc_C7396F: FLdRfVar var_C0
  loc_C73972: FLdPr Me
  loc_C73975: MemLdRfVar from_stack_1.global_104
  loc_C73978: NewIfNullPr tblPersonaWEB
  loc_C7397B: from_stack_1v = tblPersonaWEB.DetaPeweGet()
  loc_C73980: LitI2_Byte 0
  loc_C73982: LitVar_Missing var_12C
  loc_C73985: LitI2_Byte 0
  loc_C73987: FLdZeroAd var_C0
  loc_C7398A: CVarStr var_10C
  loc_C7398D: PopAdLdVar
  loc_C7398E: LitI4 1
  loc_C73993: FLdPr Me
  loc_C73996: MemLdStr global_88
  loc_C73999: AryLock
  loc_C7399C: Ary1LdPr
  loc_C7399D: MemLdRfVar from_stack_1.global_0
  loc_C739A0: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C739A5: AryUnlock
  loc_C739A8: FFreeVar var_10C = ""
  loc_C739AF: Branch loc_C739EC
  loc_C739B2: FLdRfVar var_C0
  loc_C739B5: FLdPr var_BC
  loc_C739B8: from_stack_1 = clsboleto.DetaPers
  loc_C739BD: LitI2_Byte 0
  loc_C739BF: LitVar_Missing var_12C
  loc_C739C2: LitI2_Byte 0
  loc_C739C4: FLdZeroAd var_C0
  loc_C739C7: CVarStr var_10C
  loc_C739CA: PopAdLdVar
  loc_C739CB: LitI4 1
  loc_C739D0: FLdPr Me
  loc_C739D3: MemLdStr global_88
  loc_C739D6: AryLock
  loc_C739D9: Ary1LdPr
  loc_C739DA: MemLdRfVar from_stack_1.global_0
  loc_C739DD: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C739E2: AryUnlock
  loc_C739E5: FFreeVar var_10C = ""
  loc_C739EC: Branch loc_C73A29
  loc_C739EF: FLdRfVar var_C0
  loc_C739F2: FLdPr var_BC
  loc_C739F5: from_stack_1 = clsboleto.DetaPers
  loc_C739FA: LitI2_Byte 0
  loc_C739FC: LitVar_Missing var_12C
  loc_C739FF: LitI2_Byte 0
  loc_C73A01: FLdZeroAd var_C0
  loc_C73A04: CVarStr var_10C
  loc_C73A07: PopAdLdVar
  loc_C73A08: LitI4 1
  loc_C73A0D: FLdPr Me
  loc_C73A10: MemLdStr global_88
  loc_C73A13: AryLock
  loc_C73A16: Ary1LdPr
  loc_C73A17: MemLdRfVar from_stack_1.global_0
  loc_C73A1A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C73A1F: AryUnlock
  loc_C73A22: FFreeVar var_10C = ""
  loc_C73A29: FLdRfVar var_C0
  loc_C73A2C: FLdPr var_BC
  loc_C73A2F: from_stack_1 = clsboleto.CucuPers
  loc_C73A34: LitI2_Byte 0
  loc_C73A36: LitVar_Missing var_12C
  loc_C73A39: LitI2_Byte 0
  loc_C73A3B: FLdZeroAd var_C0
  loc_C73A3E: CVarStr var_10C
  loc_C73A41: PopAdLdVar
  loc_C73A42: LitI4 1
  loc_C73A47: FLdPr Me
  loc_C73A4A: MemLdStr global_88
  loc_C73A4D: AryLock
  loc_C73A50: Ary1LdPr
  loc_C73A51: MemLdRfVar from_stack_1.global_4
  loc_C73A54: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C73A59: AryUnlock
  loc_C73A5C: FFreeVar var_10C = ""
  loc_C73A63: FLdRfVar var_C0
  loc_C73A66: FLdPr var_BC
  loc_C73A69: from_stack_1 = clsboleto.DetaPers
  loc_C73A6E: ILdRf var_C0
  loc_C73A71: LitStr vbNullString
  loc_C73A74: EqStr
  loc_C73A76: FFree1Str var_C0
  loc_C73A79: BranchF loc_C73B51
  loc_C73A7C: FLdRfVar var_142
  loc_C73A7F: FLdPr var_BC
  loc_C73A82: from_stack_1 = clsboleto.PeriBole
  loc_C73A87: FLdRfVar var_140
  loc_C73A8A: FLdPr var_BC
  loc_C73A8D: from_stack_1 = clsboleto.NumeBole
  loc_C73A92: FLdPr Me
  loc_C73A95: MemLdRfVar from_stack_1.global_104
  loc_C73A98: NewIfNullRf
  loc_C73A9C: ILdRf var_140
  loc_C73A9F: FLdI2 var_142
  loc_C73AA2: ImpAdCallI2  = Proc_270_15_B24618(, )
  loc_C73AA7: LitI2_Byte &HFF
  loc_C73AA9: EqI2
  loc_C73AAA: BranchF loc_C73AF0
  loc_C73AAD: FLdRfVar var_C0
  loc_C73AB0: FLdPr Me
  loc_C73AB3: MemLdRfVar from_stack_1.global_104
  loc_C73AB6: NewIfNullPr tblPersonaWEB
  loc_C73AB9: from_stack_1v = tblPersonaWEB.DirecPeweGet()
  loc_C73ABE: LitI2_Byte 0
  loc_C73AC0: LitVar_Missing var_12C
  loc_C73AC3: LitI2_Byte 0
  loc_C73AC5: FLdZeroAd var_C0
  loc_C73AC8: CVarStr var_10C
  loc_C73ACB: PopAdLdVar
  loc_C73ACC: LitI4 1
  loc_C73AD1: FLdPr Me
  loc_C73AD4: MemLdStr global_88
  loc_C73AD7: AryLock
  loc_C73ADA: Ary1LdPr
  loc_C73ADB: MemLdRfVar from_stack_1.global_8
  loc_C73ADE: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C73AE3: AryUnlock
  loc_C73AE6: FFreeVar var_10C = ""
  loc_C73AED: Branch loc_C73B4E
  loc_C73AF0: FLdRfVar var_14C
  loc_C73AF3: LitVarStr var_A4, "DomiPers"
  loc_C73AF8: PopAdLdVar
  loc_C73AF9: FLdRfVar var_11C
  loc_C73AFC: FLdRfVar var_B8
  loc_C73AFF: FLdPr var_BC
  loc_C73B02: from_stack_1v = clsboleto.RsFrmGet()
  loc_C73B07: FLdPr var_B8
  loc_C73B0A:  = Me.Fields
  loc_C73B0F: FLdPr var_11C
  loc_C73B12: from_stack_2 = Me.Item(from_stack_1)
  loc_C73B17: LitI2_Byte 0
  loc_C73B19: LitVar_Missing var_12C
  loc_C73B1C: LitI2_Byte 0
  loc_C73B1E: FLdZeroAd var_14C
  loc_C73B21: CVarAd
  loc_C73B25: PopAdLdVar
  loc_C73B26: LitI4 1
  loc_C73B2B: FLdPr Me
  loc_C73B2E: MemLdStr global_88
  loc_C73B31: AryLock
  loc_C73B34: Ary1LdPr
  loc_C73B35: MemLdRfVar from_stack_1.global_8
  loc_C73B38: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C73B3D: AryUnlock
  loc_C73B40: FFreeAd var_B8 = ""
  loc_C73B47: FFreeVar var_10C = ""
  loc_C73B4E: Branch loc_C73BAF
  loc_C73B51: FLdRfVar var_14C
  loc_C73B54: LitVarStr var_A4, "DomiPers"
  loc_C73B59: PopAdLdVar
  loc_C73B5A: FLdRfVar var_11C
  loc_C73B5D: FLdRfVar var_B8
  loc_C73B60: FLdPr var_BC
  loc_C73B63: from_stack_1v = clsboleto.RsFrmGet()
  loc_C73B68: FLdPr var_B8
  loc_C73B6B:  = Me.Fields
  loc_C73B70: FLdPr var_11C
  loc_C73B73: from_stack_2 = Me.Item(from_stack_1)
  loc_C73B78: LitI2_Byte 0
  loc_C73B7A: LitVar_Missing var_12C
  loc_C73B7D: LitI2_Byte 0
  loc_C73B7F: FLdZeroAd var_14C
  loc_C73B82: CVarAd
  loc_C73B86: PopAdLdVar
  loc_C73B87: LitI4 1
  loc_C73B8C: FLdPr Me
  loc_C73B8F: MemLdStr global_88
  loc_C73B92: AryLock
  loc_C73B95: Ary1LdPr
  loc_C73B96: MemLdRfVar from_stack_1.global_8
  loc_C73B99: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C73B9E: AryUnlock
  loc_C73BA1: FFreeAd var_B8 = ""
  loc_C73BA8: FFreeVar var_10C = ""
  loc_C73BAF: FLdRfVar var_C0
  loc_C73BB2: FLdPr var_BC
  loc_C73BB5: from_stack_1 = clsboleto.EstaBole
  loc_C73BBA: LitI2_Byte 0
  loc_C73BBC: LitVar_Missing var_12C
  loc_C73BBF: LitI2_Byte 0
  loc_C73BC1: FLdZeroAd var_C0
  loc_C73BC4: CVarStr var_10C
  loc_C73BC7: PopAdLdVar
  loc_C73BC8: LitI4 1
  loc_C73BCD: FLdPr Me
  loc_C73BD0: MemLdStr global_88
  loc_C73BD3: AryLock
  loc_C73BD6: Ary1LdPr
  loc_C73BD7: MemLdRfVar from_stack_1.global_12
  loc_C73BDA: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C73BDF: AryUnlock
  loc_C73BE2: FFreeVar var_10C = ""
  loc_C73BE9: FLdRfVar var_C0
  loc_C73BEC: FLdPr var_BC
  loc_C73BEF: from_stack_1 = clsboleto.TipoBole
  loc_C73BF4: LitI2_Byte 0
  loc_C73BF6: LitVar_Missing var_12C
  loc_C73BF9: LitI2_Byte 0
  loc_C73BFB: FLdZeroAd var_C0
  loc_C73BFE: CVarStr var_10C
  loc_C73C01: PopAdLdVar
  loc_C73C02: LitI4 1
  loc_C73C07: FLdPr Me
  loc_C73C0A: MemLdStr global_88
  loc_C73C0D: AryLock
  loc_C73C10: Ary1LdPr
  loc_C73C11: MemLdRfVar from_stack_1.global_16
  loc_C73C14: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C73C19: AryUnlock
  loc_C73C1C: FFreeVar var_10C = ""
  loc_C73C23: FLdRfVar var_10C
  loc_C73C26: FLdPr var_BC
  loc_C73C29: from_stack_1 = clsboleto.CodiEnreBole
  loc_C73C2E: LitI2_Byte 0
  loc_C73C30: LitVar_Missing var_12C
  loc_C73C33: LitI2_Byte 0
  loc_C73C35: FLdVar var_10C
  loc_C73C39: LitI4 1
  loc_C73C3E: FLdPr Me
  loc_C73C41: MemLdStr global_88
  loc_C73C44: AryLock
  loc_C73C47: Ary1LdPr
  loc_C73C48: MemLdRfVar from_stack_1.global_20
  loc_C73C4B: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C73C50: AryUnlock
  loc_C73C53: FFreeVar var_10C = ""
  loc_C73C5A: FLdRfVar var_10C
  loc_C73C5D: FLdPr var_BC
  loc_C73C60: from_stack_1 = clsboleto.DetaEnreBole
  loc_C73C65: LitI2_Byte 0
  loc_C73C67: LitVar_Missing var_12C
  loc_C73C6A: LitI2_Byte 0
  loc_C73C6C: FLdVar var_10C
  loc_C73C70: LitI4 1
  loc_C73C75: FLdPr Me
  loc_C73C78: MemLdStr global_88
  loc_C73C7B: AryLock
  loc_C73C7E: Ary1LdPr
  loc_C73C7F: MemLdRfVar from_stack_1.global_24
  loc_C73C82: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C73C87: AryUnlock
  loc_C73C8A: FFreeVar var_10C = ""
  loc_C73C91: FLdRfVar var_142
  loc_C73C94: FLdPr var_BC
  loc_C73C97: from_stack_1 = clsboleto.CodiOfic
  loc_C73C9C: LitI2_Byte 0
  loc_C73C9E: LitVar_Missing var_10C
  loc_C73CA1: LitI2_Byte 0
  loc_C73CA3: FLdI2 var_142
  loc_C73CA6: CVarI2 var_A4
  loc_C73CA9: PopAdLdVar
  loc_C73CAA: LitI4 1
  loc_C73CAF: FLdPr Me
  loc_C73CB2: MemLdStr global_88
  loc_C73CB5: AryLock
  loc_C73CB8: Ary1LdPr
  loc_C73CB9: MemLdRfVar from_stack_1.global_28
  loc_C73CBC: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C73CC1: AryUnlock
  loc_C73CC4: FFree1Var var_10C = ""
  loc_C73CC7: FLdRfVar var_C0
  loc_C73CCA: FLdPr var_BC
  loc_C73CCD: from_stack_1 = clsboleto.CuenCtct
  loc_C73CD2: LitI2_Byte 0
  loc_C73CD4: LitVar_Missing var_12C
  loc_C73CD7: LitI2_Byte 0
  loc_C73CD9: FLdZeroAd var_C0
  loc_C73CDC: CVarStr var_10C
  loc_C73CDF: PopAdLdVar
  loc_C73CE0: LitI4 1
  loc_C73CE5: FLdPr Me
  loc_C73CE8: MemLdStr global_88
  loc_C73CEB: AryLock
  loc_C73CEE: Ary1LdPr
  loc_C73CEF: MemLdRfVar from_stack_1.global_36
  loc_C73CF2: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C73CF7: AryUnlock
  loc_C73CFA: FFreeVar var_10C = ""
  loc_C73D01: FLdRfVar var_10C
  loc_C73D04: FLdPr var_BC
  loc_C73D07: from_stack_1 = clsboleto.DetaOfic
  loc_C73D0C: FLdRfVar var_10C
  loc_C73D0F: LitVarStr var_B4, "DERECHOS VARIOS"
  loc_C73D14: FStVarCopyObj var_12C
  loc_C73D17: FLdRfVar var_12C
  loc_C73D1A: LitI4 1
  loc_C73D1F: FLdPr Me
  loc_C73D22: MemLdStr global_88
  loc_C73D25: Ary1LdPr
  loc_C73D26: MemLdStr global_28
  loc_C73D29: CR8Str
  loc_C73D2B: LitI2_Byte 3
  loc_C73D2D: CR8I2
  loc_C73D2E: EqR4
  loc_C73D2F: LitI4 1
  loc_C73D34: FLdPr Me
  loc_C73D37: MemLdStr global_88
  loc_C73D3A: Ary1LdPr
  loc_C73D3B: MemLdStr global_36
  loc_C73D3E: LitStr vbNullString
  loc_C73D41: EqStr
  loc_C73D43: AndI4
  loc_C73D44: CVarBoolI2 var_A4
  loc_C73D48: FLdRfVar var_15C
  loc_C73D4B: ImpAdCallFPR4  = IIf(, , )
  loc_C73D50: LitI2_Byte 0
  loc_C73D52: LitVar_Missing var_17C
  loc_C73D55: LitI2_Byte 0
  loc_C73D57: FLdVar var_15C
  loc_C73D5B: LitI4 1
  loc_C73D60: FLdPr Me
  loc_C73D63: MemLdStr global_88
  loc_C73D66: AryLock
  loc_C73D69: Ary1LdPr
  loc_C73D6A: MemLdRfVar from_stack_1.global_32
  loc_C73D6D: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C73D72: AryUnlock
  loc_C73D75: FFreeVar var_A4 = "": var_12C = "": var_10C = "": var_15C = ""
  loc_C73D82: FLdRfVar var_184
  loc_C73D85: FLdPr var_BC
  loc_C73D88: from_stack_1 = clsboleto.ApreBole
  loc_C73D8D: LitI2_Byte 0
  loc_C73D8F: LitVar_Missing var_10C
  loc_C73D92: LitI2_Byte &HFF
  loc_C73D94: FLdFPR8 var_184
  loc_C73D97: CVarR8
  loc_C73D9B: PopAdLdVar
  loc_C73D9C: LitI4 1
  loc_C73DA1: FLdPr Me
  loc_C73DA4: MemLdStr global_88
  loc_C73DA7: AryLock
  loc_C73DAA: Ary1LdPr
  loc_C73DAB: MemLdRfVar from_stack_1.global_40
  loc_C73DAE: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C73DB3: AryUnlock
  loc_C73DB6: FFree1Var var_10C = ""
  loc_C73DB9: FLdRfVar var_140
  loc_C73DBC: FLdPr var_BC
  loc_C73DBF: from_stack_1 = clsboleto.CodiFapa
  loc_C73DC4: LitI2_Byte 0
  loc_C73DC6: LitVar_Missing var_10C
  loc_C73DC9: LitI2_Byte 0
  loc_C73DCB: ILdRf var_140
  loc_C73DCE: CVarI4
  loc_C73DD2: PopAdLdVar
  loc_C73DD3: LitI4 1
  loc_C73DD8: FLdPr Me
  loc_C73DDB: MemLdStr global_88
  loc_C73DDE: AryLock
  loc_C73DE1: Ary1LdPr
  loc_C73DE2: MemLdRfVar from_stack_1.global_44
  loc_C73DE5: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C73DEA: AryUnlock
  loc_C73DED: FFree1Var var_10C = ""
  loc_C73DF0: FLdRfVar var_142
  loc_C73DF3: FLdPr var_BC
  loc_C73DF6: from_stack_1 = clsboleto.CuotDefa
  loc_C73DFB: LitI2_Byte 0
  loc_C73DFD: LitVar_Missing var_10C
  loc_C73E00: LitI2_Byte 0
  loc_C73E02: FLdI2 var_142
  loc_C73E05: CVarI2 var_A4
  loc_C73E08: PopAdLdVar
  loc_C73E09: LitI4 1
  loc_C73E0E: FLdPr Me
  loc_C73E11: MemLdStr global_88
  loc_C73E14: AryLock
  loc_C73E17: Ary1LdPr
  loc_C73E18: MemLdRfVar from_stack_1.global_48
  loc_C73E1B: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C73E20: AryUnlock
  loc_C73E23: FFree1Var var_10C = ""
  loc_C73E26: FLdRfVar var_10C
  loc_C73E29: FLdPr var_BC
  loc_C73E2C: from_stack_1 = clsboleto.FealBole
  loc_C73E31: LitI2_Byte 0
  loc_C73E33: LitVar_Missing var_12C
  loc_C73E36: LitI2_Byte 0
  loc_C73E38: FLdVar var_10C
  loc_C73E3C: LitI4 1
  loc_C73E41: FLdPr Me
  loc_C73E44: MemLdStr global_88
  loc_C73E47: AryLock
  loc_C73E4A: Ary1LdPr
  loc_C73E4B: MemLdRfVar from_stack_1.bGenerado
  loc_C73E4E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C73E53: AryUnlock
  loc_C73E56: FFreeVar var_10C = ""
  loc_C73E5D: FLdRfVar var_10C
  loc_C73E60: FLdPr var_BC
  loc_C73E63: from_stack_1 = clsboleto.FeenAcpa
  loc_C73E68: LitI2_Byte 0
  loc_C73E6A: LitVar_Missing var_12C
  loc_C73E6D: LitI2_Byte 0
  loc_C73E6F: FLdVar var_10C
  loc_C73E73: LitI4 1
  loc_C73E78: FLdPr Me
  loc_C73E7B: MemLdStr global_88
  loc_C73E7E: AryLock
  loc_C73E81: Ary1LdPr
  loc_C73E82: MemLdRfVar from_stack_1.global_56
  loc_C73E85: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C73E8A: AryUnlock
  loc_C73E8D: FFreeVar var_10C = ""
  loc_C73E94: FLdRfVar var_10C
  loc_C73E97: FLdPr var_BC
  loc_C73E9A: from_stack_1 = clsboleto.FeacAcpa
  loc_C73E9F: LitI2_Byte 0
  loc_C73EA1: LitVar_Missing var_12C
  loc_C73EA4: LitI2_Byte 0
  loc_C73EA6: FLdVar var_10C
  loc_C73EAA: LitI4 1
  loc_C73EAF: FLdPr Me
  loc_C73EB2: MemLdStr global_88
  loc_C73EB5: AryLock
  loc_C73EB8: Ary1LdPr
  loc_C73EB9: MemLdRfVar from_stack_1.global_60
  loc_C73EBC: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C73EC1: AryUnlock
  loc_C73EC4: FFreeVar var_10C = ""
  loc_C73ECB: FLdRfVar var_14C
  loc_C73ECE: LitVarStr var_A4, "FepaPago"
  loc_C73ED3: PopAdLdVar
  loc_C73ED4: FLdRfVar var_11C
  loc_C73ED7: FLdRfVar var_B8
  loc_C73EDA: FLdPr var_BC
  loc_C73EDD: from_stack_1v = clsboleto.RsFrmGet()
  loc_C73EE2: FLdPr var_B8
  loc_C73EE5:  = Me.Fields
  loc_C73EEA: FLdPr var_11C
  loc_C73EED: from_stack_2 = Me.Item(from_stack_1)
  loc_C73EF2: LitI2_Byte 0
  loc_C73EF4: LitVar_Missing var_12C
  loc_C73EF7: LitI2_Byte 0
  loc_C73EF9: FLdZeroAd var_14C
  loc_C73EFC: CVarAd
  loc_C73F00: PopAdLdVar
  loc_C73F01: LitI4 1
  loc_C73F06: FLdPr Me
  loc_C73F09: MemLdStr global_88
  loc_C73F0C: AryLock
  loc_C73F0F: Ary1LdPr
  loc_C73F10: MemLdRfVar from_stack_1.global_64
  loc_C73F13: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C73F18: AryUnlock
  loc_C73F1B: FFreeAd var_B8 = ""
  loc_C73F22: FFreeVar var_10C = ""
  loc_C73F29: FLdRfVar var_10C
  loc_C73F2C: FLdPr var_BC
  loc_C73F2F: from_stack_1 = clsboleto.NumeAcpa
  loc_C73F34: LitI2_Byte 0
  loc_C73F36: LitVar_Missing var_12C
  loc_C73F39: LitI2_Byte 0
  loc_C73F3B: FLdVar var_10C
  loc_C73F3F: LitI4 1
  loc_C73F44: FLdPr Me
  loc_C73F47: MemLdStr global_88
  loc_C73F4A: AryLock
  loc_C73F4D: Ary1LdPr
  loc_C73F4E: MemLdRfVar from_stack_1.global_68
  loc_C73F51: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C73F56: AryUnlock
  loc_C73F59: FFreeVar var_10C = ""
  loc_C73F60: FLdRfVar var_10C
  loc_C73F63: FLdPr var_BC
  loc_C73F66: from_stack_1 = clsboleto.CodiEnrePago
  loc_C73F6B: LitI2_Byte 0
  loc_C73F6D: LitVar_Missing var_12C
  loc_C73F70: LitI2_Byte 0
  loc_C73F72: FLdVar var_10C
  loc_C73F76: LitI4 1
  loc_C73F7B: FLdPr Me
  loc_C73F7E: MemLdStr global_88
  loc_C73F81: AryLock
  loc_C73F84: Ary1LdPr
  loc_C73F85: MemLdRfVar from_stack_1.global_72
  loc_C73F88: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C73F8D: AryUnlock
  loc_C73F90: FFreeVar var_10C = ""
  loc_C73F97: FLdRfVar var_10C
  loc_C73F9A: FLdPr var_BC
  loc_C73F9D: from_stack_1 = clsboleto.DetaEnrePago
  loc_C73FA2: LitI2_Byte 0
  loc_C73FA4: LitVar_Missing var_12C
  loc_C73FA7: LitI2_Byte 0
  loc_C73FA9: FLdVar var_10C
  loc_C73FAD: LitI4 1
  loc_C73FB2: FLdPr Me
  loc_C73FB5: MemLdStr global_88
  loc_C73FB8: AryLock
  loc_C73FBB: Ary1LdPr
  loc_C73FBC: MemLdRfVar from_stack_1.global_76
  loc_C73FBF: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C73FC4: AryUnlock
  loc_C73FC7: FFreeVar var_10C = ""
  loc_C73FCE: FLdRfVar var_10C
  loc_C73FD1: FLdPr var_BC
  loc_C73FD4: from_stack_1 = clsboleto.FeveBole
  loc_C73FD9: LitI2_Byte 0
  loc_C73FDB: LitVar_Missing var_12C
  loc_C73FDE: LitI2_Byte 0
  loc_C73FE0: FLdVar var_10C
  loc_C73FE4: LitI4 1
  loc_C73FE9: FLdPr Me
  loc_C73FEC: MemLdStr global_88
  loc_C73FEF: AryLock
  loc_C73FF2: Ary1LdPr
  loc_C73FF3: MemLdRfVar from_stack_1.global_80
  loc_C73FF6: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C73FFB: AryUnlock
  loc_C73FFE: FFreeVar var_10C = ""
  loc_C74005: FLdRfVar var_10C
  loc_C74008: FLdPr var_BC
  loc_C7400B: from_stack_1 = clsboleto.DetaPersUsua
  loc_C74010: LitI2_Byte 0
  loc_C74012: LitVar_Missing var_12C
  loc_C74015: LitI2_Byte 0
  loc_C74017: FLdVar var_10C
  loc_C7401B: LitI4 1
  loc_C74020: FLdPr Me
  loc_C74023: MemLdStr global_88
  loc_C74026: AryLock
  loc_C74029: Ary1LdPr
  loc_C7402A: MemLdRfVar from_stack_1.global_84
  loc_C7402D: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C74032: AryUnlock
  loc_C74035: FFreeVar var_10C = ""
  loc_C7403C: FLdRfVar var_10C
  loc_C7403F: FLdPr var_BC
  loc_C74042: from_stack_1 = clsboleto.DetaPersPago
  loc_C74047: LitI2_Byte 0
  loc_C74049: LitVar_Missing var_12C
  loc_C7404C: LitI2_Byte 0
  loc_C7404E: FLdVar var_10C
  loc_C74052: LitI4 1
  loc_C74057: FLdPr Me
  loc_C7405A: MemLdStr global_88
  loc_C7405D: AryLock
  loc_C74060: Ary1LdPr
  loc_C74061: MemLdRfVar from_stack_1.global_88
  loc_C74064: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C74069: AryUnlock
  loc_C7406C: FFreeVar var_10C = ""
  loc_C74073: FLdRfVar var_C0
  loc_C74076: FLdPr var_BC
  loc_C74079: from_stack_1 = clsboleto.ExpeBole
  loc_C7407E: LitI2_Byte 0
  loc_C74080: LitVar_Missing var_12C
  loc_C74083: LitI2_Byte 0
  loc_C74085: FLdZeroAd var_C0
  loc_C74088: CVarStr var_10C
  loc_C7408B: PopAdLdVar
  loc_C7408C: LitI4 1
  loc_C74091: FLdPr Me
  loc_C74094: MemLdStr global_88
  loc_C74097: AryLock
  loc_C7409A: Ary1LdPr
  loc_C7409B: MemLdRfVar from_stack_1.global_92
  loc_C7409E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C740A3: AryUnlock
  loc_C740A6: FFreeVar var_10C = ""
  loc_C740AD: FLdRfVar var_14C
  loc_C740B0: LitVarStr var_A4, "CodiPaon"
  loc_C740B5: PopAdLdVar
  loc_C740B6: FLdRfVar var_11C
  loc_C740B9: FLdRfVar var_B8
  loc_C740BC: FLdPr var_BC
  loc_C740BF: from_stack_1v = clsboleto.RsFrmGet()
  loc_C740C4: FLdPr var_B8
  loc_C740C7:  = Me.Fields
  loc_C740CC: FLdPr var_11C
  loc_C740CF: from_stack_2 = Me.Item(from_stack_1)
  loc_C740D4: LitI2_Byte 0
  loc_C740D6: LitVar_Missing var_12C
  loc_C740D9: LitI2_Byte 0
  loc_C740DB: FLdZeroAd var_14C
  loc_C740DE: CVarAd
  loc_C740E2: PopAdLdVar
  loc_C740E3: LitI4 1
  loc_C740E8: FLdPr Me
  loc_C740EB: MemLdStr global_88
  loc_C740EE: AryLock
  loc_C740F1: Ary1LdPr
  loc_C740F2: MemLdRfVar from_stack_1.global_96
  loc_C740F5: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C740FA: AryUnlock
  loc_C740FD: FFreeAd var_B8 = ""
  loc_C74104: FFreeVar var_10C = ""
  loc_C7410B: FLdRfVar var_C0
  loc_C7410E: FLdPr var_BC
  loc_C74111: from_stack_1 = clsboleto.ObseBole
  loc_C74116: FLdRfVar var_14C
  loc_C74119: LitVarStr var_A4, "Contra"
  loc_C7411E: PopAdLdVar
  loc_C7411F: FLdRfVar var_11C
  loc_C74122: FLdRfVar var_B8
  loc_C74125: FLdPr var_BC
  loc_C74128: from_stack_1v = clsboleto.RsFrmGet()
  loc_C7412D: FLdPr var_B8
  loc_C74130:  = Me.Fields
  loc_C74135: FLdPr var_11C
  loc_C74138: from_stack_2 = Me.Item(from_stack_1)
  loc_C7413D: FLdZeroAd var_14C
  loc_C74140: CVarAd
  loc_C74144: FLdRfVar var_12C
  loc_C74147: ImpAdCallFPR4  = Trim()
  loc_C7414C: FLdRfVar var_17C
  loc_C7414F: FLdRfVar var_190
  loc_C74152: LitVarStr var_16C, "Contra"
  loc_C74157: PopAdLdVar
  loc_C74158: FLdRfVar var_18C
  loc_C7415B: FLdRfVar var_188
  loc_C7415E: FLdPr var_BC
  loc_C74161: from_stack_1v = clsboleto.RsFrmGet()
  loc_C74166: FLdPr var_188
  loc_C74169:  = Me.Fields
  loc_C7416E: FLdPr var_18C
  loc_C74171: from_stack_2 = Me.Item(from_stack_1)
  loc_C74176: FLdPr var_190
  loc_C74179:  = Me.Value
  loc_C7417E: LitVarStr var_1D0, vbNullString
  loc_C74183: FStVarCopyObj var_1E0
  loc_C74186: FLdRfVar var_1E0
  loc_C74189: LitVarStr var_1A0, " "
  loc_C7418E: FLdRfVar var_17C
  loc_C74191: ConcatVar var_1B0
  loc_C74195: FLdRfVar var_12C
  loc_C74198: LitVarStr var_B4, vbNullString
  loc_C7419D: HardType
  loc_C7419E: NeVar var_15C
  loc_C741A2: FStVar var_1C0
  loc_C741A6: FLdRfVar var_1C0
  loc_C741A9: FLdRfVar var_1F0
  loc_C741AC: ImpAdCallFPR4  = IIf(, , )
  loc_C741B1: LitI2_Byte 0
  loc_C741B3: LitVar_Missing var_230
  loc_C741B6: LitI2_Byte 0
  loc_C741B8: FLdZeroAd var_C0
  loc_C741BB: CVarStr var_200
  loc_C741BE: FLdRfVar var_1F0
  loc_C741C1: ConcatVar var_210
  loc_C741C5: PopAdLdVar
  loc_C741C6: LitI4 1
  loc_C741CB: FLdPr Me
  loc_C741CE: MemLdStr global_88
  loc_C741D1: AryLock
  loc_C741D4: Ary1LdPr
  loc_C741D5: MemLdRfVar from_stack_1.global_100
  loc_C741D8: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C741DD: AryUnlock
  loc_C741E0: FFreeAd var_B8 = "": var_11C = "": var_188 = "": var_18C = ""
  loc_C741ED: FFreeVar var_10C = "": var_12C = "": var_17C = "": var_1C0 = "": var_1B0 = "": var_1E0 = "": var_200 = "": var_1F0 = "": var_210 = ""
  loc_C74204: LitNothing
  loc_C74206: FStAd var_BC 
  loc_C7420A: LitI4 1
  loc_C7420F: FLdPr Me
  loc_C74212: MemLdStr global_88
  loc_C74215: Ary1LdPr
  loc_C74216: MemLdStr global_28
  loc_C74219: CR8Str
  loc_C7421B: LitI2_Byte 3
  loc_C7421D: CR8I2
  loc_C7421E: EqR4
  loc_C7421F: LitI4 1
  loc_C74224: FLdPr Me
  loc_C74227: MemLdStr global_88
  loc_C7422A: Ary1LdPr
  loc_C7422B: MemLdStr global_36
  loc_C7422E: LitStr vbNullString
  loc_C74231: EqStr
  loc_C74233: AndI4
  loc_C74234: BranchF loc_C74692
  loc_C74237: FLdPr Me
  loc_C7423A: MemLdRfVar from_stack_1.global_84
  loc_C7423D: NewIfNullAd
  loc_C74240: FStAd var_234 
  loc_C74244: LitStr "SELECT PeriCtct, BimeCtct, NumeCtct, MoviCtct, devadeta.PeriOrde, devadeta.CodiSede, DetaSede,"
  loc_C74247: LitStr " CantDede, PrunDede, SubtDede, DescDede, TotaDede"
  loc_C7424A: ConcatStr
  loc_C7424B: FStStrNoPop var_C0
  loc_C7424E: LitStr " FROM devadeta"
  loc_C74251: ConcatStr
  loc_C74252: FStStrNoPop var_C4
  loc_C74255: LitStr " LEFT JOIN servdeva ON servdeva.PeriOrde = devadeta.PeriOrde AND servdeva.CodiSede = devadeta.CodiSede"
  loc_C74258: ConcatStr
  loc_C74259: FStStrNoPop var_C8
  loc_C7425C: LitStr " WHERE devadeta.PeriBole = "
  loc_C7425F: ConcatStr
  loc_C74260: FStStrNoPop var_CC
  loc_C74263: FLdPr Me
  loc_C74266: VCallAd Control_ID_PeriBoleMsk
  loc_C74269: FStAdFunc var_B8
  loc_C7426C: FLdPr var_B8
  loc_C7426F: LateIdLdVar var_10C DispID_22 0
  loc_C74276: CStrVarTmp
  loc_C74277: FStStrNoPop var_D0
  loc_C7427A: ConcatStr
  loc_C7427B: FStStrNoPop var_D4
  loc_C7427E: LitStr " AND devadeta.NumeBole = "
  loc_C74281: ConcatStr
  loc_C74282: FStStrNoPop var_D8
  loc_C74285: FLdPr Me
  loc_C74288: VCallAd Control_ID_NumeBoleMsk
  loc_C7428B: FStAdFunc var_11C
  loc_C7428E: FLdPr var_11C
  loc_C74291: LateIdLdVar var_12C DispID_22 0
  loc_C74298: CStrVarTmp
  loc_C74299: FStStrNoPop var_DC
  loc_C7429C: ConcatStr
  loc_C7429D: FStStrNoPop var_E0
  loc_C742A0: LitStr " ORDER BY PeriCtct, BimeCtct"
  loc_C742A3: ConcatStr
  loc_C742A4: FStStrNoPop var_E4
  loc_C742A7: FLdPr var_234
  loc_C742AA: Call clsdevadeta.RedefineRS(from_stack_1v)
  loc_C742AF: FFreeStr var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = ""
  loc_C742C6: FFreeAd var_B8 = ""
  loc_C742CD: FFreeVar var_10C = ""
  loc_C742D4: FLdRfVar var_140
  loc_C742D7: FLdPr var_234
  loc_C742DA: from_stack_1 = clsdevadeta.RecordCount
  loc_C742DF: ILdRf var_140
  loc_C742E2: LitI4 0
  loc_C742E7: EqI4
  loc_C742E8: BranchF loc_C74357
  loc_C742EB: LitStr "No se ha generado detalle para el boleto "
  loc_C742EE: FLdPr Me
  loc_C742F1: VCallAd Control_ID_NumeBoleMsk
  loc_C742F4: FStAdFunc var_B8
  loc_C742F7: FLdPr var_B8
  loc_C742FA: LateIdLdVar var_10C DispID_22 0
  loc_C74301: CStrVarTmp
  loc_C74302: FStStrNoPop var_C0
  loc_C74305: ConcatStr
  loc_C74306: FStStrNoPop var_C4
  loc_C74309: LitStr "/"
  loc_C7430C: ConcatStr
  loc_C7430D: FStStrNoPop var_C8
  loc_C74310: FLdPr Me
  loc_C74313: VCallAd Control_ID_PeriBoleMsk
  loc_C74316: FStAdFunc var_11C
  loc_C74319: FLdPr var_11C
  loc_C7431C: LateIdLdVar var_12C DispID_22 0
  loc_C74323: CStrVarTmp
  loc_C74324: FStStrNoPop var_CC
  loc_C74327: ConcatStr
  loc_C74328: FStStrNoPop var_D0
  loc_C7432B: LitStr "."
  loc_C7432E: ConcatStr
  loc_C7432F: FStStrNoPop var_D4
  loc_C74332: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C74337: FFreeStr var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_C74346: FFreeAd var_B8 = ""
  loc_C7434D: FFreeVar var_10C = ""
  loc_C74354: Branch loc_C74808
  loc_C74357: FLdPr var_234
  loc_C7435A: Call clsdevadeta.MoveFirst()
  loc_C7435F: FLdRfVar var_140
  loc_C74362: FLdPr var_234
  loc_C74365: from_stack_1 = clsdevadeta.RecordCount
  loc_C7436A: LitI4 0
  loc_C7436F: ILdRf var_140
  loc_C74372: LitI4 1
  loc_C74377: FLdPr Me
  loc_C7437A: MemLdStr global_88
  loc_C7437D: Ary1LdPr
  loc_C7437E: MemLdRfVar from_stack_1.global_108
  loc_C74381: Redim
  loc_C7438B: LitI2_Byte 1
  loc_C7438D: FLdPr Me
  loc_C74390: MemLdRfVar from_stack_1.global_96
  loc_C74393: LitI4 1
  loc_C74398: FLdPr Me
  loc_C7439B: MemLdStr global_88
  loc_C7439E: Ary1LdPr
  loc_C7439F: MemLdStr global_108
  loc_C743A2: LitI2_Byte 1
  loc_C743A4: FnUBound
  loc_C743A6: CI2I4
  loc_C743A7: ForI2 var_238
  loc_C743AD: FLdRfVar var_142
  loc_C743B0: FLdPr var_234
  loc_C743B3: from_stack_1 = clsdevadeta.PeriCtct
  loc_C743B8: LitI2_Byte 0
  loc_C743BA: LitVar_Missing var_10C
  loc_C743BD: LitI2_Byte 0
  loc_C743BF: FLdI2 var_142
  loc_C743C2: CVarI2 var_A4
  loc_C743C5: PopAdLdVar
  loc_C743C6: FLdPr Me
  loc_C743C9: MemLdI2 global_96
  loc_C743CC: CI4UI1
  loc_C743CD: LitI4 1
  loc_C743D2: FLdPr Me
  loc_C743D5: MemLdStr global_88
  loc_C743D8: AryLock
  loc_C743DB: Ary1LdPr
  loc_C743DC: MemLdStr global_108
  loc_C743DF: AryLock
  loc_C743E2: Ary1LdPr
  loc_C743E3: MemLdRfVar from_stack_1.global_0
  loc_C743E6: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C743EB: AryUnlock
  loc_C743EE: AryUnlock
  loc_C743F1: FFree1Var var_10C = ""
  loc_C743F4: FLdRfVar var_142
  loc_C743F7: FLdPr var_234
  loc_C743FA: from_stack_1 = clsdevadeta.BimeCtct
  loc_C743FF: LitI2_Byte 0
  loc_C74401: LitVar_Missing var_10C
  loc_C74404: LitI2_Byte 0
  loc_C74406: FLdI2 var_142
  loc_C74409: CVarI2 var_A4
  loc_C7440C: PopAdLdVar
  loc_C7440D: FLdPr Me
  loc_C74410: MemLdI2 global_96
  loc_C74413: CI4UI1
  loc_C74414: LitI4 1
  loc_C74419: FLdPr Me
  loc_C7441C: MemLdStr global_88
  loc_C7441F: AryLock
  loc_C74422: Ary1LdPr
  loc_C74423: MemLdStr global_108
  loc_C74426: AryLock
  loc_C74429: Ary1LdPr
  loc_C7442A: MemLdRfVar from_stack_1.global_4
  loc_C7442D: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C74432: AryUnlock
  loc_C74435: AryUnlock
  loc_C74438: FFree1Var var_10C = ""
  loc_C7443B: FLdRfVar var_142
  loc_C7443E: FLdPr var_234
  loc_C74441: from_stack_1 = clsdevadeta.CodiSede
  loc_C74446: LitI2_Byte 0
  loc_C74448: LitVar_Missing var_10C
  loc_C7444B: LitI2_Byte 0
  loc_C7444D: FLdI2 var_142
  loc_C74450: CVarI2 var_A4
  loc_C74453: PopAdLdVar
  loc_C74454: FLdPr Me
  loc_C74457: MemLdI2 global_96
  loc_C7445A: CI4UI1
  loc_C7445B: LitI4 1
  loc_C74460: FLdPr Me
  loc_C74463: MemLdStr global_88
  loc_C74466: AryLock
  loc_C74469: Ary1LdPr
  loc_C7446A: MemLdStr global_108
  loc_C7446D: AryLock
  loc_C74470: Ary1LdPr
  loc_C74471: MemLdRfVar from_stack_1.global_16
  loc_C74474: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C74479: AryUnlock
  loc_C7447C: AryUnlock
  loc_C7447F: FFree1Var var_10C = ""
  loc_C74482: FLdRfVar var_C0
  loc_C74485: FLdPr var_234
  loc_C74488: from_stack_1 = clsdevadeta.DetaSede
  loc_C7448D: LitI2_Byte 0
  loc_C7448F: LitVar_Missing var_12C
  loc_C74492: LitI2_Byte 0
  loc_C74494: FLdZeroAd var_C0
  loc_C74497: CVarStr var_10C
  loc_C7449A: PopAdLdVar
  loc_C7449B: FLdPr Me
  loc_C7449E: MemLdI2 global_96
  loc_C744A1: CI4UI1
  loc_C744A2: LitI4 1
  loc_C744A7: FLdPr Me
  loc_C744AA: MemLdStr global_88
  loc_C744AD: AryLock
  loc_C744B0: Ary1LdPr
  loc_C744B1: MemLdStr global_108
  loc_C744B4: AryLock
  loc_C744B7: Ary1LdPr
  loc_C744B8: MemLdRfVar from_stack_1.global_20
  loc_C744BB: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C744C0: AryUnlock
  loc_C744C3: AryUnlock
  loc_C744C6: FFreeVar var_10C = ""
  loc_C744CD: FLdRfVar var_184
  loc_C744D0: FLdPr var_234
  loc_C744D3: from_stack_1 = clsdevadeta.CantDede
  loc_C744D8: LitI2_Byte 0
  loc_C744DA: LitVar_Missing var_10C
  loc_C744DD: LitI2_Byte 0
  loc_C744DF: FLdFPR8 var_184
  loc_C744E2: CVarR8
  loc_C744E6: PopAdLdVar
  loc_C744E7: FLdPr Me
  loc_C744EA: MemLdI2 global_96
  loc_C744ED: CI4UI1
  loc_C744EE: LitI4 1
  loc_C744F3: FLdPr Me
  loc_C744F6: MemLdStr global_88
  loc_C744F9: AryLock
  loc_C744FC: Ary1LdPr
  loc_C744FD: MemLdStr global_108
  loc_C74500: AryLock
  loc_C74503: Ary1LdPr
  loc_C74504: MemLdRfVar from_stack_1.global_24
  loc_C74507: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C7450C: AryUnlock
  loc_C7450F: AryUnlock
  loc_C74512: FFree1Var var_10C = ""
  loc_C74515: FLdRfVar var_184
  loc_C74518: FLdPr var_234
  loc_C7451B: from_stack_1 = clsdevadeta.PrunDede
  loc_C74520: LitI2_Byte 0
  loc_C74522: LitVar_Missing var_10C
  loc_C74525: LitI2_Byte &HFF
  loc_C74527: FLdFPR8 var_184
  loc_C7452A: CVarR8
  loc_C7452E: PopAdLdVar
  loc_C7452F: FLdPr Me
  loc_C74532: MemLdI2 global_96
  loc_C74535: CI4UI1
  loc_C74536: LitI4 1
  loc_C7453B: FLdPr Me
  loc_C7453E: MemLdStr global_88
  loc_C74541: AryLock
  loc_C74544: Ary1LdPr
  loc_C74545: MemLdStr global_108
  loc_C74548: AryLock
  loc_C7454B: Ary1LdPr
  loc_C7454C: MemLdRfVar from_stack_1.global_28
  loc_C7454F: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C74554: AryUnlock
  loc_C74557: AryUnlock
  loc_C7455A: FFree1Var var_10C = ""
  loc_C7455D: FLdRfVar var_184
  loc_C74560: FLdPr var_234
  loc_C74563: from_stack_1 = clsdevadeta.SubtDede
  loc_C74568: LitI2_Byte 0
  loc_C7456A: LitI4 1
  loc_C7456F: FLdPr Me
  loc_C74572: MemLdStr global_112
  loc_C74575: AryLock
  loc_C74578: Ary1LdPr
  loc_C74579: MemLdRfVar from_stack_1.global_32
  loc_C7457C: CVarRef
  loc_C74581: LitI2_Byte &HFF
  loc_C74583: FLdFPR8 var_184
  loc_C74586: CVarR8
  loc_C7458A: PopAdLdVar
  loc_C7458B: FLdPr Me
  loc_C7458E: MemLdI2 global_96
  loc_C74591: CI4UI1
  loc_C74592: LitI4 1
  loc_C74597: FLdPr Me
  loc_C7459A: MemLdStr global_88
  loc_C7459D: AryLock
  loc_C745A0: Ary1LdPr
  loc_C745A1: MemLdStr global_108
  loc_C745A4: AryLock
  loc_C745A7: Ary1LdPr
  loc_C745A8: MemLdRfVar from_stack_1.global_32
  loc_C745AB: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C745B0: AryUnlock
  loc_C745B3: AryUnlock
  loc_C745B6: AryUnlock
  loc_C745B9: FLdRfVar var_184
  loc_C745BC: FLdPr var_234
  loc_C745BF: from_stack_1 = clsdevadeta.DescDede
  loc_C745C4: LitI2_Byte 0
  loc_C745C6: LitI4 1
  loc_C745CB: FLdPr Me
  loc_C745CE: MemLdStr global_112
  loc_C745D1: AryLock
  loc_C745D4: Ary1LdPr
  loc_C745D5: MemLdRfVar from_stack_1.global_36
  loc_C745D8: CVarRef
  loc_C745DD: LitI2_Byte &HFF
  loc_C745DF: FLdFPR8 var_184
  loc_C745E2: CVarR8
  loc_C745E6: PopAdLdVar
  loc_C745E7: FLdPr Me
  loc_C745EA: MemLdI2 global_96
  loc_C745ED: CI4UI1
  loc_C745EE: LitI4 1
  loc_C745F3: FLdPr Me
  loc_C745F6: MemLdStr global_88
  loc_C745F9: AryLock
  loc_C745FC: Ary1LdPr
  loc_C745FD: MemLdStr global_108
  loc_C74600: AryLock
  loc_C74603: Ary1LdPr
  loc_C74604: MemLdRfVar from_stack_1.global_36
  loc_C74607: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C7460C: AryUnlock
  loc_C7460F: AryUnlock
  loc_C74612: AryUnlock
  loc_C74615: FLdRfVar var_184
  loc_C74618: FLdPr var_234
  loc_C7461B: from_stack_1 = clsdevadeta.TotaDede
  loc_C74620: LitI2_Byte 0
  loc_C74622: LitI4 1
  loc_C74627: FLdPr Me
  loc_C7462A: MemLdStr global_112
  loc_C7462D: AryLock
  loc_C74630: Ary1LdPr
  loc_C74631: MemLdRfVar from_stack_1.global_40
  loc_C74634: CVarRef
  loc_C74639: LitI2_Byte &HFF
  loc_C7463B: FLdFPR8 var_184
  loc_C7463E: CVarR8
  loc_C74642: PopAdLdVar
  loc_C74643: FLdPr Me
  loc_C74646: MemLdI2 global_96
  loc_C74649: CI4UI1
  loc_C7464A: LitI4 1
  loc_C7464F: FLdPr Me
  loc_C74652: MemLdStr global_88
  loc_C74655: AryLock
  loc_C74658: Ary1LdPr
  loc_C74659: MemLdStr global_108
  loc_C7465C: AryLock
  loc_C7465F: Ary1LdPr
  loc_C74660: MemLdRfVar from_stack_1.global_40
  loc_C74663: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C74668: AryUnlock
  loc_C7466B: AryUnlock
  loc_C7466E: AryUnlock
  loc_C74671: LitI2_Byte 1
  loc_C74673: PopTmpLdAd2 var_142
  loc_C74676: FLdPr var_234
  loc_C74679: Call clsdevadeta.Move(from_stack_1v)
  loc_C7467E: FLdPr Me
  loc_C74681: MemLdRfVar from_stack_1.global_96
  loc_C74684: NextI2 var_238, loc_C743AD
  loc_C74689: LitNothing
  loc_C7468B: FStAd var_234 
  loc_C7468F: Branch loc_C74800
  loc_C74692: FLdPr Me
  loc_C74695: MemLdRfVar from_stack_1.global_80
  loc_C74698: NewIfNullAd
  loc_C7469B: FStAd var_244 
  loc_C7469F: LitStr "SELECT detabole.PeriCtct, BimeCtct, detabole.CodiFapa, detabole.CuotDefa, detabole.CodiConc, DetaConc,"
  loc_C746A2: LitStr " CapiDebo, RecaDebo, InteDebo, DecaDebo+DereDebo as DescDebo, TotaDebo"
  loc_C746A5: ConcatStr
  loc_C746A6: FStStrNoPop var_C0
  loc_C746A9: LitStr " FROM detabole LEFT JOIN concepto ON concepto.PeriInfo = detabole.PeriCtct AND concepto.CodiConc = detabole.CodiConc"
  loc_C746AC: ConcatStr
  loc_C746AD: FStStrNoPop var_C4
  loc_C746B0: LitStr " WHERE detabole.PeriBole = '"
  loc_C746B3: ConcatStr
  loc_C746B4: FStStrNoPop var_C8
  loc_C746B7: FLdPr Me
  loc_C746BA: VCallAd Control_ID_PeriBoleMsk
  loc_C746BD: FStAdFunc var_B8
  loc_C746C0: FLdPr var_B8
  loc_C746C3: LateIdLdVar var_10C DispID_22 0
  loc_C746CA: CStrVarTmp
  loc_C746CB: FStStrNoPop var_CC
  loc_C746CE: ConcatStr
  loc_C746CF: FStStrNoPop var_D0
  loc_C746D2: LitStr "' AND detabole.NumeBole = '"
  loc_C746D5: ConcatStr
  loc_C746D6: FStStrNoPop var_D4
  loc_C746D9: FLdPr Me
  loc_C746DC: VCallAd Control_ID_NumeBoleMsk
  loc_C746DF: FStAdFunc var_11C
  loc_C746E2: FLdPr var_11C
  loc_C746E5: LateIdLdVar var_12C DispID_22 0
  loc_C746EC: CStrVarTmp
  loc_C746ED: FStStrNoPop var_D8
  loc_C746F0: ConcatStr
  loc_C746F1: FStStrNoPop var_DC
  loc_C746F4: LitStr "'"
  loc_C746F7: ConcatStr
  loc_C746F8: FStStrNoPop var_E0
  loc_C746FB: LitStr " ORDER BY CodiConc, PeriCtct, BimeCtct, NumeCtct, MoviCtct, detabole.MoviDebo"
  loc_C746FE: ConcatStr
  loc_C746FF: FStStrNoPop var_E4
  loc_C74702: FLdPr var_244
  loc_C74705: Call clsdetabole.RedefineRS(from_stack_1v)
  loc_C7470A: FFreeStr var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = ""
  loc_C74721: FFreeAd var_B8 = ""
  loc_C74728: FFreeVar var_10C = ""
  loc_C7472F: FLdRfVar var_140
  loc_C74732: FLdPr var_244
  loc_C74735: from_stack_1 = clsdetabole.RecordCount
  loc_C7473A: ILdRf var_140
  loc_C7473D: LitI4 0
  loc_C74742: EqI4
  loc_C74743: BranchF loc_C74751
  loc_C74746: LitStr "No se ha generado detalle para el boleto"
  loc_C74749: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C7474E: Branch loc_C74808
  loc_C74751: FLdPr var_244
  loc_C74754: Call clsdetabole.MoveFirst()
  loc_C74759: LitI2_Byte 0
  loc_C7475B: FLdPr Me
  loc_C7475E: MemStI2 global_92
  loc_C74761: Call Proc_345_19_AB565C()
  loc_C74766: FLdRfVar var_142
  loc_C74769: FLdPr var_244
  loc_C7476C: from_stack_1 = clsdetabole.EOF
  loc_C74771: FLdI2 var_142
  loc_C74774: NotI4
  loc_C74775: BranchF loc_C747FA
  loc_C74778: FLdRfVar var_C0
  loc_C7477B: FLdPr var_244
  loc_C7477E: from_stack_1 = clsdetabole.CodiConc
  loc_C74783: ILdRf var_C0
  loc_C74786: FLdPr Me
  loc_C74789: MemLdI2 global_92
  loc_C7478C: CI4UI1
  loc_C7478D: LitI4 1
  loc_C74792: FLdPr Me
  loc_C74795: MemLdStr global_88
  loc_C74798: Ary1LdPr
  loc_C74799: MemLdStr global_104
  loc_C7479C: Ary1LdPr
  loc_C7479D: MemLdStr global_0
  loc_C747A0: NeStr
  loc_C747A2: FFree1Str var_C0
  loc_C747A5: BranchF loc_C747B0
  loc_C747A8: Call Proc_345_19_AB565C()
  loc_C747AD: Branch loc_C747F7
  loc_C747B0: FLdRfVar var_140
  loc_C747B3: FLdPr var_244
  loc_C747B6: from_stack_1 = clsdetabole.PeriCtct
  loc_C747BB: ILdRf var_140
  loc_C747BE: CR8I4
  loc_C747BF: FLdPr Me
  loc_C747C2: MemLdI2 global_94
  loc_C747C5: CI4UI1
  loc_C747C6: FLdPr Me
  loc_C747C9: MemLdI2 global_92
  loc_C747CC: CI4UI1
  loc_C747CD: LitI4 1
  loc_C747D2: FLdPr Me
  loc_C747D5: MemLdStr global_88
  loc_C747D8: Ary1LdPr
  loc_C747D9: MemLdStr global_104
  loc_C747DC: Ary1LdPr
  loc_C747DD: MemLdStr global_8
  loc_C747E0: Ary1LdPr
  loc_C747E1: MemLdStr global_0
  loc_C747E4: CR8Str
  loc_C747E6: NeR8
  loc_C747E7: BranchF loc_C747F2
  loc_C747EA: Call Proc_345_20_A96378()
  loc_C747EF: Branch loc_C747F7
  loc_C747F2: Call Proc_345_21_B17B14()
  loc_C747F7: Branch loc_C74766
  loc_C747FA: LitNothing
  loc_C747FC: FStAd var_244 
  loc_C74800: LitI2_Byte &HFF
  loc_C74802: FLdPr Me
  loc_C74805: MemStI2 bGenerado
  loc_C74808: LitI4 0
  loc_C7480D: CI2I4
  loc_C7480E: FLdPr Me
  loc_C74811: Me.MousePointer = from_stack_1
  loc_C74816: LitVarStr var_A4, vbNullString
  loc_C7481B: PopAdLdVar
  loc_C7481C: FLdPr Me
  loc_C7481F: VCallAd Control_ID_statusBar
  loc_C74822: FStAdFunc var_B8
  loc_C74825: FLdPr var_B8
  loc_C74828: LateIdSt
  loc_C7482D: FFree1Ad var_B8
  loc_C74830: ExitProcHresult
  loc_C74831: LeCyR8
  loc_C74832: FLdFPR4 var_1FFC
End Sub

Public Sub GeneraHTML() 'A7FEF8
  'Data Table: 499658
  loc_A7FE68: FLdRfVar var_88
  loc_A7FE6B: LitI2_Byte 0
  loc_A7FE6D: LitI2_Byte &HFF
  loc_A7FE6F: ImpAdLdI4 MemVar_D93C84
  loc_A7FE72: FLdPr Me
  loc_A7FE75: MemLdRfVar from_stack_1.global_56
  loc_A7FE78: NewIfNullPr IFileSystem3
  loc_A7FE7B: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A7FE80: ILdRf var_88
  loc_A7FE83: FLdPr Me
  loc_A7FE86: MemStVarAd
  loc_A7FE8A: FFree1Ad var_88
  loc_A7FE8D: LitI2_Byte &HFF
  loc_A7FE8F: ImpAdStI2 MemVar_D93C8A
  loc_A7FE92: Call Proc_345_22_C6DB4C()
  loc_A7FE97: LitI4 1
  loc_A7FE9C: FLdPr Me
  loc_A7FE9F: MemLdStr global_88
  loc_A7FEA2: Ary1LdPr
  loc_A7FEA3: MemLdStr global_28
  loc_A7FEA6: CR8Str
  loc_A7FEA8: LitI2_Byte 3
  loc_A7FEAA: CR8I2
  loc_A7FEAB: EqR4
  loc_A7FEAC: LitI4 1
  loc_A7FEB1: FLdPr Me
  loc_A7FEB4: MemLdStr global_88
  loc_A7FEB7: Ary1LdPr
  loc_A7FEB8: MemLdStr global_36
  loc_A7FEBB: LitStr vbNullString
  loc_A7FEBE: EqStr
  loc_A7FEC0: AndI4
  loc_A7FEC1: BranchF loc_A7FED1
  loc_A7FEC4: Call Proc_345_24_B32608()
  loc_A7FEC9: Call Proc_345_26_ABC8C8()
  loc_A7FECE: Branch loc_A7FEDB
  loc_A7FED1: Call Proc_345_23_BB8588()
  loc_A7FED6: Call Proc_345_25_B476D8()
  loc_A7FEDB: Call Proc_345_27_9F6990()
  loc_A7FEE0: FLdPr Me
  loc_A7FEE3: MemLdRfVar from_stack_1.global_60
  loc_A7FEE6: LdPrVar
  loc_A7FEE8: LateMemCall
  loc_A7FEEE: LitStr vbNullString
  loc_A7FEF1: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_A7FEF6: ExitProcHresult
End Sub

Private Function Proc_345_19_AB565C() 'AB565C
  'Data Table: 499658
  loc_AB5578: FLdPr Me
  loc_AB557B: MemLdI2 global_92
  loc_AB557E: LitI2_Byte 1
  loc_AB5580: AddI2
  loc_AB5581: FLdPr Me
  loc_AB5584: MemStI2 global_92
  loc_AB5587: LitI2_Byte 0
  loc_AB5589: FLdPr Me
  loc_AB558C: MemStI2 global_94
  loc_AB558F: LitI4 0
  loc_AB5594: FLdPr Me
  loc_AB5597: MemLdI2 global_92
  loc_AB559A: CI4UI1
  loc_AB559B: LitI4 1
  loc_AB55A0: FLdPr Me
  loc_AB55A3: MemLdStr global_88
  loc_AB55A6: Ary1LdPr
  loc_AB55A7: MemLdRfVar from_stack_1.global_104
  loc_AB55AA: RedimPreserve
  loc_AB55B4: FLdRfVar var_88
  loc_AB55B7: FLdPr Me
  loc_AB55BA: MemLdRfVar from_stack_1.global_80
  loc_AB55BD: NewIfNullPr clsdetabole
  loc_AB55C0: from_stack_1 = clsdetabole.CodiConc
  loc_AB55C5: LitI2_Byte 0
  loc_AB55C7: LitVar_Missing var_C0
  loc_AB55CA: LitI2_Byte 0
  loc_AB55CC: FLdZeroAd var_88
  loc_AB55CF: CVarStr var_A0
  loc_AB55D2: PopAdLdVar
  loc_AB55D3: FLdPr Me
  loc_AB55D6: MemLdI2 global_92
  loc_AB55D9: CI4UI1
  loc_AB55DA: LitI4 1
  loc_AB55DF: FLdPr Me
  loc_AB55E2: MemLdStr global_88
  loc_AB55E5: AryLock
  loc_AB55E8: Ary1LdPr
  loc_AB55E9: MemLdStr global_104
  loc_AB55EC: AryLock
  loc_AB55EF: Ary1LdPr
  loc_AB55F0: MemLdRfVar from_stack_1.global_0
  loc_AB55F3: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_AB55F8: AryUnlock
  loc_AB55FB: AryUnlock
  loc_AB55FE: FFreeVar var_A0 = ""
  loc_AB5605: FLdRfVar var_A0
  loc_AB5608: FLdPr Me
  loc_AB560B: MemLdRfVar from_stack_1.global_80
  loc_AB560E: NewIfNullPr clsdetabole
  loc_AB5611: from_stack_1 = clsdetabole.DetaConc
  loc_AB5616: LitI2_Byte 0
  loc_AB5618: LitVar_Missing var_C0
  loc_AB561B: LitI2_Byte 0
  loc_AB561D: FLdVar var_A0
  loc_AB5621: FLdPr Me
  loc_AB5624: MemLdI2 global_92
  loc_AB5627: CI4UI1
  loc_AB5628: LitI4 1
  loc_AB562D: FLdPr Me
  loc_AB5630: MemLdStr global_88
  loc_AB5633: AryLock
  loc_AB5636: Ary1LdPr
  loc_AB5637: MemLdStr global_104
  loc_AB563A: AryLock
  loc_AB563D: Ary1LdPr
  loc_AB563E: MemLdRfVar from_stack_1.global_4
  loc_AB5641: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_AB5646: AryUnlock
  loc_AB5649: AryUnlock
  loc_AB564C: FFreeVar var_A0 = ""
  loc_AB5653: Call Proc_345_20_A96378()
  loc_AB5658: ExitProcHresult
  loc_AB5659: FStAdFunc var_11C
End Function

Private Function Proc_345_20_A96378() 'A96378
  'Data Table: 499658
  loc_A962CC: FLdPr Me
  loc_A962CF: MemLdI2 global_94
  loc_A962D2: LitI2_Byte 1
  loc_A962D4: AddI2
  loc_A962D5: FLdPr Me
  loc_A962D8: MemStI2 global_94
  loc_A962DB: LitI2_Byte 0
  loc_A962DD: FLdPr Me
  loc_A962E0: MemStI2 global_96
  loc_A962E3: LitI4 0
  loc_A962E8: FLdPr Me
  loc_A962EB: MemLdI2 global_94
  loc_A962EE: CI4UI1
  loc_A962EF: FLdPr Me
  loc_A962F2: MemLdI2 global_92
  loc_A962F5: CI4UI1
  loc_A962F6: LitI4 1
  loc_A962FB: FLdPr Me
  loc_A962FE: MemLdStr global_88
  loc_A96301: Ary1LdPr
  loc_A96302: MemLdStr global_104
  loc_A96305: Ary1LdPr
  loc_A96306: MemLdRfVar from_stack_1.global_8
  loc_A96309: RedimPreserve
  loc_A96313: FLdRfVar var_88
  loc_A96316: FLdPr Me
  loc_A96319: MemLdRfVar from_stack_1.global_80
  loc_A9631C: NewIfNullPr clsdetabole
  loc_A9631F: from_stack_1 = clsdetabole.PeriCtct
  loc_A96324: LitI2_Byte 0
  loc_A96326: LitVar_Missing var_C4
  loc_A96329: LitI2_Byte 0
  loc_A9632B: ILdRf var_88
  loc_A9632E: CVarI4
  loc_A96332: PopAdLdVar
  loc_A96333: FLdPr Me
  loc_A96336: MemLdI2 global_94
  loc_A96339: CI4UI1
  loc_A9633A: FLdPr Me
  loc_A9633D: MemLdI2 global_92
  loc_A96340: CI4UI1
  loc_A96341: LitI4 1
  loc_A96346: FLdPr Me
  loc_A96349: MemLdStr global_88
  loc_A9634C: AryLock
  loc_A9634F: Ary1LdPr
  loc_A96350: MemLdStr global_104
  loc_A96353: AryLock
  loc_A96356: Ary1LdPr
  loc_A96357: MemLdStr global_8
  loc_A9635A: AryLock
  loc_A9635D: Ary1LdPr
  loc_A9635E: MemLdRfVar from_stack_1.global_0
  loc_A96361: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_A96366: AryUnlock
  loc_A96369: AryUnlock
  loc_A9636C: AryUnlock
  loc_A9636F: FFree1Var var_C4 = ""
  loc_A96372: Call Proc_345_21_B17B14()
  loc_A96377: ExitProcHresult
End Function

Private Function Proc_345_21_B17B14() 'B17B14
  'Data Table: 499658
  loc_B1789C: FLdPr Me
  loc_B1789F: MemLdI2 global_96
  loc_B178A2: LitI2_Byte 1
  loc_B178A4: AddI2
  loc_B178A5: FLdPr Me
  loc_B178A8: MemStI2 global_96
  loc_B178AB: LitI4 0
  loc_B178B0: FLdPr Me
  loc_B178B3: MemLdI2 global_96
  loc_B178B6: CI4UI1
  loc_B178B7: FLdPr Me
  loc_B178BA: MemLdI2 global_94
  loc_B178BD: CI4UI1
  loc_B178BE: FLdPr Me
  loc_B178C1: MemLdI2 global_92
  loc_B178C4: CI4UI1
  loc_B178C5: LitI4 1
  loc_B178CA: FLdPr Me
  loc_B178CD: MemLdStr global_88
  loc_B178D0: Ary1LdPr
  loc_B178D1: MemLdStr global_104
  loc_B178D4: Ary1LdPr
  loc_B178D5: MemLdStr global_8
  loc_B178D8: Ary1LdPr
  loc_B178D9: MemLdRfVar from_stack_1.global_4
  loc_B178DC: RedimPreserve
  loc_B178E6: FLdPr Me
  loc_B178E9: MemLdI2 global_96
  loc_B178EC: CI4UI1
  loc_B178ED: FLdPr Me
  loc_B178F0: MemLdI2 global_94
  loc_B178F3: CI4UI1
  loc_B178F4: FLdPr Me
  loc_B178F7: MemLdI2 global_92
  loc_B178FA: CI4UI1
  loc_B178FB: LitI4 1
  loc_B17900: FLdPr Me
  loc_B17903: MemLdStr global_88
  loc_B17906: AryLock
  loc_B17909: Ary1LdPr
  loc_B1790A: MemLdStr global_104
  loc_B1790D: AryLock
  loc_B17910: Ary1LdPr
  loc_B17911: MemLdStr global_8
  loc_B17914: AryLock
  loc_B17917: Ary1LdPr
  loc_B17918: MemLdStr global_4
  loc_B1791B: AryLock
  loc_B1791E: Ary1LdRf
  loc_B1791F: FStR4 var_98
  loc_B17922: FLdRfVar var_9A
  loc_B17925: FLdPr Me
  loc_B17928: MemLdRfVar from_stack_1.global_80
  loc_B1792B: NewIfNullPr clsdetabole
  loc_B1792E: from_stack_1 = clsdetabole.BimeCtct
  loc_B17933: LitI2_Byte 0
  loc_B17935: LitVar_Missing var_CC
  loc_B17938: LitI2_Byte 0
  loc_B1793A: FLdI2 var_9A
  loc_B1793D: CVarI2 var_AC
  loc_B17940: PopAdLdVar
  loc_B17941: FMemLdRf 0
  loc_B17946: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B1794B: FFree1Var var_CC = ""
  loc_B1794E: FLdRfVar var_D0
  loc_B17951: FLdPr Me
  loc_B17954: MemLdRfVar from_stack_1.global_80
  loc_B17957: NewIfNullPr clsdetabole
  loc_B1795A: from_stack_1 = clsdetabole.CodiFapa
  loc_B1795F: LitI2_Byte 0
  loc_B17961: LitVar_Missing var_CC
  loc_B17964: LitI2_Byte 0
  loc_B17966: ILdRf var_D0
  loc_B17969: CVarI4
  loc_B1796D: PopAdLdVar
  loc_B1796E: FMemLdRf 0
  loc_B17973: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B17978: FFree1Var var_CC = ""
  loc_B1797B: FLdRfVar var_9A
  loc_B1797E: FLdPr Me
  loc_B17981: MemLdRfVar from_stack_1.global_80
  loc_B17984: NewIfNullPr clsdetabole
  loc_B17987: from_stack_1 = clsdetabole.CuotDefa
  loc_B1798C: LitI2_Byte 0
  loc_B1798E: LitVar_Missing var_CC
  loc_B17991: LitI2_Byte 0
  loc_B17993: FLdI2 var_9A
  loc_B17996: CVarI2 var_AC
  loc_B17999: PopAdLdVar
  loc_B1799A: FMemLdRf 0
  loc_B1799F: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B179A4: FFree1Var var_CC = ""
  loc_B179A7: FLdRfVar var_D8
  loc_B179AA: FLdPr Me
  loc_B179AD: MemLdRfVar from_stack_1.global_80
  loc_B179B0: NewIfNullPr clsdetabole
  loc_B179B3: from_stack_1 = clsdetabole.CapiDebo
  loc_B179B8: LitI2_Byte 0
  loc_B179BA: LitI4 1
  loc_B179BF: FLdPr Me
  loc_B179C2: MemLdStr global_108
  loc_B179C5: AryLock
  loc_B179C8: Ary1LdPr
  loc_B179C9: MemLdRfVar from_stack_1.global_12
  loc_B179CC: CVarRef
  loc_B179D1: LitI2_Byte &HFF
  loc_B179D3: FLdFPR8 var_D8
  loc_B179D6: CVarR8
  loc_B179DA: PopAdLdVar
  loc_B179DB: FMemLdRf 0
  loc_B179E0: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B179E5: AryUnlock
  loc_B179E8: FLdRfVar var_D8
  loc_B179EB: FLdPr Me
  loc_B179EE: MemLdRfVar from_stack_1.global_80
  loc_B179F1: NewIfNullPr clsdetabole
  loc_B179F4: from_stack_1 = clsdetabole.RecaDebo
  loc_B179F9: LitI2_Byte 0
  loc_B179FB: LitI4 1
  loc_B17A00: FLdPr Me
  loc_B17A03: MemLdStr global_108
  loc_B17A06: AryLock
  loc_B17A09: Ary1LdPr
  loc_B17A0A: MemLdRfVar from_stack_1.global_16
  loc_B17A0D: CVarRef
  loc_B17A12: LitI2_Byte &HFF
  loc_B17A14: FLdFPR8 var_D8
  loc_B17A17: CVarR8
  loc_B17A1B: PopAdLdVar
  loc_B17A1C: FMemLdRf 0
  loc_B17A21: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B17A26: AryUnlock
  loc_B17A29: FLdRfVar var_D8
  loc_B17A2C: FLdPr Me
  loc_B17A2F: MemLdRfVar from_stack_1.global_80
  loc_B17A32: NewIfNullPr clsdetabole
  loc_B17A35: from_stack_1 = clsdetabole.InteDebo
  loc_B17A3A: LitI2_Byte 0
  loc_B17A3C: LitI4 1
  loc_B17A41: FLdPr Me
  loc_B17A44: MemLdStr global_108
  loc_B17A47: AryLock
  loc_B17A4A: Ary1LdPr
  loc_B17A4B: MemLdRfVar from_stack_1.global_20
  loc_B17A4E: CVarRef
  loc_B17A53: LitI2_Byte &HFF
  loc_B17A55: FLdFPR8 var_D8
  loc_B17A58: CVarR8
  loc_B17A5C: PopAdLdVar
  loc_B17A5D: FMemLdRf 0
  loc_B17A62: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B17A67: AryUnlock
  loc_B17A6A: FLdRfVar var_D8
  loc_B17A6D: FLdPr Me
  loc_B17A70: MemLdRfVar from_stack_1.global_80
  loc_B17A73: NewIfNullPr clsdetabole
  loc_B17A76: from_stack_1 = clsdetabole.DescDebo
  loc_B17A7B: LitI2_Byte 0
  loc_B17A7D: LitI4 1
  loc_B17A82: FLdPr Me
  loc_B17A85: MemLdStr global_108
  loc_B17A88: AryLock
  loc_B17A8B: Ary1LdPr
  loc_B17A8C: MemLdRfVar from_stack_1.global_24
  loc_B17A8F: CVarRef
  loc_B17A94: LitI2_Byte &HFF
  loc_B17A96: FLdFPR8 var_D8
  loc_B17A99: CVarR8
  loc_B17A9D: PopAdLdVar
  loc_B17A9E: FMemLdRf 0
  loc_B17AA3: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B17AA8: AryUnlock
  loc_B17AAB: FLdRfVar var_D8
  loc_B17AAE: FLdPr Me
  loc_B17AB1: MemLdRfVar from_stack_1.global_80
  loc_B17AB4: NewIfNullPr clsdetabole
  loc_B17AB7: from_stack_1 = clsdetabole.TotaDebo
  loc_B17ABC: LitI2_Byte 0
  loc_B17ABE: LitI4 1
  loc_B17AC3: FLdPr Me
  loc_B17AC6: MemLdStr global_108
  loc_B17AC9: AryLock
  loc_B17ACC: Ary1LdPr
  loc_B17ACD: MemLdRfVar from_stack_1.global_28
  loc_B17AD0: CVarRef
  loc_B17AD5: LitI2_Byte &HFF
  loc_B17AD7: FLdFPR8 var_D8
  loc_B17ADA: CVarR8
  loc_B17ADE: PopAdLdVar
  loc_B17ADF: FMemLdRf 0
  loc_B17AE4: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B17AE9: AryUnlock
  loc_B17AEC: LitI4 0
  loc_B17AF1: FStR4 var_98
  loc_B17AF4: AryUnlock
  loc_B17AF7: AryUnlock
  loc_B17AFA: AryUnlock
  loc_B17AFD: AryUnlock
  loc_B17B00: LitI2_Byte 1
  loc_B17B02: PopTmpLdAd2 var_9A
  loc_B17B05: FLdPr Me
  loc_B17B08: MemLdRfVar from_stack_1.global_80
  loc_B17B0B: NewIfNullPr clsdetabole
  loc_B17B0E: Call clsdetabole.Move(from_stack_1v)
  loc_B17B13: ExitProcHresult
End Function

Private Function Proc_345_22_C6DB4C() 'C6DB4C
  'Data Table: 499658
  loc_C6C9CC: LitVarStr var_94, "<!DOCTYPE html PUBLIC ""-//W3C//DTD XHTML 1.0 Transitional//EN"" ""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"">"
  loc_C6C9D1: PopAdLdVar
  loc_C6C9D2: FLdPr Me
  loc_C6C9D5: MemLdRfVar from_stack_1.global_60
  loc_C6C9D8: LdPrVar
  loc_C6C9DA: LateMemCall
  loc_C6C9E0: LitVarStr var_94, "<html xmlns=""http://www.w3.org/1999/xhtml"">"
  loc_C6C9E5: PopAdLdVar
  loc_C6C9E6: FLdPr Me
  loc_C6C9E9: MemLdRfVar from_stack_1.global_60
  loc_C6C9EC: LdPrVar
  loc_C6C9EE: LateMemCall
  loc_C6C9F4: LitVarStr var_94, "<head>"
  loc_C6C9F9: PopAdLdVar
  loc_C6C9FA: FLdPr Me
  loc_C6C9FD: MemLdRfVar from_stack_1.global_60
  loc_C6CA00: LdPrVar
  loc_C6CA02: LateMemCall
  loc_C6CA08: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_C6CA0D: PopAdLdVar
  loc_C6CA0E: FLdPr Me
  loc_C6CA11: MemLdRfVar from_stack_1.global_60
  loc_C6CA14: LdPrVar
  loc_C6CA16: LateMemCall
  loc_C6CA1C: LitStr "<title>"
  loc_C6CA1F: FLdRfVar var_A8
  loc_C6CA22: FLdPr Me
  loc_C6CA25:  = Me.Caption
  loc_C6CA2A: ILdRf var_A8
  loc_C6CA2D: ConcatStr
  loc_C6CA2E: FStStrNoPop var_AC
  loc_C6CA31: LitStr "</title>"
  loc_C6CA34: ConcatStr
  loc_C6CA35: CVarStr var_BC
  loc_C6CA38: PopAdLdVar
  loc_C6CA39: FLdPr Me
  loc_C6CA3C: MemLdRfVar from_stack_1.global_60
  loc_C6CA3F: LdPrVar
  loc_C6CA41: LateMemCall
  loc_C6CA47: FFreeStr var_A8 = ""
  loc_C6CA4E: FFree1Var var_BC = ""
  loc_C6CA51: LitVarStr var_94, "<style type=""text/css"">"
  loc_C6CA56: PopAdLdVar
  loc_C6CA57: FLdPr Me
  loc_C6CA5A: MemLdRfVar from_stack_1.global_60
  loc_C6CA5D: LdPrVar
  loc_C6CA5F: LateMemCall
  loc_C6CA65: LitVarStr var_94, ".Titulo1 {"
  loc_C6CA6A: PopAdLdVar
  loc_C6CA6B: FLdPr Me
  loc_C6CA6E: MemLdRfVar from_stack_1.global_60
  loc_C6CA71: LdPrVar
  loc_C6CA73: LateMemCall
  loc_C6CA79: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C6CA7E: PopAdLdVar
  loc_C6CA7F: FLdPr Me
  loc_C6CA82: MemLdRfVar from_stack_1.global_60
  loc_C6CA85: LdPrVar
  loc_C6CA87: LateMemCall
  loc_C6CA8D: LitVarStr var_94, " font-size: 18px;"
  loc_C6CA92: PopAdLdVar
  loc_C6CA93: FLdPr Me
  loc_C6CA96: MemLdRfVar from_stack_1.global_60
  loc_C6CA99: LdPrVar
  loc_C6CA9B: LateMemCall
  loc_C6CAA1: LitVarStr var_94, " font-weight: bold;"
  loc_C6CAA6: PopAdLdVar
  loc_C6CAA7: FLdPr Me
  loc_C6CAAA: MemLdRfVar from_stack_1.global_60
  loc_C6CAAD: LdPrVar
  loc_C6CAAF: LateMemCall
  loc_C6CAB5: LitVarStr var_94, "}"
  loc_C6CABA: PopAdLdVar
  loc_C6CABB: FLdPr Me
  loc_C6CABE: MemLdRfVar from_stack_1.global_60
  loc_C6CAC1: LdPrVar
  loc_C6CAC3: LateMemCall
  loc_C6CAC9: LitVarStr var_94, ".Titulo2 {"
  loc_C6CACE: PopAdLdVar
  loc_C6CACF: FLdPr Me
  loc_C6CAD2: MemLdRfVar from_stack_1.global_60
  loc_C6CAD5: LdPrVar
  loc_C6CAD7: LateMemCall
  loc_C6CADD: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C6CAE2: PopAdLdVar
  loc_C6CAE3: FLdPr Me
  loc_C6CAE6: MemLdRfVar from_stack_1.global_60
  loc_C6CAE9: LdPrVar
  loc_C6CAEB: LateMemCall
  loc_C6CAF1: LitVarStr var_94, " font-size: 14px;"
  loc_C6CAF6: PopAdLdVar
  loc_C6CAF7: FLdPr Me
  loc_C6CAFA: MemLdRfVar from_stack_1.global_60
  loc_C6CAFD: LdPrVar
  loc_C6CAFF: LateMemCall
  loc_C6CB05: LitVarStr var_94, " font-weight: bold;"
  loc_C6CB0A: PopAdLdVar
  loc_C6CB0B: FLdPr Me
  loc_C6CB0E: MemLdRfVar from_stack_1.global_60
  loc_C6CB11: LdPrVar
  loc_C6CB13: LateMemCall
  loc_C6CB19: LitVarStr var_94, "}"
  loc_C6CB1E: PopAdLdVar
  loc_C6CB1F: FLdPr Me
  loc_C6CB22: MemLdRfVar from_stack_1.global_60
  loc_C6CB25: LdPrVar
  loc_C6CB27: LateMemCall
  loc_C6CB2D: LitVarStr var_94, ".Normal {"
  loc_C6CB32: PopAdLdVar
  loc_C6CB33: FLdPr Me
  loc_C6CB36: MemLdRfVar from_stack_1.global_60
  loc_C6CB39: LdPrVar
  loc_C6CB3B: LateMemCall
  loc_C6CB41: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C6CB46: PopAdLdVar
  loc_C6CB47: FLdPr Me
  loc_C6CB4A: MemLdRfVar from_stack_1.global_60
  loc_C6CB4D: LdPrVar
  loc_C6CB4F: LateMemCall
  loc_C6CB55: LitVarStr var_94, " font-size: 11px;"
  loc_C6CB5A: PopAdLdVar
  loc_C6CB5B: FLdPr Me
  loc_C6CB5E: MemLdRfVar from_stack_1.global_60
  loc_C6CB61: LdPrVar
  loc_C6CB63: LateMemCall
  loc_C6CB69: LitVarStr var_94, " vertical-align: top;"
  loc_C6CB6E: PopAdLdVar
  loc_C6CB6F: FLdPr Me
  loc_C6CB72: MemLdRfVar from_stack_1.global_60
  loc_C6CB75: LdPrVar
  loc_C6CB77: LateMemCall
  loc_C6CB7D: LitVarStr var_94, "}"
  loc_C6CB82: PopAdLdVar
  loc_C6CB83: FLdPr Me
  loc_C6CB86: MemLdRfVar from_stack_1.global_60
  loc_C6CB89: LdPrVar
  loc_C6CB8B: LateMemCall
  loc_C6CB91: LitVarStr var_94, ".Encabezado {"
  loc_C6CB96: PopAdLdVar
  loc_C6CB97: FLdPr Me
  loc_C6CB9A: MemLdRfVar from_stack_1.global_60
  loc_C6CB9D: LdPrVar
  loc_C6CB9F: LateMemCall
  loc_C6CBA5: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_C6CBAA: PopAdLdVar
  loc_C6CBAB: FLdPr Me
  loc_C6CBAE: MemLdRfVar from_stack_1.global_60
  loc_C6CBB1: LdPrVar
  loc_C6CBB3: LateMemCall
  loc_C6CBB9: LitVarStr var_94, " font-size: 11px;"
  loc_C6CBBE: PopAdLdVar
  loc_C6CBBF: FLdPr Me
  loc_C6CBC2: MemLdRfVar from_stack_1.global_60
  loc_C6CBC5: LdPrVar
  loc_C6CBC7: LateMemCall
  loc_C6CBCD: LitVarStr var_94, " font-weight: bold;"
  loc_C6CBD2: PopAdLdVar
  loc_C6CBD3: FLdPr Me
  loc_C6CBD6: MemLdRfVar from_stack_1.global_60
  loc_C6CBD9: LdPrVar
  loc_C6CBDB: LateMemCall
  loc_C6CBE1: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_C6CBE6: PopAdLdVar
  loc_C6CBE7: FLdPr Me
  loc_C6CBEA: MemLdRfVar from_stack_1.global_60
  loc_C6CBED: LdPrVar
  loc_C6CBEF: LateMemCall
  loc_C6CBF5: LitVarStr var_94, "}"
  loc_C6CBFA: PopAdLdVar
  loc_C6CBFB: FLdPr Me
  loc_C6CBFE: MemLdRfVar from_stack_1.global_60
  loc_C6CC01: LdPrVar
  loc_C6CC03: LateMemCall
  loc_C6CC09: LitVarStr var_94, ".LineaDato {"
  loc_C6CC0E: PopAdLdVar
  loc_C6CC0F: FLdPr Me
  loc_C6CC12: MemLdRfVar from_stack_1.global_60
  loc_C6CC15: LdPrVar
  loc_C6CC17: LateMemCall
  loc_C6CC1D: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C6CC22: PopAdLdVar
  loc_C6CC23: FLdPr Me
  loc_C6CC26: MemLdRfVar from_stack_1.global_60
  loc_C6CC29: LdPrVar
  loc_C6CC2B: LateMemCall
  loc_C6CC31: LitVarStr var_94, " font-size: 10px;"
  loc_C6CC36: PopAdLdVar
  loc_C6CC37: FLdPr Me
  loc_C6CC3A: MemLdRfVar from_stack_1.global_60
  loc_C6CC3D: LdPrVar
  loc_C6CC3F: LateMemCall
  loc_C6CC45: LitVarStr var_94, "}"
  loc_C6CC4A: PopAdLdVar
  loc_C6CC4B: FLdPr Me
  loc_C6CC4E: MemLdRfVar from_stack_1.global_60
  loc_C6CC51: LdPrVar
  loc_C6CC53: LateMemCall
  loc_C6CC59: LitVarStr var_94, ".Totales {"
  loc_C6CC5E: PopAdLdVar
  loc_C6CC5F: FLdPr Me
  loc_C6CC62: MemLdRfVar from_stack_1.global_60
  loc_C6CC65: LdPrVar
  loc_C6CC67: LateMemCall
  loc_C6CC6D: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C6CC72: PopAdLdVar
  loc_C6CC73: FLdPr Me
  loc_C6CC76: MemLdRfVar from_stack_1.global_60
  loc_C6CC79: LdPrVar
  loc_C6CC7B: LateMemCall
  loc_C6CC81: LitVarStr var_94, " font-size: 12px;"
  loc_C6CC86: PopAdLdVar
  loc_C6CC87: FLdPr Me
  loc_C6CC8A: MemLdRfVar from_stack_1.global_60
  loc_C6CC8D: LdPrVar
  loc_C6CC8F: LateMemCall
  loc_C6CC95: LitVarStr var_94, " font-weight: bold;"
  loc_C6CC9A: PopAdLdVar
  loc_C6CC9B: FLdPr Me
  loc_C6CC9E: MemLdRfVar from_stack_1.global_60
  loc_C6CCA1: LdPrVar
  loc_C6CCA3: LateMemCall
  loc_C6CCA9: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_C6CCAE: PopAdLdVar
  loc_C6CCAF: FLdPr Me
  loc_C6CCB2: MemLdRfVar from_stack_1.global_60
  loc_C6CCB5: LdPrVar
  loc_C6CCB7: LateMemCall
  loc_C6CCBD: LitVarStr var_94, "}"
  loc_C6CCC2: PopAdLdVar
  loc_C6CCC3: FLdPr Me
  loc_C6CCC6: MemLdRfVar from_stack_1.global_60
  loc_C6CCC9: LdPrVar
  loc_C6CCCB: LateMemCall
  loc_C6CCD1: LitVarStr var_94, ".Total {"
  loc_C6CCD6: PopAdLdVar
  loc_C6CCD7: FLdPr Me
  loc_C6CCDA: MemLdRfVar from_stack_1.global_60
  loc_C6CCDD: LdPrVar
  loc_C6CCDF: LateMemCall
  loc_C6CCE5: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C6CCEA: PopAdLdVar
  loc_C6CCEB: FLdPr Me
  loc_C6CCEE: MemLdRfVar from_stack_1.global_60
  loc_C6CCF1: LdPrVar
  loc_C6CCF3: LateMemCall
  loc_C6CCF9: LitVarStr var_94, " font-size: 12px;"
  loc_C6CCFE: PopAdLdVar
  loc_C6CCFF: FLdPr Me
  loc_C6CD02: MemLdRfVar from_stack_1.global_60
  loc_C6CD05: LdPrVar
  loc_C6CD07: LateMemCall
  loc_C6CD0D: LitVarStr var_94, " font-weight: bold;"
  loc_C6CD12: PopAdLdVar
  loc_C6CD13: FLdPr Me
  loc_C6CD16: MemLdRfVar from_stack_1.global_60
  loc_C6CD19: LdPrVar
  loc_C6CD1B: LateMemCall
  loc_C6CD21: LitVarStr var_94, " background-color: #EBEBEB;"
  loc_C6CD26: PopAdLdVar
  loc_C6CD27: FLdPr Me
  loc_C6CD2A: MemLdRfVar from_stack_1.global_60
  loc_C6CD2D: LdPrVar
  loc_C6CD2F: LateMemCall
  loc_C6CD35: LitVarStr var_94, "}"
  loc_C6CD3A: PopAdLdVar
  loc_C6CD3B: FLdPr Me
  loc_C6CD3E: MemLdRfVar from_stack_1.global_60
  loc_C6CD41: LdPrVar
  loc_C6CD43: LateMemCall
  loc_C6CD49: LitVarStr var_94, ".TotalGeneral {"
  loc_C6CD4E: PopAdLdVar
  loc_C6CD4F: FLdPr Me
  loc_C6CD52: MemLdRfVar from_stack_1.global_60
  loc_C6CD55: LdPrVar
  loc_C6CD57: LateMemCall
  loc_C6CD5D: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C6CD62: PopAdLdVar
  loc_C6CD63: FLdPr Me
  loc_C6CD66: MemLdRfVar from_stack_1.global_60
  loc_C6CD69: LdPrVar
  loc_C6CD6B: LateMemCall
  loc_C6CD71: LitVarStr var_94, " font-size: 14px;"
  loc_C6CD76: PopAdLdVar
  loc_C6CD77: FLdPr Me
  loc_C6CD7A: MemLdRfVar from_stack_1.global_60
  loc_C6CD7D: LdPrVar
  loc_C6CD7F: LateMemCall
  loc_C6CD85: LitVarStr var_94, " vertical-align: top;"
  loc_C6CD8A: PopAdLdVar
  loc_C6CD8B: FLdPr Me
  loc_C6CD8E: MemLdRfVar from_stack_1.global_60
  loc_C6CD91: LdPrVar
  loc_C6CD93: LateMemCall
  loc_C6CD99: LitVarStr var_94, " background-color: #EBEBEB;"
  loc_C6CD9E: PopAdLdVar
  loc_C6CD9F: FLdPr Me
  loc_C6CDA2: MemLdRfVar from_stack_1.global_60
  loc_C6CDA5: LdPrVar
  loc_C6CDA7: LateMemCall
  loc_C6CDAD: LitVarStr var_94, " font-weight: bold;"
  loc_C6CDB2: PopAdLdVar
  loc_C6CDB3: FLdPr Me
  loc_C6CDB6: MemLdRfVar from_stack_1.global_60
  loc_C6CDB9: LdPrVar
  loc_C6CDBB: LateMemCall
  loc_C6CDC1: LitVarStr var_94, " border: 1px solid #000000;"
  loc_C6CDC6: PopAdLdVar
  loc_C6CDC7: FLdPr Me
  loc_C6CDCA: MemLdRfVar from_stack_1.global_60
  loc_C6CDCD: LdPrVar
  loc_C6CDCF: LateMemCall
  loc_C6CDD5: LitVarStr var_94, "}"
  loc_C6CDDA: PopAdLdVar
  loc_C6CDDB: FLdPr Me
  loc_C6CDDE: MemLdRfVar from_stack_1.global_60
  loc_C6CDE1: LdPrVar
  loc_C6CDE3: LateMemCall
  loc_C6CDE9: LitVarStr var_94, ".SubTotales {"
  loc_C6CDEE: PopAdLdVar
  loc_C6CDEF: FLdPr Me
  loc_C6CDF2: MemLdRfVar from_stack_1.global_60
  loc_C6CDF5: LdPrVar
  loc_C6CDF7: LateMemCall
  loc_C6CDFD: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C6CE02: PopAdLdVar
  loc_C6CE03: FLdPr Me
  loc_C6CE06: MemLdRfVar from_stack_1.global_60
  loc_C6CE09: LdPrVar
  loc_C6CE0B: LateMemCall
  loc_C6CE11: LitVarStr var_94, " font-size: 10px;"
  loc_C6CE16: PopAdLdVar
  loc_C6CE17: FLdPr Me
  loc_C6CE1A: MemLdRfVar from_stack_1.global_60
  loc_C6CE1D: LdPrVar
  loc_C6CE1F: LateMemCall
  loc_C6CE25: LitVarStr var_94, " font-weight: bold;"
  loc_C6CE2A: PopAdLdVar
  loc_C6CE2B: FLdPr Me
  loc_C6CE2E: MemLdRfVar from_stack_1.global_60
  loc_C6CE31: LdPrVar
  loc_C6CE33: LateMemCall
  loc_C6CE39: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_C6CE3E: PopAdLdVar
  loc_C6CE3F: FLdPr Me
  loc_C6CE42: MemLdRfVar from_stack_1.global_60
  loc_C6CE45: LdPrVar
  loc_C6CE47: LateMemCall
  loc_C6CE4D: LitVarStr var_94, "}"
  loc_C6CE52: PopAdLdVar
  loc_C6CE53: FLdPr Me
  loc_C6CE56: MemLdRfVar from_stack_1.global_60
  loc_C6CE59: LdPrVar
  loc_C6CE5B: LateMemCall
  loc_C6CE61: LitVarStr var_94, ".Encabezado1 {font-family: ""Times New Roman"", Times, serif;"
  loc_C6CE66: PopAdLdVar
  loc_C6CE67: FLdPr Me
  loc_C6CE6A: MemLdRfVar from_stack_1.global_60
  loc_C6CE6D: LdPrVar
  loc_C6CE6F: LateMemCall
  loc_C6CE75: LitVarStr var_94, " font-size: 13px;"
  loc_C6CE7A: PopAdLdVar
  loc_C6CE7B: FLdPr Me
  loc_C6CE7E: MemLdRfVar from_stack_1.global_60
  loc_C6CE81: LdPrVar
  loc_C6CE83: LateMemCall
  loc_C6CE89: LitVarStr var_94, " font-weight: bold;"
  loc_C6CE8E: PopAdLdVar
  loc_C6CE8F: FLdPr Me
  loc_C6CE92: MemLdRfVar from_stack_1.global_60
  loc_C6CE95: LdPrVar
  loc_C6CE97: LateMemCall
  loc_C6CE9D: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_C6CEA2: PopAdLdVar
  loc_C6CEA3: FLdPr Me
  loc_C6CEA6: MemLdRfVar from_stack_1.global_60
  loc_C6CEA9: LdPrVar
  loc_C6CEAB: LateMemCall
  loc_C6CEB1: LitVarStr var_94, "}"
  loc_C6CEB6: PopAdLdVar
  loc_C6CEB7: FLdPr Me
  loc_C6CEBA: MemLdRfVar from_stack_1.global_60
  loc_C6CEBD: LdPrVar
  loc_C6CEBF: LateMemCall
  loc_C6CEC5: LitVarStr var_94, ".Normal1 { font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C6CECA: PopAdLdVar
  loc_C6CECB: FLdPr Me
  loc_C6CECE: MemLdRfVar from_stack_1.global_60
  loc_C6CED1: LdPrVar
  loc_C6CED3: LateMemCall
  loc_C6CED9: LitVarStr var_94, " font-size: 11px;"
  loc_C6CEDE: PopAdLdVar
  loc_C6CEDF: FLdPr Me
  loc_C6CEE2: MemLdRfVar from_stack_1.global_60
  loc_C6CEE5: LdPrVar
  loc_C6CEE7: LateMemCall
  loc_C6CEED: LitVarStr var_94, " font-style: normal;"
  loc_C6CEF2: PopAdLdVar
  loc_C6CEF3: FLdPr Me
  loc_C6CEF6: MemLdRfVar from_stack_1.global_60
  loc_C6CEF9: LdPrVar
  loc_C6CEFB: LateMemCall
  loc_C6CF01: LitVarStr var_94, " font-weight: normal;"
  loc_C6CF06: PopAdLdVar
  loc_C6CF07: FLdPr Me
  loc_C6CF0A: MemLdRfVar from_stack_1.global_60
  loc_C6CF0D: LdPrVar
  loc_C6CF0F: LateMemCall
  loc_C6CF15: LitVarStr var_94, " font-variant: normal;"
  loc_C6CF1A: PopAdLdVar
  loc_C6CF1B: FLdPr Me
  loc_C6CF1E: MemLdRfVar from_stack_1.global_60
  loc_C6CF21: LdPrVar
  loc_C6CF23: LateMemCall
  loc_C6CF29: LitVarStr var_94, "}"
  loc_C6CF2E: PopAdLdVar
  loc_C6CF2F: FLdPr Me
  loc_C6CF32: MemLdRfVar from_stack_1.global_60
  loc_C6CF35: LdPrVar
  loc_C6CF37: LateMemCall
  loc_C6CF3D: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_C6CF42: PopAdLdVar
  loc_C6CF43: FLdPr Me
  loc_C6CF46: MemLdRfVar from_stack_1.global_60
  loc_C6CF49: LdPrVar
  loc_C6CF4B: LateMemCall
  loc_C6CF51: LitVarStr var_94, "</style>"
  loc_C6CF56: PopAdLdVar
  loc_C6CF57: FLdPr Me
  loc_C6CF5A: MemLdRfVar from_stack_1.global_60
  loc_C6CF5D: LdPrVar
  loc_C6CF5F: LateMemCall
  loc_C6CF65: LitI4 0
  loc_C6CF6A: FStStrCopy var_AC
  loc_C6CF6D: FLdRfVar var_AC
  loc_C6CF70: LitI4 0
  loc_C6CF75: FStStrCopy var_A8
  loc_C6CF78: FLdRfVar var_A8
  loc_C6CF7B: LitI2_Byte 0
  loc_C6CF7D: PopTmpLdAd2 var_BE
  loc_C6CF80: FLdPr Me
  loc_C6CF83: MemLdRfVar from_stack_1.global_60
  loc_C6CF86: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_C6CF8B: FFreeStr var_A8 = ""
  loc_C6CF92: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_C6CF97: PopAdLdVar
  loc_C6CF98: FLdPr Me
  loc_C6CF9B: MemLdRfVar from_stack_1.global_60
  loc_C6CF9E: LdPrVar
  loc_C6CFA0: LateMemCall
  loc_C6CFA6: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_C6CFAB: PopAdLdVar
  loc_C6CFAC: FLdPr Me
  loc_C6CFAF: MemLdRfVar from_stack_1.global_60
  loc_C6CFB2: LdPrVar
  loc_C6CFB4: LateMemCall
  loc_C6CFBA: LitStr "    <th width=""100" & Chr(37) & """ align=""center"" valign=""middle""><p><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_C6CFBD: LitI2_Byte &H5F
  loc_C6CFBF: CStrUI1
  loc_C6CFC1: FStStrNoPop var_A8
  loc_C6CFC4: ConcatStr
  loc_C6CFC5: FStStrNoPop var_AC
  loc_C6CFC8: LitStr """ height="""
  loc_C6CFCB: ConcatStr
  loc_C6CFCC: FStStrNoPop var_C4
  loc_C6CFCF: LitI2_Byte &H3C
  loc_C6CFD1: CStrUI1
  loc_C6CFD3: FStStrNoPop var_C8
  loc_C6CFD6: ConcatStr
  loc_C6CFD7: FStStrNoPop var_CC
  loc_C6CFDA: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_C6CFDD: ConcatStr
  loc_C6CFDE: FStStrNoPop var_D0
  loc_C6CFE1: LitStr "Municipalidad de Guaymallén"
  loc_C6CFE4: ConcatStr
  loc_C6CFE5: FStStrNoPop var_D4
  loc_C6CFE8: LitStr "</p>"
  loc_C6CFEB: ConcatStr
  loc_C6CFEC: CVarStr var_BC
  loc_C6CFEF: PopAdLdVar
  loc_C6CFF0: FLdPr Me
  loc_C6CFF3: MemLdRfVar from_stack_1.global_60
  loc_C6CFF6: LdPrVar
  loc_C6CFF8: LateMemCall
  loc_C6CFFE: FFreeStr var_A8 = "": var_AC = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_C6D00F: FFree1Var var_BC = ""
  loc_C6D012: LitStr "    <p>"
  loc_C6D015: FLdRfVar var_A8
  loc_C6D018: FLdPr Me
  loc_C6D01B:  = Me.Caption
  loc_C6D020: ILdRf var_A8
  loc_C6D023: ConcatStr
  loc_C6D024: FStStrNoPop var_AC
  loc_C6D027: LitStr "</p></th>"
  loc_C6D02A: ConcatStr
  loc_C6D02B: CVarStr var_BC
  loc_C6D02E: PopAdLdVar
  loc_C6D02F: FLdPr Me
  loc_C6D032: MemLdRfVar from_stack_1.global_60
  loc_C6D035: LdPrVar
  loc_C6D037: LateMemCall
  loc_C6D03D: FFreeStr var_A8 = ""
  loc_C6D044: FFree1Var var_BC = ""
  loc_C6D047: LitVarStr var_94, "  </tr>"
  loc_C6D04C: PopAdLdVar
  loc_C6D04D: FLdPr Me
  loc_C6D050: MemLdRfVar from_stack_1.global_60
  loc_C6D053: LdPrVar
  loc_C6D055: LateMemCall
  loc_C6D05B: LitVarStr var_94, "  <tr>"
  loc_C6D060: PopAdLdVar
  loc_C6D061: FLdPr Me
  loc_C6D064: MemLdRfVar from_stack_1.global_60
  loc_C6D067: LdPrVar
  loc_C6D069: LateMemCall
  loc_C6D06F: LitVarStr var_94, "    <th><hr></th>"
  loc_C6D074: PopAdLdVar
  loc_C6D075: FLdPr Me
  loc_C6D078: MemLdRfVar from_stack_1.global_60
  loc_C6D07B: LdPrVar
  loc_C6D07D: LateMemCall
  loc_C6D083: LitVarStr var_94, "  </tr>"
  loc_C6D088: PopAdLdVar
  loc_C6D089: FLdPr Me
  loc_C6D08C: MemLdRfVar from_stack_1.global_60
  loc_C6D08F: LdPrVar
  loc_C6D091: LateMemCall
  loc_C6D097: LitVarStr var_94, "  <tr valign=""top"" class=""Normal"">"
  loc_C6D09C: PopAdLdVar
  loc_C6D09D: FLdPr Me
  loc_C6D0A0: MemLdRfVar from_stack_1.global_60
  loc_C6D0A3: LdPrVar
  loc_C6D0A5: LateMemCall
  loc_C6D0AB: LitVarStr var_94, "    <td align=""left"" valign=""top""><table border=""0"" align=""left"" cellpadding=""1"" cellspacing=""4"">"
  loc_C6D0B0: PopAdLdVar
  loc_C6D0B1: FLdPr Me
  loc_C6D0B4: MemLdRfVar from_stack_1.global_60
  loc_C6D0B7: LdPrVar
  loc_C6D0B9: LateMemCall
  loc_C6D0BF: LitI4 1
  loc_C6D0C4: FLdPr Me
  loc_C6D0C7: MemLdStr global_88
  loc_C6D0CA: AryLock
  loc_C6D0CD: Ary1LdRf
  loc_C6D0CE: FStR4 var_DC
  loc_C6D0D1: LitVarStr var_94, "      <tr>"
  loc_C6D0D6: PopAdLdVar
  loc_C6D0D7: FLdPr Me
  loc_C6D0DA: MemLdRfVar from_stack_1.global_60
  loc_C6D0DD: LdPrVar
  loc_C6D0DF: LateMemCall
  loc_C6D0E5: LitVarStr var_94, "        <th width=""115"" align=""right"" valign=""top"" class=""Encabezado1"">Apellido y Nombre:</th>"
  loc_C6D0EA: PopAdLdVar
  loc_C6D0EB: FLdPr Me
  loc_C6D0EE: MemLdRfVar from_stack_1.global_60
  loc_C6D0F1: LdPrVar
  loc_C6D0F3: LateMemCall
  loc_C6D0F9: LitStr "        <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C6D0FC: FMemLdR4 var_DC(0)
  loc_C6D101: ConcatStr
  loc_C6D102: FStStrNoPop var_A8
  loc_C6D105: LitStr "</th>"
  loc_C6D108: ConcatStr
  loc_C6D109: CVarStr var_BC
  loc_C6D10C: PopAdLdVar
  loc_C6D10D: FLdPr Me
  loc_C6D110: MemLdRfVar from_stack_1.global_60
  loc_C6D113: LdPrVar
  loc_C6D115: LateMemCall
  loc_C6D11B: FFree1Str var_A8
  loc_C6D11E: FFree1Var var_BC = ""
  loc_C6D121: LitVarStr var_94, "      </tr>"
  loc_C6D126: PopAdLdVar
  loc_C6D127: FLdPr Me
  loc_C6D12A: MemLdRfVar from_stack_1.global_60
  loc_C6D12D: LdPrVar
  loc_C6D12F: LateMemCall
  loc_C6D135: LitVarStr var_94, "      <tr>"
  loc_C6D13A: PopAdLdVar
  loc_C6D13B: FLdPr Me
  loc_C6D13E: MemLdRfVar from_stack_1.global_60
  loc_C6D141: LdPrVar
  loc_C6D143: LateMemCall
  loc_C6D149: LitVarStr var_94, "        <th align=""right"" valign=""top"" class=""Encabezado1"">Domicilio:</th>"
  loc_C6D14E: PopAdLdVar
  loc_C6D14F: FLdPr Me
  loc_C6D152: MemLdRfVar from_stack_1.global_60
  loc_C6D155: LdPrVar
  loc_C6D157: LateMemCall
  loc_C6D15D: LitStr "        <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C6D160: FMemLdR4 var_DC(8)
  loc_C6D165: ConcatStr
  loc_C6D166: FStStrNoPop var_A8
  loc_C6D169: LitStr "</th>"
  loc_C6D16C: ConcatStr
  loc_C6D16D: CVarStr var_BC
  loc_C6D170: PopAdLdVar
  loc_C6D171: FLdPr Me
  loc_C6D174: MemLdRfVar from_stack_1.global_60
  loc_C6D177: LdPrVar
  loc_C6D179: LateMemCall
  loc_C6D17F: FFree1Str var_A8
  loc_C6D182: FFree1Var var_BC = ""
  loc_C6D185: LitVarStr var_94, "      </tr>"
  loc_C6D18A: PopAdLdVar
  loc_C6D18B: FLdPr Me
  loc_C6D18E: MemLdRfVar from_stack_1.global_60
  loc_C6D191: LdPrVar
  loc_C6D193: LateMemCall
  loc_C6D199: LitVarStr var_94, "      <tr>"
  loc_C6D19E: PopAdLdVar
  loc_C6D19F: FLdPr Me
  loc_C6D1A2: MemLdRfVar from_stack_1.global_60
  loc_C6D1A5: LdPrVar
  loc_C6D1A7: LateMemCall
  loc_C6D1AD: LitVarStr var_94, "        <th align=""right"" valign=""top"" class=""Encabezado1"">Periodo:</th>"
  loc_C6D1B2: PopAdLdVar
  loc_C6D1B3: FLdPr Me
  loc_C6D1B6: MemLdRfVar from_stack_1.global_60
  loc_C6D1B9: LdPrVar
  loc_C6D1BB: LateMemCall
  loc_C6D1C1: LitStr "        <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C6D1C4: FLdPr Me
  loc_C6D1C7: VCallAd Control_ID_PeriBoleMsk
  loc_C6D1CA: FStAdFunc var_E0
  loc_C6D1CD: FLdPr var_E0
  loc_C6D1D0: LateIdLdVar var_BC DispID_22 0
  loc_C6D1D7: CStrVarTmp
  loc_C6D1D8: FStStrNoPop var_A8
  loc_C6D1DB: ConcatStr
  loc_C6D1DC: FStStrNoPop var_AC
  loc_C6D1DF: LitStr "</th>"
  loc_C6D1E2: ConcatStr
  loc_C6D1E3: CVarStr var_F0
  loc_C6D1E6: PopAdLdVar
  loc_C6D1E7: FLdPr Me
  loc_C6D1EA: MemLdRfVar from_stack_1.global_60
  loc_C6D1ED: LdPrVar
  loc_C6D1EF: LateMemCall
  loc_C6D1F5: FFreeStr var_A8 = ""
  loc_C6D1FC: FFree1Ad var_E0
  loc_C6D1FF: FFreeVar var_BC = ""
  loc_C6D206: LitVarStr var_94, "      </tr>"
  loc_C6D20B: PopAdLdVar
  loc_C6D20C: FLdPr Me
  loc_C6D20F: MemLdRfVar from_stack_1.global_60
  loc_C6D212: LdPrVar
  loc_C6D214: LateMemCall
  loc_C6D21A: LitVarStr var_94, "      <tr>"
  loc_C6D21F: PopAdLdVar
  loc_C6D220: FLdPr Me
  loc_C6D223: MemLdRfVar from_stack_1.global_60
  loc_C6D226: LdPrVar
  loc_C6D228: LateMemCall
  loc_C6D22E: LitVarStr var_94, "        <th align=""right"" valign=""top"" class=""Encabezado1"">Boleto:</th>"
  loc_C6D233: PopAdLdVar
  loc_C6D234: FLdPr Me
  loc_C6D237: MemLdRfVar from_stack_1.global_60
  loc_C6D23A: LdPrVar
  loc_C6D23C: LateMemCall
  loc_C6D242: LitStr "        <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C6D245: FLdPr Me
  loc_C6D248: VCallAd Control_ID_NumeBoleMsk
  loc_C6D24B: FStAdFunc var_E0
  loc_C6D24E: FLdPr var_E0
  loc_C6D251: LateIdLdVar var_BC DispID_22 0
  loc_C6D258: CStrVarTmp
  loc_C6D259: FStStrNoPop var_A8
  loc_C6D25C: ConcatStr
  loc_C6D25D: FStStrNoPop var_AC
  loc_C6D260: LitStr "</th>"
  loc_C6D263: ConcatStr
  loc_C6D264: CVarStr var_F0
  loc_C6D267: PopAdLdVar
  loc_C6D268: FLdPr Me
  loc_C6D26B: MemLdRfVar from_stack_1.global_60
  loc_C6D26E: LdPrVar
  loc_C6D270: LateMemCall
  loc_C6D276: FFreeStr var_A8 = ""
  loc_C6D27D: FFree1Ad var_E0
  loc_C6D280: FFreeVar var_BC = ""
  loc_C6D287: LitVarStr var_94, "      </tr>"
  loc_C6D28C: PopAdLdVar
  loc_C6D28D: FLdPr Me
  loc_C6D290: MemLdRfVar from_stack_1.global_60
  loc_C6D293: LdPrVar
  loc_C6D295: LateMemCall
  loc_C6D29B: LitVarStr var_94, "      <tr>"
  loc_C6D2A0: PopAdLdVar
  loc_C6D2A1: FLdPr Me
  loc_C6D2A4: MemLdRfVar from_stack_1.global_60
  loc_C6D2A7: LdPrVar
  loc_C6D2A9: LateMemCall
  loc_C6D2AF: LitVarStr var_94, "        <th align=""right"" valign=""top"" class=""Encabezado1"">Estado:</th>"
  loc_C6D2B4: PopAdLdVar
  loc_C6D2B5: FLdPr Me
  loc_C6D2B8: MemLdRfVar from_stack_1.global_60
  loc_C6D2BB: LdPrVar
  loc_C6D2BD: LateMemCall
  loc_C6D2C3: LitStr "        <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C6D2C6: FMemLdR4 var_DC(12)
  loc_C6D2CB: ConcatStr
  loc_C6D2CC: FStStrNoPop var_A8
  loc_C6D2CF: LitStr "</th>"
  loc_C6D2D2: ConcatStr
  loc_C6D2D3: CVarStr var_BC
  loc_C6D2D6: PopAdLdVar
  loc_C6D2D7: FLdPr Me
  loc_C6D2DA: MemLdRfVar from_stack_1.global_60
  loc_C6D2DD: LdPrVar
  loc_C6D2DF: LateMemCall
  loc_C6D2E5: FFree1Str var_A8
  loc_C6D2E8: FFree1Var var_BC = ""
  loc_C6D2EB: LitVarStr var_94, "      </tr>"
  loc_C6D2F0: PopAdLdVar
  loc_C6D2F1: FLdPr Me
  loc_C6D2F4: MemLdRfVar from_stack_1.global_60
  loc_C6D2F7: LdPrVar
  loc_C6D2F9: LateMemCall
  loc_C6D2FF: LitVarStr var_94, "      <tr>"
  loc_C6D304: PopAdLdVar
  loc_C6D305: FLdPr Me
  loc_C6D308: MemLdRfVar from_stack_1.global_60
  loc_C6D30B: LdPrVar
  loc_C6D30D: LateMemCall
  loc_C6D313: LitVarStr var_94, "        <th align=""right"" valign=""top"" class=""Encabezado1"">Tipo:</th>"
  loc_C6D318: PopAdLdVar
  loc_C6D319: FLdPr Me
  loc_C6D31C: MemLdRfVar from_stack_1.global_60
  loc_C6D31F: LdPrVar
  loc_C6D321: LateMemCall
  loc_C6D327: LitStr "        <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C6D32A: FMemLdR4 var_DC(16)
  loc_C6D32F: ConcatStr
  loc_C6D330: FStStrNoPop var_A8
  loc_C6D333: LitStr "</th>"
  loc_C6D336: ConcatStr
  loc_C6D337: CVarStr var_BC
  loc_C6D33A: PopAdLdVar
  loc_C6D33B: FLdPr Me
  loc_C6D33E: MemLdRfVar from_stack_1.global_60
  loc_C6D341: LdPrVar
  loc_C6D343: LateMemCall
  loc_C6D349: FFree1Str var_A8
  loc_C6D34C: FFree1Var var_BC = ""
  loc_C6D34F: LitVarStr var_94, "      </tr>"
  loc_C6D354: PopAdLdVar
  loc_C6D355: FLdPr Me
  loc_C6D358: MemLdRfVar from_stack_1.global_60
  loc_C6D35B: LdPrVar
  loc_C6D35D: LateMemCall
  loc_C6D363: LitVarStr var_94, "      <tr>"
  loc_C6D368: PopAdLdVar
  loc_C6D369: FLdPr Me
  loc_C6D36C: MemLdRfVar from_stack_1.global_60
  loc_C6D36F: LdPrVar
  loc_C6D371: LateMemCall
  loc_C6D377: LitVarStr var_94, "        <th align=""right"" valign=""top"" class=""Encabezado1"">Emitido para:</th>"
  loc_C6D37C: PopAdLdVar
  loc_C6D37D: FLdPr Me
  loc_C6D380: MemLdRfVar from_stack_1.global_60
  loc_C6D383: LdPrVar
  loc_C6D385: LateMemCall
  loc_C6D38B: LitVarStr var_110, "        <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C6D390: LitVarStr var_A4, "&nbsp;"
  loc_C6D395: FStVarCopyObj var_F0
  loc_C6D398: FLdRfVar var_F0
  loc_C6D39B: FMemLdR4 var_DC(20)
  loc_C6D3A0: LitStr " - "
  loc_C6D3A3: ConcatStr
  loc_C6D3A4: FStStrNoPop var_A8
  loc_C6D3A7: FMemLdR4 var_DC(24)
  loc_C6D3AC: ConcatStr
  loc_C6D3AD: CVarStr var_BC
  loc_C6D3B0: FMemLdR4 var_DC(24)
  loc_C6D3B5: LitStr vbNullString
  loc_C6D3B8: NeStr
  loc_C6D3BA: CVarBoolI2 var_94
  loc_C6D3BE: FLdRfVar var_100
  loc_C6D3C1: ImpAdCallFPR4  = IIf(, , )
  loc_C6D3C6: FLdRfVar var_100
  loc_C6D3C9: ConcatVar var_120
  loc_C6D3CD: LitVarStr var_130, "</th>"
  loc_C6D3D2: ConcatVar var_140
  loc_C6D3D6: PopAdLdVar
  loc_C6D3D7: FLdPr Me
  loc_C6D3DA: MemLdRfVar from_stack_1.global_60
  loc_C6D3DD: LdPrVar
  loc_C6D3DF: LateMemCall
  loc_C6D3E5: FFree1Str var_A8
  loc_C6D3E8: FFreeVar var_94 = "": var_BC = "": var_F0 = "": var_100 = "": var_120 = ""
  loc_C6D3F7: LitVarStr var_94, "      </tr>"
  loc_C6D3FC: PopAdLdVar
  loc_C6D3FD: FLdPr Me
  loc_C6D400: MemLdRfVar from_stack_1.global_60
  loc_C6D403: LdPrVar
  loc_C6D405: LateMemCall
  loc_C6D40B: LitVarStr var_94, "      <tr>"
  loc_C6D410: PopAdLdVar
  loc_C6D411: FLdPr Me
  loc_C6D414: MemLdRfVar from_stack_1.global_60
  loc_C6D417: LdPrVar
  loc_C6D419: LateMemCall
  loc_C6D41F: LitVarStr var_94, "        <th align=""right"" valign=""top"" class=""Encabezado1"">Oficina:</th>"
  loc_C6D424: PopAdLdVar
  loc_C6D425: FLdPr Me
  loc_C6D428: MemLdRfVar from_stack_1.global_60
  loc_C6D42B: LdPrVar
  loc_C6D42D: LateMemCall
  loc_C6D433: LitStr "        <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C6D436: FMemLdR4 var_DC(32)
  loc_C6D43B: ConcatStr
  loc_C6D43C: FStStrNoPop var_A8
  loc_C6D43F: LitStr "</th>"
  loc_C6D442: ConcatStr
  loc_C6D443: CVarStr var_BC
  loc_C6D446: PopAdLdVar
  loc_C6D447: FLdPr Me
  loc_C6D44A: MemLdRfVar from_stack_1.global_60
  loc_C6D44D: LdPrVar
  loc_C6D44F: LateMemCall
  loc_C6D455: FFree1Str var_A8
  loc_C6D458: FFree1Var var_BC = ""
  loc_C6D45B: LitVarStr var_94, "      </tr>"
  loc_C6D460: PopAdLdVar
  loc_C6D461: FLdPr Me
  loc_C6D464: MemLdRfVar from_stack_1.global_60
  loc_C6D467: LdPrVar
  loc_C6D469: LateMemCall
  loc_C6D46F: LitVarStr var_94, "      <tr>"
  loc_C6D474: PopAdLdVar
  loc_C6D475: FLdPr Me
  loc_C6D478: MemLdRfVar from_stack_1.global_60
  loc_C6D47B: LdPrVar
  loc_C6D47D: LateMemCall
  loc_C6D483: LitVarStr var_94, "        <th align=""right"" valign=""top"" class=""Encabezado1"">Cuenta:</th>"
  loc_C6D488: PopAdLdVar
  loc_C6D489: FLdPr Me
  loc_C6D48C: MemLdRfVar from_stack_1.global_60
  loc_C6D48F: LdPrVar
  loc_C6D491: LateMemCall
  loc_C6D497: LitStr "        <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C6D49A: FMemLdR4 var_DC(36)
  loc_C6D49F: ConcatStr
  loc_C6D4A0: FStStrNoPop var_A8
  loc_C6D4A3: LitStr "</th>"
  loc_C6D4A6: ConcatStr
  loc_C6D4A7: CVarStr var_BC
  loc_C6D4AA: PopAdLdVar
  loc_C6D4AB: FLdPr Me
  loc_C6D4AE: MemLdRfVar from_stack_1.global_60
  loc_C6D4B1: LdPrVar
  loc_C6D4B3: LateMemCall
  loc_C6D4B9: FFree1Str var_A8
  loc_C6D4BC: FFree1Var var_BC = ""
  loc_C6D4BF: LitVarStr var_94, "      </tr>"
  loc_C6D4C4: PopAdLdVar
  loc_C6D4C5: FLdPr Me
  loc_C6D4C8: MemLdRfVar from_stack_1.global_60
  loc_C6D4CB: LdPrVar
  loc_C6D4CD: LateMemCall
  loc_C6D4D3: LitVarStr var_94, "      <tr>"
  loc_C6D4D8: PopAdLdVar
  loc_C6D4D9: FLdPr Me
  loc_C6D4DC: MemLdRfVar from_stack_1.global_60
  loc_C6D4DF: LdPrVar
  loc_C6D4E1: LateMemCall
  loc_C6D4E7: LitVarStr var_94, "        <th align=""right"" valign=""top"" class=""Encabezado1"">Usuario del Boleto:</th>"
  loc_C6D4EC: PopAdLdVar
  loc_C6D4ED: FLdPr Me
  loc_C6D4F0: MemLdRfVar from_stack_1.global_60
  loc_C6D4F3: LdPrVar
  loc_C6D4F5: LateMemCall
  loc_C6D4FB: LitStr "        <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C6D4FE: FMemLdR4 var_DC(84)
  loc_C6D503: ConcatStr
  loc_C6D504: FStStrNoPop var_A8
  loc_C6D507: LitStr "</th>"
  loc_C6D50A: ConcatStr
  loc_C6D50B: CVarStr var_BC
  loc_C6D50E: PopAdLdVar
  loc_C6D50F: FLdPr Me
  loc_C6D512: MemLdRfVar from_stack_1.global_60
  loc_C6D515: LdPrVar
  loc_C6D517: LateMemCall
  loc_C6D51D: FFree1Str var_A8
  loc_C6D520: FFree1Var var_BC = ""
  loc_C6D523: LitVarStr var_94, "      </tr>"
  loc_C6D528: PopAdLdVar
  loc_C6D529: FLdPr Me
  loc_C6D52C: MemLdRfVar from_stack_1.global_60
  loc_C6D52F: LdPrVar
  loc_C6D531: LateMemCall
  loc_C6D537: LitVarStr var_94, "    </table>"
  loc_C6D53C: PopAdLdVar
  loc_C6D53D: FLdPr Me
  loc_C6D540: MemLdRfVar from_stack_1.global_60
  loc_C6D543: LdPrVar
  loc_C6D545: LateMemCall
  loc_C6D54B: LitVarStr var_94, "      <table border=""0"" align=""center"" cellpadding=""1"" cellspacing=""4"">"
  loc_C6D550: PopAdLdVar
  loc_C6D551: FLdPr Me
  loc_C6D554: MemLdRfVar from_stack_1.global_60
  loc_C6D557: LdPrVar
  loc_C6D559: LateMemCall
  loc_C6D55F: LitVarStr var_94, "        <tr>"
  loc_C6D564: PopAdLdVar
  loc_C6D565: FLdPr Me
  loc_C6D568: MemLdRfVar from_stack_1.global_60
  loc_C6D56B: LdPrVar
  loc_C6D56D: LateMemCall
  loc_C6D573: LitVarStr var_94, "          <th align=""right"" valign=""top"" class=""Encabezado1"">C.U.I.T.:</th>"
  loc_C6D578: PopAdLdVar
  loc_C6D579: FLdPr Me
  loc_C6D57C: MemLdRfVar from_stack_1.global_60
  loc_C6D57F: LdPrVar
  loc_C6D581: LateMemCall
  loc_C6D587: LitStr "          <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C6D58A: FMemLdR4 var_DC(4)
  loc_C6D58F: ConcatStr
  loc_C6D590: FStStrNoPop var_A8
  loc_C6D593: LitStr "</th>"
  loc_C6D596: ConcatStr
  loc_C6D597: CVarStr var_BC
  loc_C6D59A: PopAdLdVar
  loc_C6D59B: FLdPr Me
  loc_C6D59E: MemLdRfVar from_stack_1.global_60
  loc_C6D5A1: LdPrVar
  loc_C6D5A3: LateMemCall
  loc_C6D5A9: FFree1Str var_A8
  loc_C6D5AC: FFree1Var var_BC = ""
  loc_C6D5AF: LitVarStr var_94, "        </tr>"
  loc_C6D5B4: PopAdLdVar
  loc_C6D5B5: FLdPr Me
  loc_C6D5B8: MemLdRfVar from_stack_1.global_60
  loc_C6D5BB: LdPrVar
  loc_C6D5BD: LateMemCall
  loc_C6D5C3: LitVarStr var_94, "        <tr>"
  loc_C6D5C8: PopAdLdVar
  loc_C6D5C9: FLdPr Me
  loc_C6D5CC: MemLdRfVar from_stack_1.global_60
  loc_C6D5CF: LdPrVar
  loc_C6D5D1: LateMemCall
  loc_C6D5D7: LitVarStr var_94, "          <th align=""right"" valign=""top"" class=""Encabezado1"">Expediente:</th>"
  loc_C6D5DC: PopAdLdVar
  loc_C6D5DD: FLdPr Me
  loc_C6D5E0: MemLdRfVar from_stack_1.global_60
  loc_C6D5E3: LdPrVar
  loc_C6D5E5: LateMemCall
  loc_C6D5EB: LitStr "          <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C6D5EE: FMemLdR4 var_DC(92)
  loc_C6D5F3: ConcatStr
  loc_C6D5F4: FStStrNoPop var_A8
  loc_C6D5F7: LitStr "</th>"
  loc_C6D5FA: ConcatStr
  loc_C6D5FB: CVarStr var_BC
  loc_C6D5FE: PopAdLdVar
  loc_C6D5FF: FLdPr Me
  loc_C6D602: MemLdRfVar from_stack_1.global_60
  loc_C6D605: LdPrVar
  loc_C6D607: LateMemCall
  loc_C6D60D: FFree1Str var_A8
  loc_C6D610: FFree1Var var_BC = ""
  loc_C6D613: LitVarStr var_94, "        </tr>"
  loc_C6D618: PopAdLdVar
  loc_C6D619: FLdPr Me
  loc_C6D61C: MemLdRfVar from_stack_1.global_60
  loc_C6D61F: LdPrVar
  loc_C6D621: LateMemCall
  loc_C6D627: LitVarStr var_94, "        <tr>"
  loc_C6D62C: PopAdLdVar
  loc_C6D62D: FLdPr Me
  loc_C6D630: MemLdRfVar from_stack_1.global_60
  loc_C6D633: LdPrVar
  loc_C6D635: LateMemCall
  loc_C6D63B: LitVarStr var_94, "          <th align=""right"" valign=""top"" class=""Encabezado1"">Grupo:</th>"
  loc_C6D640: PopAdLdVar
  loc_C6D641: FLdPr Me
  loc_C6D644: MemLdRfVar from_stack_1.global_60
  loc_C6D647: LdPrVar
  loc_C6D649: LateMemCall
  loc_C6D64F: LitStr "          <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C6D652: FMemLdR4 var_DC(68)
  loc_C6D657: ConcatStr
  loc_C6D658: FStStrNoPop var_A8
  loc_C6D65B: LitStr "</th>"
  loc_C6D65E: ConcatStr
  loc_C6D65F: CVarStr var_BC
  loc_C6D662: PopAdLdVar
  loc_C6D663: FLdPr Me
  loc_C6D666: MemLdRfVar from_stack_1.global_60
  loc_C6D669: LdPrVar
  loc_C6D66B: LateMemCall
  loc_C6D671: FFree1Str var_A8
  loc_C6D674: FFree1Var var_BC = ""
  loc_C6D677: LitVarStr var_94, "        </tr>"
  loc_C6D67C: PopAdLdVar
  loc_C6D67D: FLdPr Me
  loc_C6D680: MemLdRfVar from_stack_1.global_60
  loc_C6D683: LdPrVar
  loc_C6D685: LateMemCall
  loc_C6D68B: LitVarStr var_94, "        <tr>"
  loc_C6D690: PopAdLdVar
  loc_C6D691: FLdPr Me
  loc_C6D694: MemLdRfVar from_stack_1.global_60
  loc_C6D697: LdPrVar
  loc_C6D699: LateMemCall
  loc_C6D69F: LitVarStr var_94, "          <th align=""right"" valign=""top"" class=""Encabezado1"">Ente:</th>"
  loc_C6D6A4: PopAdLdVar
  loc_C6D6A5: FLdPr Me
  loc_C6D6A8: MemLdRfVar from_stack_1.global_60
  loc_C6D6AB: LdPrVar
  loc_C6D6AD: LateMemCall
  loc_C6D6B3: LitVarStr var_110, "          <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C6D6B8: LitVarStr var_A4, "&nbsp;"
  loc_C6D6BD: FStVarCopyObj var_F0
  loc_C6D6C0: FLdRfVar var_F0
  loc_C6D6C3: FMemLdR4 var_DC(72)
  loc_C6D6C8: LitStr " - "
  loc_C6D6CB: ConcatStr
  loc_C6D6CC: FStStrNoPop var_A8
  loc_C6D6CF: FMemLdR4 var_DC(76)
  loc_C6D6D4: ConcatStr
  loc_C6D6D5: CVarStr var_BC
  loc_C6D6D8: FMemLdR4 var_DC(76)
  loc_C6D6DD: LitStr vbNullString
  loc_C6D6E0: NeStr
  loc_C6D6E2: CVarBoolI2 var_94
  loc_C6D6E6: FLdRfVar var_100
  loc_C6D6E9: ImpAdCallFPR4  = IIf(, , )
  loc_C6D6EE: FLdRfVar var_100
  loc_C6D6F1: ConcatVar var_120
  loc_C6D6F5: LitVarStr var_130, "</th>"
  loc_C6D6FA: ConcatVar var_140
  loc_C6D6FE: PopAdLdVar
  loc_C6D6FF: FLdPr Me
  loc_C6D702: MemLdRfVar from_stack_1.global_60
  loc_C6D705: LdPrVar
  loc_C6D707: LateMemCall
  loc_C6D70D: FFree1Str var_A8
  loc_C6D710: FFreeVar var_94 = "": var_BC = "": var_F0 = "": var_100 = "": var_120 = ""
  loc_C6D71F: LitVarStr var_94, "        </tr>"
  loc_C6D724: PopAdLdVar
  loc_C6D725: FLdPr Me
  loc_C6D728: MemLdRfVar from_stack_1.global_60
  loc_C6D72B: LdPrVar
  loc_C6D72D: LateMemCall
  loc_C6D733: LitVarStr var_94, "        <tr>"
  loc_C6D738: PopAdLdVar
  loc_C6D739: FLdPr Me
  loc_C6D73C: MemLdRfVar from_stack_1.global_60
  loc_C6D73F: LdPrVar
  loc_C6D741: LateMemCall
  loc_C6D747: LitVarStr var_94, "          <th align=""right"" valign=""top"" class=""Encabezado1"">Fecha de Emisi&oacute;n:</th>"
  loc_C6D74C: PopAdLdVar
  loc_C6D74D: FLdPr Me
  loc_C6D750: MemLdRfVar from_stack_1.global_60
  loc_C6D753: LdPrVar
  loc_C6D755: LateMemCall
  loc_C6D75B: LitStr "          <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C6D75E: FMemLdR4 var_DC(52)
  loc_C6D763: ConcatStr
  loc_C6D764: FStStrNoPop var_A8
  loc_C6D767: LitStr "</th>"
  loc_C6D76A: ConcatStr
  loc_C6D76B: CVarStr var_BC
  loc_C6D76E: PopAdLdVar
  loc_C6D76F: FLdPr Me
  loc_C6D772: MemLdRfVar from_stack_1.global_60
  loc_C6D775: LdPrVar
  loc_C6D777: LateMemCall
  loc_C6D77D: FFree1Str var_A8
  loc_C6D780: FFree1Var var_BC = ""
  loc_C6D783: LitVarStr var_94, "        </tr>"
  loc_C6D788: PopAdLdVar
  loc_C6D789: FLdPr Me
  loc_C6D78C: MemLdRfVar from_stack_1.global_60
  loc_C6D78F: LdPrVar
  loc_C6D791: LateMemCall
  loc_C6D797: LitVarStr var_94, "        <tr>"
  loc_C6D79C: PopAdLdVar
  loc_C6D79D: FLdPr Me
  loc_C6D7A0: MemLdRfVar from_stack_1.global_60
  loc_C6D7A3: LdPrVar
  loc_C6D7A5: LateMemCall
  loc_C6D7AB: LitVarStr var_94, "          <th align=""right"" valign=""top"" class=""Encabezado1"">Fecha de Envio:</th>"
  loc_C6D7B0: PopAdLdVar
  loc_C6D7B1: FLdPr Me
  loc_C6D7B4: MemLdRfVar from_stack_1.global_60
  loc_C6D7B7: LdPrVar
  loc_C6D7B9: LateMemCall
  loc_C6D7BF: LitStr "          <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C6D7C2: FMemLdR4 var_DC(56)
  loc_C6D7C7: ConcatStr
  loc_C6D7C8: FStStrNoPop var_A8
  loc_C6D7CB: LitStr "</th>"
  loc_C6D7CE: ConcatStr
  loc_C6D7CF: CVarStr var_BC
  loc_C6D7D2: PopAdLdVar
  loc_C6D7D3: FLdPr Me
  loc_C6D7D6: MemLdRfVar from_stack_1.global_60
  loc_C6D7D9: LdPrVar
  loc_C6D7DB: LateMemCall
  loc_C6D7E1: FFree1Str var_A8
  loc_C6D7E4: FFree1Var var_BC = ""
  loc_C6D7E7: LitVarStr var_94, "        </tr>"
  loc_C6D7EC: PopAdLdVar
  loc_C6D7ED: FLdPr Me
  loc_C6D7F0: MemLdRfVar from_stack_1.global_60
  loc_C6D7F3: LdPrVar
  loc_C6D7F5: LateMemCall
  loc_C6D7FB: LitVarStr var_94, "        <tr>"
  loc_C6D800: PopAdLdVar
  loc_C6D801: FLdPr Me
  loc_C6D804: MemLdRfVar from_stack_1.global_60
  loc_C6D807: LdPrVar
  loc_C6D809: LateMemCall
  loc_C6D80F: LitVarStr var_94, "          <th align=""right"" valign=""top"" class=""Encabezado1"">Fecha de Pago:</th>"
  loc_C6D814: PopAdLdVar
  loc_C6D815: FLdPr Me
  loc_C6D818: MemLdRfVar from_stack_1.global_60
  loc_C6D81B: LdPrVar
  loc_C6D81D: LateMemCall
  loc_C6D823: LitStr "          <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C6D826: FMemLdR4 var_DC(64)
  loc_C6D82B: ConcatStr
  loc_C6D82C: FStStrNoPop var_A8
  loc_C6D82F: LitStr "</th>"
  loc_C6D832: ConcatStr
  loc_C6D833: CVarStr var_BC
  loc_C6D836: PopAdLdVar
  loc_C6D837: FLdPr Me
  loc_C6D83A: MemLdRfVar from_stack_1.global_60
  loc_C6D83D: LdPrVar
  loc_C6D83F: LateMemCall
  loc_C6D845: FFree1Str var_A8
  loc_C6D848: FFree1Var var_BC = ""
  loc_C6D84B: LitVarStr var_94, "        </tr>"
  loc_C6D850: PopAdLdVar
  loc_C6D851: FLdPr Me
  loc_C6D854: MemLdRfVar from_stack_1.global_60
  loc_C6D857: LdPrVar
  loc_C6D859: LateMemCall
  loc_C6D85F: LitVarStr var_94, "        <tr>"
  loc_C6D864: PopAdLdVar
  loc_C6D865: FLdPr Me
  loc_C6D868: MemLdRfVar from_stack_1.global_60
  loc_C6D86B: LdPrVar
  loc_C6D86D: LateMemCall
  loc_C6D873: LitVarStr var_94, "          <th align=""right"" valign=""top"" class=""Encabezado1"">Fecha de Actualizaci&oacute;n:</th>"
  loc_C6D878: PopAdLdVar
  loc_C6D879: FLdPr Me
  loc_C6D87C: MemLdRfVar from_stack_1.global_60
  loc_C6D87F: LdPrVar
  loc_C6D881: LateMemCall
  loc_C6D887: LitStr "          <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C6D88A: FMemLdR4 var_DC(60)
  loc_C6D88F: ConcatStr
  loc_C6D890: FStStrNoPop var_A8
  loc_C6D893: LitStr "</th>"
  loc_C6D896: ConcatStr
  loc_C6D897: CVarStr var_BC
  loc_C6D89A: PopAdLdVar
  loc_C6D89B: FLdPr Me
  loc_C6D89E: MemLdRfVar from_stack_1.global_60
  loc_C6D8A1: LdPrVar
  loc_C6D8A3: LateMemCall
  loc_C6D8A9: FFree1Str var_A8
  loc_C6D8AC: FFree1Var var_BC = ""
  loc_C6D8AF: LitVarStr var_94, "        </tr>"
  loc_C6D8B4: PopAdLdVar
  loc_C6D8B5: FLdPr Me
  loc_C6D8B8: MemLdRfVar from_stack_1.global_60
  loc_C6D8BB: LdPrVar
  loc_C6D8BD: LateMemCall
  loc_C6D8C3: LitVarStr var_94, "        <tr>"
  loc_C6D8C8: PopAdLdVar
  loc_C6D8C9: FLdPr Me
  loc_C6D8CC: MemLdRfVar from_stack_1.global_60
  loc_C6D8CF: LdPrVar
  loc_C6D8D1: LateMemCall
  loc_C6D8D7: LitVarStr var_94, "          <th align=""right"" valign=""top"" class=""Encabezado1"">Fecha de Vencimiento:</th>"
  loc_C6D8DC: PopAdLdVar
  loc_C6D8DD: FLdPr Me
  loc_C6D8E0: MemLdRfVar from_stack_1.global_60
  loc_C6D8E3: LdPrVar
  loc_C6D8E5: LateMemCall
  loc_C6D8EB: LitStr "          <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C6D8EE: FMemLdR4 var_DC(80)
  loc_C6D8F3: ConcatStr
  loc_C6D8F4: FStStrNoPop var_A8
  loc_C6D8F7: LitStr "</th>"
  loc_C6D8FA: ConcatStr
  loc_C6D8FB: CVarStr var_BC
  loc_C6D8FE: PopAdLdVar
  loc_C6D8FF: FLdPr Me
  loc_C6D902: MemLdRfVar from_stack_1.global_60
  loc_C6D905: LdPrVar
  loc_C6D907: LateMemCall
  loc_C6D90D: FFree1Str var_A8
  loc_C6D910: FFree1Var var_BC = ""
  loc_C6D913: LitVarStr var_94, "        </tr>"
  loc_C6D918: PopAdLdVar
  loc_C6D919: FLdPr Me
  loc_C6D91C: MemLdRfVar from_stack_1.global_60
  loc_C6D91F: LdPrVar
  loc_C6D921: LateMemCall
  loc_C6D927: LitVarStr var_94, "        <tr>"
  loc_C6D92C: PopAdLdVar
  loc_C6D92D: FLdPr Me
  loc_C6D930: MemLdRfVar from_stack_1.global_60
  loc_C6D933: LdPrVar
  loc_C6D935: LateMemCall
  loc_C6D93B: LitVarStr var_94, "          <th align=""right"" valign=""top"" class=""Encabezado1"">Usuario que Pagó:</th>"
  loc_C6D940: PopAdLdVar
  loc_C6D941: FLdPr Me
  loc_C6D944: MemLdRfVar from_stack_1.global_60
  loc_C6D947: LdPrVar
  loc_C6D949: LateMemCall
  loc_C6D94F: LitStr "          <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C6D952: FMemLdR4 var_DC(88)
  loc_C6D957: ConcatStr
  loc_C6D958: FStStrNoPop var_A8
  loc_C6D95B: LitStr "</th>"
  loc_C6D95E: ConcatStr
  loc_C6D95F: CVarStr var_BC
  loc_C6D962: PopAdLdVar
  loc_C6D963: FLdPr Me
  loc_C6D966: MemLdRfVar from_stack_1.global_60
  loc_C6D969: LdPrVar
  loc_C6D96B: LateMemCall
  loc_C6D971: FFree1Str var_A8
  loc_C6D974: FFree1Var var_BC = ""
  loc_C6D977: LitVarStr var_94, "        </tr>"
  loc_C6D97C: PopAdLdVar
  loc_C6D97D: FLdPr Me
  loc_C6D980: MemLdRfVar from_stack_1.global_60
  loc_C6D983: LdPrVar
  loc_C6D985: LateMemCall
  loc_C6D98B: LitVarStr var_94, "        <tr>"
  loc_C6D990: PopAdLdVar
  loc_C6D991: FLdPr Me
  loc_C6D994: MemLdRfVar from_stack_1.global_60
  loc_C6D997: LdPrVar
  loc_C6D999: LateMemCall
  loc_C6D99F: LitVarStr var_94, "          <th align=""right"" valign=""top"" class=""Encabezado1"">Operacion E-Pagos:</th>"
  loc_C6D9A4: PopAdLdVar
  loc_C6D9A5: FLdPr Me
  loc_C6D9A8: MemLdRfVar from_stack_1.global_60
  loc_C6D9AB: LdPrVar
  loc_C6D9AD: LateMemCall
  loc_C6D9B3: LitStr "          <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C6D9B6: FMemLdR4 var_DC(96)
  loc_C6D9BB: ConcatStr
  loc_C6D9BC: FStStrNoPop var_A8
  loc_C6D9BF: LitStr "</th>"
  loc_C6D9C2: ConcatStr
  loc_C6D9C3: CVarStr var_BC
  loc_C6D9C6: PopAdLdVar
  loc_C6D9C7: FLdPr Me
  loc_C6D9CA: MemLdRfVar from_stack_1.global_60
  loc_C6D9CD: LdPrVar
  loc_C6D9CF: LateMemCall
  loc_C6D9D5: FFree1Str var_A8
  loc_C6D9D8: FFree1Var var_BC = ""
  loc_C6D9DB: LitVarStr var_94, "        </tr>"
  loc_C6D9E0: PopAdLdVar
  loc_C6D9E1: FLdPr Me
  loc_C6D9E4: MemLdRfVar from_stack_1.global_60
  loc_C6D9E7: LdPrVar
  loc_C6D9E9: LateMemCall
  loc_C6D9EF: LitVarStr var_94, "      </table></td>"
  loc_C6D9F4: PopAdLdVar
  loc_C6D9F5: FLdPr Me
  loc_C6D9F8: MemLdRfVar from_stack_1.global_60
  loc_C6D9FB: LdPrVar
  loc_C6D9FD: LateMemCall
  loc_C6DA03: LitVarStr var_94, "  </tr>"
  loc_C6DA08: PopAdLdVar
  loc_C6DA09: FLdPr Me
  loc_C6DA0C: MemLdRfVar from_stack_1.global_60
  loc_C6DA0F: LdPrVar
  loc_C6DA11: LateMemCall
  loc_C6DA17: FMemLdRf ext_40108C
  loc_C6DA1C: CVarRef
  loc_C6DA21: FLdRfVar var_BC
  loc_C6DA24: ImpAdCallFPR4  = Trim()
  loc_C6DA29: FLdRfVar var_BC
  loc_C6DA2C: LitVarStr var_A4, vbNullString
  loc_C6DA31: HardType
  loc_C6DA32: NeVarBool
  loc_C6DA34: FFree1Var var_BC = ""
  loc_C6DA37: BranchF loc_C6DAEE
  loc_C6DA3A: LitVarStr var_94, "  <tr valign=""top"" class=""Normal"">"
  loc_C6DA3F: PopAdLdVar
  loc_C6DA40: FLdPr Me
  loc_C6DA43: MemLdRfVar from_stack_1.global_60
  loc_C6DA46: LdPrVar
  loc_C6DA48: LateMemCall
  loc_C6DA4E: LitVarStr var_94, "   <td align=""left""><table border=""0"" align=""left"" cellpadding=""1"" cellspacing=""4"">"
  loc_C6DA53: PopAdLdVar
  loc_C6DA54: FLdPr Me
  loc_C6DA57: MemLdRfVar from_stack_1.global_60
  loc_C6DA5A: LdPrVar
  loc_C6DA5C: LateMemCall
  loc_C6DA62: LitVarStr var_94, "   <tr valign=""top"">"
  loc_C6DA67: PopAdLdVar
  loc_C6DA68: FLdPr Me
  loc_C6DA6B: MemLdRfVar from_stack_1.global_60
  loc_C6DA6E: LdPrVar
  loc_C6DA70: LateMemCall
  loc_C6DA76: LitVarStr var_94, "          <th width=""115"" align=""right"" class=""Encabezado1"">Observaciones:</th>"
  loc_C6DA7B: PopAdLdVar
  loc_C6DA7C: FLdPr Me
  loc_C6DA7F: MemLdRfVar from_stack_1.global_60
  loc_C6DA82: LdPrVar
  loc_C6DA84: LateMemCall
  loc_C6DA8A: LitStr "          <th align=""justify"" class=""Normal1"">"
  loc_C6DA8D: FMemLdR4 var_DC(100)
  loc_C6DA92: ConcatStr
  loc_C6DA93: FStStrNoPop var_A8
  loc_C6DA96: LitStr "</th>"
  loc_C6DA99: ConcatStr
  loc_C6DA9A: CVarStr var_BC
  loc_C6DA9D: PopAdLdVar
  loc_C6DA9E: FLdPr Me
  loc_C6DAA1: MemLdRfVar from_stack_1.global_60
  loc_C6DAA4: LdPrVar
  loc_C6DAA6: LateMemCall
  loc_C6DAAC: FFree1Str var_A8
  loc_C6DAAF: FFree1Var var_BC = ""
  loc_C6DAB2: LitVarStr var_94, "        </tr>"
  loc_C6DAB7: PopAdLdVar
  loc_C6DAB8: FLdPr Me
  loc_C6DABB: MemLdRfVar from_stack_1.global_60
  loc_C6DABE: LdPrVar
  loc_C6DAC0: LateMemCall
  loc_C6DAC6: LitVarStr var_94, " </table></td>"
  loc_C6DACB: PopAdLdVar
  loc_C6DACC: FLdPr Me
  loc_C6DACF: MemLdRfVar from_stack_1.global_60
  loc_C6DAD2: LdPrVar
  loc_C6DAD4: LateMemCall
  loc_C6DADA: LitVarStr var_94, "  </tr>"
  loc_C6DADF: PopAdLdVar
  loc_C6DAE0: FLdPr Me
  loc_C6DAE3: MemLdRfVar from_stack_1.global_60
  loc_C6DAE6: LdPrVar
  loc_C6DAE8: LateMemCall
  loc_C6DAEE: LitI4 0
  loc_C6DAF3: FStR4 var_DC
  loc_C6DAF6: AryUnlock
  loc_C6DAF9: LitVarStr var_94, "  <tr valign=""top"" class=""Normal"">"
  loc_C6DAFE: PopAdLdVar
  loc_C6DAFF: FLdPr Me
  loc_C6DB02: MemLdRfVar from_stack_1.global_60
  loc_C6DB05: LdPrVar
  loc_C6DB07: LateMemCall
  loc_C6DB0D: LitVarStr var_94, "    <td align=""left"" valign=""top""><hr></td>"
  loc_C6DB12: PopAdLdVar
  loc_C6DB13: FLdPr Me
  loc_C6DB16: MemLdRfVar from_stack_1.global_60
  loc_C6DB19: LdPrVar
  loc_C6DB1B: LateMemCall
  loc_C6DB21: LitVarStr var_94, "  </tr>"
  loc_C6DB26: PopAdLdVar
  loc_C6DB27: FLdPr Me
  loc_C6DB2A: MemLdRfVar from_stack_1.global_60
  loc_C6DB2D: LdPrVar
  loc_C6DB2F: LateMemCall
  loc_C6DB35: LitVarStr var_94, "</table>"
  loc_C6DB3A: PopAdLdVar
  loc_C6DB3B: FLdPr Me
  loc_C6DB3E: MemLdRfVar from_stack_1.global_60
  loc_C6DB41: LdPrVar
  loc_C6DB43: LateMemCall
  loc_C6DB49: ExitProcHresult
End Function

Private Function Proc_345_23_BB8588() 'BB8588
  'Data Table: 499658
  loc_BB7EF8: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" cellspacing=""0"" class=""Normal"">"
  loc_BB7EFD: PopAdLdVar
  loc_BB7EFE: FLdPr Me
  loc_BB7F01: MemLdRfVar from_stack_1.global_60
  loc_BB7F04: LdPrVar
  loc_BB7F06: LateMemCall
  loc_BB7F0C: LitVarStr var_94, "  <THEAD>"
  loc_BB7F11: PopAdLdVar
  loc_BB7F12: FLdPr Me
  loc_BB7F15: MemLdRfVar from_stack_1.global_60
  loc_BB7F18: LdPrVar
  loc_BB7F1A: LateMemCall
  loc_BB7F20: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_BB7F25: PopAdLdVar
  loc_BB7F26: FLdPr Me
  loc_BB7F29: MemLdRfVar from_stack_1.global_60
  loc_BB7F2C: LdPrVar
  loc_BB7F2E: LateMemCall
  loc_BB7F34: LitVarStr var_94, "    <td colspan=""3"">DESCRIPCI&Oacute;N</td>"
  loc_BB7F39: PopAdLdVar
  loc_BB7F3A: FLdPr Me
  loc_BB7F3D: MemLdRfVar from_stack_1.global_60
  loc_BB7F40: LdPrVar
  loc_BB7F42: LateMemCall
  loc_BB7F48: LitVarStr var_94, "    <td width=""10" & Chr(37) & """>FACILIDAD</td>"
  loc_BB7F4D: PopAdLdVar
  loc_BB7F4E: FLdPr Me
  loc_BB7F51: MemLdRfVar from_stack_1.global_60
  loc_BB7F54: LdPrVar
  loc_BB7F56: LateMemCall
  loc_BB7F5C: LitVarStr var_94, "    <td width=""10" & Chr(37) & """>CUOTA</td>"
  loc_BB7F61: PopAdLdVar
  loc_BB7F62: FLdPr Me
  loc_BB7F65: MemLdRfVar from_stack_1.global_60
  loc_BB7F68: LdPrVar
  loc_BB7F6A: LateMemCall
  loc_BB7F70: LitVarStr var_94, "    <td width=""10" & Chr(37) & """>DERECHO</td>"
  loc_BB7F75: PopAdLdVar
  loc_BB7F76: FLdPr Me
  loc_BB7F79: MemLdRfVar from_stack_1.global_60
  loc_BB7F7C: LdPrVar
  loc_BB7F7E: LateMemCall
  loc_BB7F84: LitVarStr var_94, "    <td width=""10" & Chr(37) & """>RECARGO</td>"
  loc_BB7F89: PopAdLdVar
  loc_BB7F8A: FLdPr Me
  loc_BB7F8D: MemLdRfVar from_stack_1.global_60
  loc_BB7F90: LdPrVar
  loc_BB7F92: LateMemCall
  loc_BB7F98: LitVarStr var_94, "    <td width=""10" & Chr(37) & """>INTER&Eacute;S</td>"
  loc_BB7F9D: PopAdLdVar
  loc_BB7F9E: FLdPr Me
  loc_BB7FA1: MemLdRfVar from_stack_1.global_60
  loc_BB7FA4: LdPrVar
  loc_BB7FA6: LateMemCall
  loc_BB7FAC: LitVarStr var_94, "    <td width=""10" & Chr(37) & """>DESCUENTO</td>"
  loc_BB7FB1: PopAdLdVar
  loc_BB7FB2: FLdPr Me
  loc_BB7FB5: MemLdRfVar from_stack_1.global_60
  loc_BB7FB8: LdPrVar
  loc_BB7FBA: LateMemCall
  loc_BB7FC0: LitVarStr var_94, "    <td width=""14" & Chr(37) & """>TOTAL</td>"
  loc_BB7FC5: PopAdLdVar
  loc_BB7FC6: FLdPr Me
  loc_BB7FC9: MemLdRfVar from_stack_1.global_60
  loc_BB7FCC: LdPrVar
  loc_BB7FCE: LateMemCall
  loc_BB7FD4: LitVarStr var_94, "  </tr>"
  loc_BB7FD9: PopAdLdVar
  loc_BB7FDA: FLdPr Me
  loc_BB7FDD: MemLdRfVar from_stack_1.global_60
  loc_BB7FE0: LdPrVar
  loc_BB7FE2: LateMemCall
  loc_BB7FE8: LitVarStr var_94, "  </THEAD>"
  loc_BB7FED: PopAdLdVar
  loc_BB7FEE: FLdPr Me
  loc_BB7FF1: MemLdRfVar from_stack_1.global_60
  loc_BB7FF4: LdPrVar
  loc_BB7FF6: LateMemCall
  loc_BB7FFC: LitI2_Byte 1
  loc_BB7FFE: FLdPr Me
  loc_BB8001: MemLdRfVar from_stack_1.global_92
  loc_BB8004: LitI4 1
  loc_BB8009: FLdPr Me
  loc_BB800C: MemLdStr global_88
  loc_BB800F: Ary1LdPr
  loc_BB8010: MemLdStr global_104
  loc_BB8013: LitI2_Byte 1
  loc_BB8015: FnUBound
  loc_BB8017: CI2I4
  loc_BB8018: ForI2 var_A8
  loc_BB801E: LitVarStr var_94, "  <tr>"
  loc_BB8023: PopAdLdVar
  loc_BB8024: FLdPr Me
  loc_BB8027: MemLdRfVar from_stack_1.global_60
  loc_BB802A: LdPrVar
  loc_BB802C: LateMemCall
  loc_BB8032: LitStr "    <td colspan=""10"" align=""left"">"
  loc_BB8035: FLdPr Me
  loc_BB8038: MemLdI2 global_92
  loc_BB803B: CI4UI1
  loc_BB803C: LitI4 1
  loc_BB8041: FLdPr Me
  loc_BB8044: MemLdStr global_88
  loc_BB8047: Ary1LdPr
  loc_BB8048: MemLdStr global_104
  loc_BB804B: Ary1LdPr
  loc_BB804C: MemLdStr global_0
  loc_BB804F: ConcatStr
  loc_BB8050: FStStrNoPop var_AC
  loc_BB8053: LitStr " - "
  loc_BB8056: ConcatStr
  loc_BB8057: FStStrNoPop var_B0
  loc_BB805A: FLdPr Me
  loc_BB805D: MemLdI2 global_92
  loc_BB8060: CI4UI1
  loc_BB8061: LitI4 1
  loc_BB8066: FLdPr Me
  loc_BB8069: MemLdStr global_88
  loc_BB806C: Ary1LdPr
  loc_BB806D: MemLdStr global_104
  loc_BB8070: Ary1LdPr
  loc_BB8071: MemLdStr global_4
  loc_BB8074: ConcatStr
  loc_BB8075: FStStrNoPop var_B4
  loc_BB8078: LitStr "</td>"
  loc_BB807B: ConcatStr
  loc_BB807C: CVarStr var_C4
  loc_BB807F: PopAdLdVar
  loc_BB8080: FLdPr Me
  loc_BB8083: MemLdRfVar from_stack_1.global_60
  loc_BB8086: LdPrVar
  loc_BB8088: LateMemCall
  loc_BB808E: FFreeStr var_AC = "": var_B0 = ""
  loc_BB8097: FFree1Var var_C4 = ""
  loc_BB809A: LitVarStr var_94, "  </tr>"
  loc_BB809F: PopAdLdVar
  loc_BB80A0: FLdPr Me
  loc_BB80A3: MemLdRfVar from_stack_1.global_60
  loc_BB80A6: LdPrVar
  loc_BB80A8: LateMemCall
  loc_BB80AE: LitI2_Byte 1
  loc_BB80B0: FLdPr Me
  loc_BB80B3: MemLdRfVar from_stack_1.global_94
  loc_BB80B6: FLdPr Me
  loc_BB80B9: MemLdI2 global_92
  loc_BB80BC: CI4UI1
  loc_BB80BD: LitI4 1
  loc_BB80C2: FLdPr Me
  loc_BB80C5: MemLdStr global_88
  loc_BB80C8: Ary1LdPr
  loc_BB80C9: MemLdStr global_104
  loc_BB80CC: Ary1LdPr
  loc_BB80CD: MemLdStr global_8
  loc_BB80D0: LitI2_Byte 1
  loc_BB80D2: FnUBound
  loc_BB80D4: CI2I4
  loc_BB80D5: ForI2 var_C8
  loc_BB80DB: LitVarStr var_94, "  <tr>"
  loc_BB80E0: PopAdLdVar
  loc_BB80E1: FLdPr Me
  loc_BB80E4: MemLdRfVar from_stack_1.global_60
  loc_BB80E7: LdPrVar
  loc_BB80E9: LateMemCall
  loc_BB80EF: LitStr "    <td width=""40" & Chr(37) & """ rowspan="""
  loc_BB80F2: FLdPr Me
  loc_BB80F5: MemLdI2 global_94
  loc_BB80F8: CI4UI1
  loc_BB80F9: FLdPr Me
  loc_BB80FC: MemLdI2 global_92
  loc_BB80FF: CI4UI1
  loc_BB8100: LitI4 1
  loc_BB8105: FLdPr Me
  loc_BB8108: MemLdStr global_88
  loc_BB810B: Ary1LdPr
  loc_BB810C: MemLdStr global_104
  loc_BB810F: Ary1LdPr
  loc_BB8110: MemLdStr global_8
  loc_BB8113: Ary1LdPr
  loc_BB8114: MemLdStr global_4
  loc_BB8117: LitI2_Byte 1
  loc_BB8119: FnUBound
  loc_BB811B: CStrI4
  loc_BB811D: FStStrNoPop var_AC
  loc_BB8120: ConcatStr
  loc_BB8121: FStStrNoPop var_B0
  loc_BB8124: LitStr """ valign=""top"">Periodo: "
  loc_BB8127: ConcatStr
  loc_BB8128: FStStrNoPop var_B4
  loc_BB812B: FLdPr Me
  loc_BB812E: MemLdI2 global_94
  loc_BB8131: CI4UI1
  loc_BB8132: FLdPr Me
  loc_BB8135: MemLdI2 global_92
  loc_BB8138: CI4UI1
  loc_BB8139: LitI4 1
  loc_BB813E: FLdPr Me
  loc_BB8141: MemLdStr global_88
  loc_BB8144: Ary1LdPr
  loc_BB8145: MemLdStr global_104
  loc_BB8148: Ary1LdPr
  loc_BB8149: MemLdStr global_8
  loc_BB814C: Ary1LdPr
  loc_BB814D: MemLdStr global_0
  loc_BB8150: ConcatStr
  loc_BB8151: FStStrNoPop var_CC
  loc_BB8154: LitStr "</td>"
  loc_BB8157: ConcatStr
  loc_BB8158: CVarStr var_C4
  loc_BB815B: PopAdLdVar
  loc_BB815C: FLdPr Me
  loc_BB815F: MemLdRfVar from_stack_1.global_60
  loc_BB8162: LdPrVar
  loc_BB8164: LateMemCall
  loc_BB816A: FFreeStr var_AC = "": var_B0 = "": var_B4 = ""
  loc_BB8175: FFree1Var var_C4 = ""
  loc_BB8178: LitStr "    <td width=""6" & Chr(37) & """ rowspan="""
  loc_BB817B: FLdPr Me
  loc_BB817E: MemLdI2 global_94
  loc_BB8181: CI4UI1
  loc_BB8182: FLdPr Me
  loc_BB8185: MemLdI2 global_92
  loc_BB8188: CI4UI1
  loc_BB8189: LitI4 1
  loc_BB818E: FLdPr Me
  loc_BB8191: MemLdStr global_88
  loc_BB8194: Ary1LdPr
  loc_BB8195: MemLdStr global_104
  loc_BB8198: Ary1LdPr
  loc_BB8199: MemLdStr global_8
  loc_BB819C: Ary1LdPr
  loc_BB819D: MemLdStr global_4
  loc_BB81A0: LitI2_Byte 1
  loc_BB81A2: FnUBound
  loc_BB81A4: CStrI4
  loc_BB81A6: FStStrNoPop var_AC
  loc_BB81A9: ConcatStr
  loc_BB81AA: FStStrNoPop var_B0
  loc_BB81AD: LitStr """ valign=""top"">Bimestre:</td>"
  loc_BB81B0: ConcatStr
  loc_BB81B1: CVarStr var_C4
  loc_BB81B4: PopAdLdVar
  loc_BB81B5: FLdPr Me
  loc_BB81B8: MemLdRfVar from_stack_1.global_60
  loc_BB81BB: LdPrVar
  loc_BB81BD: LateMemCall
  loc_BB81C3: FFreeStr var_AC = ""
  loc_BB81CA: FFree1Var var_C4 = ""
  loc_BB81CD: LitI2_Byte 1
  loc_BB81CF: FLdPr Me
  loc_BB81D2: MemLdRfVar from_stack_1.global_96
  loc_BB81D5: FLdPr Me
  loc_BB81D8: MemLdI2 global_94
  loc_BB81DB: CI4UI1
  loc_BB81DC: FLdPr Me
  loc_BB81DF: MemLdI2 global_92
  loc_BB81E2: CI4UI1
  loc_BB81E3: LitI4 1
  loc_BB81E8: FLdPr Me
  loc_BB81EB: MemLdStr global_88
  loc_BB81EE: Ary1LdPr
  loc_BB81EF: MemLdStr global_104
  loc_BB81F2: Ary1LdPr
  loc_BB81F3: MemLdStr global_8
  loc_BB81F6: Ary1LdPr
  loc_BB81F7: MemLdStr global_4
  loc_BB81FA: LitI2_Byte 1
  loc_BB81FC: FnUBound
  loc_BB81FE: CI2I4
  loc_BB81FF: ForI2 var_D0
  loc_BB8205: FLdPr Me
  loc_BB8208: MemLdI2 global_96
  loc_BB820B: LitI2_Byte 1
  loc_BB820D: GtI2
  loc_BB820E: BranchF loc_BB8225
  loc_BB8211: LitVarStr var_94, "  <tr>"
  loc_BB8216: PopAdLdVar
  loc_BB8217: FLdPr Me
  loc_BB821A: MemLdRfVar from_stack_1.global_60
  loc_BB821D: LdPrVar
  loc_BB821F: LateMemCall
  loc_BB8225: FLdPr Me
  loc_BB8228: MemLdI2 global_96
  loc_BB822B: CI4UI1
  loc_BB822C: FLdPr Me
  loc_BB822F: MemLdI2 global_94
  loc_BB8232: CI4UI1
  loc_BB8233: FLdPr Me
  loc_BB8236: MemLdI2 global_92
  loc_BB8239: CI4UI1
  loc_BB823A: LitI4 1
  loc_BB823F: FLdPr Me
  loc_BB8242: MemLdStr global_88
  loc_BB8245: AryLock
  loc_BB8248: Ary1LdPr
  loc_BB8249: MemLdStr global_104
  loc_BB824C: AryLock
  loc_BB824F: Ary1LdPr
  loc_BB8250: MemLdStr global_8
  loc_BB8253: AryLock
  loc_BB8256: Ary1LdPr
  loc_BB8257: MemLdStr global_4
  loc_BB825A: AryLock
  loc_BB825D: Ary1LdRf
  loc_BB825E: FStR4 var_E4
  loc_BB8261: LitStr "    <td width=""10" & Chr(37) & """ align=""center"">"
  loc_BB8264: FMemLdR4 var_E4(0)
  loc_BB8269: ConcatStr
  loc_BB826A: FStStrNoPop var_AC
  loc_BB826D: LitStr "</td>"
  loc_BB8270: ConcatStr
  loc_BB8271: CVarStr var_C4
  loc_BB8274: PopAdLdVar
  loc_BB8275: FLdPr Me
  loc_BB8278: MemLdRfVar from_stack_1.global_60
  loc_BB827B: LdPrVar
  loc_BB827D: LateMemCall
  loc_BB8283: FFree1Str var_AC
  loc_BB8286: FFree1Var var_C4 = ""
  loc_BB8289: FMemLdRf 0
  loc_BB828E: CVarRef
  loc_BB8293: LitVarStr var_A4, "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_BB8298: FStVarCopyObj var_C4
  loc_BB829B: FLdRfVar var_C4
  loc_BB829E: FMemLdR4 var_E4(12)
  loc_BB82A3: LitStr "0,00"
  loc_BB82A6: EqStr
  loc_BB82A8: CVarBoolI2 var_94
  loc_BB82AC: FLdRfVar var_104
  loc_BB82AF: ImpAdCallFPR4  = IIf(, , )
  loc_BB82B4: LitStr vbNullString
  loc_BB82B7: LitI2_Byte 0
  loc_BB82B9: LitI2_Byte 0
  loc_BB82BB: LitI2_Byte 0
  loc_BB82BD: LitStr "right"
  loc_BB82C0: FLdRfVar var_104
  loc_BB82C3: CStrVarVal var_AC
  loc_BB82C7: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BB82CC: CVarStr var_114
  loc_BB82CF: PopAdLdVar
  loc_BB82D0: FLdPr Me
  loc_BB82D3: MemLdRfVar from_stack_1.global_60
  loc_BB82D6: LdPrVar
  loc_BB82D8: LateMemCall
  loc_BB82DE: FFree1Str var_AC
  loc_BB82E1: FFreeVar var_94 = "": var_C4 = "": var_104 = ""
  loc_BB82EC: FMemLdRf 0
  loc_BB82F1: CVarRef
  loc_BB82F6: LitVarStr var_A4, "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_BB82FB: FStVarCopyObj var_C4
  loc_BB82FE: FLdRfVar var_C4
  loc_BB8301: FMemLdR4 var_E4(12)
  loc_BB8306: LitStr "0,00"
  loc_BB8309: EqStr
  loc_BB830B: CVarBoolI2 var_94
  loc_BB830F: FLdRfVar var_104
  loc_BB8312: ImpAdCallFPR4  = IIf(, , )
  loc_BB8317: LitStr vbNullString
  loc_BB831A: LitI2_Byte 0
  loc_BB831C: LitI2_Byte 0
  loc_BB831E: LitI2_Byte 0
  loc_BB8320: LitStr "right"
  loc_BB8323: FLdRfVar var_104
  loc_BB8326: CStrVarVal var_AC
  loc_BB832A: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BB832F: CVarStr var_114
  loc_BB8332: PopAdLdVar
  loc_BB8333: FLdPr Me
  loc_BB8336: MemLdRfVar from_stack_1.global_60
  loc_BB8339: LdPrVar
  loc_BB833B: LateMemCall
  loc_BB8341: FFree1Str var_AC
  loc_BB8344: FFreeVar var_94 = "": var_C4 = "": var_104 = ""
  loc_BB834F: FMemLdRf 0
  loc_BB8354: CVarRef
  loc_BB8359: LitVarStr var_A4, "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_BB835E: FStVarCopyObj var_C4
  loc_BB8361: FLdRfVar var_C4
  loc_BB8364: FMemLdR4 var_E4(12)
  loc_BB8369: LitStr "0,00"
  loc_BB836C: EqStr
  loc_BB836E: CVarBoolI2 var_94
  loc_BB8372: FLdRfVar var_104
  loc_BB8375: ImpAdCallFPR4  = IIf(, , )
  loc_BB837A: LitStr vbNullString
  loc_BB837D: LitI2_Byte 0
  loc_BB837F: LitI2_Byte 0
  loc_BB8381: LitI2_Byte 0
  loc_BB8383: LitStr "right"
  loc_BB8386: FLdRfVar var_104
  loc_BB8389: CStrVarVal var_AC
  loc_BB838D: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BB8392: CVarStr var_114
  loc_BB8395: PopAdLdVar
  loc_BB8396: FLdPr Me
  loc_BB8399: MemLdRfVar from_stack_1.global_60
  loc_BB839C: LdPrVar
  loc_BB839E: LateMemCall
  loc_BB83A4: FFree1Str var_AC
  loc_BB83A7: FFreeVar var_94 = "": var_C4 = "": var_104 = ""
  loc_BB83B2: FMemLdRf 0
  loc_BB83B7: CVarRef
  loc_BB83BC: LitVarStr var_A4, "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_BB83C1: FStVarCopyObj var_C4
  loc_BB83C4: FLdRfVar var_C4
  loc_BB83C7: FMemLdR4 var_E4(16)
  loc_BB83CC: LitStr "0,00"
  loc_BB83CF: EqStr
  loc_BB83D1: CVarBoolI2 var_94
  loc_BB83D5: FLdRfVar var_104
  loc_BB83D8: ImpAdCallFPR4  = IIf(, , )
  loc_BB83DD: LitStr vbNullString
  loc_BB83E0: LitI2_Byte 0
  loc_BB83E2: LitI2_Byte 0
  loc_BB83E4: LitI2_Byte 0
  loc_BB83E6: LitStr "right"
  loc_BB83E9: FLdRfVar var_104
  loc_BB83EC: CStrVarVal var_AC
  loc_BB83F0: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BB83F5: CVarStr var_114
  loc_BB83F8: PopAdLdVar
  loc_BB83F9: FLdPr Me
  loc_BB83FC: MemLdRfVar from_stack_1.global_60
  loc_BB83FF: LdPrVar
  loc_BB8401: LateMemCall
  loc_BB8407: FFree1Str var_AC
  loc_BB840A: FFreeVar var_94 = "": var_C4 = "": var_104 = ""
  loc_BB8415: FMemLdRf 0
  loc_BB841A: CVarRef
  loc_BB841F: LitVarStr var_A4, "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_BB8424: FStVarCopyObj var_C4
  loc_BB8427: FLdRfVar var_C4
  loc_BB842A: FMemLdR4 var_E4(20)
  loc_BB842F: LitStr "0,00"
  loc_BB8432: EqStr
  loc_BB8434: CVarBoolI2 var_94
  loc_BB8438: FLdRfVar var_104
  loc_BB843B: ImpAdCallFPR4  = IIf(, , )
  loc_BB8440: LitStr vbNullString
  loc_BB8443: LitI2_Byte 0
  loc_BB8445: LitI2_Byte 0
  loc_BB8447: LitI2_Byte 0
  loc_BB8449: LitStr "right"
  loc_BB844C: FLdRfVar var_104
  loc_BB844F: CStrVarVal var_AC
  loc_BB8453: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BB8458: CVarStr var_114
  loc_BB845B: PopAdLdVar
  loc_BB845C: FLdPr Me
  loc_BB845F: MemLdRfVar from_stack_1.global_60
  loc_BB8462: LdPrVar
  loc_BB8464: LateMemCall
  loc_BB846A: FFree1Str var_AC
  loc_BB846D: FFreeVar var_94 = "": var_C4 = "": var_104 = ""
  loc_BB8478: FMemLdRf 0
  loc_BB847D: CVarRef
  loc_BB8482: LitVarStr var_A4, "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_BB8487: FStVarCopyObj var_C4
  loc_BB848A: FLdRfVar var_C4
  loc_BB848D: FMemLdR4 var_E4(24)
  loc_BB8492: LitStr "0,00"
  loc_BB8495: EqStr
  loc_BB8497: CVarBoolI2 var_94
  loc_BB849B: FLdRfVar var_104
  loc_BB849E: ImpAdCallFPR4  = IIf(, , )
  loc_BB84A3: LitStr vbNullString
  loc_BB84A6: LitI2_Byte 0
  loc_BB84A8: LitI2_Byte 0
  loc_BB84AA: LitI2_Byte 0
  loc_BB84AC: LitStr "right"
  loc_BB84AF: FLdRfVar var_104
  loc_BB84B2: CStrVarVal var_AC
  loc_BB84B6: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BB84BB: CVarStr var_114
  loc_BB84BE: PopAdLdVar
  loc_BB84BF: FLdPr Me
  loc_BB84C2: MemLdRfVar from_stack_1.global_60
  loc_BB84C5: LdPrVar
  loc_BB84C7: LateMemCall
  loc_BB84CD: FFree1Str var_AC
  loc_BB84D0: FFreeVar var_94 = "": var_C4 = "": var_104 = ""
  loc_BB84DB: FMemLdRf 0
  loc_BB84E0: CVarRef
  loc_BB84E5: LitVarStr var_A4, "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_BB84EA: FStVarCopyObj var_C4
  loc_BB84ED: FLdRfVar var_C4
  loc_BB84F0: FMemLdR4 var_E4(28)
  loc_BB84F5: LitStr "0,00"
  loc_BB84F8: EqStr
  loc_BB84FA: CVarBoolI2 var_94
  loc_BB84FE: FLdRfVar var_104
  loc_BB8501: ImpAdCallFPR4  = IIf(, , )
  loc_BB8506: LitStr vbNullString
  loc_BB8509: LitI2_Byte 0
  loc_BB850B: LitI2_Byte 0
  loc_BB850D: LitI2_Byte 0
  loc_BB850F: LitStr "right"
  loc_BB8512: FLdRfVar var_104
  loc_BB8515: CStrVarVal var_AC
  loc_BB8519: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BB851E: CVarStr var_114
  loc_BB8521: PopAdLdVar
  loc_BB8522: FLdPr Me
  loc_BB8525: MemLdRfVar from_stack_1.global_60
  loc_BB8528: LdPrVar
  loc_BB852A: LateMemCall
  loc_BB8530: FFree1Str var_AC
  loc_BB8533: FFreeVar var_94 = "": var_C4 = "": var_104 = ""
  loc_BB853E: LitI4 0
  loc_BB8543: FStR4 var_E4
  loc_BB8546: AryUnlock
  loc_BB8549: AryUnlock
  loc_BB854C: AryUnlock
  loc_BB854F: AryUnlock
  loc_BB8552: LitVarStr var_94, "  </tr>"
  loc_BB8557: PopAdLdVar
  loc_BB8558: FLdPr Me
  loc_BB855B: MemLdRfVar from_stack_1.global_60
  loc_BB855E: LdPrVar
  loc_BB8560: LateMemCall
  loc_BB8566: FLdPr Me
  loc_BB8569: MemLdRfVar from_stack_1.global_96
  loc_BB856C: NextI2 var_D0, loc_BB8205
  loc_BB8571: FLdPr Me
  loc_BB8574: MemLdRfVar from_stack_1.global_94
  loc_BB8577: NextI2 var_C8, loc_BB80DB
  loc_BB857C: FLdPr Me
  loc_BB857F: MemLdRfVar from_stack_1.global_92
  loc_BB8582: NextI2 var_A8, loc_BB801E
  loc_BB8587: ExitProcHresult
End Function

Private Function Proc_345_24_B32608() 'B32608
  'Data Table: 499658
  loc_B32310: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" cellspacing=""0"" class=""Normal"">"
  loc_B32315: PopAdLdVar
  loc_B32316: FLdPr Me
  loc_B32319: MemLdRfVar from_stack_1.global_60
  loc_B3231C: LdPrVar
  loc_B3231E: LateMemCall
  loc_B32324: LitVarStr var_94, "  <THEAD>"
  loc_B32329: PopAdLdVar
  loc_B3232A: FLdPr Me
  loc_B3232D: MemLdRfVar from_stack_1.global_60
  loc_B32330: LdPrVar
  loc_B32332: LateMemCall
  loc_B32338: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_B3233D: PopAdLdVar
  loc_B3233E: FLdPr Me
  loc_B32341: MemLdRfVar from_stack_1.global_60
  loc_B32344: LdPrVar
  loc_B32346: LateMemCall
  loc_B3234C: LitVarStr var_94, "    <td>Periodo</td>"
  loc_B32351: PopAdLdVar
  loc_B32352: FLdPr Me
  loc_B32355: MemLdRfVar from_stack_1.global_60
  loc_B32358: LdPrVar
  loc_B3235A: LateMemCall
  loc_B32360: LitVarStr var_94, "    <td>Bimestre</td>"
  loc_B32365: PopAdLdVar
  loc_B32366: FLdPr Me
  loc_B32369: MemLdRfVar from_stack_1.global_60
  loc_B3236C: LdPrVar
  loc_B3236E: LateMemCall
  loc_B32374: LitVarStr var_94, "    <td>Detalle o Servicio</td>"
  loc_B32379: PopAdLdVar
  loc_B3237A: FLdPr Me
  loc_B3237D: MemLdRfVar from_stack_1.global_60
  loc_B32380: LdPrVar
  loc_B32382: LateMemCall
  loc_B32388: LitVarStr var_94, "    <td>Cantidad</td>"
  loc_B3238D: PopAdLdVar
  loc_B3238E: FLdPr Me
  loc_B32391: MemLdRfVar from_stack_1.global_60
  loc_B32394: LdPrVar
  loc_B32396: LateMemCall
  loc_B3239C: LitVarStr var_94, "    <td>Precio<br>Unitario</td>"
  loc_B323A1: PopAdLdVar
  loc_B323A2: FLdPr Me
  loc_B323A5: MemLdRfVar from_stack_1.global_60
  loc_B323A8: LdPrVar
  loc_B323AA: LateMemCall
  loc_B323B0: LitVarStr var_94, "    <td>Subtotal</td>"
  loc_B323B5: PopAdLdVar
  loc_B323B6: FLdPr Me
  loc_B323B9: MemLdRfVar from_stack_1.global_60
  loc_B323BC: LdPrVar
  loc_B323BE: LateMemCall
  loc_B323C4: LitVarStr var_94, "    <td>Descuento</td>"
  loc_B323C9: PopAdLdVar
  loc_B323CA: FLdPr Me
  loc_B323CD: MemLdRfVar from_stack_1.global_60
  loc_B323D0: LdPrVar
  loc_B323D2: LateMemCall
  loc_B323D8: LitVarStr var_94, "    <td>Total</td>"
  loc_B323DD: PopAdLdVar
  loc_B323DE: FLdPr Me
  loc_B323E1: MemLdRfVar from_stack_1.global_60
  loc_B323E4: LdPrVar
  loc_B323E6: LateMemCall
  loc_B323EC: LitVarStr var_94, "  </tr>"
  loc_B323F1: PopAdLdVar
  loc_B323F2: FLdPr Me
  loc_B323F5: MemLdRfVar from_stack_1.global_60
  loc_B323F8: LdPrVar
  loc_B323FA: LateMemCall
  loc_B32400: LitVarStr var_94, "  </THEAD>"
  loc_B32405: PopAdLdVar
  loc_B32406: FLdPr Me
  loc_B32409: MemLdRfVar from_stack_1.global_60
  loc_B3240C: LdPrVar
  loc_B3240E: LateMemCall
  loc_B32414: LitI2_Byte 1
  loc_B32416: FLdPr Me
  loc_B32419: MemLdRfVar from_stack_1.global_96
  loc_B3241C: LitI4 1
  loc_B32421: FLdPr Me
  loc_B32424: MemLdStr global_88
  loc_B32427: Ary1LdPr
  loc_B32428: MemLdStr global_108
  loc_B3242B: LitI2_Byte 1
  loc_B3242D: FnUBound
  loc_B3242F: CI2I4
  loc_B32430: ForI2 var_A8
  loc_B32436: LitVarStr var_94, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B3243B: PopAdLdVar
  loc_B3243C: FLdPr Me
  loc_B3243F: MemLdRfVar from_stack_1.global_60
  loc_B32442: LdPrVar
  loc_B32444: LateMemCall
  loc_B3244A: FLdPr Me
  loc_B3244D: MemLdI2 global_96
  loc_B32450: CI4UI1
  loc_B32451: LitI4 1
  loc_B32456: FLdPr Me
  loc_B32459: MemLdStr global_88
  loc_B3245C: AryLock
  loc_B3245F: Ary1LdPr
  loc_B32460: MemLdStr global_108
  loc_B32463: AryLock
  loc_B32466: Ary1LdRf
  loc_B32467: FStR4 var_B4
  loc_B3246A: LitStr vbNullString
  loc_B3246D: LitI2_Byte 0
  loc_B3246F: LitI2_Byte 0
  loc_B32471: LitI2_Byte 0
  loc_B32473: LitStr "right"
  loc_B32476: FMemLdR4 var_B4(0)
  loc_B3247B: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B32480: CVarStr var_C4
  loc_B32483: PopAdLdVar
  loc_B32484: FLdPr Me
  loc_B32487: MemLdRfVar from_stack_1.global_60
  loc_B3248A: LdPrVar
  loc_B3248C: LateMemCall
  loc_B32492: FFree1Var var_C4 = ""
  loc_B32495: LitStr vbNullString
  loc_B32498: LitI2_Byte 0
  loc_B3249A: LitI2_Byte 0
  loc_B3249C: LitI2_Byte 0
  loc_B3249E: LitStr "right"
  loc_B324A1: FMemLdR4 var_B4(4)
  loc_B324A6: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B324AB: CVarStr var_C4
  loc_B324AE: PopAdLdVar
  loc_B324AF: FLdPr Me
  loc_B324B2: MemLdRfVar from_stack_1.global_60
  loc_B324B5: LdPrVar
  loc_B324B7: LateMemCall
  loc_B324BD: FFree1Var var_C4 = ""
  loc_B324C0: LitStr vbNullString
  loc_B324C3: LitI2_Byte 0
  loc_B324C5: LitI2_Byte 0
  loc_B324C7: LitI2_Byte 0
  loc_B324C9: LitStr "left"
  loc_B324CC: FMemLdR4 var_B4(16)
  loc_B324D1: LitStr " - "
  loc_B324D4: ConcatStr
  loc_B324D5: FStStrNoPop var_C8
  loc_B324D8: FMemLdR4 var_B4(20)
  loc_B324DD: ConcatStr
  loc_B324DE: FStStrNoPop var_CC
  loc_B324E1: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B324E6: CVarStr var_C4
  loc_B324E9: PopAdLdVar
  loc_B324EA: FLdPr Me
  loc_B324ED: MemLdRfVar from_stack_1.global_60
  loc_B324F0: LdPrVar
  loc_B324F2: LateMemCall
  loc_B324F8: FFreeStr var_C8 = ""
  loc_B324FF: FFree1Var var_C4 = ""
  loc_B32502: LitStr vbNullString
  loc_B32505: LitI2_Byte 0
  loc_B32507: LitI2_Byte 0
  loc_B32509: LitI2_Byte 0
  loc_B3250B: LitStr "right"
  loc_B3250E: FMemLdR4 var_B4(24)
  loc_B32513: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B32518: CVarStr var_C4
  loc_B3251B: PopAdLdVar
  loc_B3251C: FLdPr Me
  loc_B3251F: MemLdRfVar from_stack_1.global_60
  loc_B32522: LdPrVar
  loc_B32524: LateMemCall
  loc_B3252A: FFree1Var var_C4 = ""
  loc_B3252D: LitStr vbNullString
  loc_B32530: LitI2_Byte 0
  loc_B32532: LitI2_Byte 0
  loc_B32534: LitI2_Byte 0
  loc_B32536: LitStr "right"
  loc_B32539: FMemLdR4 var_B4(28)
  loc_B3253E: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B32543: CVarStr var_C4
  loc_B32546: PopAdLdVar
  loc_B32547: FLdPr Me
  loc_B3254A: MemLdRfVar from_stack_1.global_60
  loc_B3254D: LdPrVar
  loc_B3254F: LateMemCall
  loc_B32555: FFree1Var var_C4 = ""
  loc_B32558: LitStr vbNullString
  loc_B3255B: LitI2_Byte 0
  loc_B3255D: LitI2_Byte 0
  loc_B3255F: LitI2_Byte 0
  loc_B32561: LitStr "right"
  loc_B32564: FMemLdR4 var_B4(32)
  loc_B32569: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B3256E: CVarStr var_C4
  loc_B32571: PopAdLdVar
  loc_B32572: FLdPr Me
  loc_B32575: MemLdRfVar from_stack_1.global_60
  loc_B32578: LdPrVar
  loc_B3257A: LateMemCall
  loc_B32580: FFree1Var var_C4 = ""
  loc_B32583: LitStr vbNullString
  loc_B32586: LitI2_Byte 0
  loc_B32588: LitI2_Byte 0
  loc_B3258A: LitI2_Byte 0
  loc_B3258C: LitStr "right"
  loc_B3258F: FMemLdR4 var_B4(36)
  loc_B32594: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B32599: CVarStr var_C4
  loc_B3259C: PopAdLdVar
  loc_B3259D: FLdPr Me
  loc_B325A0: MemLdRfVar from_stack_1.global_60
  loc_B325A3: LdPrVar
  loc_B325A5: LateMemCall
  loc_B325AB: FFree1Var var_C4 = ""
  loc_B325AE: LitStr vbNullString
  loc_B325B1: LitI2_Byte 0
  loc_B325B3: LitI2_Byte 0
  loc_B325B5: LitI2_Byte 0
  loc_B325B7: LitStr "right"
  loc_B325BA: FMemLdR4 var_B4(40)
  loc_B325BF: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B325C4: CVarStr var_C4
  loc_B325C7: PopAdLdVar
  loc_B325C8: FLdPr Me
  loc_B325CB: MemLdRfVar from_stack_1.global_60
  loc_B325CE: LdPrVar
  loc_B325D0: LateMemCall
  loc_B325D6: FFree1Var var_C4 = ""
  loc_B325D9: LitI4 0
  loc_B325DE: FStR4 var_B4
  loc_B325E1: AryUnlock
  loc_B325E4: AryUnlock
  loc_B325E7: LitVarStr var_94, "     </tr>"
  loc_B325EC: PopAdLdVar
  loc_B325ED: FLdPr Me
  loc_B325F0: MemLdRfVar from_stack_1.global_60
  loc_B325F3: LdPrVar
  loc_B325F5: LateMemCall
  loc_B325FB: FLdPr Me
  loc_B325FE: MemLdRfVar from_stack_1.global_96
  loc_B32601: NextI2 var_A8, loc_B32436
  loc_B32606: ExitProcHresult
End Function

Private Function Proc_345_25_B476D8() 'B476D8
  'Data Table: 499658
  loc_B47358: LitI4 1
  loc_B4735D: FLdPr Me
  loc_B47360: MemLdStr global_108
  loc_B47363: AryLock
  loc_B47366: Ary1LdRf
  loc_B47367: FStR4 var_8C
  loc_B4736A: LitI4 1
  loc_B4736F: FLdPr Me
  loc_B47372: MemLdStr global_88
  loc_B47375: Ary1LdPr
  loc_B47376: MemLdStr global_40
  loc_B47379: CR8Str
  loc_B4737B: LitI2_Byte 0
  loc_B4737D: CR8I2
  loc_B4737E: EqR4
  loc_B4737F: BranchF loc_B4749D
  loc_B47382: LitVarStr var_9C, "  <tr>"
  loc_B47387: PopAdLdVar
  loc_B47388: FLdPr Me
  loc_B4738B: MemLdRfVar from_stack_1.global_60
  loc_B4738E: LdPrVar
  loc_B47390: LateMemCall
  loc_B47396: LitVarStr var_9C, "    <td>&nbsp;</td>"
  loc_B4739B: PopAdLdVar
  loc_B4739C: FLdPr Me
  loc_B4739F: MemLdRfVar from_stack_1.global_60
  loc_B473A2: LdPrVar
  loc_B473A4: LateMemCall
  loc_B473AA: LitVarStr var_9C, "    <td colspan=""4"" align=""right"" valign=""top"" class=""Encabezado"">TOTALES:</td>"
  loc_B473AF: PopAdLdVar
  loc_B473B0: FLdPr Me
  loc_B473B3: MemLdRfVar from_stack_1.global_60
  loc_B473B6: LdPrVar
  loc_B473B8: LateMemCall
  loc_B473BE: LitStr "    <td align=""right"" class=""Totales"">"
  loc_B473C1: FMemLdR4 var_8C(12)
  loc_B473C6: ConcatStr
  loc_B473C7: FStStrNoPop var_B0
  loc_B473CA: LitStr "</td>"
  loc_B473CD: ConcatStr
  loc_B473CE: CVarStr var_C0
  loc_B473D1: PopAdLdVar
  loc_B473D2: FLdPr Me
  loc_B473D5: MemLdRfVar from_stack_1.global_60
  loc_B473D8: LdPrVar
  loc_B473DA: LateMemCall
  loc_B473E0: FFree1Str var_B0
  loc_B473E3: FFree1Var var_C0 = ""
  loc_B473E6: LitStr "    <td align=""right"" class=""Totales"">"
  loc_B473E9: FMemLdR4 var_8C(16)
  loc_B473EE: ConcatStr
  loc_B473EF: FStStrNoPop var_B0
  loc_B473F2: LitStr "</td>"
  loc_B473F5: ConcatStr
  loc_B473F6: CVarStr var_C0
  loc_B473F9: PopAdLdVar
  loc_B473FA: FLdPr Me
  loc_B473FD: MemLdRfVar from_stack_1.global_60
  loc_B47400: LdPrVar
  loc_B47402: LateMemCall
  loc_B47408: FFree1Str var_B0
  loc_B4740B: FFree1Var var_C0 = ""
  loc_B4740E: LitStr "    <td align=""right"" class=""Totales"">"
  loc_B47411: FMemLdR4 var_8C(20)
  loc_B47416: ConcatStr
  loc_B47417: FStStrNoPop var_B0
  loc_B4741A: LitStr "</td>"
  loc_B4741D: ConcatStr
  loc_B4741E: CVarStr var_C0
  loc_B47421: PopAdLdVar
  loc_B47422: FLdPr Me
  loc_B47425: MemLdRfVar from_stack_1.global_60
  loc_B47428: LdPrVar
  loc_B4742A: LateMemCall
  loc_B47430: FFree1Str var_B0
  loc_B47433: FFree1Var var_C0 = ""
  loc_B47436: LitStr "    <td align=""right"" class=""Totales"">"
  loc_B47439: FMemLdR4 var_8C(24)
  loc_B4743E: ConcatStr
  loc_B4743F: FStStrNoPop var_B0
  loc_B47442: LitStr "</td>"
  loc_B47445: ConcatStr
  loc_B47446: CVarStr var_C0
  loc_B47449: PopAdLdVar
  loc_B4744A: FLdPr Me
  loc_B4744D: MemLdRfVar from_stack_1.global_60
  loc_B47450: LdPrVar
  loc_B47452: LateMemCall
  loc_B47458: FFree1Str var_B0
  loc_B4745B: FFree1Var var_C0 = ""
  loc_B4745E: LitStr "    <td align=""right"" class=""TotalGeneral"">"
  loc_B47461: FMemLdR4 var_8C(28)
  loc_B47466: ConcatStr
  loc_B47467: FStStrNoPop var_B0
  loc_B4746A: LitStr "</td>"
  loc_B4746D: ConcatStr
  loc_B4746E: CVarStr var_C0
  loc_B47471: PopAdLdVar
  loc_B47472: FLdPr Me
  loc_B47475: MemLdRfVar from_stack_1.global_60
  loc_B47478: LdPrVar
  loc_B4747A: LateMemCall
  loc_B47480: FFree1Str var_B0
  loc_B47483: FFree1Var var_C0 = ""
  loc_B47486: LitVarStr var_9C, "  </tr>"
  loc_B4748B: PopAdLdVar
  loc_B4748C: FLdPr Me
  loc_B4748F: MemLdRfVar from_stack_1.global_60
  loc_B47492: LdPrVar
  loc_B47494: LateMemCall
  loc_B4749A: Branch loc_B476B5
  loc_B4749D: LitI2_Byte 0
  loc_B4749F: LitVar_Missing var_C0
  loc_B474A2: LitI2_Byte &HFF
  loc_B474A4: LitI4 1
  loc_B474A9: FLdPr Me
  loc_B474AC: MemLdStr global_88
  loc_B474AF: Ary1LdPr
  loc_B474B0: MemLdStr global_40
  loc_B474B3: CR8Str
  loc_B474B5: FMemLdR4 var_8C(28)
  loc_B474BA: CR8Str
  loc_B474BC: AddR8
  loc_B474BD: CVarR8
  loc_B474C1: PopAdLdVar
  loc_B474C2: FLdRfVar var_C4
  loc_B474C5: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B474CA: FFree1Var var_C0 = ""
  loc_B474CD: LitVarStr var_9C, "  <tr>"
  loc_B474D2: PopAdLdVar
  loc_B474D3: FLdPr Me
  loc_B474D6: MemLdRfVar from_stack_1.global_60
  loc_B474D9: LdPrVar
  loc_B474DB: LateMemCall
  loc_B474E1: LitVarStr var_9C, "    <td rowspan=""3"">&nbsp;</td>"
  loc_B474E6: PopAdLdVar
  loc_B474E7: FLdPr Me
  loc_B474EA: MemLdRfVar from_stack_1.global_60
  loc_B474ED: LdPrVar
  loc_B474EF: LateMemCall
  loc_B474F5: LitVarStr var_9C, "    <td colspan=""4"" align=""right"" valign=""top"" class=""Encabezado"">SUBTOTALES:</td>"
  loc_B474FA: PopAdLdVar
  loc_B474FB: FLdPr Me
  loc_B474FE: MemLdRfVar from_stack_1.global_60
  loc_B47501: LdPrVar
  loc_B47503: LateMemCall
  loc_B47509: LitStr "    <td align=""right"" class=""Totales"">"
  loc_B4750C: FMemLdR4 var_8C(12)
  loc_B47511: ConcatStr
  loc_B47512: FStStrNoPop var_B0
  loc_B47515: LitStr "</td>"
  loc_B47518: ConcatStr
  loc_B47519: CVarStr var_C0
  loc_B4751C: PopAdLdVar
  loc_B4751D: FLdPr Me
  loc_B47520: MemLdRfVar from_stack_1.global_60
  loc_B47523: LdPrVar
  loc_B47525: LateMemCall
  loc_B4752B: FFree1Str var_B0
  loc_B4752E: FFree1Var var_C0 = ""
  loc_B47531: LitStr "    <td align=""right"" class=""Totales"">"
  loc_B47534: FMemLdR4 var_8C(16)
  loc_B47539: ConcatStr
  loc_B4753A: FStStrNoPop var_B0
  loc_B4753D: LitStr "</td>"
  loc_B47540: ConcatStr
  loc_B47541: CVarStr var_C0
  loc_B47544: PopAdLdVar
  loc_B47545: FLdPr Me
  loc_B47548: MemLdRfVar from_stack_1.global_60
  loc_B4754B: LdPrVar
  loc_B4754D: LateMemCall
  loc_B47553: FFree1Str var_B0
  loc_B47556: FFree1Var var_C0 = ""
  loc_B47559: LitStr "    <td align=""right"" class=""Totales"">"
  loc_B4755C: FMemLdR4 var_8C(20)
  loc_B47561: ConcatStr
  loc_B47562: FStStrNoPop var_B0
  loc_B47565: LitStr "</td>"
  loc_B47568: ConcatStr
  loc_B47569: CVarStr var_C0
  loc_B4756C: PopAdLdVar
  loc_B4756D: FLdPr Me
  loc_B47570: MemLdRfVar from_stack_1.global_60
  loc_B47573: LdPrVar
  loc_B47575: LateMemCall
  loc_B4757B: FFree1Str var_B0
  loc_B4757E: FFree1Var var_C0 = ""
  loc_B47581: LitStr "    <td align=""right"" class=""Totales"">"
  loc_B47584: FMemLdR4 var_8C(24)
  loc_B47589: ConcatStr
  loc_B4758A: FStStrNoPop var_B0
  loc_B4758D: LitStr "</td>"
  loc_B47590: ConcatStr
  loc_B47591: CVarStr var_C0
  loc_B47594: PopAdLdVar
  loc_B47595: FLdPr Me
  loc_B47598: MemLdRfVar from_stack_1.global_60
  loc_B4759B: LdPrVar
  loc_B4759D: LateMemCall
  loc_B475A3: FFree1Str var_B0
  loc_B475A6: FFree1Var var_C0 = ""
  loc_B475A9: LitStr "    <td align=""right"" class=""Total"">"
  loc_B475AC: FMemLdR4 var_8C(28)
  loc_B475B1: ConcatStr
  loc_B475B2: FStStrNoPop var_B0
  loc_B475B5: LitStr "</td>"
  loc_B475B8: ConcatStr
  loc_B475B9: CVarStr var_C0
  loc_B475BC: PopAdLdVar
  loc_B475BD: FLdPr Me
  loc_B475C0: MemLdRfVar from_stack_1.global_60
  loc_B475C3: LdPrVar
  loc_B475C5: LateMemCall
  loc_B475CB: FFree1Str var_B0
  loc_B475CE: FFree1Var var_C0 = ""
  loc_B475D1: LitVarStr var_9C, "  </tr>"
  loc_B475D6: PopAdLdVar
  loc_B475D7: FLdPr Me
  loc_B475DA: MemLdRfVar from_stack_1.global_60
  loc_B475DD: LdPrVar
  loc_B475DF: LateMemCall
  loc_B475E5: LitVarStr var_9C, "  <tr>"
  loc_B475EA: PopAdLdVar
  loc_B475EB: FLdPr Me
  loc_B475EE: MemLdRfVar from_stack_1.global_60
  loc_B475F1: LdPrVar
  loc_B475F3: LateMemCall
  loc_B475F9: LitVarStr var_9C, "    <td colspan=""8"" align=""right"" valign=""top"" class=""Encabezado"">APREMIO:</td>"
  loc_B475FE: PopAdLdVar
  loc_B475FF: FLdPr Me
  loc_B47602: MemLdRfVar from_stack_1.global_60
  loc_B47605: LdPrVar
  loc_B47607: LateMemCall
  loc_B4760D: LitStr "    <td align=""right"" class=""Total"">"
  loc_B47610: LitI4 1
  loc_B47615: FLdPr Me
  loc_B47618: MemLdStr global_88
  loc_B4761B: Ary1LdPr
  loc_B4761C: MemLdStr global_40
  loc_B4761F: ConcatStr
  loc_B47620: FStStrNoPop var_B0
  loc_B47623: LitStr "</td>"
  loc_B47626: ConcatStr
  loc_B47627: CVarStr var_C0
  loc_B4762A: PopAdLdVar
  loc_B4762B: FLdPr Me
  loc_B4762E: MemLdRfVar from_stack_1.global_60
  loc_B47631: LdPrVar
  loc_B47633: LateMemCall
  loc_B47639: FFree1Str var_B0
  loc_B4763C: FFree1Var var_C0 = ""
  loc_B4763F: LitVarStr var_9C, "  </tr>"
  loc_B47644: PopAdLdVar
  loc_B47645: FLdPr Me
  loc_B47648: MemLdRfVar from_stack_1.global_60
  loc_B4764B: LdPrVar
  loc_B4764D: LateMemCall
  loc_B47653: LitVarStr var_9C, "  <tr>"
  loc_B47658: PopAdLdVar
  loc_B47659: FLdPr Me
  loc_B4765C: MemLdRfVar from_stack_1.global_60
  loc_B4765F: LdPrVar
  loc_B47661: LateMemCall
  loc_B47667: LitVarStr var_9C, "    <td colspan=""8"" align=""right"" valign=""top"" class=""Encabezado"">TOTAL:</td>"
  loc_B4766C: PopAdLdVar
  loc_B4766D: FLdPr Me
  loc_B47670: MemLdRfVar from_stack_1.global_60
  loc_B47673: LdPrVar
  loc_B47675: LateMemCall
  loc_B4767B: LitStr "    <td align=""right"" class=""TotalGeneral"">"
  loc_B4767E: ILdRf var_C4
  loc_B47681: ConcatStr
  loc_B47682: FStStrNoPop var_B0
  loc_B47685: LitStr "</td>"
  loc_B47688: ConcatStr
  loc_B47689: CVarStr var_C0
  loc_B4768C: PopAdLdVar
  loc_B4768D: FLdPr Me
  loc_B47690: MemLdRfVar from_stack_1.global_60
  loc_B47693: LdPrVar
  loc_B47695: LateMemCall
  loc_B4769B: FFree1Str var_B0
  loc_B4769E: FFree1Var var_C0 = ""
  loc_B476A1: LitVarStr var_9C, "  </tr>"
  loc_B476A6: PopAdLdVar
  loc_B476A7: FLdPr Me
  loc_B476AA: MemLdRfVar from_stack_1.global_60
  loc_B476AD: LdPrVar
  loc_B476AF: LateMemCall
  loc_B476B5: LitVarStr var_9C, "</table>"
  loc_B476BA: PopAdLdVar
  loc_B476BB: FLdPr Me
  loc_B476BE: MemLdRfVar from_stack_1.global_60
  loc_B476C1: LdPrVar
  loc_B476C3: LateMemCall
  loc_B476C9: LitI4 0
  loc_B476CE: FStR4 var_8C
  loc_B476D1: AryUnlock
  loc_B476D4: ExitProcHresult
End Function

Private Function Proc_345_26_ABC8C8() 'ABC8C8
  'Data Table: 499658
  loc_ABC7CC: LitI4 1
  loc_ABC7D1: FLdPr Me
  loc_ABC7D4: MemLdStr global_112
  loc_ABC7D7: AryLock
  loc_ABC7DA: Ary1LdRf
  loc_ABC7DB: FStR4 var_8C
  loc_ABC7DE: LitVarStr var_9C, "  <tr align=""right"">"
  loc_ABC7E3: PopAdLdVar
  loc_ABC7E4: FLdPr Me
  loc_ABC7E7: MemLdRfVar from_stack_1.global_60
  loc_ABC7EA: LdPrVar
  loc_ABC7EC: LateMemCall
  loc_ABC7F2: LitVarStr var_9C, "    <td colspan=""4"">&nbsp;</td>"
  loc_ABC7F7: PopAdLdVar
  loc_ABC7F8: FLdPr Me
  loc_ABC7FB: MemLdRfVar from_stack_1.global_60
  loc_ABC7FE: LdPrVar
  loc_ABC800: LateMemCall
  loc_ABC806: LitVarStr var_9C, "    <td align=""center"" class=""Encabezado"">TOTALES:</td>"
  loc_ABC80B: PopAdLdVar
  loc_ABC80C: FLdPr Me
  loc_ABC80F: MemLdRfVar from_stack_1.global_60
  loc_ABC812: LdPrVar
  loc_ABC814: LateMemCall
  loc_ABC81A: LitStr "    <td class=""Totales"">"
  loc_ABC81D: FMemLdR4 var_8C(32)
  loc_ABC822: ConcatStr
  loc_ABC823: FStStrNoPop var_B0
  loc_ABC826: LitStr "</td>"
  loc_ABC829: ConcatStr
  loc_ABC82A: CVarStr var_C0
  loc_ABC82D: PopAdLdVar
  loc_ABC82E: FLdPr Me
  loc_ABC831: MemLdRfVar from_stack_1.global_60
  loc_ABC834: LdPrVar
  loc_ABC836: LateMemCall
  loc_ABC83C: FFree1Str var_B0
  loc_ABC83F: FFree1Var var_C0 = ""
  loc_ABC842: LitStr "    <td class=""Totales"">"
  loc_ABC845: FMemLdR4 var_8C(36)
  loc_ABC84A: ConcatStr
  loc_ABC84B: FStStrNoPop var_B0
  loc_ABC84E: LitStr "</td>"
  loc_ABC851: ConcatStr
  loc_ABC852: CVarStr var_C0
  loc_ABC855: PopAdLdVar
  loc_ABC856: FLdPr Me
  loc_ABC859: MemLdRfVar from_stack_1.global_60
  loc_ABC85C: LdPrVar
  loc_ABC85E: LateMemCall
  loc_ABC864: FFree1Str var_B0
  loc_ABC867: FFree1Var var_C0 = ""
  loc_ABC86A: LitStr "    <td class=""Totales"">"
  loc_ABC86D: FMemLdR4 var_8C(40)
  loc_ABC872: ConcatStr
  loc_ABC873: FStStrNoPop var_B0
  loc_ABC876: LitStr "</td>"
  loc_ABC879: ConcatStr
  loc_ABC87A: CVarStr var_C0
  loc_ABC87D: PopAdLdVar
  loc_ABC87E: FLdPr Me
  loc_ABC881: MemLdRfVar from_stack_1.global_60
  loc_ABC884: LdPrVar
  loc_ABC886: LateMemCall
  loc_ABC88C: FFree1Str var_B0
  loc_ABC88F: FFree1Var var_C0 = ""
  loc_ABC892: LitVarStr var_9C, "  </tr>"
  loc_ABC897: PopAdLdVar
  loc_ABC898: FLdPr Me
  loc_ABC89B: MemLdRfVar from_stack_1.global_60
  loc_ABC89E: LdPrVar
  loc_ABC8A0: LateMemCall
  loc_ABC8A6: LitI4 0
  loc_ABC8AB: FStR4 var_8C
  loc_ABC8AE: AryUnlock
  loc_ABC8B1: LitVarStr var_9C, "</table>"
  loc_ABC8B6: PopAdLdVar
  loc_ABC8B7: FLdPr Me
  loc_ABC8BA: MemLdRfVar from_stack_1.global_60
  loc_ABC8BD: LdPrVar
  loc_ABC8BF: LateMemCall
  loc_ABC8C5: ExitProcHresult
End Function

Private Function Proc_345_27_9F6990() '9F6990
  'Data Table: 499658
  loc_9F6964: LitVarStr var_94, "</body>"
  loc_9F6969: PopAdLdVar
  loc_9F696A: FLdPr Me
  loc_9F696D: MemLdRfVar from_stack_1.global_60
  loc_9F6970: LdPrVar
  loc_9F6972: LateMemCall
  loc_9F6978: LitVarStr var_94, "</html>"
  loc_9F697D: PopAdLdVar
  loc_9F697E: FLdPr Me
  loc_9F6981: MemLdRfVar from_stack_1.global_60
  loc_9F6984: LdPrVar
  loc_9F6986: LateMemCall
  loc_9F698C: ExitProcHresult
End Function

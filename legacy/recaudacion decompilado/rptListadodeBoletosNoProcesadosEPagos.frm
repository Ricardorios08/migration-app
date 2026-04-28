VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptListadodeBoletosNoProcesadosEPagos
  Caption = "Listado de Boletos NO procesados E-PAGOS"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptListadodeBoletosNoProcesadosEPagos.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 10740
  ClientHeight = 3840
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 12
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 3585
    Width = 10740
    Height = 255
    TabIndex = 15
    OleObjectBlob = "rptListadodeBoletosNoProcesadosEPagos.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 8040
    Top = 2400
    Width = 855
    Height = 735
    TabIndex = 13
    Cancel = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 7,8
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Picture = "rptListadodeBoletosNoProcesadosEPagos.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptListadodeBoletosNoProcesadosEPagos.frx":0B9C
    Left = 9720
    Top = 2640
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4440
    Top = 2160
    Width = 3495
    Height = 1215
    TabIndex = 10
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1800
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 12
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 11
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 2160
    Width = 4095
    Height = 1215
    TabIndex = 7
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1920
      Top = 360
      Width = 2055
      Height = 615
      TabIndex = 9
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1695
      Height = 615
      TabIndex = 8
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 8535
    Height = 1935
    TabIndex = 0
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 7,8
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.Frame Frame4
      Left = 120
      Top = 240
      Width = 6615
      Height = 1455
      TabIndex = 1
      Begin MSMask.MaskEdBox FealCtctDesdeMsk
        Left = 3720
        Top = 360
        Width = 1335
        Height = 360
        TabIndex = 3
        OleObjectBlob = "rptListadodeBoletosNoProcesadosEPagos.frx":0C00
      End
      Begin MSMask.MaskEdBox FealCtctHastaMsk
        Left = 3720
        Top = 840
        Width = 1335
        Height = 360
        TabIndex = 5
        OleObjectBlob = "rptListadodeBoletosNoProcesadosEPagos.frx":0CB0
      End
      Begin VB.Label Label6
        Caption = "Desde Fecha de Proceso:"
        Left = 840
        Top = 360
        Width = 2760
        Height = 300
        TabIndex = 2
        AutoSize = -1  'True
      End
      Begin VB.Label Label5
        Caption = "Hasta Fecha de Proceso:"
        Left = 840
        Top = 840
        Width = 2700
        Height = 300
        TabIndex = 4
        AutoSize = -1  'True
      End
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 6840
      Top = 360
      Width = 1575
      Height = 615
      TabIndex = 6
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 8280
    Top = 2760
    Width = 615
    Height = 255
    TabStop = 0   'False
    TabIndex = 14
    OleObjectBlob = "rptListadodeBoletosNoProcesadosEPagos.frx":0D60
  End
End

Attribute VB_Name = "rptListadodeBoletosNoProcesadosEPagos"

Public bGenerado As Boolean
Public bLogos As Boolean

Private Type UDT_1_00562720
  bStruc(20) As Byte ' String fields: 5
End Type


Private Sub cmdPredeterminada_Click() '9C86C8
  'Data Table: 46E884
  loc_9C86B0: LitI2_Byte 0
  loc_9C86B2: ILdRf Me
  loc_9C86B5: CastAd
  loc_9C86B8: FStAdFunc var_88
  loc_9C86BB: FLdRfVar var_88
  loc_9C86BE: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9C86C3: FFree1Ad var_88
  loc_9C86C6: ExitProcHresult
End Sub

Private Sub FealCtctDesdeMsk_UnknownEvent_0 '9C5FA8
  'Data Table: 46E884
  loc_9C5F94: FLdPr Me
  loc_9C5F97: VCallAd Control_ID_FealCtctDesdeMsk
  loc_9C5F9A: CVarAd
  loc_9C5F9E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C5FA3: FFree1Var var_94 = ""
  loc_9C5FA6: ExitProcHresult
End Sub

Private Function FealCtctDesdeMsk_UnknownEvent_8(arg_C) 'A64380
  'Data Table: 46E884
  loc_A64324: FLdPr Me
  loc_A64327: VCallAd Control_ID_FealCtctDesdeMsk
  loc_A6432A: FStAdFunc var_88
  loc_A6432D: FLdPr var_88
  loc_A64330: LateIdLdVar var_98 DispID_15 0
  loc_A64337: CStrVarTmp
  loc_A64338: FStStrNoPop var_9C
  loc_A6433B: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A64340: FStStrNoPop var_A0
  loc_A64343: FLdPr Me
  loc_A64346: MemStStrCopy
  loc_A6434A: FFreeStr var_9C = ""
  loc_A64351: FFree1Ad var_88
  loc_A64354: FFree1Var var_98 = ""
  loc_A64357: FLdPr Me
  loc_A6435A: VCallAd Control_ID_FealCtctDesdeMsk
  loc_A6435D: FStAdFuncNoPop
  loc_A64360: CastAd
  loc_A64363: FStAdFunc var_A4
  loc_A64366: FLdRfVar var_A4
  loc_A64369: FLdPr Me
  loc_A6436C: MemLdStr global_108
  loc_A6436F: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A64374: IStI2 arg_C
  loc_A64377: FFreeAd var_88 = ""
  loc_A6437E: ExitProcHresult
End Function

Private Sub FealCtctDesdeMsk_KeyPress(KeyAscii As Integer) 'A24674
  'Data Table: 46E884
  loc_A2462C: ILdI2 KeyAscii
  loc_A2462F: CI4UI1
  loc_A24630: LitI4 &H20
  loc_A24635: EqI4
  loc_A24636: BranchF loc_A24673
  loc_A24639: LitVar_Missing var_A4
  loc_A2463C: PopAdLdVar
  loc_A2463D: LitVarI4
  loc_A24645: PopAdLdVar
  loc_A24646: ImpAdLdRf MemVar_D930A4
  loc_A24649: NewIfNullPr frmCalendario
  loc_A2464C: frmCalendario.Show from_stack_1, from_stack_2
  loc_A24651: ImpAdLdRf MemVar_D93028
  loc_A24654: CDargRef
  loc_A24658: FLdPr Me
  loc_A2465B: VCallAd Control_ID_FealCtctDesdeMsk
  loc_A2465E: FStAdFunc var_A8
  loc_A24661: FLdPr var_A8
  loc_A24664: LateIdSt
  loc_A24669: FFree1Ad var_A8
  loc_A2466C: LitStr vbNullString
  loc_A2466F: ImpAdStStrCopy MemVar_D93028
  loc_A24673: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '9DF3DC
  'Data Table: 46E884
  loc_9DF3C0: LitI2_Byte &HFF
  loc_9DF3C2: LitI2_Byte 0
  loc_9DF3C4: ILdRf Me
  loc_9DF3C7: CastAd
  loc_9DF3CA: FStAdFunc var_88
  loc_9DF3CD: FLdRfVar var_88
  loc_9DF3D0: ImpAdCallFPR4 Proc_57_4_AFAAC0(, , )
  loc_9DF3D5: FFree1Ad var_88
  loc_9DF3D8: ExitProcHresult
End Sub

Private Sub FealCtctHastaMsk_UnknownEvent_0 '9C5F18
  'Data Table: 46E884
  loc_9C5F04: FLdPr Me
  loc_9C5F07: VCallAd Control_ID_FealCtctHastaMsk
  loc_9C5F0A: CVarAd
  loc_9C5F0E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C5F13: FFree1Var var_94 = ""
  loc_9C5F16: ExitProcHresult
End Sub

Private Function FealCtctHastaMsk_UnknownEvent_8(arg_C) 'A64420
  'Data Table: 46E884
  loc_A643C4: FLdPr Me
  loc_A643C7: VCallAd Control_ID_FealCtctHastaMsk
  loc_A643CA: FStAdFunc var_88
  loc_A643CD: FLdPr var_88
  loc_A643D0: LateIdLdVar var_98 DispID_15 0
  loc_A643D7: CStrVarTmp
  loc_A643D8: FStStrNoPop var_9C
  loc_A643DB: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A643E0: FStStrNoPop var_A0
  loc_A643E3: FLdPr Me
  loc_A643E6: MemStStrCopy
  loc_A643EA: FFreeStr var_9C = ""
  loc_A643F1: FFree1Ad var_88
  loc_A643F4: FFree1Var var_98 = ""
  loc_A643F7: FLdPr Me
  loc_A643FA: VCallAd Control_ID_FealCtctHastaMsk
  loc_A643FD: FStAdFuncNoPop
  loc_A64400: CastAd
  loc_A64403: FStAdFunc var_A4
  loc_A64406: FLdRfVar var_A4
  loc_A64409: FLdPr Me
  loc_A6440C: MemLdStr global_108
  loc_A6440F: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A64414: IStI2 arg_C
  loc_A64417: FFreeAd var_88 = ""
  loc_A6441E: ExitProcHresult
End Function

Private Sub FealCtctHastaMsk_KeyPress(KeyAscii As Integer) 'A246F0
  'Data Table: 46E884
  loc_A246A8: ILdI2 KeyAscii
  loc_A246AB: CI4UI1
  loc_A246AC: LitI4 &H20
  loc_A246B1: EqI4
  loc_A246B2: BranchF loc_A246EF
  loc_A246B5: LitVar_Missing var_A4
  loc_A246B8: PopAdLdVar
  loc_A246B9: LitVarI4
  loc_A246C1: PopAdLdVar
  loc_A246C2: ImpAdLdRf MemVar_D930A4
  loc_A246C5: NewIfNullPr frmCalendario
  loc_A246C8: frmCalendario.Show from_stack_1, from_stack_2
  loc_A246CD: ImpAdLdRf MemVar_D93028
  loc_A246D0: CDargRef
  loc_A246D4: FLdPr Me
  loc_A246D7: VCallAd Control_ID_FealCtctHastaMsk
  loc_A246DA: FStAdFunc var_A8
  loc_A246DD: FLdPr var_A8
  loc_A246E0: LateIdSt
  loc_A246E5: FFree1Ad var_A8
  loc_A246E8: LitStr vbNullString
  loc_A246EB: ImpAdStStrCopy MemVar_D93028
  loc_A246EF: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9CAFC0
  'Data Table: 46E884
  loc_9CAFA8: ILdRf Me
  loc_9CAFAB: CastAd
  loc_9CAFAE: FStAdFunc var_88
  loc_9CAFB1: FLdRfVar var_88
  loc_9CAFB4: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9CAFB9: FFree1Ad var_88
  loc_9CAFBC: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'A79928
  'Data Table: 46E884
  loc_A798A8: LitI2_Byte 0
  loc_A798AA: FLdPr Me
  loc_A798AD: MemStI2 bGenerado
  loc_A798B0: LitI2_Byte 0
  loc_A798B2: ILdRf Me
  loc_A798B5: CastAd
  loc_A798B8: FStAdFunc var_88
  loc_A798BB: FLdRfVar var_88
  loc_A798BE: ImpAdCallFPR4  = Proc_272_46_B065FC()
  loc_A798C3: FFree1Ad var_88
  loc_A798C6: LitI2_Byte 0
  loc_A798C8: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_A798CD: CStrDate
  loc_A798CF: CVarStr var_98
  loc_A798D2: PopAdLdVar
  loc_A798D3: FLdPr Me
  loc_A798D6: VCallAd Control_ID_FealCtctDesdeMsk
  loc_A798D9: FStAdFunc var_88
  loc_A798DC: FLdPr var_88
  loc_A798DF: LateIdSt
  loc_A798E4: FFree1Ad var_88
  loc_A798E7: FFree1Var var_98 = ""
  loc_A798EA: LitI2_Byte 0
  loc_A798EC: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_A798F1: CStrDate
  loc_A798F3: CVarStr var_98
  loc_A798F6: PopAdLdVar
  loc_A798F7: FLdPr Me
  loc_A798FA: VCallAd Control_ID_FealCtctHastaMsk
  loc_A798FD: FStAdFunc var_88
  loc_A79900: FLdPr var_88
  loc_A79903: LateIdSt
  loc_A79908: FFree1Ad var_88
  loc_A7990B: FFree1Var var_98 = ""
  loc_A7990E: Call HabilitarCriterio()
  loc_A79913: ILdRf Me
  loc_A79916: CastAd
  loc_A79919: FStAdFunc var_88
  loc_A7991C: FLdRfVar var_88
  loc_A7991F: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_A79924: FFree1Ad var_88
  loc_A79927: ExitProcHresult
End Sub

Private Sub Form_Load() '9DF38C
  'Data Table: 46E884
  loc_9DF370: ILdRf Me
  loc_9DF373: CastAd
  loc_9DF376: FStAdFunc var_88
  loc_9DF379: FLdRfVar var_88
  loc_9DF37C: ImpAdCallFPR4  = Proc_272_43_A93498()
  loc_9DF381: FFree1Ad var_88
  loc_9DF384: Call cmdNueva_Click()
  loc_9DF389: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9CB480
  'Data Table: 46E884
  loc_9CB468: FLdPr Me
  loc_9CB46B: VCallAd Control_ID_wbbReporte
  loc_9CB46E: FStAdFunc var_88
  loc_9CB471: FLdRfVar var_88
  loc_9CB474: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9CB479: FFree1Ad var_88
  loc_9CB47C: ExitProcHresult
  loc_9CB47D: MemStI2 global_1796
End Sub

Private Sub cmdSalir_Click() 'A02A18
  'Data Table: 46E884
  loc_A029E8: LitVarStr var_94, "Cerrando..."
  loc_A029ED: PopAdLdVar
  loc_A029EE: FLdPr Me
  loc_A029F1: VCallAd Control_ID_statusBar
  loc_A029F4: FStAdFunc var_A8
  loc_A029F7: FLdPr var_A8
  loc_A029FA: LateIdSt
  loc_A029FF: FFree1Ad var_A8
  loc_A02A02: ILdRf Me
  loc_A02A05: FStAdNoPop
  loc_A02A09: ImpAdLdRf MemVar_D9C5D8
  loc_A02A0C: NewIfNullPr Global
  loc_A02A0F: Global.Unload from_stack_1
  loc_A02A14: FFree1Ad var_A8
  loc_A02A17: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9DD8AC
  'Data Table: 46E884
  loc_9DD890: LitI2_Byte 0
  loc_9DD892: PopTmpLdAd2 var_8A
  loc_9DD895: ILdRf Me
  loc_9DD898: CastAd
  loc_9DD89B: FStAdFunc var_88
  loc_9DD89E: FLdRfVar var_88
  loc_9DD8A1: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9DD8A6: FFree1Ad var_88
  loc_9DD8A9: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A131E0
  'Data Table: 46E884
  loc_A131A8: FLdPr Me
  loc_A131AB: VCallAd Control_ID_statusBar
  loc_A131AE: FStAdFunc var_88
  loc_A131B1: FLdPr var_88
  loc_A131B4: LateIdLdVar var_98 DispID_1 0
  loc_A131BB: CStrVarTmp
  loc_A131BC: CVarStr var_A8
  loc_A131BF: PopAdLdVar
  loc_A131C0: FLdPr Me
  loc_A131C3: VCallAd Control_ID_statusBar
  loc_A131C6: FStAdFunc var_BC
  loc_A131C9: FLdPr var_BC
  loc_A131CC: LateIdSt
  loc_A131D1: FFreeAd var_88 = ""
  loc_A131D8: FFreeVar var_98 = ""
  loc_A131DF: ExitProcHresult
End Sub

Public Function bGeneradoGet() '46F498
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '46F4A7
  bGenerado = Value
End Sub

Public Function bLogosGet() '46F4B6
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '46F4C5
  bLogos = Value
End Sub

Public Sub HabilitarCriterio() 'A41708
  'Data Table: 46E884
  loc_A416C4: LitI4 0
  loc_A416C9: LitI4 1
  loc_A416CE: FLdRfVar var_88
  loc_A416D1: Redim
  loc_A416DB: FLdPr Me
  loc_A416DE: VCallAd Control_ID_FealCtctDesdeMsk
  loc_A416E1: CVarAd
  loc_A416E5: ParmAry1St
  loc_A416EB: FLdPr Me
  loc_A416EE: VCallAd Control_ID_FealCtctHastaMsk
  loc_A416F1: CVarAd
  loc_A416F5: ParmAry1St
  loc_A416FB: FLdRfVar var_88
  loc_A416FE: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A41703: FLdRfVar var_88
  loc_A41706: Erase
  loc_A41707: ExitProcHresult
End Sub

Public Sub GeneraXLS() '9C7AF4
  'Data Table: 46E884
  loc_9C7ADC: LitI2_Byte 0
  loc_9C7ADE: FLdPr Me
  loc_9C7AE1: MemStI2 bLogos
  loc_9C7AE4: Call GeneraHTML()
  loc_9C7AE9: LitI2_Byte &HFF
  loc_9C7AEB: FLdPr Me
  loc_9C7AEE: MemStI2 bLogos
  loc_9C7AF1: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B64EEC
  'Data Table: 46E884
  loc_B64AD4: FLdPr Me
  loc_B64AD7: MemLdI2 bGenerado
  loc_B64ADA: BranchF loc_B64ADE
  loc_B64ADD: ExitProcHresult
  loc_B64ADE: LitVarStr var_94, "Generando reporte..."
  loc_B64AE3: PopAdLdVar
  loc_B64AE4: FLdPr Me
  loc_B64AE7: VCallAd Control_ID_statusBar
  loc_B64AEA: FStAdFunc var_A8
  loc_B64AED: FLdPr var_A8
  loc_B64AF0: LateIdSt
  loc_B64AF5: FFree1Ad var_A8
  loc_B64AF8: LitI4 &HB
  loc_B64AFD: CI2I4
  loc_B64AFE: FLdPr Me
  loc_B64B01: Me.MousePointer = from_stack_1
  loc_B64B06: LitI2_Byte 0
  loc_B64B08: PopTmpLdAd2 var_AA
  loc_B64B0B: from_stack_2v = FealCtctDesdeMsk_UnknownEvent_8(from_stack_1v)
  loc_B64B10: FLdPr Me
  loc_B64B13: MemLdStr global_108
  loc_B64B16: LitStr vbNullString
  loc_B64B19: NeStr
  loc_B64B1B: BranchF loc_B64B21
  loc_B64B1E: Branch loc_B64EC1
  loc_B64B21: LitI2_Byte 0
  loc_B64B23: PopTmpLdAd2 var_AA
  loc_B64B26: from_stack_2v = FealCtctHastaMsk_UnknownEvent_8(from_stack_1v)
  loc_B64B2B: FLdPr Me
  loc_B64B2E: MemLdStr global_108
  loc_B64B31: LitStr vbNullString
  loc_B64B34: NeStr
  loc_B64B36: BranchF loc_B64B3C
  loc_B64B39: Branch loc_B64EC1
  loc_B64B3C: FLdPr Me
  loc_B64B3F: MemLdRfVar from_stack_1.global_92
  loc_B64B42: NewIfNullAd
  loc_B64B45: FStAd var_B0 
  loc_B64B49: FLdPr Me
  loc_B64B4C: VCallAd Control_ID_FealCtctDesdeMsk
  loc_B64B4F: FStAdFunc var_A8
  loc_B64B52: FLdPr var_A8
  loc_B64B55: LateIdLdVar var_C4 DispID_15 0
  loc_B64B5C: PopAd
  loc_B64B5E: FLdPr Me
  loc_B64B61: VCallAd Control_ID_FealCtctHastaMsk
  loc_B64B64: FStAdFunc var_F4
  loc_B64B67: FLdPr var_F4
  loc_B64B6A: LateIdLdVar var_104 DispID_15 0
  loc_B64B71: PopAd
  loc_B64B73: LitStr " SELECT FechPaon, CodiPaon, PeriBole, Numebole, ImpoPaon "
  loc_B64B76: LitStr " FROM pagoonline"
  loc_B64B79: ConcatStr
  loc_B64B7A: FStStrNoPop var_B4
  loc_B64B7D: LitStr " WHERE date(FechPaon) BETWEEN '"
  loc_B64B80: ConcatStr
  loc_B64B81: FStStrNoPop var_E8
  loc_B64B84: LitI4 1
  loc_B64B89: LitI4 1
  loc_B64B8E: LitVarStr var_94, "yyyy-mm-dd"
  loc_B64B93: FStVarCopyObj var_E4
  loc_B64B96: FLdRfVar var_E4
  loc_B64B99: FLdRfVar var_C4
  loc_B64B9C: CStrVarTmp
  loc_B64B9D: CVarStr var_D4
  loc_B64BA0: ImpAdCallI2 Format$(, )
  loc_B64BA5: FStStrNoPop var_EC
  loc_B64BA8: ConcatStr
  loc_B64BA9: FStStrNoPop var_F0
  loc_B64BAC: LitStr "' AND '"
  loc_B64BAF: ConcatStr
  loc_B64BB0: FStStrNoPop var_128
  loc_B64BB3: LitI4 1
  loc_B64BB8: LitI4 1
  loc_B64BBD: LitVarStr var_A4, "yyyy-mm-dd"
  loc_B64BC2: FStVarCopyObj var_124
  loc_B64BC5: FLdRfVar var_124
  loc_B64BC8: FLdRfVar var_104
  loc_B64BCB: CStrVarTmp
  loc_B64BCC: CVarStr var_114
  loc_B64BCF: ImpAdCallI2 Format$(, )
  loc_B64BD4: FStStrNoPop var_12C
  loc_B64BD7: ConcatStr
  loc_B64BD8: FStStrNoPop var_130
  loc_B64BDB: LitStr "'"
  loc_B64BDE: ConcatStr
  loc_B64BDF: FStStrNoPop var_134
  loc_B64BE2: LitStr " AND ActuPaon = 0 ORDER BY FechPaon"
  loc_B64BE5: ConcatStr
  loc_B64BE6: FStStrNoPop var_138
  loc_B64BE9: FLdPr var_B0
  loc_B64BEC: Call clsctacte.RedefineRS(from_stack_1v)
  loc_B64BF1: FFreeStr var_B4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = ""
  loc_B64C06: FFreeAd var_A8 = ""
  loc_B64C0D: FFreeVar var_C4 = "": var_D4 = "": var_E4 = "": var_104 = "": var_114 = ""
  loc_B64C1C: FLdRfVar var_13C
  loc_B64C1F: FLdPr var_B0
  loc_B64C22: from_stack_1 = clsctacte.RecordCount
  loc_B64C27: ILdRf var_13C
  loc_B64C2A: LitI4 0
  loc_B64C2F: EqI4
  loc_B64C30: BranchF loc_B64C3E
  loc_B64C33: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B64C36: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B64C3B: Branch loc_B64EC1
  loc_B64C3E: LitI4 0
  loc_B64C43: LitI4 1
  loc_B64C48: FLdPr Me
  loc_B64C4B: MemLdRfVar from_stack_1.global_96
  loc_B64C4E: Redim
  loc_B64C58: LitI4 0
  loc_B64C5D: FLdRfVar var_13C
  loc_B64C60: FLdPr var_B0
  loc_B64C63: from_stack_1 = clsctacte.RecordCount
  loc_B64C68: ILdRf var_13C
  loc_B64C6B: FLdPr Me
  loc_B64C6E: MemLdRfVar from_stack_1.global_100
  loc_B64C71: Redim
  loc_B64C7B: FLdPr var_B0
  loc_B64C7E: Call clsctacte.MoveFirst()
  loc_B64C83: LitI4 1
  loc_B64C88: FLdPr Me
  loc_B64C8B: MemLdRfVar from_stack_1.global_104
  loc_B64C8E: FLdPr Me
  loc_B64C91: MemLdStr global_100
  loc_B64C94: LitI2_Byte 1
  loc_B64C96: FnUBound
  loc_B64C98: ForI4 var_144
  loc_B64C9E: FLdRfVar var_148
  loc_B64CA1: LitVarStr var_94, "FechPaon"
  loc_B64CA6: PopAdLdVar
  loc_B64CA7: FLdRfVar var_F4
  loc_B64CAA: FLdRfVar var_A8
  loc_B64CAD: FLdPr var_B0
  loc_B64CB0: from_stack_1v = clsctacte.RsFrmGet()
  loc_B64CB5: FLdPr var_A8
  loc_B64CB8:  = Me.Fields
  loc_B64CBD: FLdPr var_F4
  loc_B64CC0: from_stack_2 = Me.Item(from_stack_1)
  loc_B64CC5: LitI2_Byte 0
  loc_B64CC7: LitVar_Missing var_D4
  loc_B64CCA: LitI2_Byte 0
  loc_B64CCC: FLdZeroAd var_148
  loc_B64CCF: CVarAd
  loc_B64CD3: PopAdLdVar
  loc_B64CD4: FLdPr Me
  loc_B64CD7: MemLdStr global_104
  loc_B64CDA: FLdPr Me
  loc_B64CDD: MemLdStr global_100
  loc_B64CE0: AryLock
  loc_B64CE3: Ary1LdPr
  loc_B64CE4: MemLdRfVar from_stack_1.global_0
  loc_B64CE7: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B64CEC: AryUnlock
  loc_B64CEF: FFreeAd var_A8 = ""
  loc_B64CF6: FFreeVar var_C4 = ""
  loc_B64CFD: FLdRfVar var_148
  loc_B64D00: LitVarStr var_94, "CodiPaon"
  loc_B64D05: PopAdLdVar
  loc_B64D06: FLdRfVar var_F4
  loc_B64D09: FLdRfVar var_A8
  loc_B64D0C: FLdPr var_B0
  loc_B64D0F: from_stack_1v = clsctacte.RsFrmGet()
  loc_B64D14: FLdPr var_A8
  loc_B64D17:  = Me.Fields
  loc_B64D1C: FLdPr var_F4
  loc_B64D1F: from_stack_2 = Me.Item(from_stack_1)
  loc_B64D24: LitI2_Byte 0
  loc_B64D26: LitVar_Missing var_D4
  loc_B64D29: LitI2_Byte 0
  loc_B64D2B: FLdZeroAd var_148
  loc_B64D2E: CVarAd
  loc_B64D32: PopAdLdVar
  loc_B64D33: FLdPr Me
  loc_B64D36: MemLdStr global_104
  loc_B64D39: FLdPr Me
  loc_B64D3C: MemLdStr global_100
  loc_B64D3F: AryLock
  loc_B64D42: Ary1LdPr
  loc_B64D43: MemLdRfVar from_stack_1.global_4
  loc_B64D46: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B64D4B: AryUnlock
  loc_B64D4E: FFreeAd var_A8 = ""
  loc_B64D55: FFreeVar var_C4 = ""
  loc_B64D5C: FLdRfVar var_148
  loc_B64D5F: LitVarStr var_94, "PeriBole"
  loc_B64D64: PopAdLdVar
  loc_B64D65: FLdRfVar var_F4
  loc_B64D68: FLdRfVar var_A8
  loc_B64D6B: FLdPr var_B0
  loc_B64D6E: from_stack_1v = clsctacte.RsFrmGet()
  loc_B64D73: FLdPr var_A8
  loc_B64D76:  = Me.Fields
  loc_B64D7B: FLdPr var_F4
  loc_B64D7E: from_stack_2 = Me.Item(from_stack_1)
  loc_B64D83: LitI2_Byte 0
  loc_B64D85: LitVar_Missing var_D4
  loc_B64D88: LitI2_Byte 0
  loc_B64D8A: FLdZeroAd var_148
  loc_B64D8D: CVarAd
  loc_B64D91: PopAdLdVar
  loc_B64D92: FLdPr Me
  loc_B64D95: MemLdStr global_104
  loc_B64D98: FLdPr Me
  loc_B64D9B: MemLdStr global_100
  loc_B64D9E: AryLock
  loc_B64DA1: Ary1LdPr
  loc_B64DA2: MemLdRfVar from_stack_1.global_8
  loc_B64DA5: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B64DAA: AryUnlock
  loc_B64DAD: FFreeAd var_A8 = ""
  loc_B64DB4: FFreeVar var_C4 = ""
  loc_B64DBB: FLdRfVar var_148
  loc_B64DBE: LitVarStr var_94, "NumeBole"
  loc_B64DC3: PopAdLdVar
  loc_B64DC4: FLdRfVar var_F4
  loc_B64DC7: FLdRfVar var_A8
  loc_B64DCA: FLdPr var_B0
  loc_B64DCD: from_stack_1v = clsctacte.RsFrmGet()
  loc_B64DD2: FLdPr var_A8
  loc_B64DD5:  = Me.Fields
  loc_B64DDA: FLdPr var_F4
  loc_B64DDD: from_stack_2 = Me.Item(from_stack_1)
  loc_B64DE2: LitI2_Byte 0
  loc_B64DE4: LitVar_Missing var_D4
  loc_B64DE7: LitI2_Byte 0
  loc_B64DE9: FLdZeroAd var_148
  loc_B64DEC: CVarAd
  loc_B64DF0: PopAdLdVar
  loc_B64DF1: FLdPr Me
  loc_B64DF4: MemLdStr global_104
  loc_B64DF7: FLdPr Me
  loc_B64DFA: MemLdStr global_100
  loc_B64DFD: AryLock
  loc_B64E00: Ary1LdPr
  loc_B64E01: MemLdRfVar from_stack_1.global_12
  loc_B64E04: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B64E09: AryUnlock
  loc_B64E0C: FFreeAd var_A8 = ""
  loc_B64E13: FFreeVar var_C4 = ""
  loc_B64E1A: FLdRfVar var_C4
  loc_B64E1D: FLdRfVar var_148
  loc_B64E20: LitVarStr var_94, "ImpoPaon"
  loc_B64E25: PopAdLdVar
  loc_B64E26: FLdRfVar var_F4
  loc_B64E29: FLdRfVar var_A8
  loc_B64E2C: FLdPr var_B0
  loc_B64E2F: from_stack_1v = clsctacte.RsFrmGet()
  loc_B64E34: FLdPr var_A8
  loc_B64E37:  = Me.Fields
  loc_B64E3C: FLdPr var_F4
  loc_B64E3F: from_stack_2 = Me.Item(from_stack_1)
  loc_B64E44: FLdPr var_148
  loc_B64E47:  = Me.Value
  loc_B64E4C: LitI2_Byte 0
  loc_B64E4E: LitI4 1
  loc_B64E53: FLdPr Me
  loc_B64E56: MemLdStr global_96
  loc_B64E59: AryLock
  loc_B64E5C: Ary1LdPr
  loc_B64E5D: MemLdRfVar from_stack_1.global_16
  loc_B64E60: CVarRef
  loc_B64E65: LitI2_Byte &HFF
  loc_B64E67: FLdRfVar var_C4
  loc_B64E6A: FnCDblVar
  loc_B64E6C: CVarR8
  loc_B64E70: PopAdLdVar
  loc_B64E71: FLdPr Me
  loc_B64E74: MemLdStr global_104
  loc_B64E77: FLdPr Me
  loc_B64E7A: MemLdStr global_100
  loc_B64E7D: AryLock
  loc_B64E80: Ary1LdPr
  loc_B64E81: MemLdRfVar from_stack_1.global_16
  loc_B64E84: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B64E89: AryUnlock
  loc_B64E8C: AryUnlock
  loc_B64E8F: FFreeAd var_A8 = "": var_F4 = ""
  loc_B64E98: FFree1Var var_C4 = ""
  loc_B64E9B: LitI2_Byte 1
  loc_B64E9D: PopTmpLdAd2 var_AA
  loc_B64EA0: FLdPr var_B0
  loc_B64EA3: Call clsctacte.Move(from_stack_1v)
  loc_B64EA8: FLdPr Me
  loc_B64EAB: MemLdRfVar from_stack_1.global_104
  loc_B64EAE: NextI4 var_144, loc_B64C9E
  loc_B64EB3: LitNothing
  loc_B64EB5: FStAd var_B0 
  loc_B64EB9: LitI2_Byte &HFF
  loc_B64EBB: FLdPr Me
  loc_B64EBE: MemStI2 bGenerado
  loc_B64EC1: LitI4 0
  loc_B64EC6: CI2I4
  loc_B64EC7: FLdPr Me
  loc_B64ECA: Me.MousePointer = from_stack_1
  loc_B64ECF: LitVarStr var_94, vbNullString
  loc_B64ED4: PopAdLdVar
  loc_B64ED5: FLdPr Me
  loc_B64ED8: VCallAd Control_ID_statusBar
  loc_B64EDB: FStAdFunc var_A8
  loc_B64EDE: FLdPr var_A8
  loc_B64EE1: LateIdSt
  loc_B64EE6: FFree1Ad var_A8
  loc_B64EE9: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'B2BA44
  'Data Table: 46E884
  loc_B2B78C: FLdRfVar var_88
  loc_B2B78F: LitI2_Byte 0
  loc_B2B791: LitI2_Byte &HFF
  loc_B2B793: ImpAdLdI4 MemVar_D93C84
  loc_B2B796: FLdPr Me
  loc_B2B799: MemLdRfVar from_stack_1.global_56
  loc_B2B79C: NewIfNullPr IFileSystem3
  loc_B2B79F: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B2B7A4: ILdRf var_88
  loc_B2B7A7: FLdPr Me
  loc_B2B7AA: MemStVarAd
  loc_B2B7AE: FFree1Ad var_88
  loc_B2B7B1: LitI2_Byte &HFF
  loc_B2B7B3: ImpAdStI2 MemVar_D93C8A
  loc_B2B7B6: Call Proc_343_24_BA5EC4()
  loc_B2B7BB: LitI4 1
  loc_B2B7C0: FLdPr Me
  loc_B2B7C3: MemLdRfVar from_stack_1.global_104
  loc_B2B7C6: FLdPr Me
  loc_B2B7C9: MemLdStr global_100
  loc_B2B7CC: LitI2_Byte 1
  loc_B2B7CE: FnUBound
  loc_B2B7D0: ForI4 var_90
  loc_B2B7D6: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B2B7DB: PopAdLdVar
  loc_B2B7DC: FLdPr Me
  loc_B2B7DF: MemLdRfVar from_stack_1.global_60
  loc_B2B7E2: LdPrVar
  loc_B2B7E4: LateMemCall
  loc_B2B7EA: FLdPr Me
  loc_B2B7ED: MemLdStr global_104
  loc_B2B7F0: FLdPr Me
  loc_B2B7F3: MemLdStr global_100
  loc_B2B7F6: AryLock
  loc_B2B7F9: Ary1LdRf
  loc_B2B7FA: FStR4 var_B8
  loc_B2B7FD: LitStr vbNullString
  loc_B2B800: LitI2_Byte 0
  loc_B2B802: LitI2_Byte 0
  loc_B2B804: LitI2_Byte 0
  loc_B2B806: LitStr "center"
  loc_B2B809: FMemLdR4 var_B8(0)
  loc_B2B80E: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B2B813: CVarStr var_C8
  loc_B2B816: PopAdLdVar
  loc_B2B817: FLdPr Me
  loc_B2B81A: MemLdRfVar from_stack_1.global_60
  loc_B2B81D: LdPrVar
  loc_B2B81F: LateMemCall
  loc_B2B825: FFree1Var var_C8 = ""
  loc_B2B828: LitStr vbNullString
  loc_B2B82B: LitI2_Byte 0
  loc_B2B82D: LitI2_Byte 0
  loc_B2B82F: LitI2_Byte 0
  loc_B2B831: LitStr "right"
  loc_B2B834: FMemLdR4 var_B8(4)
  loc_B2B839: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B2B83E: CVarStr var_C8
  loc_B2B841: PopAdLdVar
  loc_B2B842: FLdPr Me
  loc_B2B845: MemLdRfVar from_stack_1.global_60
  loc_B2B848: LdPrVar
  loc_B2B84A: LateMemCall
  loc_B2B850: FFree1Var var_C8 = ""
  loc_B2B853: LitStr vbNullString
  loc_B2B856: LitI2_Byte 0
  loc_B2B858: LitI2_Byte 0
  loc_B2B85A: LitI2_Byte 0
  loc_B2B85C: LitStr "right"
  loc_B2B85F: FMemLdR4 var_B8(8)
  loc_B2B864: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B2B869: CVarStr var_C8
  loc_B2B86C: PopAdLdVar
  loc_B2B86D: FLdPr Me
  loc_B2B870: MemLdRfVar from_stack_1.global_60
  loc_B2B873: LdPrVar
  loc_B2B875: LateMemCall
  loc_B2B87B: FFree1Var var_C8 = ""
  loc_B2B87E: LitStr vbNullString
  loc_B2B881: LitI2_Byte 0
  loc_B2B883: LitI2_Byte 0
  loc_B2B885: LitI2_Byte 0
  loc_B2B887: LitStr "right"
  loc_B2B88A: FMemLdR4 var_B8(12)
  loc_B2B88F: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B2B894: CVarStr var_C8
  loc_B2B897: PopAdLdVar
  loc_B2B898: FLdPr Me
  loc_B2B89B: MemLdRfVar from_stack_1.global_60
  loc_B2B89E: LdPrVar
  loc_B2B8A0: LateMemCall
  loc_B2B8A6: FFree1Var var_C8 = ""
  loc_B2B8A9: LitStr vbNullString
  loc_B2B8AC: LitI2_Byte 0
  loc_B2B8AE: LitI2_Byte 0
  loc_B2B8B0: LitI2_Byte 0
  loc_B2B8B2: LitStr "right"
  loc_B2B8B5: FMemLdR4 var_B8(16)
  loc_B2B8BA: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B2B8BF: CVarStr var_C8
  loc_B2B8C2: PopAdLdVar
  loc_B2B8C3: FLdPr Me
  loc_B2B8C6: MemLdRfVar from_stack_1.global_60
  loc_B2B8C9: LdPrVar
  loc_B2B8CB: LateMemCall
  loc_B2B8D1: FFree1Var var_C8 = ""
  loc_B2B8D4: LitI4 0
  loc_B2B8D9: FStR4 var_B8
  loc_B2B8DC: AryUnlock
  loc_B2B8DF: LitVarStr var_A0, "     </tr>"
  loc_B2B8E4: PopAdLdVar
  loc_B2B8E5: FLdPr Me
  loc_B2B8E8: MemLdRfVar from_stack_1.global_60
  loc_B2B8EB: LdPrVar
  loc_B2B8ED: LateMemCall
  loc_B2B8F3: FLdPr Me
  loc_B2B8F6: MemLdRfVar from_stack_1.global_104
  loc_B2B8F9: NextI4 var_90, loc_B2B7D6
  loc_B2B8FE: LitVarStr var_A0, "  <tr align=""center"" class=""Totales"">"
  loc_B2B903: PopAdLdVar
  loc_B2B904: FLdPr Me
  loc_B2B907: MemLdRfVar from_stack_1.global_60
  loc_B2B90A: LdPrVar
  loc_B2B90C: LateMemCall
  loc_B2B912: LitStr "    <th colspan=""4"">"
  loc_B2B915: LitI4 -1
  loc_B2B91A: LitI4 0
  loc_B2B91F: LitI4 -1
  loc_B2B924: LitI4 0
  loc_B2B929: FLdPr Me
  loc_B2B92C: MemLdStr global_100
  loc_B2B92F: LitI2_Byte 1
  loc_B2B931: FnUBound
  loc_B2B933: CVarI4
  loc_B2B937: ImpAdCallI2 FormatNumber(, , , , )
  loc_B2B93C: FStStrNoPop var_CC
  loc_B2B93F: ConcatStr
  loc_B2B940: FStStrNoPop var_D0
  loc_B2B943: LitStr " registro"
  loc_B2B946: ConcatStr
  loc_B2B947: CVarStr var_130
  loc_B2B94A: LitVarStr var_100, vbNullString
  loc_B2B94F: FStVarCopyObj var_110
  loc_B2B952: FLdRfVar var_110
  loc_B2B955: LitVarStr var_E0, "s"
  loc_B2B95A: FStVarCopyObj var_F0
  loc_B2B95D: FLdRfVar var_F0
  loc_B2B960: FLdPr Me
  loc_B2B963: MemLdStr global_100
  loc_B2B966: LitI2_Byte 1
  loc_B2B968: FnUBound
  loc_B2B96A: LitI4 1
  loc_B2B96F: GtI4
  loc_B2B970: CVarBoolI2 var_B0
  loc_B2B974: FLdRfVar var_120
  loc_B2B977: ImpAdCallFPR4  = IIf(, , )
  loc_B2B97C: FLdRfVar var_120
  loc_B2B97F: ConcatVar var_140
  loc_B2B983: LitVarStr var_150, ".</th>"
  loc_B2B988: ConcatVar var_160
  loc_B2B98C: PopAdLdVar
  loc_B2B98D: FLdPr Me
  loc_B2B990: MemLdRfVar from_stack_1.global_60
  loc_B2B993: LdPrVar
  loc_B2B995: LateMemCall
  loc_B2B99B: FFreeStr var_CC = ""
  loc_B2B9A2: FFreeVar var_C8 = "": var_B0 = "": var_F0 = "": var_110 = "": var_130 = "": var_120 = "": var_140 = ""
  loc_B2B9B5: LitI4 1
  loc_B2B9BA: FLdPr Me
  loc_B2B9BD: MemLdStr global_96
  loc_B2B9C0: AryLock
  loc_B2B9C3: Ary1LdRf
  loc_B2B9C4: FStR4 var_178
  loc_B2B9C7: LitStr vbNullString
  loc_B2B9CA: LitI2_Byte 0
  loc_B2B9CC: LitI2_Byte 0
  loc_B2B9CE: LitI2_Byte 0
  loc_B2B9D0: LitStr "right"
  loc_B2B9D3: FMemLdR4 var_178(16)
  loc_B2B9D8: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B2B9DD: CVarStr var_C8
  loc_B2B9E0: PopAdLdVar
  loc_B2B9E1: FLdPr Me
  loc_B2B9E4: MemLdRfVar from_stack_1.global_60
  loc_B2B9E7: LdPrVar
  loc_B2B9E9: LateMemCall
  loc_B2B9EF: FFree1Var var_C8 = ""
  loc_B2B9F2: LitI4 0
  loc_B2B9F7: FStR4 var_178
  loc_B2B9FA: AryUnlock
  loc_B2B9FD: LitVarStr var_A0, "  </tr>"
  loc_B2BA02: PopAdLdVar
  loc_B2BA03: FLdPr Me
  loc_B2BA06: MemLdRfVar from_stack_1.global_60
  loc_B2BA09: LdPrVar
  loc_B2BA0B: LateMemCall
  loc_B2BA11: LitVarStr var_A0, "     </tr>"
  loc_B2BA16: PopAdLdVar
  loc_B2BA17: FLdPr Me
  loc_B2BA1A: MemLdRfVar from_stack_1.global_60
  loc_B2BA1D: LdPrVar
  loc_B2BA1F: LateMemCall
  loc_B2BA25: Call Proc_343_25_A0F4D8()
  loc_B2BA2A: FLdPr Me
  loc_B2BA2D: MemLdRfVar from_stack_1.global_60
  loc_B2BA30: LdPrVar
  loc_B2BA32: LateMemCall
  loc_B2BA38: LitStr vbNullString
  loc_B2BA3B: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B2BA40: ExitProcHresult
End Sub

Public Sub GeneraTXT() '9AEDD0
  'Data Table: 46E884
  loc_9AEDCC: ExitProcHresult
  loc_9AEDCD: FFreeVar var_FFFFFFF4 = ""
End Sub

Private Function Proc_343_24_BA5EC4(arg_24) 'BA5EC4
  'Data Table: 46E884
  loc_BA58A0: LitVarStr var_94, "<html>"
  loc_BA58A5: PopAdLdVar
  loc_BA58A6: FLdPr Me
  loc_BA58A9: MemLdRfVar from_stack_1.global_60
  loc_BA58AC: LdPrVar
  loc_BA58AE: LateMemCall
  loc_BA58B4: LitVarStr var_94, "<head>"
  loc_BA58B9: PopAdLdVar
  loc_BA58BA: FLdPr Me
  loc_BA58BD: MemLdRfVar from_stack_1.global_60
  loc_BA58C0: LdPrVar
  loc_BA58C2: LateMemCall
  loc_BA58C8: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BA58CD: PopAdLdVar
  loc_BA58CE: FLdPr Me
  loc_BA58D1: MemLdRfVar from_stack_1.global_60
  loc_BA58D4: LdPrVar
  loc_BA58D6: LateMemCall
  loc_BA58DC: LitStr "<title>"
  loc_BA58DF: FLdRfVar var_A8
  loc_BA58E2: FLdPr Me
  loc_BA58E5:  = Me.Caption
  loc_BA58EA: ILdRf var_A8
  loc_BA58ED: ConcatStr
  loc_BA58EE: FStStrNoPop var_AC
  loc_BA58F1: LitStr "</title>"
  loc_BA58F4: ConcatStr
  loc_BA58F5: CVarStr var_BC
  loc_BA58F8: PopAdLdVar
  loc_BA58F9: FLdPr Me
  loc_BA58FC: MemLdRfVar from_stack_1.global_60
  loc_BA58FF: LdPrVar
  loc_BA5901: LateMemCall
  loc_BA5907: FFreeStr var_A8 = ""
  loc_BA590E: FFree1Var var_BC = ""
  loc_BA5911: LitVarStr var_94, "<style type=""text/css"">"
  loc_BA5916: PopAdLdVar
  loc_BA5917: FLdPr Me
  loc_BA591A: MemLdRfVar from_stack_1.global_60
  loc_BA591D: LdPrVar
  loc_BA591F: LateMemCall
  loc_BA5925: LitVarStr var_94, ".Titulo1 {"
  loc_BA592A: PopAdLdVar
  loc_BA592B: FLdPr Me
  loc_BA592E: MemLdRfVar from_stack_1.global_60
  loc_BA5931: LdPrVar
  loc_BA5933: LateMemCall
  loc_BA5939: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BA593E: PopAdLdVar
  loc_BA593F: FLdPr Me
  loc_BA5942: MemLdRfVar from_stack_1.global_60
  loc_BA5945: LdPrVar
  loc_BA5947: LateMemCall
  loc_BA594D: LitVarStr var_94, " font-size: 18px;"
  loc_BA5952: PopAdLdVar
  loc_BA5953: FLdPr Me
  loc_BA5956: MemLdRfVar from_stack_1.global_60
  loc_BA5959: LdPrVar
  loc_BA595B: LateMemCall
  loc_BA5961: LitVarStr var_94, " font-weight: bold;"
  loc_BA5966: PopAdLdVar
  loc_BA5967: FLdPr Me
  loc_BA596A: MemLdRfVar from_stack_1.global_60
  loc_BA596D: LdPrVar
  loc_BA596F: LateMemCall
  loc_BA5975: LitVarStr var_94, "}"
  loc_BA597A: PopAdLdVar
  loc_BA597B: FLdPr Me
  loc_BA597E: MemLdRfVar from_stack_1.global_60
  loc_BA5981: LdPrVar
  loc_BA5983: LateMemCall
  loc_BA5989: LitVarStr var_94, ".Titulo2 {"
  loc_BA598E: PopAdLdVar
  loc_BA598F: FLdPr Me
  loc_BA5992: MemLdRfVar from_stack_1.global_60
  loc_BA5995: LdPrVar
  loc_BA5997: LateMemCall
  loc_BA599D: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BA59A2: PopAdLdVar
  loc_BA59A3: FLdPr Me
  loc_BA59A6: MemLdRfVar from_stack_1.global_60
  loc_BA59A9: LdPrVar
  loc_BA59AB: LateMemCall
  loc_BA59B1: LitVarStr var_94, " font-size: 14px;"
  loc_BA59B6: PopAdLdVar
  loc_BA59B7: FLdPr Me
  loc_BA59BA: MemLdRfVar from_stack_1.global_60
  loc_BA59BD: LdPrVar
  loc_BA59BF: LateMemCall
  loc_BA59C5: LitVarStr var_94, " font-weight: bold;"
  loc_BA59CA: PopAdLdVar
  loc_BA59CB: FLdPr Me
  loc_BA59CE: MemLdRfVar from_stack_1.global_60
  loc_BA59D1: LdPrVar
  loc_BA59D3: LateMemCall
  loc_BA59D9: LitVarStr var_94, "}"
  loc_BA59DE: PopAdLdVar
  loc_BA59DF: FLdPr Me
  loc_BA59E2: MemLdRfVar from_stack_1.global_60
  loc_BA59E5: LdPrVar
  loc_BA59E7: LateMemCall
  loc_BA59ED: LitVarStr var_94, ".Normal {"
  loc_BA59F2: PopAdLdVar
  loc_BA59F3: FLdPr Me
  loc_BA59F6: MemLdRfVar from_stack_1.global_60
  loc_BA59F9: LdPrVar
  loc_BA59FB: LateMemCall
  loc_BA5A01: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BA5A06: PopAdLdVar
  loc_BA5A07: FLdPr Me
  loc_BA5A0A: MemLdRfVar from_stack_1.global_60
  loc_BA5A0D: LdPrVar
  loc_BA5A0F: LateMemCall
  loc_BA5A15: LitVarStr var_94, " font-size: 12px;"
  loc_BA5A1A: PopAdLdVar
  loc_BA5A1B: FLdPr Me
  loc_BA5A1E: MemLdRfVar from_stack_1.global_60
  loc_BA5A21: LdPrVar
  loc_BA5A23: LateMemCall
  loc_BA5A29: LitVarStr var_94, " font-style: normal;"
  loc_BA5A2E: PopAdLdVar
  loc_BA5A2F: FLdPr Me
  loc_BA5A32: MemLdRfVar from_stack_1.global_60
  loc_BA5A35: LdPrVar
  loc_BA5A37: LateMemCall
  loc_BA5A3D: LitVarStr var_94, " font-weight: normal;"
  loc_BA5A42: PopAdLdVar
  loc_BA5A43: FLdPr Me
  loc_BA5A46: MemLdRfVar from_stack_1.global_60
  loc_BA5A49: LdPrVar
  loc_BA5A4B: LateMemCall
  loc_BA5A51: LitVarStr var_94, " font-variant: normal;"
  loc_BA5A56: PopAdLdVar
  loc_BA5A57: FLdPr Me
  loc_BA5A5A: MemLdRfVar from_stack_1.global_60
  loc_BA5A5D: LdPrVar
  loc_BA5A5F: LateMemCall
  loc_BA5A65: LitVarStr var_94, "}"
  loc_BA5A6A: PopAdLdVar
  loc_BA5A6B: FLdPr Me
  loc_BA5A6E: MemLdRfVar from_stack_1.global_60
  loc_BA5A71: LdPrVar
  loc_BA5A73: LateMemCall
  loc_BA5A79: LitVarStr var_94, ".Encabezado {"
  loc_BA5A7E: PopAdLdVar
  loc_BA5A7F: FLdPr Me
  loc_BA5A82: MemLdRfVar from_stack_1.global_60
  loc_BA5A85: LdPrVar
  loc_BA5A87: LateMemCall
  loc_BA5A8D: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_BA5A92: PopAdLdVar
  loc_BA5A93: FLdPr Me
  loc_BA5A96: MemLdRfVar from_stack_1.global_60
  loc_BA5A99: LdPrVar
  loc_BA5A9B: LateMemCall
  loc_BA5AA1: LitVarStr var_94, " font-size: 11px;"
  loc_BA5AA6: PopAdLdVar
  loc_BA5AA7: FLdPr Me
  loc_BA5AAA: MemLdRfVar from_stack_1.global_60
  loc_BA5AAD: LdPrVar
  loc_BA5AAF: LateMemCall
  loc_BA5AB5: LitVarStr var_94, " font-weight: bold;"
  loc_BA5ABA: PopAdLdVar
  loc_BA5ABB: FLdPr Me
  loc_BA5ABE: MemLdRfVar from_stack_1.global_60
  loc_BA5AC1: LdPrVar
  loc_BA5AC3: LateMemCall
  loc_BA5AC9: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_BA5ACE: PopAdLdVar
  loc_BA5ACF: FLdPr Me
  loc_BA5AD2: MemLdRfVar from_stack_1.global_60
  loc_BA5AD5: LdPrVar
  loc_BA5AD7: LateMemCall
  loc_BA5ADD: LitVarStr var_94, "}"
  loc_BA5AE2: PopAdLdVar
  loc_BA5AE3: FLdPr Me
  loc_BA5AE6: MemLdRfVar from_stack_1.global_60
  loc_BA5AE9: LdPrVar
  loc_BA5AEB: LateMemCall
  loc_BA5AF1: LitVarStr var_94, ".LineaDato {"
  loc_BA5AF6: PopAdLdVar
  loc_BA5AF7: FLdPr Me
  loc_BA5AFA: MemLdRfVar from_stack_1.global_60
  loc_BA5AFD: LdPrVar
  loc_BA5AFF: LateMemCall
  loc_BA5B05: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BA5B0A: PopAdLdVar
  loc_BA5B0B: FLdPr Me
  loc_BA5B0E: MemLdRfVar from_stack_1.global_60
  loc_BA5B11: LdPrVar
  loc_BA5B13: LateMemCall
  loc_BA5B19: LitVarStr var_94, " font-size: 10px;"
  loc_BA5B1E: PopAdLdVar
  loc_BA5B1F: FLdPr Me
  loc_BA5B22: MemLdRfVar from_stack_1.global_60
  loc_BA5B25: LdPrVar
  loc_BA5B27: LateMemCall
  loc_BA5B2D: LitVarStr var_94, "}"
  loc_BA5B32: PopAdLdVar
  loc_BA5B33: FLdPr Me
  loc_BA5B36: MemLdRfVar from_stack_1.global_60
  loc_BA5B39: LdPrVar
  loc_BA5B3B: LateMemCall
  loc_BA5B41: LitVarStr var_94, ".Totales {"
  loc_BA5B46: PopAdLdVar
  loc_BA5B47: FLdPr Me
  loc_BA5B4A: MemLdRfVar from_stack_1.global_60
  loc_BA5B4D: LdPrVar
  loc_BA5B4F: LateMemCall
  loc_BA5B55: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BA5B5A: PopAdLdVar
  loc_BA5B5B: FLdPr Me
  loc_BA5B5E: MemLdRfVar from_stack_1.global_60
  loc_BA5B61: LdPrVar
  loc_BA5B63: LateMemCall
  loc_BA5B69: LitVarStr var_94, " font-size: 12px;"
  loc_BA5B6E: PopAdLdVar
  loc_BA5B6F: FLdPr Me
  loc_BA5B72: MemLdRfVar from_stack_1.global_60
  loc_BA5B75: LdPrVar
  loc_BA5B77: LateMemCall
  loc_BA5B7D: LitVarStr var_94, " font-weight: bold;"
  loc_BA5B82: PopAdLdVar
  loc_BA5B83: FLdPr Me
  loc_BA5B86: MemLdRfVar from_stack_1.global_60
  loc_BA5B89: LdPrVar
  loc_BA5B8B: LateMemCall
  loc_BA5B91: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BA5B96: PopAdLdVar
  loc_BA5B97: FLdPr Me
  loc_BA5B9A: MemLdRfVar from_stack_1.global_60
  loc_BA5B9D: LdPrVar
  loc_BA5B9F: LateMemCall
  loc_BA5BA5: LitVarStr var_94, "}"
  loc_BA5BAA: PopAdLdVar
  loc_BA5BAB: FLdPr Me
  loc_BA5BAE: MemLdRfVar from_stack_1.global_60
  loc_BA5BB1: LdPrVar
  loc_BA5BB3: LateMemCall
  loc_BA5BB9: LitVarStr var_94, ".SubTotales {"
  loc_BA5BBE: PopAdLdVar
  loc_BA5BBF: FLdPr Me
  loc_BA5BC2: MemLdRfVar from_stack_1.global_60
  loc_BA5BC5: LdPrVar
  loc_BA5BC7: LateMemCall
  loc_BA5BCD: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BA5BD2: PopAdLdVar
  loc_BA5BD3: FLdPr Me
  loc_BA5BD6: MemLdRfVar from_stack_1.global_60
  loc_BA5BD9: LdPrVar
  loc_BA5BDB: LateMemCall
  loc_BA5BE1: LitVarStr var_94, " font-size: 10px;"
  loc_BA5BE6: PopAdLdVar
  loc_BA5BE7: FLdPr Me
  loc_BA5BEA: MemLdRfVar from_stack_1.global_60
  loc_BA5BED: LdPrVar
  loc_BA5BEF: LateMemCall
  loc_BA5BF5: LitVarStr var_94, " font-weight: bold;"
  loc_BA5BFA: PopAdLdVar
  loc_BA5BFB: FLdPr Me
  loc_BA5BFE: MemLdRfVar from_stack_1.global_60
  loc_BA5C01: LdPrVar
  loc_BA5C03: LateMemCall
  loc_BA5C09: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BA5C0E: PopAdLdVar
  loc_BA5C0F: FLdPr Me
  loc_BA5C12: MemLdRfVar from_stack_1.global_60
  loc_BA5C15: LdPrVar
  loc_BA5C17: LateMemCall
  loc_BA5C1D: LitVarStr var_94, "}"
  loc_BA5C22: PopAdLdVar
  loc_BA5C23: FLdPr Me
  loc_BA5C26: MemLdRfVar from_stack_1.global_60
  loc_BA5C29: LdPrVar
  loc_BA5C2B: LateMemCall
  loc_BA5C31: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_BA5C36: PopAdLdVar
  loc_BA5C37: FLdPr Me
  loc_BA5C3A: MemLdRfVar from_stack_1.global_60
  loc_BA5C3D: LdPrVar
  loc_BA5C3F: LateMemCall
  loc_BA5C45: LitVarStr var_94, "</style>"
  loc_BA5C4A: PopAdLdVar
  loc_BA5C4B: FLdPr Me
  loc_BA5C4E: MemLdRfVar from_stack_1.global_60
  loc_BA5C51: LdPrVar
  loc_BA5C53: LateMemCall
  loc_BA5C59: LitI4 0
  loc_BA5C5E: FStStrCopy var_AC
  loc_BA5C61: FLdRfVar var_AC
  loc_BA5C64: LitI4 0
  loc_BA5C69: FStStrCopy var_A8
  loc_BA5C6C: FLdRfVar var_A8
  loc_BA5C6F: LitI2_Byte 0
  loc_BA5C71: PopTmpLdAd2 var_BE
  loc_BA5C74: FLdPr Me
  loc_BA5C77: MemLdRfVar from_stack_1.global_60
  loc_BA5C7A: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BA5C7F: FFreeStr var_A8 = ""
  loc_BA5C86: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_BA5C8B: PopAdLdVar
  loc_BA5C8C: FLdPr Me
  loc_BA5C8F: MemLdRfVar from_stack_1.global_60
  loc_BA5C92: LdPrVar
  loc_BA5C94: LateMemCall
  loc_BA5C9A: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_BA5C9F: PopAdLdVar
  loc_BA5CA0: FLdPr Me
  loc_BA5CA3: MemLdRfVar from_stack_1.global_60
  loc_BA5CA6: LdPrVar
  loc_BA5CA8: LateMemCall
  loc_BA5CAE: LitVarStr var_94, "    <th width=""100" & Chr(37) & """ colspan=""2"" align=""center"" valign=""middle""><p>"
  loc_BA5CB3: PopAdLdVar
  loc_BA5CB4: FLdPr Me
  loc_BA5CB7: MemLdRfVar from_stack_1.global_60
  loc_BA5CBA: LdPrVar
  loc_BA5CBC: LateMemCall
  loc_BA5CC2: FLdPr Me
  loc_BA5CC5: MemLdI2 bLogos
  loc_BA5CC8: BranchF loc_BA5D11
  loc_BA5CCB: LitStr "      <img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BA5CCE: LitI2_Byte &H5F
  loc_BA5CD0: CStrUI1
  loc_BA5CD2: FStStrNoPop var_A8
  loc_BA5CD5: ConcatStr
  loc_BA5CD6: FStStrNoPop var_AC
  loc_BA5CD9: LitStr """ height="""
  loc_BA5CDC: ConcatStr
  loc_BA5CDD: FStStrNoPop var_C4
  loc_BA5CE0: LitI2_Byte &H3C
  loc_BA5CE2: CStrUI1
  loc_BA5CE4: FStStrNoPop var_C8
  loc_BA5CE7: ConcatStr
  loc_BA5CE8: FStStrNoPop var_CC
  loc_BA5CEB: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_BA5CEE: ConcatStr
  loc_BA5CEF: CVarStr var_BC
  loc_BA5CF2: PopAdLdVar
  loc_BA5CF3: FLdPr Me
  loc_BA5CF6: MemLdRfVar from_stack_1.global_60
  loc_BA5CF9: LdPrVar
  loc_BA5CFB: LateMemCall
  loc_BA5D01: FFreeStr var_A8 = "": var_AC = "": var_C4 = "": var_C8 = ""
  loc_BA5D0E: FFree1Var var_BC = ""
  loc_BA5D11: LitStr "     <br>"
  loc_BA5D14: LitStr "Municipalidad de Guaymallén"
  loc_BA5D17: ConcatStr
  loc_BA5D18: FStStrNoPop var_A8
  loc_BA5D1B: LitStr "</p>"
  loc_BA5D1E: ConcatStr
  loc_BA5D1F: CVarStr var_BC
  loc_BA5D22: PopAdLdVar
  loc_BA5D23: FLdPr Me
  loc_BA5D26: MemLdRfVar from_stack_1.global_60
  loc_BA5D29: LdPrVar
  loc_BA5D2B: LateMemCall
  loc_BA5D31: FFree1Str var_A8
  loc_BA5D34: FFree1Var var_BC = ""
  loc_BA5D37: LitStr "    <p>"
  loc_BA5D3A: FLdRfVar var_A8
  loc_BA5D3D: FLdPr Me
  loc_BA5D40:  = Me.Caption
  loc_BA5D45: ILdRf var_A8
  loc_BA5D48: ConcatStr
  loc_BA5D49: FStStrNoPop var_AC
  loc_BA5D4C: LitStr "</p></th>"
  loc_BA5D4F: ConcatStr
  loc_BA5D50: CVarStr var_BC
  loc_BA5D53: PopAdLdVar
  loc_BA5D54: FLdPr Me
  loc_BA5D57: MemLdRfVar from_stack_1.global_60
  loc_BA5D5A: LdPrVar
  loc_BA5D5C: LateMemCall
  loc_BA5D62: FFreeStr var_A8 = ""
  loc_BA5D69: FFree1Var var_BC = ""
  loc_BA5D6C: LitVarStr var_94, "  </tr>"
  loc_BA5D71: PopAdLdVar
  loc_BA5D72: FLdPr Me
  loc_BA5D75: MemLdRfVar from_stack_1.global_60
  loc_BA5D78: LdPrVar
  loc_BA5D7A: LateMemCall
  loc_BA5D80: LitVarStr var_94, "  <tr>"
  loc_BA5D85: PopAdLdVar
  loc_BA5D86: FLdPr Me
  loc_BA5D89: MemLdRfVar from_stack_1.global_60
  loc_BA5D8C: LdPrVar
  loc_BA5D8E: LateMemCall
  loc_BA5D94: LitVarStr var_94, "    <th colspan=""2""><hr></th>"
  loc_BA5D99: PopAdLdVar
  loc_BA5D9A: FLdPr Me
  loc_BA5D9D: MemLdRfVar from_stack_1.global_60
  loc_BA5DA0: LdPrVar
  loc_BA5DA2: LateMemCall
  loc_BA5DA8: LitVarStr var_94, "  </tr>"
  loc_BA5DAD: PopAdLdVar
  loc_BA5DAE: FLdPr Me
  loc_BA5DB1: MemLdRfVar from_stack_1.global_60
  loc_BA5DB4: LdPrVar
  loc_BA5DB6: LateMemCall
  loc_BA5DBC: LitVarStr var_94, "  <tr valign=""top"" class=""Normal"">"
  loc_BA5DC1: PopAdLdVar
  loc_BA5DC2: FLdPr Me
  loc_BA5DC5: MemLdRfVar from_stack_1.global_60
  loc_BA5DC8: LdPrVar
  loc_BA5DCA: LateMemCall
  loc_BA5DD0: LitVarStr var_94, "  </tr>"
  loc_BA5DD5: PopAdLdVar
  loc_BA5DD6: FLdPr Me
  loc_BA5DD9: MemLdRfVar from_stack_1.global_60
  loc_BA5DDC: LdPrVar
  loc_BA5DDE: LateMemCall
  loc_BA5DE4: LitVarStr var_94, "</table>"
  loc_BA5DE9: PopAdLdVar
  loc_BA5DEA: FLdPr Me
  loc_BA5DED: MemLdRfVar from_stack_1.global_60
  loc_BA5DF0: LdPrVar
  loc_BA5DF2: LateMemCall
  loc_BA5DF8: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_BA5DFD: PopAdLdVar
  loc_BA5DFE: FLdPr Me
  loc_BA5E01: MemLdRfVar from_stack_1.global_60
  loc_BA5E04: LdPrVar
  loc_BA5E06: LateMemCall
  loc_BA5E0C: LitVarStr var_94, "  <thead>"
  loc_BA5E11: PopAdLdVar
  loc_BA5E12: FLdPr Me
  loc_BA5E15: MemLdRfVar from_stack_1.global_60
  loc_BA5E18: LdPrVar
  loc_BA5E1A: LateMemCall
  loc_BA5E20: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_BA5E25: PopAdLdVar
  loc_BA5E26: FLdPr Me
  loc_BA5E29: MemLdRfVar from_stack_1.global_60
  loc_BA5E2C: LdPrVar
  loc_BA5E2E: LateMemCall
  loc_BA5E34: LitVarStr var_94, "    <th>Fecha de Proceso</th>"
  loc_BA5E39: PopAdLdVar
  loc_BA5E3A: FLdPr Me
  loc_BA5E3D: MemLdRfVar from_stack_1.global_60
  loc_BA5E40: LdPrVar
  loc_BA5E42: LateMemCall
  loc_BA5E48: LitVarStr var_94, "    <th>Nro de Operac.</th>"
  loc_BA5E4D: PopAdLdVar
  loc_BA5E4E: FLdPr Me
  loc_BA5E51: MemLdRfVar from_stack_1.global_60
  loc_BA5E54: LdPrVar
  loc_BA5E56: LateMemCall
  loc_BA5E5C: LitVarStr var_94, "    <th>Periodo</th>"
  loc_BA5E61: PopAdLdVar
  loc_BA5E62: FLdPr Me
  loc_BA5E65: MemLdRfVar from_stack_1.global_60
  loc_BA5E68: LdPrVar
  loc_BA5E6A: LateMemCall
  loc_BA5E70: LitVarStr var_94, "    <th>Nro de Boleto</th>"
  loc_BA5E75: PopAdLdVar
  loc_BA5E76: FLdPr Me
  loc_BA5E79: MemLdRfVar from_stack_1.global_60
  loc_BA5E7C: LdPrVar
  loc_BA5E7E: LateMemCall
  loc_BA5E84: LitVarStr var_94, "    <th>Importe</th>"
  loc_BA5E89: PopAdLdVar
  loc_BA5E8A: FLdPr Me
  loc_BA5E8D: MemLdRfVar from_stack_1.global_60
  loc_BA5E90: LdPrVar
  loc_BA5E92: LateMemCall
  loc_BA5E98: LitVarStr var_94, "  </tr>"
  loc_BA5E9D: PopAdLdVar
  loc_BA5E9E: FLdPr Me
  loc_BA5EA1: MemLdRfVar from_stack_1.global_60
  loc_BA5EA4: LdPrVar
  loc_BA5EA6: LateMemCall
  loc_BA5EAC: LitVarStr var_94, "  </thead>"
  loc_BA5EB1: PopAdLdVar
  loc_BA5EB2: FLdPr Me
  loc_BA5EB5: MemLdRfVar from_stack_1.global_60
  loc_BA5EB8: LdPrVar
  loc_BA5EBA: LateMemCall
  loc_BA5EC0: ExitProcHresult
  loc_BA5EC1: IStFPR8 arg_24
End Function

Private Function Proc_343_25_A0F4D8() 'A0F4D8
  'Data Table: 46E884
  loc_A0F498: LitVarStr var_94, "</table>"
  loc_A0F49D: PopAdLdVar
  loc_A0F49E: FLdPr Me
  loc_A0F4A1: MemLdRfVar from_stack_1.global_60
  loc_A0F4A4: LdPrVar
  loc_A0F4A6: LateMemCall
  loc_A0F4AC: LitVarStr var_94, "</body>"
  loc_A0F4B1: PopAdLdVar
  loc_A0F4B2: FLdPr Me
  loc_A0F4B5: MemLdRfVar from_stack_1.global_60
  loc_A0F4B8: LdPrVar
  loc_A0F4BA: LateMemCall
  loc_A0F4C0: LitVarStr var_94, "</html>"
  loc_A0F4C5: PopAdLdVar
  loc_A0F4C6: FLdPr Me
  loc_A0F4C9: MemLdRfVar from_stack_1.global_60
  loc_A0F4CC: LdPrVar
  loc_A0F4CE: LateMemCall
  loc_A0F4D4: ExitProcHresult
  loc_A0F4D5: MemStI4 global_1686
End Function

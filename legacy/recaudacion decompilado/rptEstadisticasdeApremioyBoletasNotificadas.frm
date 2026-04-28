VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Object = "{65E121D4-0C60-11D2-A9FC0000F8754DA1}#2.0#0"; "C:\WINDOWS\SysWOW64\mschrt20.ocx"
Begin VB.Form rptEstadisticasdeApremioyBoletasNotificadas
  Caption = "Estadísticas de Apremio y Boletas Notificadas"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptEstadisticasdeApremioyBoletasNotificadas.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 9108
  ClientHeight = 4212
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
    Top = 3960
    Width = 9105
    Height = 255
    TabIndex = 14
    OleObjectBlob = "rptEstadisticasdeApremioyBoletasNotificadas.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 8160
    Top = 2880
    Width = 855
    Height = 735
    TabIndex = 9
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
    Picture = "rptEstadisticasdeApremioyBoletasNotificadas.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptEstadisticasdeApremioyBoletasNotificadas.frx":0B9C
    Left = 7560
    Top = 3000
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 2640
    Width = 3615
    Height = 1215
    TabIndex = 12
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1800
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 20
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 7
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 2640
    Width = 4095
    Height = 1215
    TabIndex = 11
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1920
      Top = 360
      Width = 2055
      Height = 615
      TabIndex = 6
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1695
      Height = 615
      TabIndex = 5
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 7815
    Height = 2535
    TabIndex = 10
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 7,8
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.ComboBox OficinaCbo
      Style = 2
      ForeColor = &HFF0000&
      Left = 1200
      Top = 360
      Width = 4335
      Height = 420
      TabIndex = 0
      List = "rptEstadisticasdeApremioyBoletasNotificadas.frx":0C00
      ItemData = "rptEstadisticasdeApremioyBoletasNotificadas.frx":0C74
    End
    Begin VB.Frame Frame4
      Caption = "Fecha de Apremio"
      Left = 240
      Top = 960
      Width = 5295
      Height = 1455
      TabIndex = 15
      Begin VB.CommandButton HastaFechaCmd
        Left = 4560
        Top = 885
        Width = 375
        Height = 375
        TabIndex = 4
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 7,8
          Charset = 0
          Weight = 400
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
        Picture = "rptEstadisticasdeApremioyBoletasNotificadas.frx":0C87
        Style = 1
        CausesValidation = 0   'False
      End
      Begin VB.CommandButton DesdeFechaCmd
        Left = 4560
        Top = 360
        Width = 375
        Height = 375
        TabIndex = 2
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 7,8
          Charset = 0
          Weight = 400
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
        Picture = "rptEstadisticasdeApremioyBoletasNotificadas.frx":11C9
        Style = 1
        CausesValidation = 0   'False
      End
      Begin MSMask.MaskEdBox FeemApreDesdeMsk
        Left = 3120
        Top = 360
        Width = 1335
        Height = 360
        TabIndex = 1
        OleObjectBlob = "rptEstadisticasdeApremioyBoletasNotificadas.frx":170B
      End
      Begin MSMask.MaskEdBox FeemApreHastaMsk
        Left = 3120
        Top = 885
        Width = 1335
        Height = 360
        TabIndex = 3
        OleObjectBlob = "rptEstadisticasdeApremioyBoletasNotificadas.frx":17BB
      End
      Begin VB.Label Label3
        Caption = "Hasta:"
        Left = 2340
        Top = 885
        Width = 705
        Height = 300
        TabIndex = 17
        AutoSize = -1  'True
      End
      Begin VB.Label Label2
        Caption = "Desde:"
        Left = 2280
        Top = 360
        Width = 765
        Height = 300
        TabIndex = 16
        AutoSize = -1  'True
      End
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 6000
      Top = 360
      Width = 1575
      Height = 615
      TabIndex = 8
    End
    Begin VB.Label Label1
      Caption = "Oficina:"
      Left = 240
      Top = 360
      Width = 795
      Height = 300
      TabIndex = 18
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 6720
    Top = 3240
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 13
    OleObjectBlob = "rptEstadisticasdeApremioyBoletasNotificadas.frx":186B
  End
  Begin MSChart20Lib.MSChart Graf1
    Left = 9000
    Top = 0
    Width = 3855
    Height = 3015
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 19
    OleObjectBlob = "rptEstadisticasdeApremioyBoletasNotificadas.frx":191F
  End
  Begin VB.Image img1
    Left = 9600
    Top = 0
    Width = 735
    Height = 3135
    Visible = 0   'False
  End
End

Attribute VB_Name = "rptEstadisticasdeApremioyBoletasNotificadas"

Public bGenerado As Boolean
Public bLogos As Boolean

Private Type UDT_1_005662C8
  bStruc(20) As Byte ' String fields: 4
End Type


Private Sub Form_Load() 'AB3898
  'Data Table: 4AA3B0
  loc_AB37BC: ILdRf Me
  loc_AB37BF: CastAd
  loc_AB37C2: FStAdFunc var_88
  loc_AB37C5: FLdRfVar var_88
  loc_AB37C8: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_AB37CD: FFree1Ad var_88
  loc_AB37D0: FLdRfVar var_8C
  loc_AB37D3: NewIfNullAd
  loc_AB37D6: FStAd var_90 
  loc_AB37DA: LitStr "SELECT CodiOfic, DetaOfic FROM oficina ORDER BY CodiOfic"
  loc_AB37DD: FLdPr var_90
  loc_AB37E0: Call clsoficina.RedefineRS(from_stack_1v)
  loc_AB37E5: FLdPr var_90
  loc_AB37E8: Call clsoficina.MoveFirst()
  loc_AB37ED: FLdPr Me
  loc_AB37F0: VCallAd Control_ID_OficinaCbo
  loc_AB37F3: FStAdFunc var_88
  loc_AB37F6: FLdPr var_88
  loc_AB37F9: Me.Clear
  loc_AB37FE: FFree1Ad var_88
  loc_AB3801: FLdRfVar var_92
  loc_AB3804: FLdPr var_90
  loc_AB3807: from_stack_1 = clsoficina.EOF
  loc_AB380C: FLdI2 var_92
  loc_AB380F: NotI4
  loc_AB3810: BranchF loc_AB388A
  loc_AB3813: LitVar_Missing var_A8
  loc_AB3816: PopAdLdVar
  loc_AB3817: FLdRfVar var_98
  loc_AB381A: FLdPr var_90
  loc_AB381D: from_stack_1 = clsoficina.DetaOfic
  loc_AB3822: ILdRf var_98
  loc_AB3825: FLdPr Me
  loc_AB3828: VCallAd Control_ID_OficinaCbo
  loc_AB382B: FStAdFunc var_88
  loc_AB382E: FLdPr var_88
  loc_AB3831: Me.AddItem from_stack_1, from_stack_2
  loc_AB3836: FFree1Str var_98
  loc_AB3839: FFree1Ad var_88
  loc_AB383C: FLdRfVar var_92
  loc_AB383F: FLdPr var_90
  loc_AB3842: from_stack_1 = clsoficina.CodiOfic
  loc_AB3847: FLdI2 var_92
  loc_AB384A: CI4UI1
  loc_AB384B: FLdRfVar var_AA
  loc_AB384E: FLdPr Me
  loc_AB3851: VCallAd Control_ID_OficinaCbo
  loc_AB3854: FStAdFunc var_88
  loc_AB3857: FLdPr var_88
  loc_AB385A:  = Me.NewIndex
  loc_AB385F: FLdI2 var_AA
  loc_AB3862: FLdPr Me
  loc_AB3865: VCallAd Control_ID_OficinaCbo
  loc_AB3868: FStAdFunc var_B0
  loc_AB386B: FLdPr var_B0
  loc_AB386E: Me.ItemData = from_stack_1
  loc_AB3873: FFreeAd var_88 = ""
  loc_AB387A: LitI2_Byte 1
  loc_AB387C: PopTmpLdAd2 var_92
  loc_AB387F: FLdPr var_90
  loc_AB3882: Call clsoficina.Move(from_stack_1v)
  loc_AB3887: Branch loc_AB3801
  loc_AB388A: LitNothing
  loc_AB388C: FStAd var_90 
  loc_AB3890: Call cmdNueva_Click()
  loc_AB3895: ExitProcHresult
  loc_AB3896: Ary1StFPR4
End Sub

Private Sub Form_Unload(Cancel As Integer) '9CB058
  'Data Table: 4AA3B0
  loc_9CB040: FLdPr Me
  loc_9CB043: VCallAd Control_ID_wbbReporte
  loc_9CB046: FStAdFunc var_88
  loc_9CB049: FLdRfVar var_88
  loc_9CB04C: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9CB051: FFree1Ad var_88
  loc_9CB054: ExitProcHresult
  loc_9CB055: Ary1LdCy
  loc_9CB056: ImpAdLdPr unk_4ADBB1
End Sub

Private Sub HastaFechaCmd_Click() 'A0D4E4
  'Data Table: 4AA3B0
  loc_A0D4A8: LitVar_Missing var_A4
  loc_A0D4AB: PopAdLdVar
  loc_A0D4AC: LitVarI4
  loc_A0D4B4: PopAdLdVar
  loc_A0D4B5: ImpAdLdRf MemVar_D930A4
  loc_A0D4B8: NewIfNullPr frmCalendario
  loc_A0D4BB: frmCalendario.Show from_stack_1, from_stack_2
  loc_A0D4C0: ImpAdLdRf MemVar_D93028
  loc_A0D4C3: CDargRef
  loc_A0D4C7: FLdPr Me
  loc_A0D4CA: VCallAd Control_ID_FeemApreHastaMsk
  loc_A0D4CD: FStAdFunc var_A8
  loc_A0D4D0: FLdPr var_A8
  loc_A0D4D3: LateIdSt
  loc_A0D4D8: FFree1Ad var_A8
  loc_A0D4DB: ImpAdCallFPR4 Proc_272_49_9E343C()
  loc_A0D4E0: ExitProcHresult
  loc_A0D4E1: UMiR8
  loc_A0D4E2: UMiI4
End Sub

Private Sub cmdXLS_Click() '9DDC6C
  'Data Table: 4AA3B0
  loc_9DDC50: LitI2_Byte &HFF
  loc_9DDC52: LitI2_Byte 0
  loc_9DDC54: ILdRf Me
  loc_9DDC57: CastAd
  loc_9DDC5A: FStAdFunc var_88
  loc_9DDC5D: FLdRfVar var_88
  loc_9DDC60: ImpAdCallFPR4 Proc_57_4_AFAAC0(, , )
  loc_9DDC65: FFree1Ad var_88
  loc_9DDC68: ExitProcHresult
  loc_9DDC69: ILdI2 arg_36A
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A15670
  'Data Table: 4AA3B0
  loc_A15638: FLdPr Me
  loc_A1563B: VCallAd Control_ID_statusBar
  loc_A1563E: FStAdFunc var_88
  loc_A15641: FLdPr var_88
  loc_A15644: LateIdLdVar var_98 DispID_1 0
  loc_A1564B: CStrVarTmp
  loc_A1564C: CVarStr var_A8
  loc_A1564F: PopAdLdVar
  loc_A15650: FLdPr Me
  loc_A15653: VCallAd Control_ID_statusBar
  loc_A15656: FStAdFunc var_BC
  loc_A15659: FLdPr var_BC
  loc_A1565C: LateIdSt
  loc_A15661: FFreeAd var_88 = ""
  loc_A15668: FFreeVar var_98 = ""
  loc_A1566F: ExitProcHresult
End Sub

Private Sub FeemApreDesdeMsk_UnknownEvent_0 '9C7D30
  'Data Table: 4AA3B0
  loc_9C7D1C: FLdPr Me
  loc_9C7D1F: VCallAd Control_ID_FeemApreDesdeMsk
  loc_9C7D22: CVarAd
  loc_9C7D26: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C7D2B: FFree1Var var_94 = ""
  loc_9C7D2E: ExitProcHresult
End Sub

Private Sub FeemApreDesdeMsk_UnknownEvent_8 'A64BA0
  'Data Table: 4AA3B0
  loc_A64B44: FLdPr Me
  loc_A64B47: VCallAd Control_ID_FeemApreDesdeMsk
  loc_A64B4A: FStAdFunc var_88
  loc_A64B4D: FLdPr var_88
  loc_A64B50: LateIdLdVar var_98 DispID_15 0
  loc_A64B57: CStrVarTmp
  loc_A64B58: FStStrNoPop var_9C
  loc_A64B5B: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A64B60: FStStrNoPop var_A0
  loc_A64B63: FLdPr Me
  loc_A64B66: MemStStrCopy
  loc_A64B6A: FFreeStr var_9C = ""
  loc_A64B71: FFree1Ad var_88
  loc_A64B74: FFree1Var var_98 = ""
  loc_A64B77: FLdPr Me
  loc_A64B7A: VCallAd Control_ID_FeemApreDesdeMsk
  loc_A64B7D: FStAdFuncNoPop
  loc_A64B80: CastAd
  loc_A64B83: FStAdFunc var_A4
  loc_A64B86: FLdRfVar var_A4
  loc_A64B89: FLdPr Me
  loc_A64B8C: MemLdStr global_112
  loc_A64B8F: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A64B94: IStI2 Button
  loc_A64B97: FFreeAd var_88 = ""
  loc_A64B9E: ExitProcHresult
End Sub

Private Sub FeemApreHastaMsk_UnknownEvent_0 '9C5E88
  'Data Table: 4AA3B0
  loc_9C5E74: FLdPr Me
  loc_9C5E77: VCallAd Control_ID_FeemApreHastaMsk
  loc_9C5E7A: CVarAd
  loc_9C5E7E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C5E83: FFree1Var var_94 = ""
  loc_9C5E86: ExitProcHresult
End Sub

Private Sub FeemApreHastaMsk_UnknownEvent_8 'ACB42C
  'Data Table: 4AA3B0
  loc_ACB32C: FLdPr Me
  loc_ACB32F: VCallAd Control_ID_FeemApreHastaMsk
  loc_ACB332: FStAdFunc var_88
  loc_ACB335: FLdPr var_88
  loc_ACB338: LateIdLdVar var_98 DispID_15 0
  loc_ACB33F: CStrVarTmp
  loc_ACB340: FStStrNoPop var_9C
  loc_ACB343: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_ACB348: FStStrNoPop var_A0
  loc_ACB34B: FLdPr Me
  loc_ACB34E: MemStStrCopy
  loc_ACB352: FFreeStr var_9C = ""
  loc_ACB359: FFree1Ad var_88
  loc_ACB35C: FFree1Var var_98 = ""
  loc_ACB35F: FLdPr Me
  loc_ACB362: VCallAd Control_ID_FeemApreHastaMsk
  loc_ACB365: FStAdFuncNoPop
  loc_ACB368: CastAd
  loc_ACB36B: FStAdFunc var_A4
  loc_ACB36E: FLdRfVar var_A4
  loc_ACB371: FLdPr Me
  loc_ACB374: MemLdStr global_112
  loc_ACB377: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_ACB37C: IStI2 Button
  loc_ACB37F: FFreeAd var_88 = ""
  loc_ACB386: ILdI2 Button
  loc_ACB389: NotI4
  loc_ACB38A: BranchF loc_ACB42A
  loc_ACB38D: FLdPr Me
  loc_ACB390: VCallAd Control_ID_FeemApreDesdeMsk
  loc_ACB393: FStAdFunc var_88
  loc_ACB396: FLdPr var_88
  loc_ACB399: LateIdLdVar var_98 DispID_15 0
  loc_ACB3A0: CStrVarTmp
  loc_ACB3A1: CVarStr var_B4
  loc_ACB3A4: FLdRfVar var_C4
  loc_ACB3A7: ImpAdCallFPR4  = Year()
  loc_ACB3AC: FLdRfVar var_C4
  loc_ACB3AF: FLdPr Me
  loc_ACB3B2: VCallAd Control_ID_FeemApreHastaMsk
  loc_ACB3B5: FStAdFunc var_A4
  loc_ACB3B8: FLdPr var_A4
  loc_ACB3BB: LateIdLdVar var_D4 DispID_15 0
  loc_ACB3C2: CStrVarTmp
  loc_ACB3C3: CVarStr var_E4
  loc_ACB3C6: FLdRfVar var_F4
  loc_ACB3C9: ImpAdCallFPR4  = Year()
  loc_ACB3CE: FLdRfVar var_F4
  loc_ACB3D1: NeVarBool
  loc_ACB3D3: FFreeAd var_88 = ""
  loc_ACB3DA: FFreeVar var_98 = "": var_B4 = "": var_D4 = "": var_E4 = "": var_C4 = ""
  loc_ACB3E9: BranchF loc_ACB3F9
  loc_ACB3EC: LitStr "Las fechas ingresadas deben corresponder al mismo año."
  loc_ACB3EF: FLdPr Me
  loc_ACB3F2: MemStStrCopy
  loc_ACB3F6: Branch loc_ACB403
  loc_ACB3F9: LitStr vbNullString
  loc_ACB3FC: FLdPr Me
  loc_ACB3FF: MemStStrCopy
  loc_ACB403: FLdPr Me
  loc_ACB406: VCallAd Control_ID_FeemApreHastaMsk
  loc_ACB409: FStAdFuncNoPop
  loc_ACB40C: CastAd
  loc_ACB40F: FStAdFunc var_A4
  loc_ACB412: FLdRfVar var_A4
  loc_ACB415: FLdPr Me
  loc_ACB418: MemLdStr global_112
  loc_ACB41B: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_ACB420: IStI2 Button
  loc_ACB423: FFreeAd var_88 = ""
  loc_ACB42A: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9E078C
  'Data Table: 4AA3B0
  loc_9E0770: LitI2_Byte 0
  loc_9E0772: PopTmpLdAd2 var_8A
  loc_9E0775: ILdRf Me
  loc_9E0778: CastAd
  loc_9E077B: FStAdFunc var_88
  loc_9E077E: FLdRfVar var_88
  loc_9E0781: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9E0786: FFree1Ad var_88
  loc_9E0789: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() 'A06190
  'Data Table: 4AA3B0
  loc_A06160: LitVarStr var_94, "Cerrando..."
  loc_A06165: PopAdLdVar
  loc_A06166: FLdPr Me
  loc_A06169: VCallAd Control_ID_statusBar
  loc_A0616C: FStAdFunc var_A8
  loc_A0616F: FLdPr var_A8
  loc_A06172: LateIdSt
  loc_A06177: FFree1Ad var_A8
  loc_A0617A: ILdRf Me
  loc_A0617D: FStAdNoPop
  loc_A06181: ImpAdLdRf MemVar_D9C5D8
  loc_A06184: NewIfNullPr Global
  loc_A06187: Global.Unload from_stack_1
  loc_A0618C: FFree1Ad var_A8
  loc_A0618F: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9CAEDC
  'Data Table: 4AA3B0
  loc_9CAEC4: ILdRf Me
  loc_9CAEC7: CastAd
  loc_9CAECA: FStAdFunc var_88
  loc_9CAECD: FLdRfVar var_88
  loc_9CAED0: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9CAED5: FFree1Ad var_88
  loc_9CAED8: ExitProcHresult
  loc_9CAED9: MulI2
  loc_9CAEDA: Ary1StFPR4
End Sub

Private Sub cmdPredeterminada_Click() '9CAF28
  'Data Table: 4AA3B0
  loc_9CAF10: LitI2_Byte 0
  loc_9CAF12: ILdRf Me
  loc_9CAF15: CastAd
  loc_9CAF18: FStAdFunc var_88
  loc_9CAF1B: FLdRfVar var_88
  loc_9CAF1E: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9CAF23: FFree1Ad var_88
  loc_9CAF26: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'AE56D0
  'Data Table: 4AA3B0
  loc_AE557C: LitI2_Byte 0
  loc_AE557E: FLdPr Me
  loc_AE5581: MemStI2 bGenerado
  loc_AE5584: LitI2_Byte &HFF
  loc_AE5586: FLdPr Me
  loc_AE5589: MemStI2 bLogos
  loc_AE558C: LitI2_Byte 0
  loc_AE558E: ILdRf Me
  loc_AE5591: CastAd
  loc_AE5594: FStAdFunc var_88
  loc_AE5597: FLdRfVar var_88
  loc_AE559A: ImpAdCallFPR4 Proc_272_46_B065FC(, )
  loc_AE559F: FFree1Ad var_88
  loc_AE55A2: LitI2_Byte 0
  loc_AE55A4: FLdPr Me
  loc_AE55A7: VCallAd Control_ID_OficinaCbo
  loc_AE55AA: FStAdFunc var_88
  loc_AE55AD: FLdPr var_88
  loc_AE55B0: Me.ListIndex = from_stack_1
  loc_AE55B5: FFree1Ad var_88
  loc_AE55B8: LitI2_Byte 0
  loc_AE55BA: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AE55BF: CVarDate var_A8
  loc_AE55C3: FLdRfVar var_B8
  loc_AE55C6: ImpAdCallFPR4  = Year()
  loc_AE55CB: LitI2_Byte 0
  loc_AE55CD: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AE55D2: CVarDate var_D8
  loc_AE55D6: FLdRfVar var_E8
  loc_AE55D9: ImpAdCallFPR4  = Month()
  loc_AE55DE: LitI2_Byte 1
  loc_AE55E0: FLdRfVar var_E8
  loc_AE55E3: CI2Var
  loc_AE55E4: FLdRfVar var_B8
  loc_AE55E7: CI2Var
  loc_AE55E8: FLdRfVar var_F8
  loc_AE55EB: ImpAdCallFPR4  = DateSerial(, , )
  loc_AE55F0: FLdRfVar var_F8
  loc_AE55F3: CStrVarTmp
  loc_AE55F4: CVarStr var_108
  loc_AE55F7: PopAdLdVar
  loc_AE55F8: FLdPr Me
  loc_AE55FB: VCallAd Control_ID_FeemApreDesdeMsk
  loc_AE55FE: FStAdFunc var_88
  loc_AE5601: FLdPr var_88
  loc_AE5604: LateIdSt
  loc_AE5609: FFree1Ad var_88
  loc_AE560C: FFreeVar var_A8 = "": var_D8 = "": var_B8 = "": var_E8 = "": var_F8 = ""
  loc_AE561B: FLdPr Me
  loc_AE561E: VCallAd Control_ID_FeemApreDesdeMsk
  loc_AE5621: FStAdFunc var_88
  loc_AE5624: FLdPr var_88
  loc_AE5627: LateIdLdVar var_A8 DispID_15 0
  loc_AE562E: CStrVarTmp
  loc_AE562F: CVarStr var_B8
  loc_AE5632: FLdRfVar var_D8
  loc_AE5635: ImpAdCallFPR4  = Year()
  loc_AE563A: FLdPr Me
  loc_AE563D: VCallAd Control_ID_FeemApreDesdeMsk
  loc_AE5640: FStAdFunc var_11C
  loc_AE5643: FLdPr var_11C
  loc_AE5646: LateIdLdVar var_E8 DispID_15 0
  loc_AE564D: CStrVarTmp
  loc_AE564E: CVarStr var_F8
  loc_AE5651: FLdRfVar var_108
  loc_AE5654: ImpAdCallFPR4  = Month()
  loc_AE5659: LitI2_Byte 1
  loc_AE565B: FLdRfVar var_108
  loc_AE565E: LitVarI2 var_98, 1
  loc_AE5663: AddVar var_12C
  loc_AE5667: CI2Var
  loc_AE5668: FLdRfVar var_D8
  loc_AE566B: CI2Var
  loc_AE566C: FLdRfVar var_13C
  loc_AE566F: ImpAdCallFPR4  = DateSerial(, , )
  loc_AE5674: FLdRfVar var_13C
  loc_AE5677: LitVarI2 var_C8, 1
  loc_AE567C: SubVar var_14C
  loc_AE5680: CStrVarTmp
  loc_AE5681: CVarStr var_15C
  loc_AE5684: PopAdLdVar
  loc_AE5685: FLdPr Me
  loc_AE5688: VCallAd Control_ID_FeemApreHastaMsk
  loc_AE568B: FStAdFunc var_160
  loc_AE568E: FLdPr var_160
  loc_AE5691: LateIdSt
  loc_AE5696: FFreeAd var_88 = "": var_11C = ""
  loc_AE569F: FFreeVar var_A8 = "": var_B8 = "": var_E8 = "": var_F8 = "": var_108 = "": var_D8 = "": var_12C = "": var_13C = ""
  loc_AE56B4: Call HabilitarCriterio()
  loc_AE56B9: ILdRf Me
  loc_AE56BC: CastAd
  loc_AE56BF: FStAdFunc var_88
  loc_AE56C2: FLdRfVar var_88
  loc_AE56C5: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_AE56CA: FFree1Ad var_88
  loc_AE56CD: ExitProcHresult
End Sub

Private Sub DesdeFechaCmd_Click() 'A0D474
  'Data Table: 4AA3B0
  loc_A0D438: LitVar_Missing var_A4
  loc_A0D43B: PopAdLdVar
  loc_A0D43C: LitVarI4
  loc_A0D444: PopAdLdVar
  loc_A0D445: ImpAdLdRf MemVar_D930A4
  loc_A0D448: NewIfNullPr frmCalendario
  loc_A0D44B: frmCalendario.Show from_stack_1, from_stack_2
  loc_A0D450: ImpAdLdRf MemVar_D93028
  loc_A0D453: CDargRef
  loc_A0D457: FLdPr Me
  loc_A0D45A: VCallAd Control_ID_FeemApreDesdeMsk
  loc_A0D45D: FStAdFunc var_A8
  loc_A0D460: FLdPr var_A8
  loc_A0D463: LateIdSt
  loc_A0D468: FFree1Ad var_A8
  loc_A0D46B: ImpAdCallFPR4 Proc_272_49_9E343C()
  loc_A0D470: ExitProcHresult
End Sub

Public Function bGeneradoGet() '4AB3E0
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4AB3EF
  bGenerado = Value
End Sub

Public Function bLogosGet() '4AB3FE
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '4AB40D
  bLogos = Value
End Sub

Public Sub GeneraXLS() '9C60CC
  'Data Table: 4AA3B0
  loc_9C60B4: LitI2_Byte 0
  loc_9C60B6: FLdPr Me
  loc_9C60B9: MemStI2 bLogos
  loc_9C60BC: Call GeneraHTML()
  loc_9C60C1: LitI2_Byte &HFF
  loc_9C60C3: FLdPr Me
  loc_9C60C6: MemStI2 bLogos
  loc_9C60C9: ExitProcHresult
  loc_9C60CA: FLdR8 arg_3803
End Sub

Public Sub HabilitarCriterio() 'A804FC
  'Data Table: 4AA3B0
  loc_A80488: LitI4 0
  loc_A8048D: LitI4 4
  loc_A80492: FLdRfVar var_88
  loc_A80495: Redim
  loc_A8049F: FLdPr Me
  loc_A804A2: VCallAd Control_ID_OficinaCbo
  loc_A804A5: CVarAd
  loc_A804A9: ParmAry1St
  loc_A804AF: FLdPr Me
  loc_A804B2: VCallAd Control_ID_FeemApreDesdeMsk
  loc_A804B5: CVarAd
  loc_A804B9: ParmAry1St
  loc_A804BF: FLdPr Me
  loc_A804C2: VCallAd Control_ID_DesdeFechaCmd
  loc_A804C5: CVarAd
  loc_A804C9: ParmAry1St
  loc_A804CF: FLdPr Me
  loc_A804D2: VCallAd Control_ID_FeemApreHastaMsk
  loc_A804D5: CVarAd
  loc_A804D9: ParmAry1St
  loc_A804DF: FLdPr Me
  loc_A804E2: VCallAd Control_ID_HastaFechaCmd
  loc_A804E5: CVarAd
  loc_A804E9: ParmAry1St
  loc_A804EF: FLdRfVar var_88
  loc_A804F2: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A804F7: FLdRfVar var_88
  loc_A804FA: Erase
  loc_A804FB: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B7E17C
  'Data Table: 4AA3B0
  loc_B7DCD8: FLdPr Me
  loc_B7DCDB: MemLdI2 bGenerado
  loc_B7DCDE: BranchF loc_B7DCE2
  loc_B7DCE1: ExitProcHresult
  loc_B7DCE2: LitVarStr var_94, "Generando reporte..."
  loc_B7DCE7: PopAdLdVar
  loc_B7DCE8: FLdPr Me
  loc_B7DCEB: VCallAd Control_ID_statusBar
  loc_B7DCEE: FStAdFunc var_A8
  loc_B7DCF1: FLdPr var_A8
  loc_B7DCF4: LateIdSt
  loc_B7DCF9: FFree1Ad var_A8
  loc_B7DCFC: LitI4 &HB
  loc_B7DD01: CI2I4
  loc_B7DD02: FLdPr Me
  loc_B7DD05: Me.MousePointer = from_stack_1
  loc_B7DD0A: LitI2_Byte 0
  loc_B7DD0C: PopTmpLdAd2 var_AA
  loc_B7DD0F: Call FeemApreDesdeMsk_UnknownEvent_8()
  loc_B7DD14: FLdPr Me
  loc_B7DD17: MemLdStr global_112
  loc_B7DD1A: LitStr vbNullString
  loc_B7DD1D: NeStr
  loc_B7DD1F: BranchF loc_B7DD25
  loc_B7DD22: Branch loc_B7E152
  loc_B7DD25: LitI2_Byte 0
  loc_B7DD27: PopTmpLdAd2 var_AA
  loc_B7DD2A: Call FeemApreHastaMsk_UnknownEvent_8()
  loc_B7DD2F: FLdPr Me
  loc_B7DD32: MemLdStr global_112
  loc_B7DD35: LitStr vbNullString
  loc_B7DD38: NeStr
  loc_B7DD3A: BranchF loc_B7DD40
  loc_B7DD3D: Branch loc_B7E152
  loc_B7DD40: FLdPr Me
  loc_B7DD43: MemLdRfVar from_stack_1.global_76
  loc_B7DD46: NewIfNullAd
  loc_B7DD49: FStAd var_B0 
  loc_B7DD4D: FLdRfVar var_AA
  loc_B7DD50: FLdPr Me
  loc_B7DD53: VCallAd Control_ID_OficinaCbo
  loc_B7DD56: FStAdFunc var_A8
  loc_B7DD59: FLdPr var_A8
  loc_B7DD5C:  = Me.ListIndex
  loc_B7DD61: FLdPr Me
  loc_B7DD64: VCallAd Control_ID_FeemApreDesdeMsk
  loc_B7DD67: FStAdFunc var_D0
  loc_B7DD6A: FLdPr var_D0
  loc_B7DD6D: LateIdLdVar var_E0 DispID_15 0
  loc_B7DD74: PopAd
  loc_B7DD76: FLdPr Me
  loc_B7DD79: VCallAd Control_ID_FeemApreHastaMsk
  loc_B7DD7C: FStAdFunc var_144
  loc_B7DD7F: FLdPr var_144
  loc_B7DD82: LateIdLdVar var_154 DispID_15 0
  loc_B7DD89: PopAd
  loc_B7DD8B: LitStr "SELECT FeemApre, apremio.NumeApre, CuenCtct, DetaPers, if(instapre.CodiInju is null,FALSE,TRUE) as NotiApre FROM apremio"
  loc_B7DD8E: LitStr " LEFT JOIN instapre ON instapre.NumeApre = apremio.NumeApre AND instapre.CodiInju=1"
  loc_B7DD91: ConcatStr
  loc_B7DD92: FStStrNoPop var_B4
  loc_B7DD95: LitStr " LEFT JOIN infogov.persona ON infogov.persona.CucuPers = apremio.CucuPers"
  loc_B7DD98: ConcatStr
  loc_B7DD99: FStStrNoPop var_B8
  loc_B7DD9C: LitStr " WHERE apremio.CodiOfic = "
  loc_B7DD9F: ConcatStr
  loc_B7DDA0: FStStrNoPop var_C4
  loc_B7DDA3: FLdRfVar var_C0
  loc_B7DDA6: FLdI2 var_AA
  loc_B7DDA9: FLdPr Me
  loc_B7DDAC: VCallAd Control_ID_OficinaCbo
  loc_B7DDAF: FStAdFunc var_BC
  loc_B7DDB2: FLdPr var_BC
  loc_B7DDB5:  = Me.ItemData
  loc_B7DDBA: ILdRf var_C0
  loc_B7DDBD: CStrI4
  loc_B7DDBF: FStStrNoPop var_C8
  loc_B7DDC2: ConcatStr
  loc_B7DDC3: FStStrNoPop var_CC
  loc_B7DDC6: LitStr " AND FeemApre BETWEEN '"
  loc_B7DDC9: ConcatStr
  loc_B7DDCA: CVarStr var_120
  loc_B7DDCD: LitI4 1
  loc_B7DDD2: LitI4 1
  loc_B7DDD7: LitVarStr var_94, "yyyy-mm-dd"
  loc_B7DDDC: FStVarCopyObj var_100
  loc_B7DDDF: FLdRfVar var_100
  loc_B7DDE2: FLdRfVar var_E0
  loc_B7DDE5: CStrVarTmp
  loc_B7DDE6: CVarStr var_F0
  loc_B7DDE9: FLdRfVar var_110
  loc_B7DDEC: ImpAdCallFPR4  = Format(, )
  loc_B7DDF1: FLdRfVar var_110
  loc_B7DDF4: ConcatVar var_130
  loc_B7DDF8: LitVarStr var_A4, "' AND '"
  loc_B7DDFD: ConcatVar var_140
  loc_B7DE01: LitI4 1
  loc_B7DE06: LitI4 1
  loc_B7DE0B: LitVarStr var_174, "yyyy-mm-dd"
  loc_B7DE10: FStVarCopyObj var_184
  loc_B7DE13: FLdRfVar var_184
  loc_B7DE16: FLdRfVar var_154
  loc_B7DE19: CStrVarTmp
  loc_B7DE1A: CVarStr var_164
  loc_B7DE1D: FLdRfVar var_194
  loc_B7DE20: ImpAdCallFPR4  = Format(, )
  loc_B7DE25: FLdRfVar var_194
  loc_B7DE28: ConcatVar var_1A4
  loc_B7DE2C: LitVarStr var_1B4, "'"
  loc_B7DE31: ConcatVar var_1C4
  loc_B7DE35: LitVarStr var_1D4, " ORDER BY FeemApre, NumeApre"
  loc_B7DE3A: ConcatVar var_1E4
  loc_B7DE3E: CStrVarVal var_1E8
  loc_B7DE42: FLdPr var_B0
  loc_B7DE45: Call clsapremio.RedefineRS(from_stack_1v)
  loc_B7DE4A: FFreeStr var_B4 = "": var_B8 = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_B7DE59: FFreeAd var_A8 = "": var_BC = "": var_D0 = ""
  loc_B7DE64: FFreeVar var_E0 = "": var_F0 = "": var_100 = "": var_120 = "": var_110 = "": var_130 = "": var_154 = "": var_164 = "": var_184 = "": var_140 = "": var_194 = "": var_1A4 = "": var_1C4 = ""
  loc_B7DE83: FLdRfVar var_C0
  loc_B7DE86: FLdPr var_B0
  loc_B7DE89: from_stack_1 = clsapremio.RecordCount
  loc_B7DE8E: ILdRf var_C0
  loc_B7DE91: LitI4 0
  loc_B7DE96: EqI4
  loc_B7DE97: BranchF loc_B7DEA5
  loc_B7DE9A: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B7DE9D: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B7DEA2: Branch loc_B7E152
  loc_B7DEA5: LitI4 0
  loc_B7DEAA: FLdRfVar var_C0
  loc_B7DEAD: FLdPr var_B0
  loc_B7DEB0: from_stack_1 = clsapremio.RecordCount
  loc_B7DEB5: ILdRf var_C0
  loc_B7DEB8: FLdPr Me
  loc_B7DEBB: MemLdRfVar from_stack_1.global_80
  loc_B7DEBE: Redim
  loc_B7DEC8: LitI4 0
  loc_B7DECD: FLdPr Me
  loc_B7DED0: MemStI4 global_92
  loc_B7DED3: LitI4 1
  loc_B7DED8: FLdPr Me
  loc_B7DEDB: MemLdRfVar from_stack_1.global_84
  loc_B7DEDE: FLdPr Me
  loc_B7DEE1: MemLdStr global_80
  loc_B7DEE4: LitI2_Byte 1
  loc_B7DEE6: FnUBound
  loc_B7DEE8: ForI4 var_1F0
  loc_B7DEEE: FLdRfVar var_E0
  loc_B7DEF1: FLdPr var_B0
  loc_B7DEF4: from_stack_1 = clsapremio.FeemApre
  loc_B7DEF9: LitI2_Byte 0
  loc_B7DEFB: LitVar_Missing var_F0
  loc_B7DEFE: LitI2_Byte 0
  loc_B7DF00: FLdVar var_E0
  loc_B7DF04: FLdPr Me
  loc_B7DF07: MemLdStr global_84
  loc_B7DF0A: FLdPr Me
  loc_B7DF0D: MemLdStr global_80
  loc_B7DF10: AryLock
  loc_B7DF13: Ary1LdPr
  loc_B7DF14: MemLdRfVar from_stack_1.global_0
  loc_B7DF17: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B7DF1C: AryUnlock
  loc_B7DF1F: FFreeVar var_E0 = ""
  loc_B7DF26: FLdRfVar var_C0
  loc_B7DF29: FLdPr var_B0
  loc_B7DF2C: from_stack_1 = clsapremio.NumeApre
  loc_B7DF31: LitI2_Byte 0
  loc_B7DF33: LitVar_Missing var_E0
  loc_B7DF36: LitI2_Byte 0
  loc_B7DF38: ILdRf var_C0
  loc_B7DF3B: CVarI4
  loc_B7DF3F: PopAdLdVar
  loc_B7DF40: FLdPr Me
  loc_B7DF43: MemLdStr global_84
  loc_B7DF46: FLdPr Me
  loc_B7DF49: MemLdStr global_80
  loc_B7DF4C: AryLock
  loc_B7DF4F: Ary1LdPr
  loc_B7DF50: MemLdRfVar from_stack_1.global_4
  loc_B7DF53: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B7DF58: AryUnlock
  loc_B7DF5B: FFree1Var var_E0 = ""
  loc_B7DF5E: FLdRfVar var_B4
  loc_B7DF61: FLdPr var_B0
  loc_B7DF64: from_stack_1 = clsapremio.CuenCtct
  loc_B7DF69: LitI2_Byte 0
  loc_B7DF6B: LitVar_Missing var_F0
  loc_B7DF6E: LitI2_Byte 0
  loc_B7DF70: FLdZeroAd var_B4
  loc_B7DF73: CVarStr var_E0
  loc_B7DF76: PopAdLdVar
  loc_B7DF77: FLdPr Me
  loc_B7DF7A: MemLdStr global_84
  loc_B7DF7D: FLdPr Me
  loc_B7DF80: MemLdStr global_80
  loc_B7DF83: AryLock
  loc_B7DF86: Ary1LdPr
  loc_B7DF87: MemLdRfVar from_stack_1.global_8
  loc_B7DF8A: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B7DF8F: AryUnlock
  loc_B7DF92: FFreeVar var_E0 = ""
  loc_B7DF99: FLdRfVar var_E0
  loc_B7DF9C: FLdPr var_B0
  loc_B7DF9F: from_stack_1 = clsapremio.DetaPers
  loc_B7DFA4: LitI2_Byte 0
  loc_B7DFA6: LitVar_Missing var_F0
  loc_B7DFA9: LitI2_Byte 0
  loc_B7DFAB: FLdVar var_E0
  loc_B7DFAF: FLdPr Me
  loc_B7DFB2: MemLdStr global_84
  loc_B7DFB5: FLdPr Me
  loc_B7DFB8: MemLdStr global_80
  loc_B7DFBB: AryLock
  loc_B7DFBE: Ary1LdPr
  loc_B7DFBF: MemLdRfVar from_stack_1.global_12
  loc_B7DFC2: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B7DFC7: AryUnlock
  loc_B7DFCA: FFreeVar var_E0 = ""
  loc_B7DFD1: FLdRfVar var_AA
  loc_B7DFD4: FLdPr var_B0
  loc_B7DFD7: from_stack_1 = clsapremio.NotiApre
  loc_B7DFDC: FLdI2 var_AA
  loc_B7DFDF: FLdPr Me
  loc_B7DFE2: MemLdStr global_84
  loc_B7DFE5: FLdPr Me
  loc_B7DFE8: MemLdStr global_80
  loc_B7DFEB: Ary1LdPr
  loc_B7DFEC: MemStI2 global_16
  loc_B7DFEF: FLdPr Me
  loc_B7DFF2: MemLdStr global_84
  loc_B7DFF5: FLdPr Me
  loc_B7DFF8: MemLdStr global_80
  loc_B7DFFB: Ary1LdPr
  loc_B7DFFC: MemLdI2 global_16
  loc_B7DFFF: BranchF loc_B7E014
  loc_B7E002: FLdPr Me
  loc_B7E005: MemLdStr global_92
  loc_B7E008: LitI4 1
  loc_B7E00D: AddI4
  loc_B7E00E: FLdPr Me
  loc_B7E011: MemStI4 global_92
  loc_B7E014: LitI2_Byte 1
  loc_B7E016: PopTmpLdAd2 var_AA
  loc_B7E019: FLdPr var_B0
  loc_B7E01C: Call clsapremio.Move(from_stack_1v)
  loc_B7E021: FLdPr Me
  loc_B7E024: MemLdRfVar from_stack_1.global_84
  loc_B7E027: NextI4 var_1F0, loc_B7DEEE
  loc_B7E02C: LitNothing
  loc_B7E02E: FStAd var_B0 
  loc_B7E032: FLdPr Me
  loc_B7E035: MemLdStr global_80
  loc_B7E038: LitI2_Byte 1
  loc_B7E03A: FnUBound
  loc_B7E03C: FLdPr Me
  loc_B7E03F: MemLdStr global_92
  loc_B7E042: SubI4
  loc_B7E043: FLdPr Me
  loc_B7E046: MemStI4 global_88
  loc_B7E049: LitI4 2
  loc_B7E04E: FLdPr Me
  loc_B7E051: MemLdStr global_88
  loc_B7E054: CR8I4
  loc_B7E055: FLdPr Me
  loc_B7E058: MemLdStr global_80
  loc_B7E05B: LitI2_Byte 1
  loc_B7E05D: FnUBound
  loc_B7E05F: CR8I4
  loc_B7E060: DivR8
  loc_B7E061: CVarR8
  loc_B7E065: FLdRfVar var_F0
  loc_B7E068: ImpAdCallFPR4  = Round(, )
  loc_B7E06D: FLdRfVar var_F0
  loc_B7E070: CR4Var
  loc_B7E071: FLdPr Me
  loc_B7E074: MemStFPR8 global_96
  loc_B7E077: FFreeVar var_E0 = ""
  loc_B7E07E: LitI4 2
  loc_B7E083: FLdPr Me
  loc_B7E086: MemLdStr global_92
  loc_B7E089: CR8I4
  loc_B7E08A: FLdPr Me
  loc_B7E08D: MemLdStr global_80
  loc_B7E090: LitI2_Byte 1
  loc_B7E092: FnUBound
  loc_B7E094: CR8I4
  loc_B7E095: DivR8
  loc_B7E096: CVarR8
  loc_B7E09A: FLdRfVar var_F0
  loc_B7E09D: ImpAdCallFPR4  = Round(, )
  loc_B7E0A2: FLdRfVar var_F0
  loc_B7E0A5: CR4Var
  loc_B7E0A6: FLdPr Me
  loc_B7E0A9: MemStFPR8 global_104
  loc_B7E0AC: FFreeVar var_E0 = ""
  loc_B7E0B3: FLdPrThis
  loc_B7E0B4: VCallAd Control_ID_Graf1
  loc_B7E0B7: FStAdFunc var_1F8
  loc_B7E0BA: LitVarI2 var_94, 1
  loc_B7E0BF: PopAdLdVar
  loc_B7E0C0: FLdPr var_1F8
  loc_B7E0C3: LateIdSt
  loc_B7E0C8: FLdPr Me
  loc_B7E0CB: MemLdStr global_88
  loc_B7E0CE: CStrI4
  loc_B7E0D0: CVarStr var_E0
  loc_B7E0D3: PopAdLdVar
  loc_B7E0D4: FLdPr var_1F8
  loc_B7E0D7: LateIdSt
  loc_B7E0DC: FFree1Var var_E0 = ""
  loc_B7E0DF: LitVarI2 var_94, 2
  loc_B7E0E4: PopAdLdVar
  loc_B7E0E5: FLdPr var_1F8
  loc_B7E0E8: LateIdSt
  loc_B7E0ED: FLdPr Me
  loc_B7E0F0: MemLdStr global_92
  loc_B7E0F3: CStrI4
  loc_B7E0F5: CVarStr var_E0
  loc_B7E0F8: PopAdLdVar
  loc_B7E0F9: FLdPr var_1F8
  loc_B7E0FC: LateIdSt
  loc_B7E101: FFree1Var var_E0 = ""
  loc_B7E104: FLdPr var_1F8
  loc_B7E107: LateIdCall
  loc_B7E10F: LitNothing
  loc_B7E111: FStAd var_1F8 
  loc_B7E115: FLdPrThis
  loc_B7E116: VCallAd Control_ID_Graf1
  loc_B7E119: FStAdFunc var_D0
  loc_B7E11C: FLdPr Me
  loc_B7E11F: VCallAd Control_ID_img1
  loc_B7E122: FStAdFunc var_144
  loc_B7E125: LitStr "graf1.bmp"
  loc_B7E128: FLdZeroAd var_144
  loc_B7E12B: FStAdFunc var_BC
  loc_B7E12E: FLdRfVar var_BC
  loc_B7E131: FLdZeroAd var_D0
  loc_B7E134: FStAdFunc var_A8
  loc_B7E137: FLdRfVar var_A8
  loc_B7E13A: ImpAdCallFPR4 Proc_272_52_AACEC8(, , )
  loc_B7E13F: FFreeAd var_A8 = "": var_BC = "": var_D0 = ""
  loc_B7E14A: LitI2_Byte &HFF
  loc_B7E14C: FLdPr Me
  loc_B7E14F: MemStI2 bGenerado
  loc_B7E152: LitI4 0
  loc_B7E157: CI2I4
  loc_B7E158: FLdPr Me
  loc_B7E15B: Me.MousePointer = from_stack_1
  loc_B7E160: LitVarStr var_94, vbNullString
  loc_B7E165: PopAdLdVar
  loc_B7E166: FLdPr Me
  loc_B7E169: VCallAd Control_ID_statusBar
  loc_B7E16C: FStAdFunc var_A8
  loc_B7E16F: FLdPr var_A8
  loc_B7E172: LateIdSt
  loc_B7E177: FFree1Ad var_A8
  loc_B7E17A: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'B6EC5C
  'Data Table: 4AA3B0
  loc_B6E7C4: FLdRfVar var_88
  loc_B6E7C7: LitI2_Byte 0
  loc_B6E7C9: LitI2_Byte &HFF
  loc_B6E7CB: ImpAdLdI4 MemVar_D93C84
  loc_B6E7CE: FLdPr Me
  loc_B6E7D1: MemLdRfVar from_stack_1.global_56
  loc_B6E7D4: NewIfNullPr IFileSystem3
  loc_B6E7D7: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B6E7DC: ILdRf var_88
  loc_B6E7DF: FLdPr Me
  loc_B6E7E2: MemStVarAd
  loc_B6E7E6: FFree1Ad var_88
  loc_B6E7E9: LitI2_Byte &HFF
  loc_B6E7EB: ImpAdStI2 MemVar_D93C8A
  loc_B6E7EE: Call Proc_143_23_BD2658()
  loc_B6E7F3: LitI4 1
  loc_B6E7F8: FLdPr Me
  loc_B6E7FB: MemLdRfVar from_stack_1.global_84
  loc_B6E7FE: FLdPr Me
  loc_B6E801: MemLdStr global_80
  loc_B6E804: LitI2_Byte 1
  loc_B6E806: FnUBound
  loc_B6E808: ForI4 var_90
  loc_B6E80E: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B6E813: PopAdLdVar
  loc_B6E814: FLdPr Me
  loc_B6E817: MemLdRfVar from_stack_1.global_60
  loc_B6E81A: LdPrVar
  loc_B6E81C: LateMemCall
  loc_B6E822: FLdPr Me
  loc_B6E825: MemLdStr global_84
  loc_B6E828: FLdPr Me
  loc_B6E82B: MemLdStr global_80
  loc_B6E82E: AryLock
  loc_B6E831: Ary1LdRf
  loc_B6E832: FStR4 var_B8
  loc_B6E835: LitStr vbNullString
  loc_B6E838: LitI2_Byte 0
  loc_B6E83A: LitI2_Byte 0
  loc_B6E83C: LitI2_Byte 0
  loc_B6E83E: LitStr "center"
  loc_B6E841: FMemLdR4 var_B8(0)
  loc_B6E846: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B6E84B: CVarStr var_C8
  loc_B6E84E: PopAdLdVar
  loc_B6E84F: FLdPr Me
  loc_B6E852: MemLdRfVar from_stack_1.global_60
  loc_B6E855: LdPrVar
  loc_B6E857: LateMemCall
  loc_B6E85D: FFree1Var var_C8 = ""
  loc_B6E860: LitStr vbNullString
  loc_B6E863: LitI2_Byte 0
  loc_B6E865: LitI2_Byte 0
  loc_B6E867: LitI2_Byte 0
  loc_B6E869: LitStr "right"
  loc_B6E86C: FMemLdR4 var_B8(4)
  loc_B6E871: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B6E876: CVarStr var_C8
  loc_B6E879: PopAdLdVar
  loc_B6E87A: FLdPr Me
  loc_B6E87D: MemLdRfVar from_stack_1.global_60
  loc_B6E880: LdPrVar
  loc_B6E882: LateMemCall
  loc_B6E888: FFree1Var var_C8 = ""
  loc_B6E88B: LitStr vbNullString
  loc_B6E88E: LitI2_Byte 0
  loc_B6E890: LitI2_Byte 0
  loc_B6E892: LitI2_Byte 0
  loc_B6E894: LitStr "right"
  loc_B6E897: FMemLdR4 var_B8(8)
  loc_B6E89C: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B6E8A1: CVarStr var_C8
  loc_B6E8A4: PopAdLdVar
  loc_B6E8A5: FLdPr Me
  loc_B6E8A8: MemLdRfVar from_stack_1.global_60
  loc_B6E8AB: LdPrVar
  loc_B6E8AD: LateMemCall
  loc_B6E8B3: FFree1Var var_C8 = ""
  loc_B6E8B6: LitStr vbNullString
  loc_B6E8B9: LitI2_Byte 0
  loc_B6E8BB: LitI2_Byte 0
  loc_B6E8BD: LitI2_Byte 0
  loc_B6E8BF: LitStr "left"
  loc_B6E8C2: FMemLdR4 var_B8(12)
  loc_B6E8C7: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B6E8CC: CVarStr var_C8
  loc_B6E8CF: PopAdLdVar
  loc_B6E8D0: FLdPr Me
  loc_B6E8D3: MemLdRfVar from_stack_1.global_60
  loc_B6E8D6: LdPrVar
  loc_B6E8D8: LateMemCall
  loc_B6E8DE: FFree1Var var_C8 = ""
  loc_B6E8E1: LitVarStr var_108, "    <td class=""Tilde"" align=""center"">"
  loc_B6E8E6: LitVarStr var_D8, "<span style=""color:#FF0000"">&yacute;</span>"
  loc_B6E8EB: FStVarCopyObj var_E8
  loc_B6E8EE: FLdRfVar var_E8
  loc_B6E8F1: LitVarStr var_B0, "&thorn;"
  loc_B6E8F6: FStVarCopyObj var_C8
  loc_B6E8F9: FLdRfVar var_C8
  loc_B6E8FC: FMemLdRf unk_4AA2F9
  loc_B6E901: CVarRef
  loc_B6E906: FLdRfVar var_F8
  loc_B6E909: ImpAdCallFPR4  = IIf(, , )
  loc_B6E90E: FLdRfVar var_F8
  loc_B6E911: ConcatVar var_118
  loc_B6E915: LitVarStr var_128, "</td>"
  loc_B6E91A: ConcatVar var_138
  loc_B6E91E: PopAdLdVar
  loc_B6E91F: FLdPr Me
  loc_B6E922: MemLdRfVar from_stack_1.global_60
  loc_B6E925: LdPrVar
  loc_B6E927: LateMemCall
  loc_B6E92D: FFreeVar var_C8 = "": var_E8 = "": var_F8 = "": var_118 = ""
  loc_B6E93A: LitI4 0
  loc_B6E93F: FStR4 var_B8
  loc_B6E942: AryUnlock
  loc_B6E945: LitVarStr var_A0, "     </tr>"
  loc_B6E94A: PopAdLdVar
  loc_B6E94B: FLdPr Me
  loc_B6E94E: MemLdRfVar from_stack_1.global_60
  loc_B6E951: LdPrVar
  loc_B6E953: LateMemCall
  loc_B6E959: FLdPr Me
  loc_B6E95C: MemLdRfVar from_stack_1.global_84
  loc_B6E95F: NextI4 var_90, loc_B6E80E
  loc_B6E964: FLdPr Me
  loc_B6E967: MemLdI2 bLogos
  loc_B6E96A: BranchF loc_B6EC3D
  loc_B6E96D: LitVarStr var_A0, "</table>"
  loc_B6E972: PopAdLdVar
  loc_B6E973: FLdPr Me
  loc_B6E976: MemLdRfVar from_stack_1.global_60
  loc_B6E979: LdPrVar
  loc_B6E97B: LateMemCall
  loc_B6E981: LitVarStr var_A0, "<table align=""center"" border=""0"" class=""Normal"" cellpadding=""1"" cellspacing=""1"">"
  loc_B6E986: PopAdLdVar
  loc_B6E987: FLdPr Me
  loc_B6E98A: MemLdRfVar from_stack_1.global_60
  loc_B6E98D: LdPrVar
  loc_B6E98F: LateMemCall
  loc_B6E995: LitVarStr var_A0, " <tr valign=""middle"" align=""right"">"
  loc_B6E99A: PopAdLdVar
  loc_B6E99B: FLdPr Me
  loc_B6E99E: MemLdRfVar from_stack_1.global_60
  loc_B6E9A1: LdPrVar
  loc_B6E9A3: LateMemCall
  loc_B6E9A9: LitVarStr var_A0, "   <td><table align=""left"" border""0"" cellpadding=""1"" cellspacing=""1"">"
  loc_B6E9AE: PopAdLdVar
  loc_B6E9AF: FLdPr Me
  loc_B6E9B2: MemLdRfVar from_stack_1.global_60
  loc_B6E9B5: LdPrVar
  loc_B6E9B7: LateMemCall
  loc_B6E9BD: LitVarStr var_A0, "    <tr valign=""top"" align=""right"">"
  loc_B6E9C2: PopAdLdVar
  loc_B6E9C3: FLdPr Me
  loc_B6E9C6: MemLdRfVar from_stack_1.global_60
  loc_B6E9C9: LdPrVar
  loc_B6E9CB: LateMemCall
  loc_B6E9D1: LitVarStr var_A0, "      <td>Sin notificar:&nbsp;</td>"
  loc_B6E9D6: PopAdLdVar
  loc_B6E9D7: FLdPr Me
  loc_B6E9DA: MemLdRfVar from_stack_1.global_60
  loc_B6E9DD: LdPrVar
  loc_B6E9DF: LateMemCall
  loc_B6E9E5: LitStr "      <td>"
  loc_B6E9E8: FLdPr Me
  loc_B6E9EB: MemLdStr global_88
  loc_B6E9EE: CStrI4
  loc_B6E9F0: FStStrNoPop var_14C
  loc_B6E9F3: ConcatStr
  loc_B6E9F4: FStStrNoPop var_150
  loc_B6E9F7: LitStr "</td>"
  loc_B6E9FA: ConcatStr
  loc_B6E9FB: CVarStr var_C8
  loc_B6E9FE: PopAdLdVar
  loc_B6E9FF: FLdPr Me
  loc_B6EA02: MemLdRfVar from_stack_1.global_60
  loc_B6EA05: LdPrVar
  loc_B6EA07: LateMemCall
  loc_B6EA0D: FFreeStr var_14C = ""
  loc_B6EA14: FFree1Var var_C8 = ""
  loc_B6EA17: LitStr "      <td>"
  loc_B6EA1A: LitI4 1
  loc_B6EA1F: LitI4 1
  loc_B6EA24: LitVarStr var_B0, "(##0" & Chr(37) & ")"
  loc_B6EA29: FStVarCopyObj var_C8
  loc_B6EA2C: FLdRfVar var_C8
  loc_B6EA2F: FLdPr Me
  loc_B6EA32: MemLdRfVar from_stack_1.global_96
  loc_B6EA35: CVarRef
  loc_B6EA3A: ImpAdCallI2 Format$(, )
  loc_B6EA3F: FStStrNoPop var_14C
  loc_B6EA42: ConcatStr
  loc_B6EA43: FStStrNoPop var_150
  loc_B6EA46: LitStr "</td>"
  loc_B6EA49: ConcatStr
  loc_B6EA4A: CVarStr var_E8
  loc_B6EA4D: PopAdLdVar
  loc_B6EA4E: FLdPr Me
  loc_B6EA51: MemLdRfVar from_stack_1.global_60
  loc_B6EA54: LdPrVar
  loc_B6EA56: LateMemCall
  loc_B6EA5C: FFreeStr var_14C = ""
  loc_B6EA63: FFreeVar var_C8 = ""
  loc_B6EA6A: LitVarStr var_A0, "    </tr>"
  loc_B6EA6F: PopAdLdVar
  loc_B6EA70: FLdPr Me
  loc_B6EA73: MemLdRfVar from_stack_1.global_60
  loc_B6EA76: LdPrVar
  loc_B6EA78: LateMemCall
  loc_B6EA7E: LitVarStr var_A0, "    <tr valign=""top"" align=""right"">"
  loc_B6EA83: PopAdLdVar
  loc_B6EA84: FLdPr Me
  loc_B6EA87: MemLdRfVar from_stack_1.global_60
  loc_B6EA8A: LdPrVar
  loc_B6EA8C: LateMemCall
  loc_B6EA92: LitVarStr var_A0, "      <td>Notificados:&nbsp;</td>"
  loc_B6EA97: PopAdLdVar
  loc_B6EA98: FLdPr Me
  loc_B6EA9B: MemLdRfVar from_stack_1.global_60
  loc_B6EA9E: LdPrVar
  loc_B6EAA0: LateMemCall
  loc_B6EAA6: LitStr "      <td>"
  loc_B6EAA9: FLdPr Me
  loc_B6EAAC: MemLdStr global_92
  loc_B6EAAF: CStrI4
  loc_B6EAB1: FStStrNoPop var_14C
  loc_B6EAB4: ConcatStr
  loc_B6EAB5: FStStrNoPop var_150
  loc_B6EAB8: LitStr "</td>"
  loc_B6EABB: ConcatStr
  loc_B6EABC: CVarStr var_C8
  loc_B6EABF: PopAdLdVar
  loc_B6EAC0: FLdPr Me
  loc_B6EAC3: MemLdRfVar from_stack_1.global_60
  loc_B6EAC6: LdPrVar
  loc_B6EAC8: LateMemCall
  loc_B6EACE: FFreeStr var_14C = ""
  loc_B6EAD5: FFree1Var var_C8 = ""
  loc_B6EAD8: LitStr "      <td>"
  loc_B6EADB: LitI4 1
  loc_B6EAE0: LitI4 1
  loc_B6EAE5: LitVarStr var_B0, "(##0" & Chr(37) & ")"
  loc_B6EAEA: FStVarCopyObj var_C8
  loc_B6EAED: FLdRfVar var_C8
  loc_B6EAF0: FLdPr Me
  loc_B6EAF3: MemLdRfVar from_stack_1.global_104
  loc_B6EAF6: CVarRef
  loc_B6EAFB: ImpAdCallI2 Format$(, )
  loc_B6EB00: FStStrNoPop var_14C
  loc_B6EB03: ConcatStr
  loc_B6EB04: FStStrNoPop var_150
  loc_B6EB07: LitStr "</td>"
  loc_B6EB0A: ConcatStr
  loc_B6EB0B: CVarStr var_E8
  loc_B6EB0E: PopAdLdVar
  loc_B6EB0F: FLdPr Me
  loc_B6EB12: MemLdRfVar from_stack_1.global_60
  loc_B6EB15: LdPrVar
  loc_B6EB17: LateMemCall
  loc_B6EB1D: FFreeStr var_14C = ""
  loc_B6EB24: FFreeVar var_C8 = ""
  loc_B6EB2B: LitVarStr var_A0, "    </tr>"
  loc_B6EB30: PopAdLdVar
  loc_B6EB31: FLdPr Me
  loc_B6EB34: MemLdRfVar from_stack_1.global_60
  loc_B6EB37: LdPrVar
  loc_B6EB39: LateMemCall
  loc_B6EB3F: LitVarStr var_A0, "    <tr valign=""top"">"
  loc_B6EB44: PopAdLdVar
  loc_B6EB45: FLdPr Me
  loc_B6EB48: MemLdRfVar from_stack_1.global_60
  loc_B6EB4B: LdPrVar
  loc_B6EB4D: LateMemCall
  loc_B6EB53: LitVarStr var_A0, "      <td colspan=""2""><hr></td>"
  loc_B6EB58: PopAdLdVar
  loc_B6EB59: FLdPr Me
  loc_B6EB5C: MemLdRfVar from_stack_1.global_60
  loc_B6EB5F: LdPrVar
  loc_B6EB61: LateMemCall
  loc_B6EB67: LitVarStr var_A0, "    </tr>"
  loc_B6EB6C: PopAdLdVar
  loc_B6EB6D: FLdPr Me
  loc_B6EB70: MemLdRfVar from_stack_1.global_60
  loc_B6EB73: LdPrVar
  loc_B6EB75: LateMemCall
  loc_B6EB7B: LitVarStr var_A0, "    <tr valign=""top"" align=""right"">"
  loc_B6EB80: PopAdLdVar
  loc_B6EB81: FLdPr Me
  loc_B6EB84: MemLdRfVar from_stack_1.global_60
  loc_B6EB87: LdPrVar
  loc_B6EB89: LateMemCall
  loc_B6EB8F: LitVarStr var_A0, "      <td>Total:&nbsp;</td>"
  loc_B6EB94: PopAdLdVar
  loc_B6EB95: FLdPr Me
  loc_B6EB98: MemLdRfVar from_stack_1.global_60
  loc_B6EB9B: LdPrVar
  loc_B6EB9D: LateMemCall
  loc_B6EBA3: LitStr "      <td>"
  loc_B6EBA6: FLdPr Me
  loc_B6EBA9: MemLdStr global_80
  loc_B6EBAC: LitI2_Byte 1
  loc_B6EBAE: FnUBound
  loc_B6EBB0: CStrI4
  loc_B6EBB2: FStStrNoPop var_14C
  loc_B6EBB5: ConcatStr
  loc_B6EBB6: FStStrNoPop var_150
  loc_B6EBB9: LitStr "</td>"
  loc_B6EBBC: ConcatStr
  loc_B6EBBD: CVarStr var_C8
  loc_B6EBC0: PopAdLdVar
  loc_B6EBC1: FLdPr Me
  loc_B6EBC4: MemLdRfVar from_stack_1.global_60
  loc_B6EBC7: LdPrVar
  loc_B6EBC9: LateMemCall
  loc_B6EBCF: FFreeStr var_14C = ""
  loc_B6EBD6: FFree1Var var_C8 = ""
  loc_B6EBD9: LitVarStr var_A0, "    </tr>"
  loc_B6EBDE: PopAdLdVar
  loc_B6EBDF: FLdPr Me
  loc_B6EBE2: MemLdRfVar from_stack_1.global_60
  loc_B6EBE5: LdPrVar
  loc_B6EBE7: LateMemCall
  loc_B6EBED: LitVarStr var_A0, "   </table></td>"
  loc_B6EBF2: PopAdLdVar
  loc_B6EBF3: FLdPr Me
  loc_B6EBF6: MemLdRfVar from_stack_1.global_60
  loc_B6EBF9: LdPrVar
  loc_B6EBFB: LateMemCall
  loc_B6EC01: LitVarStr var_A0, "   <td><img src=""graf1.bmp""></td>"
  loc_B6EC06: PopAdLdVar
  loc_B6EC07: FLdPr Me
  loc_B6EC0A: MemLdRfVar from_stack_1.global_60
  loc_B6EC0D: LdPrVar
  loc_B6EC0F: LateMemCall
  loc_B6EC15: LitVarStr var_A0, " </tr>"
  loc_B6EC1A: PopAdLdVar
  loc_B6EC1B: FLdPr Me
  loc_B6EC1E: MemLdRfVar from_stack_1.global_60
  loc_B6EC21: LdPrVar
  loc_B6EC23: LateMemCall
  loc_B6EC29: LitVarStr var_A0, "</table>"
  loc_B6EC2E: PopAdLdVar
  loc_B6EC2F: FLdPr Me
  loc_B6EC32: MemLdRfVar from_stack_1.global_60
  loc_B6EC35: LdPrVar
  loc_B6EC37: LateMemCall
  loc_B6EC3D: Call Proc_143_24_A0D5C8()
  loc_B6EC42: FLdPr Me
  loc_B6EC45: MemLdRfVar from_stack_1.global_60
  loc_B6EC48: LdPrVar
  loc_B6EC4A: LateMemCall
  loc_B6EC50: LitStr vbNullString
  loc_B6EC53: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B6EC58: ExitProcHresult
End Sub

Private Function Proc_143_23_BD2658() 'BD2658
  'Data Table: 4AA3B0
  loc_BD1F1C: LitVarStr var_94, "<html>"
  loc_BD1F21: PopAdLdVar
  loc_BD1F22: FLdPr Me
  loc_BD1F25: MemLdRfVar from_stack_1.global_60
  loc_BD1F28: LdPrVar
  loc_BD1F2A: LateMemCall
  loc_BD1F30: LitVarStr var_94, "<head>"
  loc_BD1F35: PopAdLdVar
  loc_BD1F36: FLdPr Me
  loc_BD1F39: MemLdRfVar from_stack_1.global_60
  loc_BD1F3C: LdPrVar
  loc_BD1F3E: LateMemCall
  loc_BD1F44: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BD1F49: PopAdLdVar
  loc_BD1F4A: FLdPr Me
  loc_BD1F4D: MemLdRfVar from_stack_1.global_60
  loc_BD1F50: LdPrVar
  loc_BD1F52: LateMemCall
  loc_BD1F58: LitStr "<title>"
  loc_BD1F5B: FLdRfVar var_A8
  loc_BD1F5E: FLdPr Me
  loc_BD1F61:  = Me.Caption
  loc_BD1F66: ILdRf var_A8
  loc_BD1F69: ConcatStr
  loc_BD1F6A: FStStrNoPop var_AC
  loc_BD1F6D: LitStr "</title>"
  loc_BD1F70: ConcatStr
  loc_BD1F71: CVarStr var_BC
  loc_BD1F74: PopAdLdVar
  loc_BD1F75: FLdPr Me
  loc_BD1F78: MemLdRfVar from_stack_1.global_60
  loc_BD1F7B: LdPrVar
  loc_BD1F7D: LateMemCall
  loc_BD1F83: FFreeStr var_A8 = ""
  loc_BD1F8A: FFree1Var var_BC = ""
  loc_BD1F8D: LitVarStr var_94, "<style type=""text/css"">"
  loc_BD1F92: PopAdLdVar
  loc_BD1F93: FLdPr Me
  loc_BD1F96: MemLdRfVar from_stack_1.global_60
  loc_BD1F99: LdPrVar
  loc_BD1F9B: LateMemCall
  loc_BD1FA1: LitVarStr var_94, ".Titulo1 {"
  loc_BD1FA6: PopAdLdVar
  loc_BD1FA7: FLdPr Me
  loc_BD1FAA: MemLdRfVar from_stack_1.global_60
  loc_BD1FAD: LdPrVar
  loc_BD1FAF: LateMemCall
  loc_BD1FB5: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BD1FBA: PopAdLdVar
  loc_BD1FBB: FLdPr Me
  loc_BD1FBE: MemLdRfVar from_stack_1.global_60
  loc_BD1FC1: LdPrVar
  loc_BD1FC3: LateMemCall
  loc_BD1FC9: LitVarStr var_94, " font-size: 18px;"
  loc_BD1FCE: PopAdLdVar
  loc_BD1FCF: FLdPr Me
  loc_BD1FD2: MemLdRfVar from_stack_1.global_60
  loc_BD1FD5: LdPrVar
  loc_BD1FD7: LateMemCall
  loc_BD1FDD: LitVarStr var_94, " font-weight: bold;"
  loc_BD1FE2: PopAdLdVar
  loc_BD1FE3: FLdPr Me
  loc_BD1FE6: MemLdRfVar from_stack_1.global_60
  loc_BD1FE9: LdPrVar
  loc_BD1FEB: LateMemCall
  loc_BD1FF1: LitVarStr var_94, "}"
  loc_BD1FF6: PopAdLdVar
  loc_BD1FF7: FLdPr Me
  loc_BD1FFA: MemLdRfVar from_stack_1.global_60
  loc_BD1FFD: LdPrVar
  loc_BD1FFF: LateMemCall
  loc_BD2005: LitVarStr var_94, ".Titulo2 {"
  loc_BD200A: PopAdLdVar
  loc_BD200B: FLdPr Me
  loc_BD200E: MemLdRfVar from_stack_1.global_60
  loc_BD2011: LdPrVar
  loc_BD2013: LateMemCall
  loc_BD2019: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BD201E: PopAdLdVar
  loc_BD201F: FLdPr Me
  loc_BD2022: MemLdRfVar from_stack_1.global_60
  loc_BD2025: LdPrVar
  loc_BD2027: LateMemCall
  loc_BD202D: LitVarStr var_94, " font-size: 14px;"
  loc_BD2032: PopAdLdVar
  loc_BD2033: FLdPr Me
  loc_BD2036: MemLdRfVar from_stack_1.global_60
  loc_BD2039: LdPrVar
  loc_BD203B: LateMemCall
  loc_BD2041: LitVarStr var_94, " font-weight: bold;"
  loc_BD2046: PopAdLdVar
  loc_BD2047: FLdPr Me
  loc_BD204A: MemLdRfVar from_stack_1.global_60
  loc_BD204D: LdPrVar
  loc_BD204F: LateMemCall
  loc_BD2055: LitVarStr var_94, "}"
  loc_BD205A: PopAdLdVar
  loc_BD205B: FLdPr Me
  loc_BD205E: MemLdRfVar from_stack_1.global_60
  loc_BD2061: LdPrVar
  loc_BD2063: LateMemCall
  loc_BD2069: LitVarStr var_94, ".Normal {"
  loc_BD206E: PopAdLdVar
  loc_BD206F: FLdPr Me
  loc_BD2072: MemLdRfVar from_stack_1.global_60
  loc_BD2075: LdPrVar
  loc_BD2077: LateMemCall
  loc_BD207D: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BD2082: PopAdLdVar
  loc_BD2083: FLdPr Me
  loc_BD2086: MemLdRfVar from_stack_1.global_60
  loc_BD2089: LdPrVar
  loc_BD208B: LateMemCall
  loc_BD2091: LitVarStr var_94, " font-size: 12px;"
  loc_BD2096: PopAdLdVar
  loc_BD2097: FLdPr Me
  loc_BD209A: MemLdRfVar from_stack_1.global_60
  loc_BD209D: LdPrVar
  loc_BD209F: LateMemCall
  loc_BD20A5: LitVarStr var_94, " font-style: normal;"
  loc_BD20AA: PopAdLdVar
  loc_BD20AB: FLdPr Me
  loc_BD20AE: MemLdRfVar from_stack_1.global_60
  loc_BD20B1: LdPrVar
  loc_BD20B3: LateMemCall
  loc_BD20B9: LitVarStr var_94, " font-weight: normal;"
  loc_BD20BE: PopAdLdVar
  loc_BD20BF: FLdPr Me
  loc_BD20C2: MemLdRfVar from_stack_1.global_60
  loc_BD20C5: LdPrVar
  loc_BD20C7: LateMemCall
  loc_BD20CD: LitVarStr var_94, " font-variant: normal;"
  loc_BD20D2: PopAdLdVar
  loc_BD20D3: FLdPr Me
  loc_BD20D6: MemLdRfVar from_stack_1.global_60
  loc_BD20D9: LdPrVar
  loc_BD20DB: LateMemCall
  loc_BD20E1: LitVarStr var_94, "}"
  loc_BD20E6: PopAdLdVar
  loc_BD20E7: FLdPr Me
  loc_BD20EA: MemLdRfVar from_stack_1.global_60
  loc_BD20ED: LdPrVar
  loc_BD20EF: LateMemCall
  loc_BD20F5: LitVarStr var_94, ".Encabezado {"
  loc_BD20FA: PopAdLdVar
  loc_BD20FB: FLdPr Me
  loc_BD20FE: MemLdRfVar from_stack_1.global_60
  loc_BD2101: LdPrVar
  loc_BD2103: LateMemCall
  loc_BD2109: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_BD210E: PopAdLdVar
  loc_BD210F: FLdPr Me
  loc_BD2112: MemLdRfVar from_stack_1.global_60
  loc_BD2115: LdPrVar
  loc_BD2117: LateMemCall
  loc_BD211D: LitVarStr var_94, " font-size: 11px;"
  loc_BD2122: PopAdLdVar
  loc_BD2123: FLdPr Me
  loc_BD2126: MemLdRfVar from_stack_1.global_60
  loc_BD2129: LdPrVar
  loc_BD212B: LateMemCall
  loc_BD2131: LitVarStr var_94, " font-weight: bold;"
  loc_BD2136: PopAdLdVar
  loc_BD2137: FLdPr Me
  loc_BD213A: MemLdRfVar from_stack_1.global_60
  loc_BD213D: LdPrVar
  loc_BD213F: LateMemCall
  loc_BD2145: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_BD214A: PopAdLdVar
  loc_BD214B: FLdPr Me
  loc_BD214E: MemLdRfVar from_stack_1.global_60
  loc_BD2151: LdPrVar
  loc_BD2153: LateMemCall
  loc_BD2159: LitVarStr var_94, "}"
  loc_BD215E: PopAdLdVar
  loc_BD215F: FLdPr Me
  loc_BD2162: MemLdRfVar from_stack_1.global_60
  loc_BD2165: LdPrVar
  loc_BD2167: LateMemCall
  loc_BD216D: LitVarStr var_94, ".LineaDato {"
  loc_BD2172: PopAdLdVar
  loc_BD2173: FLdPr Me
  loc_BD2176: MemLdRfVar from_stack_1.global_60
  loc_BD2179: LdPrVar
  loc_BD217B: LateMemCall
  loc_BD2181: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BD2186: PopAdLdVar
  loc_BD2187: FLdPr Me
  loc_BD218A: MemLdRfVar from_stack_1.global_60
  loc_BD218D: LdPrVar
  loc_BD218F: LateMemCall
  loc_BD2195: LitVarStr var_94, " font-size: 10px;"
  loc_BD219A: PopAdLdVar
  loc_BD219B: FLdPr Me
  loc_BD219E: MemLdRfVar from_stack_1.global_60
  loc_BD21A1: LdPrVar
  loc_BD21A3: LateMemCall
  loc_BD21A9: LitVarStr var_94, "}"
  loc_BD21AE: PopAdLdVar
  loc_BD21AF: FLdPr Me
  loc_BD21B2: MemLdRfVar from_stack_1.global_60
  loc_BD21B5: LdPrVar
  loc_BD21B7: LateMemCall
  loc_BD21BD: LitVarStr var_94, ".Totales {"
  loc_BD21C2: PopAdLdVar
  loc_BD21C3: FLdPr Me
  loc_BD21C6: MemLdRfVar from_stack_1.global_60
  loc_BD21C9: LdPrVar
  loc_BD21CB: LateMemCall
  loc_BD21D1: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BD21D6: PopAdLdVar
  loc_BD21D7: FLdPr Me
  loc_BD21DA: MemLdRfVar from_stack_1.global_60
  loc_BD21DD: LdPrVar
  loc_BD21DF: LateMemCall
  loc_BD21E5: LitVarStr var_94, " font-size: 12px;"
  loc_BD21EA: PopAdLdVar
  loc_BD21EB: FLdPr Me
  loc_BD21EE: MemLdRfVar from_stack_1.global_60
  loc_BD21F1: LdPrVar
  loc_BD21F3: LateMemCall
  loc_BD21F9: LitVarStr var_94, " font-weight: bold;"
  loc_BD21FE: PopAdLdVar
  loc_BD21FF: FLdPr Me
  loc_BD2202: MemLdRfVar from_stack_1.global_60
  loc_BD2205: LdPrVar
  loc_BD2207: LateMemCall
  loc_BD220D: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BD2212: PopAdLdVar
  loc_BD2213: FLdPr Me
  loc_BD2216: MemLdRfVar from_stack_1.global_60
  loc_BD2219: LdPrVar
  loc_BD221B: LateMemCall
  loc_BD2221: LitVarStr var_94, "}"
  loc_BD2226: PopAdLdVar
  loc_BD2227: FLdPr Me
  loc_BD222A: MemLdRfVar from_stack_1.global_60
  loc_BD222D: LdPrVar
  loc_BD222F: LateMemCall
  loc_BD2235: LitVarStr var_94, ".SubTotales {"
  loc_BD223A: PopAdLdVar
  loc_BD223B: FLdPr Me
  loc_BD223E: MemLdRfVar from_stack_1.global_60
  loc_BD2241: LdPrVar
  loc_BD2243: LateMemCall
  loc_BD2249: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BD224E: PopAdLdVar
  loc_BD224F: FLdPr Me
  loc_BD2252: MemLdRfVar from_stack_1.global_60
  loc_BD2255: LdPrVar
  loc_BD2257: LateMemCall
  loc_BD225D: LitVarStr var_94, " font-size: 10px;"
  loc_BD2262: PopAdLdVar
  loc_BD2263: FLdPr Me
  loc_BD2266: MemLdRfVar from_stack_1.global_60
  loc_BD2269: LdPrVar
  loc_BD226B: LateMemCall
  loc_BD2271: LitVarStr var_94, " font-weight: bold;"
  loc_BD2276: PopAdLdVar
  loc_BD2277: FLdPr Me
  loc_BD227A: MemLdRfVar from_stack_1.global_60
  loc_BD227D: LdPrVar
  loc_BD227F: LateMemCall
  loc_BD2285: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BD228A: PopAdLdVar
  loc_BD228B: FLdPr Me
  loc_BD228E: MemLdRfVar from_stack_1.global_60
  loc_BD2291: LdPrVar
  loc_BD2293: LateMemCall
  loc_BD2299: LitVarStr var_94, "}"
  loc_BD229E: PopAdLdVar
  loc_BD229F: FLdPr Me
  loc_BD22A2: MemLdRfVar from_stack_1.global_60
  loc_BD22A5: LdPrVar
  loc_BD22A7: LateMemCall
  loc_BD22AD: LitVarStr var_94, ".Tilde {"
  loc_BD22B2: PopAdLdVar
  loc_BD22B3: FLdPr Me
  loc_BD22B6: MemLdRfVar from_stack_1.global_60
  loc_BD22B9: LdPrVar
  loc_BD22BB: LateMemCall
  loc_BD22C1: LitVarStr var_94, " font-family: Wingdings;"
  loc_BD22C6: PopAdLdVar
  loc_BD22C7: FLdPr Me
  loc_BD22CA: MemLdRfVar from_stack_1.global_60
  loc_BD22CD: LdPrVar
  loc_BD22CF: LateMemCall
  loc_BD22D5: LitVarStr var_94, " font-size: 16px;"
  loc_BD22DA: PopAdLdVar
  loc_BD22DB: FLdPr Me
  loc_BD22DE: MemLdRfVar from_stack_1.global_60
  loc_BD22E1: LdPrVar
  loc_BD22E3: LateMemCall
  loc_BD22E9: LitVarStr var_94, "}"
  loc_BD22EE: PopAdLdVar
  loc_BD22EF: FLdPr Me
  loc_BD22F2: MemLdRfVar from_stack_1.global_60
  loc_BD22F5: LdPrVar
  loc_BD22F7: LateMemCall
  loc_BD22FD: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_BD2302: PopAdLdVar
  loc_BD2303: FLdPr Me
  loc_BD2306: MemLdRfVar from_stack_1.global_60
  loc_BD2309: LdPrVar
  loc_BD230B: LateMemCall
  loc_BD2311: LitVarStr var_94, "</style>"
  loc_BD2316: PopAdLdVar
  loc_BD2317: FLdPr Me
  loc_BD231A: MemLdRfVar from_stack_1.global_60
  loc_BD231D: LdPrVar
  loc_BD231F: LateMemCall
  loc_BD2325: LitI4 0
  loc_BD232A: FStStrCopy var_AC
  loc_BD232D: FLdRfVar var_AC
  loc_BD2330: LitI4 0
  loc_BD2335: FStStrCopy var_A8
  loc_BD2338: FLdRfVar var_A8
  loc_BD233B: LitI2_Byte 0
  loc_BD233D: PopTmpLdAd2 var_BE
  loc_BD2340: FLdPr Me
  loc_BD2343: MemLdRfVar from_stack_1.global_60
  loc_BD2346: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BD234B: FFreeStr var_A8 = ""
  loc_BD2352: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_BD2357: PopAdLdVar
  loc_BD2358: FLdPr Me
  loc_BD235B: MemLdRfVar from_stack_1.global_60
  loc_BD235E: LdPrVar
  loc_BD2360: LateMemCall
  loc_BD2366: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_BD236B: PopAdLdVar
  loc_BD236C: FLdPr Me
  loc_BD236F: MemLdRfVar from_stack_1.global_60
  loc_BD2372: LdPrVar
  loc_BD2374: LateMemCall
  loc_BD237A: LitVarStr var_94, "    <th width=""100" & Chr(37) & """ colspan=""3"" align=""center"" valign=""middle""><p>"
  loc_BD237F: PopAdLdVar
  loc_BD2380: FLdPr Me
  loc_BD2383: MemLdRfVar from_stack_1.global_60
  loc_BD2386: LdPrVar
  loc_BD2388: LateMemCall
  loc_BD238E: FLdPr Me
  loc_BD2391: MemLdI2 bLogos
  loc_BD2394: BranchF loc_BD23DD
  loc_BD2397: LitStr "      <img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BD239A: LitI2_Byte &H5F
  loc_BD239C: CStrUI1
  loc_BD239E: FStStrNoPop var_A8
  loc_BD23A1: ConcatStr
  loc_BD23A2: FStStrNoPop var_AC
  loc_BD23A5: LitStr """ height="""
  loc_BD23A8: ConcatStr
  loc_BD23A9: FStStrNoPop var_C4
  loc_BD23AC: LitI2_Byte &H3C
  loc_BD23AE: CStrUI1
  loc_BD23B0: FStStrNoPop var_C8
  loc_BD23B3: ConcatStr
  loc_BD23B4: FStStrNoPop var_CC
  loc_BD23B7: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_BD23BA: ConcatStr
  loc_BD23BB: CVarStr var_BC
  loc_BD23BE: PopAdLdVar
  loc_BD23BF: FLdPr Me
  loc_BD23C2: MemLdRfVar from_stack_1.global_60
  loc_BD23C5: LdPrVar
  loc_BD23C7: LateMemCall
  loc_BD23CD: FFreeStr var_A8 = "": var_AC = "": var_C4 = "": var_C8 = ""
  loc_BD23DA: FFree1Var var_BC = ""
  loc_BD23DD: LitStr "    <br>"
  loc_BD23E0: LitStr "Municipalidad de Guaymallén"
  loc_BD23E3: ConcatStr
  loc_BD23E4: FStStrNoPop var_A8
  loc_BD23E7: LitStr "</p>"
  loc_BD23EA: ConcatStr
  loc_BD23EB: CVarStr var_BC
  loc_BD23EE: PopAdLdVar
  loc_BD23EF: FLdPr Me
  loc_BD23F2: MemLdRfVar from_stack_1.global_60
  loc_BD23F5: LdPrVar
  loc_BD23F7: LateMemCall
  loc_BD23FD: FFree1Str var_A8
  loc_BD2400: FFree1Var var_BC = ""
  loc_BD2403: LitStr "    <p>"
  loc_BD2406: FLdRfVar var_A8
  loc_BD2409: FLdPr Me
  loc_BD240C:  = Me.Caption
  loc_BD2411: ILdRf var_A8
  loc_BD2414: ConcatStr
  loc_BD2415: FStStrNoPop var_AC
  loc_BD2418: LitStr "</p></th>"
  loc_BD241B: ConcatStr
  loc_BD241C: CVarStr var_BC
  loc_BD241F: PopAdLdVar
  loc_BD2420: FLdPr Me
  loc_BD2423: MemLdRfVar from_stack_1.global_60
  loc_BD2426: LdPrVar
  loc_BD2428: LateMemCall
  loc_BD242E: FFreeStr var_A8 = ""
  loc_BD2435: FFree1Var var_BC = ""
  loc_BD2438: LitVarStr var_94, "  </tr>"
  loc_BD243D: PopAdLdVar
  loc_BD243E: FLdPr Me
  loc_BD2441: MemLdRfVar from_stack_1.global_60
  loc_BD2444: LdPrVar
  loc_BD2446: LateMemCall
  loc_BD244C: LitVarStr var_94, "  <tr>"
  loc_BD2451: PopAdLdVar
  loc_BD2452: FLdPr Me
  loc_BD2455: MemLdRfVar from_stack_1.global_60
  loc_BD2458: LdPrVar
  loc_BD245A: LateMemCall
  loc_BD2460: LitVarStr var_94, "    <th colspan=""3"" align=""center"" valign=""middle""><hr></th>"
  loc_BD2465: PopAdLdVar
  loc_BD2466: FLdPr Me
  loc_BD2469: MemLdRfVar from_stack_1.global_60
  loc_BD246C: LdPrVar
  loc_BD246E: LateMemCall
  loc_BD2474: LitVarStr var_94, "  </tr>"
  loc_BD2479: PopAdLdVar
  loc_BD247A: FLdPr Me
  loc_BD247D: MemLdRfVar from_stack_1.global_60
  loc_BD2480: LdPrVar
  loc_BD2482: LateMemCall
  loc_BD2488: LitVarStr var_94, "  <tr valign=""top"" align=""left"" class=""Normal"">"
  loc_BD248D: PopAdLdVar
  loc_BD248E: FLdPr Me
  loc_BD2491: MemLdRfVar from_stack_1.global_60
  loc_BD2494: LdPrVar
  loc_BD2496: LateMemCall
  loc_BD249C: LitStr "    <td align=""left""><strong>Oficina: </strong>"
  loc_BD249F: FLdRfVar var_A8
  loc_BD24A2: FLdPr Me
  loc_BD24A5: VCallAd Control_ID_OficinaCbo
  loc_BD24A8: FStAdFunc var_D0
  loc_BD24AB: FLdPr var_D0
  loc_BD24AE:  = Me.Text
  loc_BD24B3: ILdRf var_A8
  loc_BD24B6: ConcatStr
  loc_BD24B7: FStStrNoPop var_AC
  loc_BD24BA: LitStr "</td>"
  loc_BD24BD: ConcatStr
  loc_BD24BE: CVarStr var_BC
  loc_BD24C1: PopAdLdVar
  loc_BD24C2: FLdPr Me
  loc_BD24C5: MemLdRfVar from_stack_1.global_60
  loc_BD24C8: LdPrVar
  loc_BD24CA: LateMemCall
  loc_BD24D0: FFreeStr var_A8 = ""
  loc_BD24D7: FFree1Ad var_D0
  loc_BD24DA: FFree1Var var_BC = ""
  loc_BD24DD: LitStr "    <td align=""center""><strong>Desde: </strong>"
  loc_BD24E0: FLdPr Me
  loc_BD24E3: VCallAd Control_ID_FeemApreDesdeMsk
  loc_BD24E6: FStAdFunc var_D0
  loc_BD24E9: FLdPr var_D0
  loc_BD24EC: LateIdLdVar var_BC DispID_15 0
  loc_BD24F3: CStrVarTmp
  loc_BD24F4: FStStrNoPop var_A8
  loc_BD24F7: ConcatStr
  loc_BD24F8: FStStrNoPop var_AC
  loc_BD24FB: LitStr "</td>"
  loc_BD24FE: ConcatStr
  loc_BD24FF: CVarStr var_E0
  loc_BD2502: PopAdLdVar
  loc_BD2503: FLdPr Me
  loc_BD2506: MemLdRfVar from_stack_1.global_60
  loc_BD2509: LdPrVar
  loc_BD250B: LateMemCall
  loc_BD2511: FFreeStr var_A8 = ""
  loc_BD2518: FFree1Ad var_D0
  loc_BD251B: FFreeVar var_BC = ""
  loc_BD2522: LitStr "    <td align=""right""><strong>Hasta: </strong>"
  loc_BD2525: FLdPr Me
  loc_BD2528: VCallAd Control_ID_FeemApreHastaMsk
  loc_BD252B: FStAdFunc var_D0
  loc_BD252E: FLdPr var_D0
  loc_BD2531: LateIdLdVar var_BC DispID_15 0
  loc_BD2538: CStrVarTmp
  loc_BD2539: FStStrNoPop var_A8
  loc_BD253C: ConcatStr
  loc_BD253D: FStStrNoPop var_AC
  loc_BD2540: LitStr "</td>"
  loc_BD2543: ConcatStr
  loc_BD2544: CVarStr var_E0
  loc_BD2547: PopAdLdVar
  loc_BD2548: FLdPr Me
  loc_BD254B: MemLdRfVar from_stack_1.global_60
  loc_BD254E: LdPrVar
  loc_BD2550: LateMemCall
  loc_BD2556: FFreeStr var_A8 = ""
  loc_BD255D: FFree1Ad var_D0
  loc_BD2560: FFreeVar var_BC = ""
  loc_BD2567: LitVarStr var_94, "  </tr>"
  loc_BD256C: PopAdLdVar
  loc_BD256D: FLdPr Me
  loc_BD2570: MemLdRfVar from_stack_1.global_60
  loc_BD2573: LdPrVar
  loc_BD2575: LateMemCall
  loc_BD257B: LitVarStr var_94, "</table>"
  loc_BD2580: PopAdLdVar
  loc_BD2581: FLdPr Me
  loc_BD2584: MemLdRfVar from_stack_1.global_60
  loc_BD2587: LdPrVar
  loc_BD2589: LateMemCall
  loc_BD258F: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_BD2594: PopAdLdVar
  loc_BD2595: FLdPr Me
  loc_BD2598: MemLdRfVar from_stack_1.global_60
  loc_BD259B: LdPrVar
  loc_BD259D: LateMemCall
  loc_BD25A3: LitVarStr var_94, "  <thead>"
  loc_BD25A8: PopAdLdVar
  loc_BD25A9: FLdPr Me
  loc_BD25AC: MemLdRfVar from_stack_1.global_60
  loc_BD25AF: LdPrVar
  loc_BD25B1: LateMemCall
  loc_BD25B7: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_BD25BC: PopAdLdVar
  loc_BD25BD: FLdPr Me
  loc_BD25C0: MemLdRfVar from_stack_1.global_60
  loc_BD25C3: LdPrVar
  loc_BD25C5: LateMemCall
  loc_BD25CB: LitVarStr var_94, "    <th>Fecha de apremio</th>"
  loc_BD25D0: PopAdLdVar
  loc_BD25D1: FLdPr Me
  loc_BD25D4: MemLdRfVar from_stack_1.global_60
  loc_BD25D7: LdPrVar
  loc_BD25D9: LateMemCall
  loc_BD25DF: LitVarStr var_94, "    <th>Boleta de Apremio</th>"
  loc_BD25E4: PopAdLdVar
  loc_BD25E5: FLdPr Me
  loc_BD25E8: MemLdRfVar from_stack_1.global_60
  loc_BD25EB: LdPrVar
  loc_BD25ED: LateMemCall
  loc_BD25F3: LitVarStr var_94, "    <th>Cuenta</th>"
  loc_BD25F8: PopAdLdVar
  loc_BD25F9: FLdPr Me
  loc_BD25FC: MemLdRfVar from_stack_1.global_60
  loc_BD25FF: LdPrVar
  loc_BD2601: LateMemCall
  loc_BD2607: LitVarStr var_94, "    <th>Apellido y Nombre</th>"
  loc_BD260C: PopAdLdVar
  loc_BD260D: FLdPr Me
  loc_BD2610: MemLdRfVar from_stack_1.global_60
  loc_BD2613: LdPrVar
  loc_BD2615: LateMemCall
  loc_BD261B: LitVarStr var_94, "    <th>Notificado</th>"
  loc_BD2620: PopAdLdVar
  loc_BD2621: FLdPr Me
  loc_BD2624: MemLdRfVar from_stack_1.global_60
  loc_BD2627: LdPrVar
  loc_BD2629: LateMemCall
  loc_BD262F: LitVarStr var_94, "  </tr>"
  loc_BD2634: PopAdLdVar
  loc_BD2635: FLdPr Me
  loc_BD2638: MemLdRfVar from_stack_1.global_60
  loc_BD263B: LdPrVar
  loc_BD263D: LateMemCall
  loc_BD2643: LitVarStr var_94, "  </thead>"
  loc_BD2648: PopAdLdVar
  loc_BD2649: FLdPr Me
  loc_BD264C: MemLdRfVar from_stack_1.global_60
  loc_BD264F: LdPrVar
  loc_BD2651: LateMemCall
  loc_BD2657: ExitProcHresult
End Function

Private Function Proc_143_24_A0D5C8() 'A0D5C8
  'Data Table: 4AA3B0
  loc_A0D588: LitVarStr var_94, "</table>"
  loc_A0D58D: PopAdLdVar
  loc_A0D58E: FLdPr Me
  loc_A0D591: MemLdRfVar from_stack_1.global_60
  loc_A0D594: LdPrVar
  loc_A0D596: LateMemCall
  loc_A0D59C: LitVarStr var_94, "</body>"
  loc_A0D5A1: PopAdLdVar
  loc_A0D5A2: FLdPr Me
  loc_A0D5A5: MemLdRfVar from_stack_1.global_60
  loc_A0D5A8: LdPrVar
  loc_A0D5AA: LateMemCall
  loc_A0D5B0: LitVarStr var_94, "</html>"
  loc_A0D5B5: PopAdLdVar
  loc_A0D5B6: FLdPr Me
  loc_A0D5B9: MemLdRfVar from_stack_1.global_60
  loc_A0D5BC: LdPrVar
  loc_A0D5BE: LateMemCall
  loc_A0D5C4: ExitProcHresult
End Function

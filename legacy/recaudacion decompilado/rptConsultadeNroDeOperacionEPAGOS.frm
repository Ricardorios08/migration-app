VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptConsultadeNroDeOperacionEPAGOS
  Caption = "Consulta de Numero de Operación de E-PAGOS"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptConsultadeNroDeOperacionEPAGOS.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 7560
  ClientHeight = 3252
  StartUpPosition = 2 'CenterScreen
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 1680
    Width = 4095
    Height = 1215
    TabIndex = 11
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
    End
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1920
      Top = 360
      Width = 2055
      Height = 615
      TabIndex = 2
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
    Top = 1680
    Width = 1815
    Height = 1215
    TabIndex = 10
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
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 3000
    Width = 7560
    Height = 255
    TabIndex = 8
    OleObjectBlob = "rptConsultadeNroDeOperacionEPAGOS.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 6480
    Top = 2040
    Width = 735
    Height = 615
    TabIndex = 5
    Cancel = -1  'True
    Picture = "rptConsultadeNroDeOperacionEPAGOS.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptConsultadeNroDeOperacionEPAGOS.frx":0B9C
    Left = 6480
    Top = 120
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 7335
    Height = 1575
    TabIndex = 6
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 5400
      Top = 360
      Width = 1695
      Height = 615
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
    Begin MSMask.MaskEdBox NumeBoleMsk
      Left = 2880
      Top = 720
      Width = 1452
      Height = 360
      TabIndex = 0
      OleObjectBlob = "rptConsultadeNroDeOperacionEPAGOS.frx":0C00
    End
    Begin VB.Label Label3
      Caption = "Numero de Operación:"
      Left = 492
      Top = 720
      Width = 2376
      Height = 300
      TabIndex = 9
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
    Top = 2280
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 7
    OleObjectBlob = "rptConsultadeNroDeOperacionEPAGOS.frx":0C9C
  End
End

Attribute VB_Name = "rptConsultadeNroDeOperacionEPAGOS"

Public bGenerado As Boolean

Private Type UDT_1_00562428
  bStruc(44) As Byte ' String fields: 11
End Type

Private Type UDT_2_00560540
  bStruc(32) As Byte ' String fields: 8
End Type

Private Type UDT_3_00562460
  bStruc(8) As Byte ' String fields: 2
End Type

Private Type UDT_4_00562490
  bStruc(12) As Byte ' String fields: 3
End Type

Private Type UDT_5_0056254C
  bStruc(132) As Byte ' String fields: 33
End Type


Private Sub cmdNueva_Click() 'A43340
  'Data Table: 46CC0C
  loc_A432EC: LitI2_Byte 0
  loc_A432EE: FLdPr Me
  loc_A432F1: MemStI2 bGenerado
  loc_A432F4: LitI2_Byte 0
  loc_A432F6: ILdRf Me
  loc_A432F9: CastAd
  loc_A432FC: FStAdFunc var_88
  loc_A432FF: FLdRfVar var_88
  loc_A43302: ImpAdCallFPR4  = Proc_272_46_B065FC()
  loc_A43307: FFree1Ad var_88
  loc_A4330A: LitVarStr var_98, vbNullString
  loc_A4330F: PopAdLdVar
  loc_A43310: FLdPr Me
  loc_A43313: VCallAd Control_ID_NumeBoleMsk
  loc_A43316: FStAdFunc var_88
  loc_A43319: FLdPr var_88
  loc_A4331C: LateIdSt
  loc_A43321: FFree1Ad var_88
  loc_A43324: Call HabilitarCriterio()
  loc_A43329: ILdRf Me
  loc_A4332C: CastAd
  loc_A4332F: FStAdFunc var_88
  loc_A43332: FLdRfVar var_88
  loc_A43335: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_A4333A: FFree1Ad var_88
  loc_A4333D: ExitProcHresult
End Sub

Private Sub Form_Load() '9DF8DC
  'Data Table: 46CC0C
  loc_9DF8C0: ILdRf Me
  loc_9DF8C3: CastAd
  loc_9DF8C6: FStAdFunc var_88
  loc_9DF8C9: FLdRfVar var_88
  loc_9DF8CC: ImpAdCallFPR4  = Proc_272_43_A93498()
  loc_9DF8D1: FFree1Ad var_88
  loc_9DF8D4: Call cmdNueva_Click()
  loc_9DF8D9: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9CC604
  'Data Table: 46CC0C
  loc_9CC5EC: FLdPr Me
  loc_9CC5EF: VCallAd Control_ID_wbbReporte
  loc_9CC5F2: FStAdFunc var_88
  loc_9CC5F5: FLdRfVar var_88
  loc_9CC5F8: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9CC5FD: FFree1Ad var_88
  loc_9CC600: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '9CC3F0
  'Data Table: 46CC0C
  loc_9CC3D8: LitI2_Byte 0
  loc_9CC3DA: ILdRf Me
  loc_9CC3DD: CastAd
  loc_9CC3E0: FStAdFunc var_88
  loc_9CC3E3: FLdRfVar var_88
  loc_9CC3E6: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9CC3EB: FFree1Ad var_88
  loc_9CC3EE: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() 'A02D38
  'Data Table: 46CC0C
  loc_A02D08: LitVarStr var_94, "Cerrando..."
  loc_A02D0D: PopAdLdVar
  loc_A02D0E: FLdPr Me
  loc_A02D11: VCallAd Control_ID_statusBar
  loc_A02D14: FStAdFunc var_A8
  loc_A02D17: FLdPr var_A8
  loc_A02D1A: LateIdSt
  loc_A02D1F: FFree1Ad var_A8
  loc_A02D22: ILdRf Me
  loc_A02D25: FStAdNoPop
  loc_A02D29: ImpAdLdRf MemVar_D9C5D8
  loc_A02D2C: NewIfNullPr Global
  loc_A02D2F: Global.Unload from_stack_1
  loc_A02D34: FFree1Ad var_A8
  loc_A02D37: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9CC190
  'Data Table: 46CC0C
  loc_9CC178: ILdRf Me
  loc_9CC17B: CastAd
  loc_9CC17E: FStAdFunc var_88
  loc_9CC181: FLdRfVar var_88
  loc_9CC184: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9CC189: FFree1Ad var_88
  loc_9CC18C: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9DF88C
  'Data Table: 46CC0C
  loc_9DF870: LitI2_Byte 0
  loc_9DF872: PopTmpLdAd2 var_8A
  loc_9DF875: ILdRf Me
  loc_9DF878: CastAd
  loc_9DF87B: FStAdFunc var_88
  loc_9DF87E: FLdRfVar var_88
  loc_9DF881: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9DF886: FFree1Ad var_88
  loc_9DF889: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A19D38
  'Data Table: 46CC0C
  loc_A19D00: FLdPr Me
  loc_A19D03: VCallAd Control_ID_statusBar
  loc_A19D06: FStAdFunc var_88
  loc_A19D09: FLdPr var_88
  loc_A19D0C: LateIdLdVar var_98 DispID_1 0
  loc_A19D13: CStrVarTmp
  loc_A19D14: CVarStr var_A8
  loc_A19D17: PopAdLdVar
  loc_A19D18: FLdPr Me
  loc_A19D1B: VCallAd Control_ID_statusBar
  loc_A19D1E: FStAdFunc var_BC
  loc_A19D21: FLdPr var_BC
  loc_A19D24: LateIdSt
  loc_A19D29: FFreeAd var_88 = ""
  loc_A19D30: FFreeVar var_98 = ""
  loc_A19D37: ExitProcHresult
End Sub

Private Sub NumeBoleMsk_UnknownEvent_0 '9BD590
  'Data Table: 46CC0C
  loc_9BD57C: FLdPr Me
  loc_9BD57F: VCallAd Control_ID_NumeBoleMsk
  loc_9BD582: CVarAd
  loc_9BD586: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BD58B: FFree1Var var_94 = ""
  loc_9BD58E: ExitProcHresult
End Sub

Private Sub NumeBoleMsk_UnknownEvent_8 'A66944
  'Data Table: 46CC0C
  loc_A668E4: FLdPr Me
  loc_A668E7: VCallAd Control_ID_NumeBoleMsk
  loc_A668EA: FStAdFunc var_88
  loc_A668ED: FLdPr var_88
  loc_A668F0: LateIdLdVar var_98 DispID_22 0
  loc_A668F7: CStrVarTmp
  loc_A668F8: FStStrNoPop var_9C
  loc_A668FB: LitStr "Número de Boleto"
  loc_A668FE: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A66903: FStStrNoPop var_A0
  loc_A66906: FLdPr Me
  loc_A66909: MemStStrCopy
  loc_A6690D: FFreeStr var_9C = ""
  loc_A66914: FFree1Ad var_88
  loc_A66917: FFree1Var var_98 = ""
  loc_A6691A: FLdPr Me
  loc_A6691D: VCallAd Control_ID_NumeBoleMsk
  loc_A66920: FStAdFuncNoPop
  loc_A66923: CastAd
  loc_A66926: FStAdFunc var_A4
  loc_A66929: FLdRfVar var_A4
  loc_A6692C: FLdPr Me
  loc_A6692F: MemLdStr global_116
  loc_A66932: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A66937: IStI2 Button
  loc_A6693A: FFreeAd var_88 = ""
  loc_A66941: ExitProcHresult
End Sub

Public Function bGeneradoGet() '46D7E8
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '46D7F7
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'A112B8
  'Data Table: 46CC0C
  loc_A11284: LitI4 0
  loc_A11289: LitI4 0
  loc_A1128E: FLdRfVar var_88
  loc_A11291: Redim
  loc_A1129B: FLdPr Me
  loc_A1129E: VCallAd Control_ID_NumeBoleMsk
  loc_A112A1: CVarAd
  loc_A112A5: ParmAry1St
  loc_A112AB: FLdRfVar var_88
  loc_A112AE: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A112B3: FLdRfVar var_88
  loc_A112B6: Erase
  loc_A112B7: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'C794D8
  'Data Table: 46CC0C
  loc_C78238: FLdPr Me
  loc_C7823B: MemLdI2 bGenerado
  loc_C7823E: BranchF loc_C78242
  loc_C78241: ExitProcHresult
  loc_C78242: LitVarStr var_A4, "Generando reporte..."
  loc_C78247: PopAdLdVar
  loc_C78248: FLdPr Me
  loc_C7824B: VCallAd Control_ID_statusBar
  loc_C7824E: FStAdFunc var_B8
  loc_C78251: FLdPr var_B8
  loc_C78254: LateIdSt
  loc_C78259: FFree1Ad var_B8
  loc_C7825C: LitI4 &HB
  loc_C78261: CI2I4
  loc_C78262: FLdPr Me
  loc_C78265: Me.MousePointer = from_stack_1
  loc_C7826A: FLdPr Me
  loc_C7826D: MemLdRfVar from_stack_1.global_76
  loc_C78270: NewIfNullAd
  loc_C78273: FStAd var_BC 
  loc_C78277: LitStr "SELECT PeriBole, NumeBole, CodiPaon, FechPaon, concat(DetaMepa, ' - ', ModaMepa) MetodoPago, ImpoPaon, IFNULL(FeacPaon,'') FeacPaon, UsacPoan  FROM pagoonline "
  loc_C7827A: LitStr " LEFT JOIN mediopago ON mediopago.CodiMepa = pagoonline.CodiMepa"
  loc_C7827D: ConcatStr
  loc_C7827E: FStStrNoPop var_C0
  loc_C78281: LitStr " WHERE pagoonline.CodiPaon = "
  loc_C78284: ConcatStr
  loc_C78285: FStStrNoPop var_D4
  loc_C78288: FLdPr Me
  loc_C7828B: VCallAd Control_ID_NumeBoleMsk
  loc_C7828E: FStAdFunc var_B8
  loc_C78291: FLdPr var_B8
  loc_C78294: LateIdLdVar var_D0 DispID_22 0
  loc_C7829B: CStrVarTmp
  loc_C7829C: FStStrNoPop var_D8
  loc_C7829F: ConcatStr
  loc_C782A0: FStStrNoPop var_DC
  loc_C782A3: FLdPr var_BC
  loc_C782A6: Call clsboleto.RedefineRS(from_stack_1v)
  loc_C782AB: FFreeStr var_C0 = "": var_D4 = "": var_D8 = ""
  loc_C782B6: FFree1Ad var_B8
  loc_C782B9: FFree1Var var_D0 = ""
  loc_C782BC: FLdRfVar var_E0
  loc_C782BF: FLdPr var_BC
  loc_C782C2: from_stack_1 = clsboleto.RecordCount
  loc_C782C7: ILdRf var_E0
  loc_C782CA: LitI4 0
  loc_C782CF: EqI4
  loc_C782D0: BranchF loc_C782DE
  loc_C782D3: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_C782D6: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C782DB: Branch loc_C794AD
  loc_C782DE: LitI4 0
  loc_C782E3: LitI4 1
  loc_C782E8: FLdPr Me
  loc_C782EB: MemLdRfVar from_stack_1.global_92
  loc_C782EE: Redim
  loc_C782F8: LitI4 0
  loc_C782FD: LitI4 1
  loc_C78302: FLdPr Me
  loc_C78305: MemLdRfVar from_stack_1.global_108
  loc_C78308: Redim
  loc_C78312: LitI4 0
  loc_C78317: LitI4 1
  loc_C7831C: FLdPr Me
  loc_C7831F: MemLdRfVar from_stack_1.global_112
  loc_C78322: Redim
  loc_C7832C: FLdPr var_BC
  loc_C7832F: Call clsboleto.MoveFirst()
  loc_C78334: FLdRfVar var_E8
  loc_C78337: LitVarStr var_A4, "CodiPaon"
  loc_C7833C: PopAdLdVar
  loc_C7833D: FLdRfVar var_E4
  loc_C78340: FLdRfVar var_B8
  loc_C78343: FLdPr var_BC
  loc_C78346: from_stack_1v = clsboleto.RsFrmGet()
  loc_C7834B: FLdPr var_B8
  loc_C7834E:  = Me.Fields
  loc_C78353: FLdPr var_E4
  loc_C78356: from_stack_2 = Me.Item(from_stack_1)
  loc_C7835B: LitI2_Byte 0
  loc_C7835D: LitVar_Missing var_FC
  loc_C78360: LitI2_Byte 0
  loc_C78362: FLdZeroAd var_E8
  loc_C78365: CVarAd
  loc_C78369: PopAdLdVar
  loc_C7836A: LitI4 1
  loc_C7836F: FLdPr Me
  loc_C78372: MemLdStr global_92
  loc_C78375: AryLock
  loc_C78378: Ary1LdPr
  loc_C78379: MemLdRfVar from_stack_1.global_0
  loc_C7837C: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C78381: AryUnlock
  loc_C78384: FFreeAd var_B8 = ""
  loc_C7838B: FFreeVar var_D0 = ""
  loc_C78392: FLdRfVar var_E8
  loc_C78395: LitVarStr var_A4, "FechPaon"
  loc_C7839A: PopAdLdVar
  loc_C7839B: FLdRfVar var_E4
  loc_C7839E: FLdRfVar var_B8
  loc_C783A1: FLdPr var_BC
  loc_C783A4: from_stack_1v = clsboleto.RsFrmGet()
  loc_C783A9: FLdPr var_B8
  loc_C783AC:  = Me.Fields
  loc_C783B1: FLdPr var_E4
  loc_C783B4: from_stack_2 = Me.Item(from_stack_1)
  loc_C783B9: LitI2_Byte 0
  loc_C783BB: LitVar_Missing var_FC
  loc_C783BE: LitI2_Byte 0
  loc_C783C0: FLdZeroAd var_E8
  loc_C783C3: CVarAd
  loc_C783C7: PopAdLdVar
  loc_C783C8: LitI4 1
  loc_C783CD: FLdPr Me
  loc_C783D0: MemLdStr global_92
  loc_C783D3: AryLock
  loc_C783D6: Ary1LdPr
  loc_C783D7: MemLdRfVar from_stack_1.global_4
  loc_C783DA: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C783DF: AryUnlock
  loc_C783E2: FFreeAd var_B8 = ""
  loc_C783E9: FFreeVar var_D0 = ""
  loc_C783F0: FLdRfVar var_E8
  loc_C783F3: LitVarStr var_A4, "MetodoPago"
  loc_C783F8: PopAdLdVar
  loc_C783F9: FLdRfVar var_E4
  loc_C783FC: FLdRfVar var_B8
  loc_C783FF: FLdPr var_BC
  loc_C78402: from_stack_1v = clsboleto.RsFrmGet()
  loc_C78407: FLdPr var_B8
  loc_C7840A:  = Me.Fields
  loc_C7840F: FLdPr var_E4
  loc_C78412: from_stack_2 = Me.Item(from_stack_1)
  loc_C78417: LitI2_Byte 0
  loc_C78419: LitVar_Missing var_FC
  loc_C7841C: LitI2_Byte 0
  loc_C7841E: FLdZeroAd var_E8
  loc_C78421: CVarAd
  loc_C78425: PopAdLdVar
  loc_C78426: LitI4 1
  loc_C7842B: FLdPr Me
  loc_C7842E: MemLdStr global_92
  loc_C78431: AryLock
  loc_C78434: Ary1LdPr
  loc_C78435: MemLdRfVar from_stack_1.global_8
  loc_C78438: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C7843D: AryUnlock
  loc_C78440: FFreeAd var_B8 = ""
  loc_C78447: FFreeVar var_D0 = ""
  loc_C7844E: FLdRfVar var_E8
  loc_C78451: LitVarStr var_A4, "ImpoPaon"
  loc_C78456: PopAdLdVar
  loc_C78457: FLdRfVar var_E4
  loc_C7845A: FLdRfVar var_B8
  loc_C7845D: FLdPr var_BC
  loc_C78460: from_stack_1v = clsboleto.RsFrmGet()
  loc_C78465: FLdPr var_B8
  loc_C78468:  = Me.Fields
  loc_C7846D: FLdPr var_E4
  loc_C78470: from_stack_2 = Me.Item(from_stack_1)
  loc_C78475: LitI2_Byte 0
  loc_C78477: LitVar_Missing var_FC
  loc_C7847A: LitI2_Byte 0
  loc_C7847C: FLdZeroAd var_E8
  loc_C7847F: CVarAd
  loc_C78483: PopAdLdVar
  loc_C78484: LitI4 1
  loc_C78489: FLdPr Me
  loc_C7848C: MemLdStr global_92
  loc_C7848F: AryLock
  loc_C78492: Ary1LdPr
  loc_C78493: MemLdRfVar from_stack_1.global_12
  loc_C78496: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C7849B: AryUnlock
  loc_C7849E: FFreeAd var_B8 = ""
  loc_C784A5: FFreeVar var_D0 = ""
  loc_C784AC: FLdRfVar var_E8
  loc_C784AF: LitVarStr var_A4, "FeacPaon"
  loc_C784B4: PopAdLdVar
  loc_C784B5: FLdRfVar var_E4
  loc_C784B8: FLdRfVar var_B8
  loc_C784BB: FLdPr var_BC
  loc_C784BE: from_stack_1v = clsboleto.RsFrmGet()
  loc_C784C3: FLdPr var_B8
  loc_C784C6:  = Me.Fields
  loc_C784CB: FLdPr var_E4
  loc_C784CE: from_stack_2 = Me.Item(from_stack_1)
  loc_C784D3: LitI2_Byte 0
  loc_C784D5: LitVar_Missing var_FC
  loc_C784D8: LitI2_Byte 0
  loc_C784DA: FLdZeroAd var_E8
  loc_C784DD: CVarAd
  loc_C784E1: PopAdLdVar
  loc_C784E2: LitI4 1
  loc_C784E7: FLdPr Me
  loc_C784EA: MemLdStr global_92
  loc_C784ED: AryLock
  loc_C784F0: Ary1LdPr
  loc_C784F1: MemLdRfVar from_stack_1.global_16
  loc_C784F4: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C784F9: AryUnlock
  loc_C784FC: FFreeAd var_B8 = ""
  loc_C78503: FFreeVar var_D0 = ""
  loc_C7850A: FLdRfVar var_E8
  loc_C7850D: LitVarStr var_A4, "UsacPoan"
  loc_C78512: PopAdLdVar
  loc_C78513: FLdRfVar var_E4
  loc_C78516: FLdRfVar var_B8
  loc_C78519: FLdPr var_BC
  loc_C7851C: from_stack_1v = clsboleto.RsFrmGet()
  loc_C78521: FLdPr var_B8
  loc_C78524:  = Me.Fields
  loc_C78529: FLdPr var_E4
  loc_C7852C: from_stack_2 = Me.Item(from_stack_1)
  loc_C78531: LitI2_Byte 0
  loc_C78533: LitVar_Missing var_FC
  loc_C78536: LitI2_Byte 0
  loc_C78538: FLdZeroAd var_E8
  loc_C7853B: CVarAd
  loc_C7853F: PopAdLdVar
  loc_C78540: LitI4 1
  loc_C78545: FLdPr Me
  loc_C78548: MemLdStr global_92
  loc_C7854B: AryLock
  loc_C7854E: Ary1LdPr
  loc_C7854F: MemLdRfVar from_stack_1.global_20
  loc_C78552: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C78557: AryUnlock
  loc_C7855A: FFreeAd var_B8 = ""
  loc_C78561: FFreeVar var_D0 = ""
  loc_C78568: LitNothing
  loc_C7856A: FStAd var_BC 
  loc_C7856E: FLdPr Me
  loc_C78571: MemLdRfVar from_stack_1.global_80
  loc_C78574: NewIfNullAd
  loc_C78577: FStAd var_100 
  loc_C7857B: LitStr "SELECT IFNULL(persona.DetaPers,'') DetaPers, boleto.CucuPers, CONCAT(infogov.persona.DecrPers,' - ', infogov.persona.NurePers,' - ', infogov.persona.DelrPers,' - ', infogov.persona.CoprPers) DomiPers,"
  loc_C7857E: LitStr " boleto.PeriBole, boleto.NumeBole, EstaBole, TipoBole, boleto.CodiEnre as CodiEnreBole, enterecabole.DetaEnre AS DetaEnreBole, boleto.CodiOfic, DetaOfic, boleto.CuenCtct, FeveBole, persousua.DetaPers as DetaPersUsua, IFNULL(persopago.DetaPers,'') as DetaPersPago, boleto.ExpeBole, "
  loc_C78581: ConcatStr
  loc_C78582: FStStrNoPop var_C0
  loc_C78585: LitStr " boleto.CodiFapa, boleto.CuotDefa, pago.NumeAcpa, acrepago.CodiEnre as CodiEnrePago, enterecapago.DetaEnre as DetaEnrePago, FealBole, pago.FeenAcpa, FepaAcpa, FeacAcpa, ApreBole, ObseBole"
  loc_C78588: ConcatStr
  loc_C78589: FStStrNoPop var_D4
  loc_C7858C: LitStr " FROM boleto"
  loc_C7858F: ConcatStr
  loc_C78590: FStStrNoPop var_D8
  loc_C78593: LitStr " LEFT JOIN pago ON pago.PeriBole = boleto.PeriBole AND pago.NumeBole = boleto.NumeBole"
  loc_C78596: ConcatStr
  loc_C78597: FStStrNoPop var_DC
  loc_C7859A: LitStr " LEFT JOIN acrepago ON acrepago.FeenAcpa = pago.FeenAcpa AND acrepago.NumeAcpa = pago.NumeAcpa"
  loc_C7859D: ConcatStr
  loc_C7859E: FStStrNoPop var_104
  loc_C785A1: LitStr " LEFT JOIN infogov.persona ON infogov.persona.CucuPers = boleto.CucuPers"
  loc_C785A4: ConcatStr
  loc_C785A5: FStStrNoPop var_108
  loc_C785A8: LitStr " LEFT JOIN oficina ON oficina.CodiOfic = boleto.CodiOfic"
  loc_C785AB: ConcatStr
  loc_C785AC: FStStrNoPop var_10C
  loc_C785AF: LitStr " LEFT JOIN infogov.entereca as enterecapago ON enterecapago.CodiEnre = acrepago.CodiEnre"
  loc_C785B2: ConcatStr
  loc_C785B3: FStStrNoPop var_110
  loc_C785B6: LitStr " LEFT JOIN infogov.entereca as enterecabole  ON enterecabole.CodiEnre = boleto.CodiEnre"
  loc_C785B9: ConcatStr
  loc_C785BA: FStStrNoPop var_114
  loc_C785BD: LitStr " LEFT JOIN infogov.usuario ON usuario.CodiUsua = boleto.CodiUsua"
  loc_C785C0: ConcatStr
  loc_C785C1: FStStrNoPop var_118
  loc_C785C4: LitStr " LEFT JOIN infogov.usuario as usuapago ON usuapago.CodiUsua = pago.CodiUsua"
  loc_C785C7: ConcatStr
  loc_C785C8: FStStrNoPop var_11C
  loc_C785CB: LitStr " LEFT JOIN infogov.persona as persousua ON persousua.CucuPers = usuario.CucuPers"
  loc_C785CE: ConcatStr
  loc_C785CF: FStStrNoPop var_120
  loc_C785D2: LitStr " LEFT JOIN infogov.persona as persopago ON persopago.CucuPers = usuapago.CucuPers"
  loc_C785D5: ConcatStr
  loc_C785D6: FStStrNoPop var_124
  loc_C785D9: LitStr " WHERE boleto.PeriBole = '"
  loc_C785DC: ConcatStr
  loc_C785DD: CVarStr var_FC
  loc_C785E0: FLdRfVar var_D0
  loc_C785E3: FLdRfVar var_E8
  loc_C785E6: LitVarStr var_A4, "PeriBole"
  loc_C785EB: PopAdLdVar
  loc_C785EC: FLdRfVar var_E4
  loc_C785EF: FLdRfVar var_B8
  loc_C785F2: FLdPr Me
  loc_C785F5: MemLdRfVar from_stack_1.global_76
  loc_C785F8: NewIfNullPr clsboleto
  loc_C785FB: from_stack_1v = clsboleto.RsFrmGet()
  loc_C78600: FLdPr var_B8
  loc_C78603:  = Me.Fields
  loc_C78608: FLdPr var_E4
  loc_C7860B: from_stack_2 = Me.Item(from_stack_1)
  loc_C78610: FLdPr var_E8
  loc_C78613:  = Me.Value
  loc_C78618: FLdRfVar var_D0
  loc_C7861B: ConcatVar var_134
  loc_C7861F: LitVarStr var_B4, "' AND boleto.NumeBole = '"
  loc_C78624: ConcatVar var_144
  loc_C78628: FLdRfVar var_170
  loc_C7862B: FLdRfVar var_160
  loc_C7862E: LitVarStr var_15C, "NumeBole"
  loc_C78633: PopAdLdVar
  loc_C78634: FLdRfVar var_14C
  loc_C78637: FLdRfVar var_148
  loc_C7863A: FLdPr Me
  loc_C7863D: MemLdRfVar from_stack_1.global_76
  loc_C78640: NewIfNullPr clsboleto
  loc_C78643: from_stack_1v = clsboleto.RsFrmGet()
  loc_C78648: FLdPr var_148
  loc_C7864B:  = Me.Fields
  loc_C78650: FLdPr var_14C
  loc_C78653: from_stack_2 = Me.Item(from_stack_1)
  loc_C78658: FLdPr var_160
  loc_C7865B:  = Me.Value
  loc_C78660: FLdRfVar var_170
  loc_C78663: ConcatVar var_180
  loc_C78667: LitVarStr var_190, "'"
  loc_C7866C: ConcatVar var_1A0
  loc_C78670: CStrVarVal var_1A4
  loc_C78674: FLdPr var_100
  loc_C78677: Call clsboleto.RedefineRS(from_stack_1v)
  loc_C7867C: FFreeStr var_C0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = ""
  loc_C7869B: FFreeAd var_B8 = "": var_E4 = "": var_E8 = "": var_148 = "": var_14C = ""
  loc_C786AA: FFreeVar var_FC = "": var_D0 = "": var_134 = "": var_144 = "": var_170 = "": var_180 = ""
  loc_C786BB: FLdRfVar var_E0
  loc_C786BE: FLdPr var_100
  loc_C786C1: from_stack_1 = clsboleto.RecordCount
  loc_C786C6: ILdRf var_E0
  loc_C786C9: LitI4 0
  loc_C786CE: EqI4
  loc_C786CF: BranchF loc_C786DD
  loc_C786D2: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_C786D5: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C786DA: Branch loc_C794AD
  loc_C786DD: FLdRfVar var_1A6
  loc_C786E0: FLdPr var_100
  loc_C786E3: from_stack_1 = clsboleto.CodiOfic
  loc_C786E8: FLdI2 var_1A6
  loc_C786EB: LitI2_Byte 1
  loc_C786ED: EqI2
  loc_C786EE: BranchF loc_C787C2
  loc_C786F1: FLdRfVar var_C0
  loc_C786F4: FLdPr var_100
  loc_C786F7: from_stack_1 = clsboleto.DetaPers
  loc_C786FC: ILdRf var_C0
  loc_C786FF: LitStr vbNullString
  loc_C78702: EqStr
  loc_C78704: FFree1Str var_C0
  loc_C78707: BranchF loc_C78785
  loc_C7870A: FLdRfVar var_C0
  loc_C7870D: FLdPr var_100
  loc_C78710: from_stack_1 = clsboleto.CucuPers
  loc_C78715: FLdRfVar var_D4
  loc_C78718: FLdPr var_100
  loc_C7871B: from_stack_1 = clsboleto.CuenCtct
  loc_C78720: FLdPr Me
  loc_C78723: MemLdRfVar from_stack_1.global_104
  loc_C78726: NewIfNullRf
  loc_C7872A: ILdRf var_D4
  loc_C7872D: ILdRf var_C0
  loc_C78730: ImpAdCallI2  = Proc_270_14_BF20CC(, )
  loc_C78735: LitI2_Byte &HFF
  loc_C78737: EqI2
  loc_C78738: FFreeStr var_C0 = ""
  loc_C7873F: BranchF loc_C78782
  loc_C78742: FLdRfVar var_C0
  loc_C78745: FLdPr Me
  loc_C78748: MemLdRfVar from_stack_1.global_104
  loc_C7874B: NewIfNullPr tblPersonaGIS
  loc_C7874E: from_stack_1v = tblPersonaGIS.DetaPersGet()
  loc_C78753: LitI2_Byte 0
  loc_C78755: LitVar_Missing var_FC
  loc_C78758: LitI2_Byte 0
  loc_C7875A: FLdZeroAd var_C0
  loc_C7875D: CVarStr var_D0
  loc_C78760: PopAdLdVar
  loc_C78761: LitI4 1
  loc_C78766: FLdPr Me
  loc_C78769: MemLdStr global_92
  loc_C7876C: AryLock
  loc_C7876F: Ary1LdPr
  loc_C78770: MemLdRfVar from_stack_1.global_24
  loc_C78773: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C78778: AryUnlock
  loc_C7877B: FFreeVar var_D0 = ""
  loc_C78782: Branch loc_C787BF
  loc_C78785: FLdRfVar var_C0
  loc_C78788: FLdPr var_100
  loc_C7878B: from_stack_1 = clsboleto.DetaPers
  loc_C78790: LitI2_Byte 0
  loc_C78792: LitVar_Missing var_FC
  loc_C78795: LitI2_Byte 0
  loc_C78797: FLdZeroAd var_C0
  loc_C7879A: CVarStr var_D0
  loc_C7879D: PopAdLdVar
  loc_C7879E: LitI4 1
  loc_C787A3: FLdPr Me
  loc_C787A6: MemLdStr global_92
  loc_C787A9: AryLock
  loc_C787AC: Ary1LdPr
  loc_C787AD: MemLdRfVar from_stack_1.global_24
  loc_C787B0: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C787B5: AryUnlock
  loc_C787B8: FFreeVar var_D0 = ""
  loc_C787BF: Branch loc_C787FC
  loc_C787C2: FLdRfVar var_C0
  loc_C787C5: FLdPr var_100
  loc_C787C8: from_stack_1 = clsboleto.DetaPers
  loc_C787CD: LitI2_Byte 0
  loc_C787CF: LitVar_Missing var_FC
  loc_C787D2: LitI2_Byte 0
  loc_C787D4: FLdZeroAd var_C0
  loc_C787D7: CVarStr var_D0
  loc_C787DA: PopAdLdVar
  loc_C787DB: LitI4 1
  loc_C787E0: FLdPr Me
  loc_C787E3: MemLdStr global_92
  loc_C787E6: AryLock
  loc_C787E9: Ary1LdPr
  loc_C787EA: MemLdRfVar from_stack_1.global_24
  loc_C787ED: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C787F2: AryUnlock
  loc_C787F5: FFreeVar var_D0 = ""
  loc_C787FC: FLdRfVar var_C0
  loc_C787FF: FLdPr var_100
  loc_C78802: from_stack_1 = clsboleto.CucuPers
  loc_C78807: LitI2_Byte 0
  loc_C78809: LitVar_Missing var_FC
  loc_C7880C: LitI2_Byte 0
  loc_C7880E: FLdZeroAd var_C0
  loc_C78811: CVarStr var_D0
  loc_C78814: PopAdLdVar
  loc_C78815: LitI4 1
  loc_C7881A: FLdPr Me
  loc_C7881D: MemLdStr global_92
  loc_C78820: AryLock
  loc_C78823: Ary1LdPr
  loc_C78824: MemLdRfVar from_stack_1.global_28
  loc_C78827: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C7882C: AryUnlock
  loc_C7882F: FFreeVar var_D0 = ""
  loc_C78836: FLdRfVar var_E8
  loc_C78839: LitVarStr var_A4, "DomiPers"
  loc_C7883E: PopAdLdVar
  loc_C7883F: FLdRfVar var_E4
  loc_C78842: FLdRfVar var_B8
  loc_C78845: FLdPr var_100
  loc_C78848: from_stack_1v = clsboleto.RsFrmGet()
  loc_C7884D: FLdPr var_B8
  loc_C78850:  = Me.Fields
  loc_C78855: FLdPr var_E4
  loc_C78858: from_stack_2 = Me.Item(from_stack_1)
  loc_C7885D: LitI2_Byte 0
  loc_C7885F: LitVar_Missing var_FC
  loc_C78862: LitI2_Byte 0
  loc_C78864: FLdZeroAd var_E8
  loc_C78867: CVarAd
  loc_C7886B: PopAdLdVar
  loc_C7886C: LitI4 1
  loc_C78871: FLdPr Me
  loc_C78874: MemLdStr global_92
  loc_C78877: AryLock
  loc_C7887A: Ary1LdPr
  loc_C7887B: MemLdRfVar from_stack_1.global_32
  loc_C7887E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C78883: AryUnlock
  loc_C78886: FFreeAd var_B8 = ""
  loc_C7888D: FFreeVar var_D0 = ""
  loc_C78894: FLdRfVar var_C0
  loc_C78897: FLdPr var_100
  loc_C7889A: from_stack_1 = clsboleto.EstaBole
  loc_C7889F: LitI2_Byte 0
  loc_C788A1: LitVar_Missing var_FC
  loc_C788A4: LitI2_Byte 0
  loc_C788A6: FLdZeroAd var_C0
  loc_C788A9: CVarStr var_D0
  loc_C788AC: PopAdLdVar
  loc_C788AD: LitI4 1
  loc_C788B2: FLdPr Me
  loc_C788B5: MemLdStr global_92
  loc_C788B8: AryLock
  loc_C788BB: Ary1LdPr
  loc_C788BC: MemLdRfVar from_stack_1.global_36
  loc_C788BF: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C788C4: AryUnlock
  loc_C788C7: FFreeVar var_D0 = ""
  loc_C788CE: FLdRfVar var_C0
  loc_C788D1: FLdPr var_100
  loc_C788D4: from_stack_1 = clsboleto.TipoBole
  loc_C788D9: LitI2_Byte 0
  loc_C788DB: LitVar_Missing var_FC
  loc_C788DE: LitI2_Byte 0
  loc_C788E0: FLdZeroAd var_C0
  loc_C788E3: CVarStr var_D0
  loc_C788E6: PopAdLdVar
  loc_C788E7: LitI4 1
  loc_C788EC: FLdPr Me
  loc_C788EF: MemLdStr global_92
  loc_C788F2: AryLock
  loc_C788F5: Ary1LdPr
  loc_C788F6: MemLdRfVar from_stack_1.global_40
  loc_C788F9: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C788FE: AryUnlock
  loc_C78901: FFreeVar var_D0 = ""
  loc_C78908: FLdRfVar var_D0
  loc_C7890B: FLdPr var_100
  loc_C7890E: from_stack_1 = clsboleto.CodiEnreBole
  loc_C78913: LitI2_Byte 0
  loc_C78915: LitVar_Missing var_FC
  loc_C78918: LitI2_Byte 0
  loc_C7891A: FLdVar var_D0
  loc_C7891E: LitI4 1
  loc_C78923: FLdPr Me
  loc_C78926: MemLdStr global_92
  loc_C78929: AryLock
  loc_C7892C: Ary1LdPr
  loc_C7892D: MemLdRfVar from_stack_1.global_44
  loc_C78930: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C78935: AryUnlock
  loc_C78938: FFreeVar var_D0 = ""
  loc_C7893F: FLdRfVar var_D0
  loc_C78942: FLdPr var_100
  loc_C78945: from_stack_1 = clsboleto.DetaEnreBole
  loc_C7894A: LitI2_Byte 0
  loc_C7894C: LitVar_Missing var_FC
  loc_C7894F: LitI2_Byte 0
  loc_C78951: FLdVar var_D0
  loc_C78955: LitI4 1
  loc_C7895A: FLdPr Me
  loc_C7895D: MemLdStr global_92
  loc_C78960: AryLock
  loc_C78963: Ary1LdPr
  loc_C78964: MemLdRfVar from_stack_1.global_48
  loc_C78967: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C7896C: AryUnlock
  loc_C7896F: FFreeVar var_D0 = ""
  loc_C78976: FLdRfVar var_1A6
  loc_C78979: FLdPr var_100
  loc_C7897C: from_stack_1 = clsboleto.CodiOfic
  loc_C78981: LitI2_Byte 0
  loc_C78983: LitVar_Missing var_D0
  loc_C78986: LitI2_Byte 0
  loc_C78988: FLdI2 var_1A6
  loc_C7898B: CVarI2 var_A4
  loc_C7898E: PopAdLdVar
  loc_C7898F: LitI4 1
  loc_C78994: FLdPr Me
  loc_C78997: MemLdStr global_92
  loc_C7899A: AryLock
  loc_C7899D: Ary1LdPr
  loc_C7899E: MemLdRfVar from_stack_1.bGenerado
  loc_C789A1: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C789A6: AryUnlock
  loc_C789A9: FFree1Var var_D0 = ""
  loc_C789AC: FLdRfVar var_C0
  loc_C789AF: FLdPr var_100
  loc_C789B2: from_stack_1 = clsboleto.CuenCtct
  loc_C789B7: LitI2_Byte 0
  loc_C789B9: LitVar_Missing var_FC
  loc_C789BC: LitI2_Byte 0
  loc_C789BE: FLdZeroAd var_C0
  loc_C789C1: CVarStr var_D0
  loc_C789C4: PopAdLdVar
  loc_C789C5: LitI4 1
  loc_C789CA: FLdPr Me
  loc_C789CD: MemLdStr global_92
  loc_C789D0: AryLock
  loc_C789D3: Ary1LdPr
  loc_C789D4: MemLdRfVar from_stack_1.global_60
  loc_C789D7: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C789DC: AryUnlock
  loc_C789DF: FFreeVar var_D0 = ""
  loc_C789E6: FLdRfVar var_D0
  loc_C789E9: FLdPr var_100
  loc_C789EC: from_stack_1 = clsboleto.DetaOfic
  loc_C789F1: FLdRfVar var_D0
  loc_C789F4: LitVarStr var_B4, "DERECHOS VARIOS"
  loc_C789F9: FStVarCopyObj var_FC
  loc_C789FC: FLdRfVar var_FC
  loc_C789FF: LitI4 1
  loc_C78A04: FLdPr Me
  loc_C78A07: MemLdStr global_92
  loc_C78A0A: Ary1LdPr
  loc_C78A0B: MemLdStr bGenerado
  loc_C78A0E: CR8Str
  loc_C78A10: LitI2_Byte 3
  loc_C78A12: CR8I2
  loc_C78A13: EqR4
  loc_C78A14: LitI4 1
  loc_C78A19: FLdPr Me
  loc_C78A1C: MemLdStr global_92
  loc_C78A1F: Ary1LdPr
  loc_C78A20: MemLdStr global_60
  loc_C78A23: LitStr vbNullString
  loc_C78A26: EqStr
  loc_C78A28: AndI4
  loc_C78A29: CVarBoolI2 var_A4
  loc_C78A2D: FLdRfVar var_134
  loc_C78A30: ImpAdCallFPR4  = IIf(, , )
  loc_C78A35: LitI2_Byte 0
  loc_C78A37: LitVar_Missing var_144
  loc_C78A3A: LitI2_Byte 0
  loc_C78A3C: FLdVar var_134
  loc_C78A40: LitI4 1
  loc_C78A45: FLdPr Me
  loc_C78A48: MemLdStr global_92
  loc_C78A4B: AryLock
  loc_C78A4E: Ary1LdPr
  loc_C78A4F: MemLdRfVar from_stack_1.global_56
  loc_C78A52: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C78A57: AryUnlock
  loc_C78A5A: FFreeVar var_A4 = "": var_FC = "": var_D0 = "": var_134 = ""
  loc_C78A67: FLdRfVar var_1B0
  loc_C78A6A: FLdPr var_100
  loc_C78A6D: from_stack_1 = clsboleto.ApreBole
  loc_C78A72: LitI2_Byte 0
  loc_C78A74: LitVar_Missing var_D0
  loc_C78A77: LitI2_Byte &HFF
  loc_C78A79: FLdFPR8 var_1B0
  loc_C78A7C: CVarR8
  loc_C78A80: PopAdLdVar
  loc_C78A81: LitI4 1
  loc_C78A86: FLdPr Me
  loc_C78A89: MemLdStr global_92
  loc_C78A8C: AryLock
  loc_C78A8F: Ary1LdPr
  loc_C78A90: MemLdRfVar from_stack_1.global_64
  loc_C78A93: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C78A98: AryUnlock
  loc_C78A9B: FFree1Var var_D0 = ""
  loc_C78A9E: FLdRfVar var_E0
  loc_C78AA1: FLdPr var_100
  loc_C78AA4: from_stack_1 = clsboleto.CodiFapa
  loc_C78AA9: LitI2_Byte 0
  loc_C78AAB: LitVar_Missing var_D0
  loc_C78AAE: LitI2_Byte 0
  loc_C78AB0: ILdRf var_E0
  loc_C78AB3: CVarI4
  loc_C78AB7: PopAdLdVar
  loc_C78AB8: LitI4 1
  loc_C78ABD: FLdPr Me
  loc_C78AC0: MemLdStr global_92
  loc_C78AC3: AryLock
  loc_C78AC6: Ary1LdPr
  loc_C78AC7: MemLdRfVar from_stack_1.global_68
  loc_C78ACA: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C78ACF: AryUnlock
  loc_C78AD2: FFree1Var var_D0 = ""
  loc_C78AD5: FLdRfVar var_1A6
  loc_C78AD8: FLdPr var_100
  loc_C78ADB: from_stack_1 = clsboleto.CuotDefa
  loc_C78AE0: LitI2_Byte 0
  loc_C78AE2: LitVar_Missing var_D0
  loc_C78AE5: LitI2_Byte 0
  loc_C78AE7: FLdI2 var_1A6
  loc_C78AEA: CVarI2 var_A4
  loc_C78AED: PopAdLdVar
  loc_C78AEE: LitI4 1
  loc_C78AF3: FLdPr Me
  loc_C78AF6: MemLdStr global_92
  loc_C78AF9: AryLock
  loc_C78AFC: Ary1LdPr
  loc_C78AFD: MemLdRfVar from_stack_1.global_72
  loc_C78B00: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C78B05: AryUnlock
  loc_C78B08: FFree1Var var_D0 = ""
  loc_C78B0B: FLdRfVar var_D0
  loc_C78B0E: FLdPr var_100
  loc_C78B11: from_stack_1 = clsboleto.FealBole
  loc_C78B16: LitI2_Byte 0
  loc_C78B18: LitVar_Missing var_FC
  loc_C78B1B: LitI2_Byte 0
  loc_C78B1D: FLdVar var_D0
  loc_C78B21: LitI4 1
  loc_C78B26: FLdPr Me
  loc_C78B29: MemLdStr global_92
  loc_C78B2C: AryLock
  loc_C78B2F: Ary1LdPr
  loc_C78B30: MemLdRfVar from_stack_1.global_76
  loc_C78B33: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C78B38: AryUnlock
  loc_C78B3B: FFreeVar var_D0 = ""
  loc_C78B42: FLdRfVar var_D0
  loc_C78B45: FLdPr var_100
  loc_C78B48: from_stack_1 = clsboleto.FeenAcpa
  loc_C78B4D: LitI2_Byte 0
  loc_C78B4F: LitVar_Missing var_FC
  loc_C78B52: LitI2_Byte 0
  loc_C78B54: FLdVar var_D0
  loc_C78B58: LitI4 1
  loc_C78B5D: FLdPr Me
  loc_C78B60: MemLdStr global_92
  loc_C78B63: AryLock
  loc_C78B66: Ary1LdPr
  loc_C78B67: MemLdRfVar from_stack_1.global_80
  loc_C78B6A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C78B6F: AryUnlock
  loc_C78B72: FFreeVar var_D0 = ""
  loc_C78B79: FLdRfVar var_D0
  loc_C78B7C: FLdPr var_100
  loc_C78B7F: from_stack_1 = clsboleto.FeacAcpa
  loc_C78B84: LitI2_Byte 0
  loc_C78B86: LitVar_Missing var_FC
  loc_C78B89: LitI2_Byte 0
  loc_C78B8B: FLdVar var_D0
  loc_C78B8F: LitI4 1
  loc_C78B94: FLdPr Me
  loc_C78B97: MemLdStr global_92
  loc_C78B9A: AryLock
  loc_C78B9D: Ary1LdPr
  loc_C78B9E: MemLdRfVar from_stack_1.global_84
  loc_C78BA1: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C78BA6: AryUnlock
  loc_C78BA9: FFreeVar var_D0 = ""
  loc_C78BB0: FLdRfVar var_D0
  loc_C78BB3: FLdPr var_100
  loc_C78BB6: from_stack_1 = clsboleto.FepaAcpa
  loc_C78BBB: LitI2_Byte 0
  loc_C78BBD: LitVar_Missing var_FC
  loc_C78BC0: LitI2_Byte 0
  loc_C78BC2: FLdVar var_D0
  loc_C78BC6: LitI4 1
  loc_C78BCB: FLdPr Me
  loc_C78BCE: MemLdStr global_92
  loc_C78BD1: AryLock
  loc_C78BD4: Ary1LdPr
  loc_C78BD5: MemLdRfVar from_stack_1.global_88
  loc_C78BD8: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C78BDD: AryUnlock
  loc_C78BE0: FFreeVar var_D0 = ""
  loc_C78BE7: FLdRfVar var_D0
  loc_C78BEA: FLdPr var_100
  loc_C78BED: from_stack_1 = clsboleto.NumeAcpa
  loc_C78BF2: LitI2_Byte 0
  loc_C78BF4: LitVar_Missing var_FC
  loc_C78BF7: LitI2_Byte 0
  loc_C78BF9: FLdVar var_D0
  loc_C78BFD: LitI4 1
  loc_C78C02: FLdPr Me
  loc_C78C05: MemLdStr global_92
  loc_C78C08: AryLock
  loc_C78C0B: Ary1LdPr
  loc_C78C0C: MemLdRfVar from_stack_1.global_92
  loc_C78C0F: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C78C14: AryUnlock
  loc_C78C17: FFreeVar var_D0 = ""
  loc_C78C1E: FLdRfVar var_D0
  loc_C78C21: FLdPr var_100
  loc_C78C24: from_stack_1 = clsboleto.CodiEnrePago
  loc_C78C29: LitI2_Byte 0
  loc_C78C2B: LitVar_Missing var_FC
  loc_C78C2E: LitI2_Byte 0
  loc_C78C30: FLdVar var_D0
  loc_C78C34: LitI4 1
  loc_C78C39: FLdPr Me
  loc_C78C3C: MemLdStr global_92
  loc_C78C3F: AryLock
  loc_C78C42: Ary1LdPr
  loc_C78C43: MemLdRfVar from_stack_1.global_96
  loc_C78C46: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C78C4B: AryUnlock
  loc_C78C4E: FFreeVar var_D0 = ""
  loc_C78C55: FLdRfVar var_D0
  loc_C78C58: FLdPr var_100
  loc_C78C5B: from_stack_1 = clsboleto.DetaEnrePago
  loc_C78C60: LitI2_Byte 0
  loc_C78C62: LitVar_Missing var_FC
  loc_C78C65: LitI2_Byte 0
  loc_C78C67: FLdVar var_D0
  loc_C78C6B: LitI4 1
  loc_C78C70: FLdPr Me
  loc_C78C73: MemLdStr global_92
  loc_C78C76: AryLock
  loc_C78C79: Ary1LdPr
  loc_C78C7A: MemLdRfVar from_stack_1.global_100
  loc_C78C7D: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C78C82: AryUnlock
  loc_C78C85: FFreeVar var_D0 = ""
  loc_C78C8C: FLdRfVar var_D0
  loc_C78C8F: FLdPr var_100
  loc_C78C92: from_stack_1 = clsboleto.FeveBole
  loc_C78C97: LitI2_Byte 0
  loc_C78C99: LitVar_Missing var_FC
  loc_C78C9C: LitI2_Byte 0
  loc_C78C9E: FLdVar var_D0
  loc_C78CA2: LitI4 1
  loc_C78CA7: FLdPr Me
  loc_C78CAA: MemLdStr global_92
  loc_C78CAD: AryLock
  loc_C78CB0: Ary1LdPr
  loc_C78CB1: MemLdRfVar from_stack_1.global_104
  loc_C78CB4: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C78CB9: AryUnlock
  loc_C78CBC: FFreeVar var_D0 = ""
  loc_C78CC3: FLdRfVar var_D0
  loc_C78CC6: FLdPr var_100
  loc_C78CC9: from_stack_1 = clsboleto.DetaPersUsua
  loc_C78CCE: LitI2_Byte 0
  loc_C78CD0: LitVar_Missing var_FC
  loc_C78CD3: LitI2_Byte 0
  loc_C78CD5: FLdVar var_D0
  loc_C78CD9: LitI4 1
  loc_C78CDE: FLdPr Me
  loc_C78CE1: MemLdStr global_92
  loc_C78CE4: AryLock
  loc_C78CE7: Ary1LdPr
  loc_C78CE8: MemLdRfVar from_stack_1.global_108
  loc_C78CEB: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C78CF0: AryUnlock
  loc_C78CF3: FFreeVar var_D0 = ""
  loc_C78CFA: FLdRfVar var_D0
  loc_C78CFD: FLdPr var_100
  loc_C78D00: from_stack_1 = clsboleto.DetaPersPago
  loc_C78D05: LitI2_Byte 0
  loc_C78D07: LitVar_Missing var_FC
  loc_C78D0A: LitI2_Byte 0
  loc_C78D0C: FLdVar var_D0
  loc_C78D10: LitI4 1
  loc_C78D15: FLdPr Me
  loc_C78D18: MemLdStr global_92
  loc_C78D1B: AryLock
  loc_C78D1E: Ary1LdPr
  loc_C78D1F: MemLdRfVar from_stack_1.global_112
  loc_C78D22: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C78D27: AryUnlock
  loc_C78D2A: FFreeVar var_D0 = ""
  loc_C78D31: FLdRfVar var_C0
  loc_C78D34: FLdPr var_100
  loc_C78D37: from_stack_1 = clsboleto.ExpeBole
  loc_C78D3C: LitI2_Byte 0
  loc_C78D3E: LitVar_Missing var_FC
  loc_C78D41: LitI2_Byte 0
  loc_C78D43: FLdZeroAd var_C0
  loc_C78D46: CVarStr var_D0
  loc_C78D49: PopAdLdVar
  loc_C78D4A: LitI4 1
  loc_C78D4F: FLdPr Me
  loc_C78D52: MemLdStr global_92
  loc_C78D55: AryLock
  loc_C78D58: Ary1LdPr
  loc_C78D59: MemLdRfVar from_stack_1.global_116
  loc_C78D5C: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C78D61: AryUnlock
  loc_C78D64: FFreeVar var_D0 = ""
  loc_C78D6B: FLdRfVar var_C0
  loc_C78D6E: FLdPr var_100
  loc_C78D71: from_stack_1 = clsboleto.ObseBole
  loc_C78D76: LitI2_Byte 0
  loc_C78D78: LitVar_Missing var_FC
  loc_C78D7B: LitI2_Byte 0
  loc_C78D7D: FLdZeroAd var_C0
  loc_C78D80: CVarStr var_D0
  loc_C78D83: PopAdLdVar
  loc_C78D84: LitI4 1
  loc_C78D89: FLdPr Me
  loc_C78D8C: MemLdStr global_92
  loc_C78D8F: AryLock
  loc_C78D92: Ary1LdPr
  loc_C78D93: MemLdRfVar from_stack_1.global_120
  loc_C78D96: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C78D9B: AryUnlock
  loc_C78D9E: FFreeVar var_D0 = ""
  loc_C78DA5: LitNothing
  loc_C78DA7: FStAd var_100 
  loc_C78DAB: LitI4 1
  loc_C78DB0: FLdPr Me
  loc_C78DB3: MemLdStr global_92
  loc_C78DB6: Ary1LdPr
  loc_C78DB7: MemLdStr bGenerado
  loc_C78DBA: CR8Str
  loc_C78DBC: LitI2_Byte 3
  loc_C78DBE: CR8I2
  loc_C78DBF: EqR4
  loc_C78DC0: LitI4 1
  loc_C78DC5: FLdPr Me
  loc_C78DC8: MemLdStr global_92
  loc_C78DCB: Ary1LdPr
  loc_C78DCC: MemLdStr global_60
  loc_C78DCF: LitStr vbNullString
  loc_C78DD2: EqStr
  loc_C78DD4: AndI4
  loc_C78DD5: BranchF loc_C792DF
  loc_C78DD8: FLdPr Me
  loc_C78DDB: MemLdRfVar from_stack_1.global_88
  loc_C78DDE: NewIfNullAd
  loc_C78DE1: FStAd var_1B4 
  loc_C78DE5: LitStr "SELECT PeriCtct, BimeCtct, NumeCtct, MoviCtct, devadeta.PeriOrde, devadeta.CodiSede, DetaSede,"
  loc_C78DE8: LitStr " CantDede, PrunDede, SubtDede, DescDede, TotaDede"
  loc_C78DEB: ConcatStr
  loc_C78DEC: FStStrNoPop var_C0
  loc_C78DEF: LitStr " FROM devadeta"
  loc_C78DF2: ConcatStr
  loc_C78DF3: FStStrNoPop var_D4
  loc_C78DF6: LitStr " LEFT JOIN servdeva ON servdeva.PeriOrde = devadeta.PeriOrde AND servdeva.CodiSede = devadeta.CodiSede"
  loc_C78DF9: ConcatStr
  loc_C78DFA: FStStrNoPop var_D8
  loc_C78DFD: LitStr " WHERE devadeta.PeriBole = "
  loc_C78E00: ConcatStr
  loc_C78E01: CVarStr var_FC
  loc_C78E04: FLdRfVar var_D0
  loc_C78E07: FLdRfVar var_E8
  loc_C78E0A: LitVarStr var_A4, "PeriBole"
  loc_C78E0F: PopAdLdVar
  loc_C78E10: FLdRfVar var_E4
  loc_C78E13: FLdRfVar var_B8
  loc_C78E16: FLdPr Me
  loc_C78E19: MemLdRfVar from_stack_1.global_76
  loc_C78E1C: NewIfNullPr clsboleto
  loc_C78E1F: from_stack_1v = clsboleto.RsFrmGet()
  loc_C78E24: FLdPr var_B8
  loc_C78E27:  = Me.Fields
  loc_C78E2C: FLdPr var_E4
  loc_C78E2F: from_stack_2 = Me.Item(from_stack_1)
  loc_C78E34: FLdPr var_E8
  loc_C78E37:  = Me.Value
  loc_C78E3C: FLdRfVar var_D0
  loc_C78E3F: ConcatVar var_134
  loc_C78E43: LitVarStr var_B4, " AND devadeta.NumeBole = "
  loc_C78E48: ConcatVar var_144
  loc_C78E4C: FLdRfVar var_170
  loc_C78E4F: FLdRfVar var_160
  loc_C78E52: LitVarStr var_15C, "NumeBole"
  loc_C78E57: PopAdLdVar
  loc_C78E58: FLdRfVar var_14C
  loc_C78E5B: FLdRfVar var_148
  loc_C78E5E: FLdPr Me
  loc_C78E61: MemLdRfVar from_stack_1.global_76
  loc_C78E64: NewIfNullPr clsboleto
  loc_C78E67: from_stack_1v = clsboleto.RsFrmGet()
  loc_C78E6C: FLdPr var_148
  loc_C78E6F:  = Me.Fields
  loc_C78E74: FLdPr var_14C
  loc_C78E77: from_stack_2 = Me.Item(from_stack_1)
  loc_C78E7C: FLdPr var_160
  loc_C78E7F:  = Me.Value
  loc_C78E84: FLdRfVar var_170
  loc_C78E87: ConcatVar var_180
  loc_C78E8B: LitVarStr var_190, " ORDER BY PeriCtct, BimeCtct"
  loc_C78E90: ConcatVar var_1A0
  loc_C78E94: CStrVarVal var_DC
  loc_C78E98: FLdPr var_1B4
  loc_C78E9B: Call clsdevadeta.RedefineRS(from_stack_1v)
  loc_C78EA0: FFreeStr var_C0 = "": var_D4 = "": var_D8 = ""
  loc_C78EAB: FFreeAd var_B8 = "": var_E4 = "": var_E8 = "": var_148 = "": var_14C = ""
  loc_C78EBA: FFreeVar var_FC = "": var_D0 = "": var_134 = "": var_144 = "": var_170 = "": var_180 = ""
  loc_C78ECB: FLdRfVar var_E0
  loc_C78ECE: FLdPr var_1B4
  loc_C78ED1: from_stack_1 = clsdevadeta.RecordCount
  loc_C78ED6: ILdRf var_E0
  loc_C78ED9: LitI4 0
  loc_C78EDE: EqI4
  loc_C78EDF: BranchF loc_C78FA4
  loc_C78EE2: LitVarStr var_B4, "No se ha generado detalle para el boleto "
  loc_C78EE7: FLdRfVar var_D0
  loc_C78EEA: FLdRfVar var_E8
  loc_C78EED: LitVarStr var_A4, "PeriBolet"
  loc_C78EF2: PopAdLdVar
  loc_C78EF3: FLdRfVar var_E4
  loc_C78EF6: FLdRfVar var_B8
  loc_C78EF9: FLdPr Me
  loc_C78EFC: MemLdRfVar from_stack_1.global_76
  loc_C78EFF: NewIfNullPr clsboleto
  loc_C78F02: from_stack_1v = clsboleto.RsFrmGet()
  loc_C78F07: FLdPr var_B8
  loc_C78F0A:  = Me.Fields
  loc_C78F0F: FLdPr var_E4
  loc_C78F12: from_stack_2 = Me.Item(from_stack_1)
  loc_C78F17: FLdPr var_E8
  loc_C78F1A:  = Me.Value
  loc_C78F1F: FLdRfVar var_D0
  loc_C78F22: ConcatVar var_FC
  loc_C78F26: LitVarStr var_15C, "/"
  loc_C78F2B: ConcatVar var_134
  loc_C78F2F: FLdRfVar var_144
  loc_C78F32: FLdRfVar var_160
  loc_C78F35: LitVarStr var_190, "PeriBole"
  loc_C78F3A: PopAdLdVar
  loc_C78F3B: FLdRfVar var_14C
  loc_C78F3E: FLdRfVar var_148
  loc_C78F41: FLdPr Me
  loc_C78F44: MemLdRfVar from_stack_1.global_76
  loc_C78F47: NewIfNullPr clsboleto
  loc_C78F4A: from_stack_1v = clsboleto.RsFrmGet()
  loc_C78F4F: FLdPr var_148
  loc_C78F52:  = Me.Fields
  loc_C78F57: FLdPr var_14C
  loc_C78F5A: from_stack_2 = Me.Item(from_stack_1)
  loc_C78F5F: FLdPr var_160
  loc_C78F62:  = Me.Value
  loc_C78F67: FLdRfVar var_144
  loc_C78F6A: ConcatVar var_170
  loc_C78F6E: LitVarStr var_1C4, "."
  loc_C78F73: ConcatVar var_180
  loc_C78F77: CStrVarVal var_C0
  loc_C78F7B: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C78F80: FFree1Str var_C0
  loc_C78F83: FFreeAd var_B8 = "": var_E4 = "": var_E8 = "": var_148 = "": var_14C = ""
  loc_C78F92: FFreeVar var_D0 = "": var_FC = "": var_134 = "": var_144 = "": var_170 = ""
  loc_C78FA1: Branch loc_C794AD
  loc_C78FA4: FLdPr var_1B4
  loc_C78FA7: Call clsdevadeta.MoveFirst()
  loc_C78FAC: FLdRfVar var_E0
  loc_C78FAF: FLdPr var_1B4
  loc_C78FB2: from_stack_1 = clsdevadeta.RecordCount
  loc_C78FB7: LitI4 0
  loc_C78FBC: ILdRf var_E0
  loc_C78FBF: LitI4 1
  loc_C78FC4: FLdPr Me
  loc_C78FC7: MemLdStr global_92
  loc_C78FCA: Ary1LdPr
  loc_C78FCB: MemLdRfVar from_stack_1.global_128
  loc_C78FCE: Redim
  loc_C78FD8: LitI2_Byte 1
  loc_C78FDA: FLdPr Me
  loc_C78FDD: MemLdRfVar from_stack_1.global_100
  loc_C78FE0: LitI4 1
  loc_C78FE5: FLdPr Me
  loc_C78FE8: MemLdStr global_92
  loc_C78FEB: Ary1LdPr
  loc_C78FEC: MemLdStr global_128
  loc_C78FEF: LitI2_Byte 1
  loc_C78FF1: FnUBound
  loc_C78FF3: CI2I4
  loc_C78FF4: ForI2 var_1C8
  loc_C78FFA: FLdRfVar var_1A6
  loc_C78FFD: FLdPr var_1B4
  loc_C79000: from_stack_1 = clsdevadeta.PeriCtct
  loc_C79005: LitI2_Byte 0
  loc_C79007: LitVar_Missing var_D0
  loc_C7900A: LitI2_Byte 0
  loc_C7900C: FLdI2 var_1A6
  loc_C7900F: CVarI2 var_A4
  loc_C79012: PopAdLdVar
  loc_C79013: FLdPr Me
  loc_C79016: MemLdI2 global_100
  loc_C79019: CI4UI1
  loc_C7901A: LitI4 1
  loc_C7901F: FLdPr Me
  loc_C79022: MemLdStr global_92
  loc_C79025: AryLock
  loc_C79028: Ary1LdPr
  loc_C79029: MemLdStr global_128
  loc_C7902C: AryLock
  loc_C7902F: Ary1LdPr
  loc_C79030: MemLdRfVar from_stack_1.global_0
  loc_C79033: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C79038: AryUnlock
  loc_C7903B: AryUnlock
  loc_C7903E: FFree1Var var_D0 = ""
  loc_C79041: FLdRfVar var_1A6
  loc_C79044: FLdPr var_1B4
  loc_C79047: from_stack_1 = clsdevadeta.BimeCtct
  loc_C7904C: LitI2_Byte 0
  loc_C7904E: LitVar_Missing var_D0
  loc_C79051: LitI2_Byte 0
  loc_C79053: FLdI2 var_1A6
  loc_C79056: CVarI2 var_A4
  loc_C79059: PopAdLdVar
  loc_C7905A: FLdPr Me
  loc_C7905D: MemLdI2 global_100
  loc_C79060: CI4UI1
  loc_C79061: LitI4 1
  loc_C79066: FLdPr Me
  loc_C79069: MemLdStr global_92
  loc_C7906C: AryLock
  loc_C7906F: Ary1LdPr
  loc_C79070: MemLdStr global_128
  loc_C79073: AryLock
  loc_C79076: Ary1LdPr
  loc_C79077: MemLdRfVar from_stack_1.global_4
  loc_C7907A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C7907F: AryUnlock
  loc_C79082: AryUnlock
  loc_C79085: FFree1Var var_D0 = ""
  loc_C79088: FLdRfVar var_1A6
  loc_C7908B: FLdPr var_1B4
  loc_C7908E: from_stack_1 = clsdevadeta.CodiSede
  loc_C79093: LitI2_Byte 0
  loc_C79095: LitVar_Missing var_D0
  loc_C79098: LitI2_Byte 0
  loc_C7909A: FLdI2 var_1A6
  loc_C7909D: CVarI2 var_A4
  loc_C790A0: PopAdLdVar
  loc_C790A1: FLdPr Me
  loc_C790A4: MemLdI2 global_100
  loc_C790A7: CI4UI1
  loc_C790A8: LitI4 1
  loc_C790AD: FLdPr Me
  loc_C790B0: MemLdStr global_92
  loc_C790B3: AryLock
  loc_C790B6: Ary1LdPr
  loc_C790B7: MemLdStr global_128
  loc_C790BA: AryLock
  loc_C790BD: Ary1LdPr
  loc_C790BE: MemLdRfVar from_stack_1.global_16
  loc_C790C1: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C790C6: AryUnlock
  loc_C790C9: AryUnlock
  loc_C790CC: FFree1Var var_D0 = ""
  loc_C790CF: FLdRfVar var_C0
  loc_C790D2: FLdPr var_1B4
  loc_C790D5: from_stack_1 = clsdevadeta.DetaSede
  loc_C790DA: LitI2_Byte 0
  loc_C790DC: LitVar_Missing var_FC
  loc_C790DF: LitI2_Byte 0
  loc_C790E1: FLdZeroAd var_C0
  loc_C790E4: CVarStr var_D0
  loc_C790E7: PopAdLdVar
  loc_C790E8: FLdPr Me
  loc_C790EB: MemLdI2 global_100
  loc_C790EE: CI4UI1
  loc_C790EF: LitI4 1
  loc_C790F4: FLdPr Me
  loc_C790F7: MemLdStr global_92
  loc_C790FA: AryLock
  loc_C790FD: Ary1LdPr
  loc_C790FE: MemLdStr global_128
  loc_C79101: AryLock
  loc_C79104: Ary1LdPr
  loc_C79105: MemLdRfVar from_stack_1.global_20
  loc_C79108: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C7910D: AryUnlock
  loc_C79110: AryUnlock
  loc_C79113: FFreeVar var_D0 = ""
  loc_C7911A: FLdRfVar var_1B0
  loc_C7911D: FLdPr var_1B4
  loc_C79120: from_stack_1 = clsdevadeta.CantDede
  loc_C79125: LitI2_Byte 0
  loc_C79127: LitVar_Missing var_D0
  loc_C7912A: LitI2_Byte 0
  loc_C7912C: FLdFPR8 var_1B0
  loc_C7912F: CVarR8
  loc_C79133: PopAdLdVar
  loc_C79134: FLdPr Me
  loc_C79137: MemLdI2 global_100
  loc_C7913A: CI4UI1
  loc_C7913B: LitI4 1
  loc_C79140: FLdPr Me
  loc_C79143: MemLdStr global_92
  loc_C79146: AryLock
  loc_C79149: Ary1LdPr
  loc_C7914A: MemLdStr global_128
  loc_C7914D: AryLock
  loc_C79150: Ary1LdPr
  loc_C79151: MemLdRfVar from_stack_1.global_24
  loc_C79154: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C79159: AryUnlock
  loc_C7915C: AryUnlock
  loc_C7915F: FFree1Var var_D0 = ""
  loc_C79162: FLdRfVar var_1B0
  loc_C79165: FLdPr var_1B4
  loc_C79168: from_stack_1 = clsdevadeta.PrunDede
  loc_C7916D: LitI2_Byte 0
  loc_C7916F: LitVar_Missing var_D0
  loc_C79172: LitI2_Byte &HFF
  loc_C79174: FLdFPR8 var_1B0
  loc_C79177: CVarR8
  loc_C7917B: PopAdLdVar
  loc_C7917C: FLdPr Me
  loc_C7917F: MemLdI2 global_100
  loc_C79182: CI4UI1
  loc_C79183: LitI4 1
  loc_C79188: FLdPr Me
  loc_C7918B: MemLdStr global_92
  loc_C7918E: AryLock
  loc_C79191: Ary1LdPr
  loc_C79192: MemLdStr global_128
  loc_C79195: AryLock
  loc_C79198: Ary1LdPr
  loc_C79199: MemLdRfVar from_stack_1.global_28
  loc_C7919C: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C791A1: AryUnlock
  loc_C791A4: AryUnlock
  loc_C791A7: FFree1Var var_D0 = ""
  loc_C791AA: FLdRfVar var_1B0
  loc_C791AD: FLdPr var_1B4
  loc_C791B0: from_stack_1 = clsdevadeta.SubtDede
  loc_C791B5: LitI2_Byte 0
  loc_C791B7: LitI4 1
  loc_C791BC: FLdPr Me
  loc_C791BF: MemLdStr global_112
  loc_C791C2: AryLock
  loc_C791C5: Ary1LdPr
  loc_C791C6: MemLdRfVar from_stack_1.global_32
  loc_C791C9: CVarRef
  loc_C791CE: LitI2_Byte &HFF
  loc_C791D0: FLdFPR8 var_1B0
  loc_C791D3: CVarR8
  loc_C791D7: PopAdLdVar
  loc_C791D8: FLdPr Me
  loc_C791DB: MemLdI2 global_100
  loc_C791DE: CI4UI1
  loc_C791DF: LitI4 1
  loc_C791E4: FLdPr Me
  loc_C791E7: MemLdStr global_92
  loc_C791EA: AryLock
  loc_C791ED: Ary1LdPr
  loc_C791EE: MemLdStr global_128
  loc_C791F1: AryLock
  loc_C791F4: Ary1LdPr
  loc_C791F5: MemLdRfVar from_stack_1.global_32
  loc_C791F8: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C791FD: AryUnlock
  loc_C79200: AryUnlock
  loc_C79203: AryUnlock
  loc_C79206: FLdRfVar var_1B0
  loc_C79209: FLdPr var_1B4
  loc_C7920C: from_stack_1 = clsdevadeta.DescDede
  loc_C79211: LitI2_Byte 0
  loc_C79213: LitI4 1
  loc_C79218: FLdPr Me
  loc_C7921B: MemLdStr global_112
  loc_C7921E: AryLock
  loc_C79221: Ary1LdPr
  loc_C79222: MemLdRfVar from_stack_1.global_36
  loc_C79225: CVarRef
  loc_C7922A: LitI2_Byte &HFF
  loc_C7922C: FLdFPR8 var_1B0
  loc_C7922F: CVarR8
  loc_C79233: PopAdLdVar
  loc_C79234: FLdPr Me
  loc_C79237: MemLdI2 global_100
  loc_C7923A: CI4UI1
  loc_C7923B: LitI4 1
  loc_C79240: FLdPr Me
  loc_C79243: MemLdStr global_92
  loc_C79246: AryLock
  loc_C79249: Ary1LdPr
  loc_C7924A: MemLdStr global_128
  loc_C7924D: AryLock
  loc_C79250: Ary1LdPr
  loc_C79251: MemLdRfVar from_stack_1.global_36
  loc_C79254: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C79259: AryUnlock
  loc_C7925C: AryUnlock
  loc_C7925F: AryUnlock
  loc_C79262: FLdRfVar var_1B0
  loc_C79265: FLdPr var_1B4
  loc_C79268: from_stack_1 = clsdevadeta.TotaDede
  loc_C7926D: LitI2_Byte 0
  loc_C7926F: LitI4 1
  loc_C79274: FLdPr Me
  loc_C79277: MemLdStr global_112
  loc_C7927A: AryLock
  loc_C7927D: Ary1LdPr
  loc_C7927E: MemLdRfVar from_stack_1.global_40
  loc_C79281: CVarRef
  loc_C79286: LitI2_Byte &HFF
  loc_C79288: FLdFPR8 var_1B0
  loc_C7928B: CVarR8
  loc_C7928F: PopAdLdVar
  loc_C79290: FLdPr Me
  loc_C79293: MemLdI2 global_100
  loc_C79296: CI4UI1
  loc_C79297: LitI4 1
  loc_C7929C: FLdPr Me
  loc_C7929F: MemLdStr global_92
  loc_C792A2: AryLock
  loc_C792A5: Ary1LdPr
  loc_C792A6: MemLdStr global_128
  loc_C792A9: AryLock
  loc_C792AC: Ary1LdPr
  loc_C792AD: MemLdRfVar from_stack_1.global_40
  loc_C792B0: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C792B5: AryUnlock
  loc_C792B8: AryUnlock
  loc_C792BB: AryUnlock
  loc_C792BE: LitI2_Byte 1
  loc_C792C0: PopTmpLdAd2 var_1A6
  loc_C792C3: FLdPr var_1B4
  loc_C792C6: Call clsdevadeta.Move(from_stack_1v)
  loc_C792CB: FLdPr Me
  loc_C792CE: MemLdRfVar from_stack_1.global_100
  loc_C792D1: NextI2 var_1C8, loc_C78FFA
  loc_C792D6: LitNothing
  loc_C792D8: FStAd var_1B4 
  loc_C792DC: Branch loc_C794A5
  loc_C792DF: FLdPr Me
  loc_C792E2: MemLdRfVar from_stack_1.global_84
  loc_C792E5: NewIfNullAd
  loc_C792E8: FStAd var_1D4 
  loc_C792EC: LitStr "SELECT detabole.PeriCtct, BimeCtct, detabole.CodiFapa, detabole.CuotDefa, detabole.CodiConc, DetaConc,"
  loc_C792EF: LitStr " CapiDebo, RecaDebo, InteDebo, DecaDebo+DereDebo as DescDebo, TotaDebo"
  loc_C792F2: ConcatStr
  loc_C792F3: FStStrNoPop var_C0
  loc_C792F6: LitStr " FROM detabole LEFT JOIN concepto ON concepto.PeriInfo = detabole.PeriCtct AND concepto.CodiConc = detabole.CodiConc"
  loc_C792F9: ConcatStr
  loc_C792FA: FStStrNoPop var_D4
  loc_C792FD: LitStr " WHERE detabole.PeriBole = '"
  loc_C79300: ConcatStr
  loc_C79301: CVarStr var_FC
  loc_C79304: FLdRfVar var_D0
  loc_C79307: FLdRfVar var_E8
  loc_C7930A: LitVarStr var_A4, "PeriBole"
  loc_C7930F: PopAdLdVar
  loc_C79310: FLdRfVar var_E4
  loc_C79313: FLdRfVar var_B8
  loc_C79316: FLdPr Me
  loc_C79319: MemLdRfVar from_stack_1.global_76
  loc_C7931C: NewIfNullPr clsboleto
  loc_C7931F: from_stack_1v = clsboleto.RsFrmGet()
  loc_C79324: FLdPr var_B8
  loc_C79327:  = Me.Fields
  loc_C7932C: FLdPr var_E4
  loc_C7932F: from_stack_2 = Me.Item(from_stack_1)
  loc_C79334: FLdPr var_E8
  loc_C79337:  = Me.Value
  loc_C7933C: FLdRfVar var_D0
  loc_C7933F: ConcatVar var_134
  loc_C79343: LitVarStr var_B4, "' AND detabole.NumeBole = '"
  loc_C79348: ConcatVar var_144
  loc_C7934C: FLdRfVar var_170
  loc_C7934F: FLdRfVar var_160
  loc_C79352: LitVarStr var_15C, "NumeBole"
  loc_C79357: PopAdLdVar
  loc_C79358: FLdRfVar var_14C
  loc_C7935B: FLdRfVar var_148
  loc_C7935E: FLdPr Me
  loc_C79361: MemLdRfVar from_stack_1.global_76
  loc_C79364: NewIfNullPr clsboleto
  loc_C79367: from_stack_1v = clsboleto.RsFrmGet()
  loc_C7936C: FLdPr var_148
  loc_C7936F:  = Me.Fields
  loc_C79374: FLdPr var_14C
  loc_C79377: from_stack_2 = Me.Item(from_stack_1)
  loc_C7937C: FLdPr var_160
  loc_C7937F:  = Me.Value
  loc_C79384: FLdRfVar var_170
  loc_C79387: ConcatVar var_180
  loc_C7938B: LitVarStr var_190, "'"
  loc_C79390: ConcatVar var_1A0
  loc_C79394: LitVarStr var_1C4, " ORDER BY CodiConc, PeriCtct, BimeCtct, NumeCtct, MoviCtct, detabole.MoviDebo"
  loc_C79399: ConcatVar var_1E4
  loc_C7939D: CStrVarVal var_D8
  loc_C793A1: FLdPr var_1D4
  loc_C793A4: Call clsdetabole.RedefineRS(from_stack_1v)
  loc_C793A9: FFreeStr var_C0 = "": var_D4 = ""
  loc_C793B2: FFreeAd var_B8 = "": var_E4 = "": var_E8 = "": var_148 = "": var_14C = ""
  loc_C793C1: FFreeVar var_FC = "": var_D0 = "": var_134 = "": var_144 = "": var_170 = "": var_180 = "": var_1A0 = ""
  loc_C793D4: FLdRfVar var_E0
  loc_C793D7: FLdPr var_1D4
  loc_C793DA: from_stack_1 = clsdetabole.RecordCount
  loc_C793DF: ILdRf var_E0
  loc_C793E2: LitI4 0
  loc_C793E7: EqI4
  loc_C793E8: BranchF loc_C793F6
  loc_C793EB: LitStr "No se ha generado detalle para el boleto"
  loc_C793EE: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C793F3: Branch loc_C794AD
  loc_C793F6: FLdPr var_1D4
  loc_C793F9: Call clsdetabole.MoveFirst()
  loc_C793FE: LitI2_Byte 0
  loc_C79400: FLdPr Me
  loc_C79403: MemStI2 global_96
  loc_C79406: Call Proc_295_15_AB51BC()
  loc_C7940B: FLdRfVar var_1A6
  loc_C7940E: FLdPr var_1D4
  loc_C79411: from_stack_1 = clsdetabole.EOF
  loc_C79416: FLdI2 var_1A6
  loc_C79419: NotI4
  loc_C7941A: BranchF loc_C7949F
  loc_C7941D: FLdRfVar var_C0
  loc_C79420: FLdPr var_1D4
  loc_C79423: from_stack_1 = clsdetabole.CodiConc
  loc_C79428: ILdRf var_C0
  loc_C7942B: FLdPr Me
  loc_C7942E: MemLdI2 global_96
  loc_C79431: CI4UI1
  loc_C79432: LitI4 1
  loc_C79437: FLdPr Me
  loc_C7943A: MemLdStr global_92
  loc_C7943D: Ary1LdPr
  loc_C7943E: MemLdStr global_124
  loc_C79441: Ary1LdPr
  loc_C79442: MemLdStr global_0
  loc_C79445: NeStr
  loc_C79447: FFree1Str var_C0
  loc_C7944A: BranchF loc_C79455
  loc_C7944D: Call Proc_295_15_AB51BC()
  loc_C79452: Branch loc_C7949C
  loc_C79455: FLdRfVar var_E0
  loc_C79458: FLdPr var_1D4
  loc_C7945B: from_stack_1 = clsdetabole.PeriCtct
  loc_C79460: ILdRf var_E0
  loc_C79463: CR8I4
  loc_C79464: FLdPr Me
  loc_C79467: MemLdI2 global_98
  loc_C7946A: CI4UI1
  loc_C7946B: FLdPr Me
  loc_C7946E: MemLdI2 global_96
  loc_C79471: CI4UI1
  loc_C79472: LitI4 1
  loc_C79477: FLdPr Me
  loc_C7947A: MemLdStr global_92
  loc_C7947D: Ary1LdPr
  loc_C7947E: MemLdStr global_124
  loc_C79481: Ary1LdPr
  loc_C79482: MemLdStr global_8
  loc_C79485: Ary1LdPr
  loc_C79486: MemLdStr global_0
  loc_C79489: CR8Str
  loc_C7948B: NeR8
  loc_C7948C: BranchF loc_C79497
  loc_C7948F: Call Proc_295_16_A947D0()
  loc_C79494: Branch loc_C7949C
  loc_C79497: Call Proc_295_17_B17594()
  loc_C7949C: Branch loc_C7940B
  loc_C7949F: LitNothing
  loc_C794A1: FStAd var_1D4 
  loc_C794A5: LitI2_Byte &HFF
  loc_C794A7: FLdPr Me
  loc_C794AA: MemStI2 bGenerado
  loc_C794AD: LitI4 0
  loc_C794B2: CI2I4
  loc_C794B3: FLdPr Me
  loc_C794B6: Me.MousePointer = from_stack_1
  loc_C794BB: LitVarStr var_A4, vbNullString
  loc_C794C0: PopAdLdVar
  loc_C794C1: FLdPr Me
  loc_C794C4: VCallAd Control_ID_statusBar
  loc_C794C7: FStAdFunc var_B8
  loc_C794CA: FLdPr var_B8
  loc_C794CD: LateIdSt
  loc_C794D2: FFree1Ad var_B8
  loc_C794D5: ExitProcHresult
  loc_C794D6: MidStr var_6BF9
End Sub

Public Sub GeneraHTML() 'A808EC
  'Data Table: 46CC0C
  loc_A8085C: FLdRfVar var_88
  loc_A8085F: LitI2_Byte 0
  loc_A80861: LitI2_Byte &HFF
  loc_A80863: ImpAdLdI4 MemVar_D93C84
  loc_A80866: FLdPr Me
  loc_A80869: MemLdRfVar from_stack_1.global_56
  loc_A8086C: NewIfNullPr IFileSystem3
  loc_A8086F: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A80874: ILdRf var_88
  loc_A80877: FLdPr Me
  loc_A8087A: MemStVarAd
  loc_A8087E: FFree1Ad var_88
  loc_A80881: LitI2_Byte &HFF
  loc_A80883: ImpAdStI2 MemVar_D93C8A
  loc_A80886: Call Proc_295_18_C7BD6C()
  loc_A8088B: LitI4 1
  loc_A80890: FLdPr Me
  loc_A80893: MemLdStr global_92
  loc_A80896: Ary1LdPr
  loc_A80897: MemLdStr bGenerado
  loc_A8089A: CR8Str
  loc_A8089C: LitI2_Byte 3
  loc_A8089E: CR8I2
  loc_A8089F: EqR4
  loc_A808A0: LitI4 1
  loc_A808A5: FLdPr Me
  loc_A808A8: MemLdStr global_92
  loc_A808AB: Ary1LdPr
  loc_A808AC: MemLdStr global_60
  loc_A808AF: LitStr vbNullString
  loc_A808B2: EqStr
  loc_A808B4: AndI4
  loc_A808B5: BranchF loc_A808C5
  loc_A808B8: Call Proc_295_20_B32FBC()
  loc_A808BD: Call Proc_295_22_ABE398()
  loc_A808C2: Branch loc_A808CF
  loc_A808C5: Call Proc_295_19_BB7E9C()
  loc_A808CA: Call Proc_295_21_B47A98()
  loc_A808CF: Call Proc_295_23_9F670C()
  loc_A808D4: FLdPr Me
  loc_A808D7: MemLdRfVar from_stack_1.global_60
  loc_A808DA: LdPrVar
  loc_A808DC: LateMemCall
  loc_A808E2: LitStr vbNullString
  loc_A808E5: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_A808EA: ExitProcHresult
End Sub

Private Function Proc_295_15_AB51BC() 'AB51BC
  'Data Table: 46CC0C
  loc_AB50D8: FLdPr Me
  loc_AB50DB: MemLdI2 global_96
  loc_AB50DE: LitI2_Byte 1
  loc_AB50E0: AddI2
  loc_AB50E1: FLdPr Me
  loc_AB50E4: MemStI2 global_96
  loc_AB50E7: LitI2_Byte 0
  loc_AB50E9: FLdPr Me
  loc_AB50EC: MemStI2 global_98
  loc_AB50EF: LitI4 0
  loc_AB50F4: FLdPr Me
  loc_AB50F7: MemLdI2 global_96
  loc_AB50FA: CI4UI1
  loc_AB50FB: LitI4 1
  loc_AB5100: FLdPr Me
  loc_AB5103: MemLdStr global_92
  loc_AB5106: Ary1LdPr
  loc_AB5107: MemLdRfVar from_stack_1.global_124
  loc_AB510A: RedimPreserve
  loc_AB5114: FLdRfVar var_88
  loc_AB5117: FLdPr Me
  loc_AB511A: MemLdRfVar from_stack_1.global_84
  loc_AB511D: NewIfNullPr clsdetabole
  loc_AB5120: from_stack_1 = clsdetabole.CodiConc
  loc_AB5125: LitI2_Byte 0
  loc_AB5127: LitVar_Missing var_C0
  loc_AB512A: LitI2_Byte 0
  loc_AB512C: FLdZeroAd var_88
  loc_AB512F: CVarStr var_A0
  loc_AB5132: PopAdLdVar
  loc_AB5133: FLdPr Me
  loc_AB5136: MemLdI2 global_96
  loc_AB5139: CI4UI1
  loc_AB513A: LitI4 1
  loc_AB513F: FLdPr Me
  loc_AB5142: MemLdStr global_92
  loc_AB5145: AryLock
  loc_AB5148: Ary1LdPr
  loc_AB5149: MemLdStr global_124
  loc_AB514C: AryLock
  loc_AB514F: Ary1LdPr
  loc_AB5150: MemLdRfVar from_stack_1.global_0
  loc_AB5153: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_AB5158: AryUnlock
  loc_AB515B: AryUnlock
  loc_AB515E: FFreeVar var_A0 = ""
  loc_AB5165: FLdRfVar var_A0
  loc_AB5168: FLdPr Me
  loc_AB516B: MemLdRfVar from_stack_1.global_84
  loc_AB516E: NewIfNullPr clsdetabole
  loc_AB5171: from_stack_1 = clsdetabole.DetaConc
  loc_AB5176: LitI2_Byte 0
  loc_AB5178: LitVar_Missing var_C0
  loc_AB517B: LitI2_Byte 0
  loc_AB517D: FLdVar var_A0
  loc_AB5181: FLdPr Me
  loc_AB5184: MemLdI2 global_96
  loc_AB5187: CI4UI1
  loc_AB5188: LitI4 1
  loc_AB518D: FLdPr Me
  loc_AB5190: MemLdStr global_92
  loc_AB5193: AryLock
  loc_AB5196: Ary1LdPr
  loc_AB5197: MemLdStr global_124
  loc_AB519A: AryLock
  loc_AB519D: Ary1LdPr
  loc_AB519E: MemLdRfVar from_stack_1.global_4
  loc_AB51A1: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_AB51A6: AryUnlock
  loc_AB51A9: AryUnlock
  loc_AB51AC: FFreeVar var_A0 = ""
  loc_AB51B3: Call Proc_295_16_A947D0()
  loc_AB51B8: ExitProcHresult
End Function

Private Function Proc_295_16_A947D0() 'A947D0
  'Data Table: 46CC0C
  loc_A94724: FLdPr Me
  loc_A94727: MemLdI2 global_98
  loc_A9472A: LitI2_Byte 1
  loc_A9472C: AddI2
  loc_A9472D: FLdPr Me
  loc_A94730: MemStI2 global_98
  loc_A94733: LitI2_Byte 0
  loc_A94735: FLdPr Me
  loc_A94738: MemStI2 global_100
  loc_A9473B: LitI4 0
  loc_A94740: FLdPr Me
  loc_A94743: MemLdI2 global_98
  loc_A94746: CI4UI1
  loc_A94747: FLdPr Me
  loc_A9474A: MemLdI2 global_96
  loc_A9474D: CI4UI1
  loc_A9474E: LitI4 1
  loc_A94753: FLdPr Me
  loc_A94756: MemLdStr global_92
  loc_A94759: Ary1LdPr
  loc_A9475A: MemLdStr global_124
  loc_A9475D: Ary1LdPr
  loc_A9475E: MemLdRfVar from_stack_1.global_8
  loc_A94761: RedimPreserve
  loc_A9476B: FLdRfVar var_88
  loc_A9476E: FLdPr Me
  loc_A94771: MemLdRfVar from_stack_1.global_84
  loc_A94774: NewIfNullPr clsdetabole
  loc_A94777: from_stack_1 = clsdetabole.PeriCtct
  loc_A9477C: LitI2_Byte 0
  loc_A9477E: LitVar_Missing var_C4
  loc_A94781: LitI2_Byte 0
  loc_A94783: ILdRf var_88
  loc_A94786: CVarI4
  loc_A9478A: PopAdLdVar
  loc_A9478B: FLdPr Me
  loc_A9478E: MemLdI2 global_98
  loc_A94791: CI4UI1
  loc_A94792: FLdPr Me
  loc_A94795: MemLdI2 global_96
  loc_A94798: CI4UI1
  loc_A94799: LitI4 1
  loc_A9479E: FLdPr Me
  loc_A947A1: MemLdStr global_92
  loc_A947A4: AryLock
  loc_A947A7: Ary1LdPr
  loc_A947A8: MemLdStr global_124
  loc_A947AB: AryLock
  loc_A947AE: Ary1LdPr
  loc_A947AF: MemLdStr global_8
  loc_A947B2: AryLock
  loc_A947B5: Ary1LdPr
  loc_A947B6: MemLdRfVar from_stack_1.global_0
  loc_A947B9: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_A947BE: AryUnlock
  loc_A947C1: AryUnlock
  loc_A947C4: AryUnlock
  loc_A947C7: FFree1Var var_C4 = ""
  loc_A947CA: Call Proc_295_17_B17594()
  loc_A947CF: ExitProcHresult
End Function

Private Function Proc_295_17_B17594() 'B17594
  'Data Table: 46CC0C
  loc_B1731C: FLdPr Me
  loc_B1731F: MemLdI2 global_100
  loc_B17322: LitI2_Byte 1
  loc_B17324: AddI2
  loc_B17325: FLdPr Me
  loc_B17328: MemStI2 global_100
  loc_B1732B: LitI4 0
  loc_B17330: FLdPr Me
  loc_B17333: MemLdI2 global_100
  loc_B17336: CI4UI1
  loc_B17337: FLdPr Me
  loc_B1733A: MemLdI2 global_98
  loc_B1733D: CI4UI1
  loc_B1733E: FLdPr Me
  loc_B17341: MemLdI2 global_96
  loc_B17344: CI4UI1
  loc_B17345: LitI4 1
  loc_B1734A: FLdPr Me
  loc_B1734D: MemLdStr global_92
  loc_B17350: Ary1LdPr
  loc_B17351: MemLdStr global_124
  loc_B17354: Ary1LdPr
  loc_B17355: MemLdStr global_8
  loc_B17358: Ary1LdPr
  loc_B17359: MemLdRfVar from_stack_1.global_4
  loc_B1735C: RedimPreserve
  loc_B17366: FLdPr Me
  loc_B17369: MemLdI2 global_100
  loc_B1736C: CI4UI1
  loc_B1736D: FLdPr Me
  loc_B17370: MemLdI2 global_98
  loc_B17373: CI4UI1
  loc_B17374: FLdPr Me
  loc_B17377: MemLdI2 global_96
  loc_B1737A: CI4UI1
  loc_B1737B: LitI4 1
  loc_B17380: FLdPr Me
  loc_B17383: MemLdStr global_92
  loc_B17386: AryLock
  loc_B17389: Ary1LdPr
  loc_B1738A: MemLdStr global_124
  loc_B1738D: AryLock
  loc_B17390: Ary1LdPr
  loc_B17391: MemLdStr global_8
  loc_B17394: AryLock
  loc_B17397: Ary1LdPr
  loc_B17398: MemLdStr global_4
  loc_B1739B: AryLock
  loc_B1739E: Ary1LdRf
  loc_B1739F: FStR4 var_98
  loc_B173A2: FLdRfVar var_9A
  loc_B173A5: FLdPr Me
  loc_B173A8: MemLdRfVar from_stack_1.global_84
  loc_B173AB: NewIfNullPr clsdetabole
  loc_B173AE: from_stack_1 = clsdetabole.BimeCtct
  loc_B173B3: LitI2_Byte 0
  loc_B173B5: LitVar_Missing var_CC
  loc_B173B8: LitI2_Byte 0
  loc_B173BA: FLdI2 var_9A
  loc_B173BD: CVarI2 var_AC
  loc_B173C0: PopAdLdVar
  loc_B173C1: FMemLdRf 0
  loc_B173C6: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B173CB: FFree1Var var_CC = ""
  loc_B173CE: FLdRfVar var_D0
  loc_B173D1: FLdPr Me
  loc_B173D4: MemLdRfVar from_stack_1.global_84
  loc_B173D7: NewIfNullPr clsdetabole
  loc_B173DA: from_stack_1 = clsdetabole.CodiFapa
  loc_B173DF: LitI2_Byte 0
  loc_B173E1: LitVar_Missing var_CC
  loc_B173E4: LitI2_Byte 0
  loc_B173E6: ILdRf var_D0
  loc_B173E9: CVarI4
  loc_B173ED: PopAdLdVar
  loc_B173EE: FMemLdRf 0
  loc_B173F3: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B173F8: FFree1Var var_CC = ""
  loc_B173FB: FLdRfVar var_9A
  loc_B173FE: FLdPr Me
  loc_B17401: MemLdRfVar from_stack_1.global_84
  loc_B17404: NewIfNullPr clsdetabole
  loc_B17407: from_stack_1 = clsdetabole.CuotDefa
  loc_B1740C: LitI2_Byte 0
  loc_B1740E: LitVar_Missing var_CC
  loc_B17411: LitI2_Byte 0
  loc_B17413: FLdI2 var_9A
  loc_B17416: CVarI2 var_AC
  loc_B17419: PopAdLdVar
  loc_B1741A: FMemLdRf 0
  loc_B1741F: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B17424: FFree1Var var_CC = ""
  loc_B17427: FLdRfVar var_D8
  loc_B1742A: FLdPr Me
  loc_B1742D: MemLdRfVar from_stack_1.global_84
  loc_B17430: NewIfNullPr clsdetabole
  loc_B17433: from_stack_1 = clsdetabole.CapiDebo
  loc_B17438: LitI2_Byte 0
  loc_B1743A: LitI4 1
  loc_B1743F: FLdPr Me
  loc_B17442: MemLdStr global_108
  loc_B17445: AryLock
  loc_B17448: Ary1LdPr
  loc_B17449: MemLdRfVar from_stack_1.global_12
  loc_B1744C: CVarRef
  loc_B17451: LitI2_Byte &HFF
  loc_B17453: FLdFPR8 var_D8
  loc_B17456: CVarR8
  loc_B1745A: PopAdLdVar
  loc_B1745B: FMemLdRf 0
  loc_B17460: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B17465: AryUnlock
  loc_B17468: FLdRfVar var_D8
  loc_B1746B: FLdPr Me
  loc_B1746E: MemLdRfVar from_stack_1.global_84
  loc_B17471: NewIfNullPr clsdetabole
  loc_B17474: from_stack_1 = clsdetabole.RecaDebo
  loc_B17479: LitI2_Byte 0
  loc_B1747B: LitI4 1
  loc_B17480: FLdPr Me
  loc_B17483: MemLdStr global_108
  loc_B17486: AryLock
  loc_B17489: Ary1LdPr
  loc_B1748A: MemLdRfVar from_stack_1.global_16
  loc_B1748D: CVarRef
  loc_B17492: LitI2_Byte &HFF
  loc_B17494: FLdFPR8 var_D8
  loc_B17497: CVarR8
  loc_B1749B: PopAdLdVar
  loc_B1749C: FMemLdRf 0
  loc_B174A1: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B174A6: AryUnlock
  loc_B174A9: FLdRfVar var_D8
  loc_B174AC: FLdPr Me
  loc_B174AF: MemLdRfVar from_stack_1.global_84
  loc_B174B2: NewIfNullPr clsdetabole
  loc_B174B5: from_stack_1 = clsdetabole.InteDebo
  loc_B174BA: LitI2_Byte 0
  loc_B174BC: LitI4 1
  loc_B174C1: FLdPr Me
  loc_B174C4: MemLdStr global_108
  loc_B174C7: AryLock
  loc_B174CA: Ary1LdPr
  loc_B174CB: MemLdRfVar from_stack_1.global_20
  loc_B174CE: CVarRef
  loc_B174D3: LitI2_Byte &HFF
  loc_B174D5: FLdFPR8 var_D8
  loc_B174D8: CVarR8
  loc_B174DC: PopAdLdVar
  loc_B174DD: FMemLdRf 0
  loc_B174E2: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B174E7: AryUnlock
  loc_B174EA: FLdRfVar var_D8
  loc_B174ED: FLdPr Me
  loc_B174F0: MemLdRfVar from_stack_1.global_84
  loc_B174F3: NewIfNullPr clsdetabole
  loc_B174F6: from_stack_1 = clsdetabole.DescDebo
  loc_B174FB: LitI2_Byte 0
  loc_B174FD: LitI4 1
  loc_B17502: FLdPr Me
  loc_B17505: MemLdStr global_108
  loc_B17508: AryLock
  loc_B1750B: Ary1LdPr
  loc_B1750C: MemLdRfVar from_stack_1.global_24
  loc_B1750F: CVarRef
  loc_B17514: LitI2_Byte &HFF
  loc_B17516: FLdFPR8 var_D8
  loc_B17519: CVarR8
  loc_B1751D: PopAdLdVar
  loc_B1751E: FMemLdRf 0
  loc_B17523: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B17528: AryUnlock
  loc_B1752B: FLdRfVar var_D8
  loc_B1752E: FLdPr Me
  loc_B17531: MemLdRfVar from_stack_1.global_84
  loc_B17534: NewIfNullPr clsdetabole
  loc_B17537: from_stack_1 = clsdetabole.TotaDebo
  loc_B1753C: LitI2_Byte 0
  loc_B1753E: LitI4 1
  loc_B17543: FLdPr Me
  loc_B17546: MemLdStr global_108
  loc_B17549: AryLock
  loc_B1754C: Ary1LdPr
  loc_B1754D: MemLdRfVar from_stack_1.global_28
  loc_B17550: CVarRef
  loc_B17555: LitI2_Byte &HFF
  loc_B17557: FLdFPR8 var_D8
  loc_B1755A: CVarR8
  loc_B1755E: PopAdLdVar
  loc_B1755F: FMemLdRf 0
  loc_B17564: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B17569: AryUnlock
  loc_B1756C: LitI4 0
  loc_B17571: FStR4 var_98
  loc_B17574: AryUnlock
  loc_B17577: AryUnlock
  loc_B1757A: AryUnlock
  loc_B1757D: AryUnlock
  loc_B17580: LitI2_Byte 1
  loc_B17582: PopTmpLdAd2 var_9A
  loc_B17585: FLdPr Me
  loc_B17588: MemLdRfVar from_stack_1.global_84
  loc_B1758B: NewIfNullPr clsdetabole
  loc_B1758E: Call clsdetabole.Move(from_stack_1v)
  loc_B17593: ExitProcHresult
End Function

Private Function Proc_295_18_C7BD6C() 'C7BD6C
  'Data Table: 46CC0C
  loc_C7A9A8: LitVarStr var_94, "<!DOCTYPE html PUBLIC ""-//W3C//DTD XHTML 1.0 Transitional//EN"" ""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"">"
  loc_C7A9AD: PopAdLdVar
  loc_C7A9AE: FLdPr Me
  loc_C7A9B1: MemLdRfVar from_stack_1.global_60
  loc_C7A9B4: LdPrVar
  loc_C7A9B6: LateMemCall
  loc_C7A9BC: LitVarStr var_94, "<html xmlns=""http://www.w3.org/1999/xhtml"">"
  loc_C7A9C1: PopAdLdVar
  loc_C7A9C2: FLdPr Me
  loc_C7A9C5: MemLdRfVar from_stack_1.global_60
  loc_C7A9C8: LdPrVar
  loc_C7A9CA: LateMemCall
  loc_C7A9D0: LitVarStr var_94, "<head>"
  loc_C7A9D5: PopAdLdVar
  loc_C7A9D6: FLdPr Me
  loc_C7A9D9: MemLdRfVar from_stack_1.global_60
  loc_C7A9DC: LdPrVar
  loc_C7A9DE: LateMemCall
  loc_C7A9E4: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_C7A9E9: PopAdLdVar
  loc_C7A9EA: FLdPr Me
  loc_C7A9ED: MemLdRfVar from_stack_1.global_60
  loc_C7A9F0: LdPrVar
  loc_C7A9F2: LateMemCall
  loc_C7A9F8: LitStr "<title>"
  loc_C7A9FB: FLdRfVar var_A8
  loc_C7A9FE: FLdPr Me
  loc_C7AA01:  = Me.Caption
  loc_C7AA06: ILdRf var_A8
  loc_C7AA09: ConcatStr
  loc_C7AA0A: FStStrNoPop var_AC
  loc_C7AA0D: LitStr "</title>"
  loc_C7AA10: ConcatStr
  loc_C7AA11: CVarStr var_BC
  loc_C7AA14: PopAdLdVar
  loc_C7AA15: FLdPr Me
  loc_C7AA18: MemLdRfVar from_stack_1.global_60
  loc_C7AA1B: LdPrVar
  loc_C7AA1D: LateMemCall
  loc_C7AA23: FFreeStr var_A8 = ""
  loc_C7AA2A: FFree1Var var_BC = ""
  loc_C7AA2D: LitVarStr var_94, "<style type=""text/css"">"
  loc_C7AA32: PopAdLdVar
  loc_C7AA33: FLdPr Me
  loc_C7AA36: MemLdRfVar from_stack_1.global_60
  loc_C7AA39: LdPrVar
  loc_C7AA3B: LateMemCall
  loc_C7AA41: LitVarStr var_94, ".Titulo1 {"
  loc_C7AA46: PopAdLdVar
  loc_C7AA47: FLdPr Me
  loc_C7AA4A: MemLdRfVar from_stack_1.global_60
  loc_C7AA4D: LdPrVar
  loc_C7AA4F: LateMemCall
  loc_C7AA55: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C7AA5A: PopAdLdVar
  loc_C7AA5B: FLdPr Me
  loc_C7AA5E: MemLdRfVar from_stack_1.global_60
  loc_C7AA61: LdPrVar
  loc_C7AA63: LateMemCall
  loc_C7AA69: LitVarStr var_94, " font-size: 18px;"
  loc_C7AA6E: PopAdLdVar
  loc_C7AA6F: FLdPr Me
  loc_C7AA72: MemLdRfVar from_stack_1.global_60
  loc_C7AA75: LdPrVar
  loc_C7AA77: LateMemCall
  loc_C7AA7D: LitVarStr var_94, " font-weight: bold;"
  loc_C7AA82: PopAdLdVar
  loc_C7AA83: FLdPr Me
  loc_C7AA86: MemLdRfVar from_stack_1.global_60
  loc_C7AA89: LdPrVar
  loc_C7AA8B: LateMemCall
  loc_C7AA91: LitVarStr var_94, "}"
  loc_C7AA96: PopAdLdVar
  loc_C7AA97: FLdPr Me
  loc_C7AA9A: MemLdRfVar from_stack_1.global_60
  loc_C7AA9D: LdPrVar
  loc_C7AA9F: LateMemCall
  loc_C7AAA5: LitVarStr var_94, ".Titulo2 {"
  loc_C7AAAA: PopAdLdVar
  loc_C7AAAB: FLdPr Me
  loc_C7AAAE: MemLdRfVar from_stack_1.global_60
  loc_C7AAB1: LdPrVar
  loc_C7AAB3: LateMemCall
  loc_C7AAB9: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C7AABE: PopAdLdVar
  loc_C7AABF: FLdPr Me
  loc_C7AAC2: MemLdRfVar from_stack_1.global_60
  loc_C7AAC5: LdPrVar
  loc_C7AAC7: LateMemCall
  loc_C7AACD: LitVarStr var_94, " font-size: 14px;"
  loc_C7AAD2: PopAdLdVar
  loc_C7AAD3: FLdPr Me
  loc_C7AAD6: MemLdRfVar from_stack_1.global_60
  loc_C7AAD9: LdPrVar
  loc_C7AADB: LateMemCall
  loc_C7AAE1: LitVarStr var_94, " font-weight: bold;"
  loc_C7AAE6: PopAdLdVar
  loc_C7AAE7: FLdPr Me
  loc_C7AAEA: MemLdRfVar from_stack_1.global_60
  loc_C7AAED: LdPrVar
  loc_C7AAEF: LateMemCall
  loc_C7AAF5: LitVarStr var_94, "}"
  loc_C7AAFA: PopAdLdVar
  loc_C7AAFB: FLdPr Me
  loc_C7AAFE: MemLdRfVar from_stack_1.global_60
  loc_C7AB01: LdPrVar
  loc_C7AB03: LateMemCall
  loc_C7AB09: LitVarStr var_94, ".Normal {"
  loc_C7AB0E: PopAdLdVar
  loc_C7AB0F: FLdPr Me
  loc_C7AB12: MemLdRfVar from_stack_1.global_60
  loc_C7AB15: LdPrVar
  loc_C7AB17: LateMemCall
  loc_C7AB1D: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C7AB22: PopAdLdVar
  loc_C7AB23: FLdPr Me
  loc_C7AB26: MemLdRfVar from_stack_1.global_60
  loc_C7AB29: LdPrVar
  loc_C7AB2B: LateMemCall
  loc_C7AB31: LitVarStr var_94, " font-size: 11px;"
  loc_C7AB36: PopAdLdVar
  loc_C7AB37: FLdPr Me
  loc_C7AB3A: MemLdRfVar from_stack_1.global_60
  loc_C7AB3D: LdPrVar
  loc_C7AB3F: LateMemCall
  loc_C7AB45: LitVarStr var_94, " vertical-align: top;"
  loc_C7AB4A: PopAdLdVar
  loc_C7AB4B: FLdPr Me
  loc_C7AB4E: MemLdRfVar from_stack_1.global_60
  loc_C7AB51: LdPrVar
  loc_C7AB53: LateMemCall
  loc_C7AB59: LitVarStr var_94, "}"
  loc_C7AB5E: PopAdLdVar
  loc_C7AB5F: FLdPr Me
  loc_C7AB62: MemLdRfVar from_stack_1.global_60
  loc_C7AB65: LdPrVar
  loc_C7AB67: LateMemCall
  loc_C7AB6D: LitVarStr var_94, ".Encabezado {"
  loc_C7AB72: PopAdLdVar
  loc_C7AB73: FLdPr Me
  loc_C7AB76: MemLdRfVar from_stack_1.global_60
  loc_C7AB79: LdPrVar
  loc_C7AB7B: LateMemCall
  loc_C7AB81: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_C7AB86: PopAdLdVar
  loc_C7AB87: FLdPr Me
  loc_C7AB8A: MemLdRfVar from_stack_1.global_60
  loc_C7AB8D: LdPrVar
  loc_C7AB8F: LateMemCall
  loc_C7AB95: LitVarStr var_94, " font-size: 11px;"
  loc_C7AB9A: PopAdLdVar
  loc_C7AB9B: FLdPr Me
  loc_C7AB9E: MemLdRfVar from_stack_1.global_60
  loc_C7ABA1: LdPrVar
  loc_C7ABA3: LateMemCall
  loc_C7ABA9: LitVarStr var_94, " font-weight: bold;"
  loc_C7ABAE: PopAdLdVar
  loc_C7ABAF: FLdPr Me
  loc_C7ABB2: MemLdRfVar from_stack_1.global_60
  loc_C7ABB5: LdPrVar
  loc_C7ABB7: LateMemCall
  loc_C7ABBD: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_C7ABC2: PopAdLdVar
  loc_C7ABC3: FLdPr Me
  loc_C7ABC6: MemLdRfVar from_stack_1.global_60
  loc_C7ABC9: LdPrVar
  loc_C7ABCB: LateMemCall
  loc_C7ABD1: LitVarStr var_94, "}"
  loc_C7ABD6: PopAdLdVar
  loc_C7ABD7: FLdPr Me
  loc_C7ABDA: MemLdRfVar from_stack_1.global_60
  loc_C7ABDD: LdPrVar
  loc_C7ABDF: LateMemCall
  loc_C7ABE5: LitVarStr var_94, ".LineaDato {"
  loc_C7ABEA: PopAdLdVar
  loc_C7ABEB: FLdPr Me
  loc_C7ABEE: MemLdRfVar from_stack_1.global_60
  loc_C7ABF1: LdPrVar
  loc_C7ABF3: LateMemCall
  loc_C7ABF9: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C7ABFE: PopAdLdVar
  loc_C7ABFF: FLdPr Me
  loc_C7AC02: MemLdRfVar from_stack_1.global_60
  loc_C7AC05: LdPrVar
  loc_C7AC07: LateMemCall
  loc_C7AC0D: LitVarStr var_94, " font-size: 10px;"
  loc_C7AC12: PopAdLdVar
  loc_C7AC13: FLdPr Me
  loc_C7AC16: MemLdRfVar from_stack_1.global_60
  loc_C7AC19: LdPrVar
  loc_C7AC1B: LateMemCall
  loc_C7AC21: LitVarStr var_94, "}"
  loc_C7AC26: PopAdLdVar
  loc_C7AC27: FLdPr Me
  loc_C7AC2A: MemLdRfVar from_stack_1.global_60
  loc_C7AC2D: LdPrVar
  loc_C7AC2F: LateMemCall
  loc_C7AC35: LitVarStr var_94, ".Totales {"
  loc_C7AC3A: PopAdLdVar
  loc_C7AC3B: FLdPr Me
  loc_C7AC3E: MemLdRfVar from_stack_1.global_60
  loc_C7AC41: LdPrVar
  loc_C7AC43: LateMemCall
  loc_C7AC49: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C7AC4E: PopAdLdVar
  loc_C7AC4F: FLdPr Me
  loc_C7AC52: MemLdRfVar from_stack_1.global_60
  loc_C7AC55: LdPrVar
  loc_C7AC57: LateMemCall
  loc_C7AC5D: LitVarStr var_94, " font-size: 12px;"
  loc_C7AC62: PopAdLdVar
  loc_C7AC63: FLdPr Me
  loc_C7AC66: MemLdRfVar from_stack_1.global_60
  loc_C7AC69: LdPrVar
  loc_C7AC6B: LateMemCall
  loc_C7AC71: LitVarStr var_94, " font-weight: bold;"
  loc_C7AC76: PopAdLdVar
  loc_C7AC77: FLdPr Me
  loc_C7AC7A: MemLdRfVar from_stack_1.global_60
  loc_C7AC7D: LdPrVar
  loc_C7AC7F: LateMemCall
  loc_C7AC85: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_C7AC8A: PopAdLdVar
  loc_C7AC8B: FLdPr Me
  loc_C7AC8E: MemLdRfVar from_stack_1.global_60
  loc_C7AC91: LdPrVar
  loc_C7AC93: LateMemCall
  loc_C7AC99: LitVarStr var_94, "}"
  loc_C7AC9E: PopAdLdVar
  loc_C7AC9F: FLdPr Me
  loc_C7ACA2: MemLdRfVar from_stack_1.global_60
  loc_C7ACA5: LdPrVar
  loc_C7ACA7: LateMemCall
  loc_C7ACAD: LitVarStr var_94, ".Total {"
  loc_C7ACB2: PopAdLdVar
  loc_C7ACB3: FLdPr Me
  loc_C7ACB6: MemLdRfVar from_stack_1.global_60
  loc_C7ACB9: LdPrVar
  loc_C7ACBB: LateMemCall
  loc_C7ACC1: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C7ACC6: PopAdLdVar
  loc_C7ACC7: FLdPr Me
  loc_C7ACCA: MemLdRfVar from_stack_1.global_60
  loc_C7ACCD: LdPrVar
  loc_C7ACCF: LateMemCall
  loc_C7ACD5: LitVarStr var_94, " font-size: 12px;"
  loc_C7ACDA: PopAdLdVar
  loc_C7ACDB: FLdPr Me
  loc_C7ACDE: MemLdRfVar from_stack_1.global_60
  loc_C7ACE1: LdPrVar
  loc_C7ACE3: LateMemCall
  loc_C7ACE9: LitVarStr var_94, " font-weight: bold;"
  loc_C7ACEE: PopAdLdVar
  loc_C7ACEF: FLdPr Me
  loc_C7ACF2: MemLdRfVar from_stack_1.global_60
  loc_C7ACF5: LdPrVar
  loc_C7ACF7: LateMemCall
  loc_C7ACFD: LitVarStr var_94, " background-color: #EBEBEB;"
  loc_C7AD02: PopAdLdVar
  loc_C7AD03: FLdPr Me
  loc_C7AD06: MemLdRfVar from_stack_1.global_60
  loc_C7AD09: LdPrVar
  loc_C7AD0B: LateMemCall
  loc_C7AD11: LitVarStr var_94, "}"
  loc_C7AD16: PopAdLdVar
  loc_C7AD17: FLdPr Me
  loc_C7AD1A: MemLdRfVar from_stack_1.global_60
  loc_C7AD1D: LdPrVar
  loc_C7AD1F: LateMemCall
  loc_C7AD25: LitVarStr var_94, ".TotalGeneral {"
  loc_C7AD2A: PopAdLdVar
  loc_C7AD2B: FLdPr Me
  loc_C7AD2E: MemLdRfVar from_stack_1.global_60
  loc_C7AD31: LdPrVar
  loc_C7AD33: LateMemCall
  loc_C7AD39: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C7AD3E: PopAdLdVar
  loc_C7AD3F: FLdPr Me
  loc_C7AD42: MemLdRfVar from_stack_1.global_60
  loc_C7AD45: LdPrVar
  loc_C7AD47: LateMemCall
  loc_C7AD4D: LitVarStr var_94, " font-size: 14px;"
  loc_C7AD52: PopAdLdVar
  loc_C7AD53: FLdPr Me
  loc_C7AD56: MemLdRfVar from_stack_1.global_60
  loc_C7AD59: LdPrVar
  loc_C7AD5B: LateMemCall
  loc_C7AD61: LitVarStr var_94, " vertical-align: top;"
  loc_C7AD66: PopAdLdVar
  loc_C7AD67: FLdPr Me
  loc_C7AD6A: MemLdRfVar from_stack_1.global_60
  loc_C7AD6D: LdPrVar
  loc_C7AD6F: LateMemCall
  loc_C7AD75: LitVarStr var_94, " background-color: #EBEBEB;"
  loc_C7AD7A: PopAdLdVar
  loc_C7AD7B: FLdPr Me
  loc_C7AD7E: MemLdRfVar from_stack_1.global_60
  loc_C7AD81: LdPrVar
  loc_C7AD83: LateMemCall
  loc_C7AD89: LitVarStr var_94, " font-weight: bold;"
  loc_C7AD8E: PopAdLdVar
  loc_C7AD8F: FLdPr Me
  loc_C7AD92: MemLdRfVar from_stack_1.global_60
  loc_C7AD95: LdPrVar
  loc_C7AD97: LateMemCall
  loc_C7AD9D: LitVarStr var_94, " border: 1px solid #000000;"
  loc_C7ADA2: PopAdLdVar
  loc_C7ADA3: FLdPr Me
  loc_C7ADA6: MemLdRfVar from_stack_1.global_60
  loc_C7ADA9: LdPrVar
  loc_C7ADAB: LateMemCall
  loc_C7ADB1: LitVarStr var_94, "}"
  loc_C7ADB6: PopAdLdVar
  loc_C7ADB7: FLdPr Me
  loc_C7ADBA: MemLdRfVar from_stack_1.global_60
  loc_C7ADBD: LdPrVar
  loc_C7ADBF: LateMemCall
  loc_C7ADC5: LitVarStr var_94, ".SubTotales {"
  loc_C7ADCA: PopAdLdVar
  loc_C7ADCB: FLdPr Me
  loc_C7ADCE: MemLdRfVar from_stack_1.global_60
  loc_C7ADD1: LdPrVar
  loc_C7ADD3: LateMemCall
  loc_C7ADD9: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C7ADDE: PopAdLdVar
  loc_C7ADDF: FLdPr Me
  loc_C7ADE2: MemLdRfVar from_stack_1.global_60
  loc_C7ADE5: LdPrVar
  loc_C7ADE7: LateMemCall
  loc_C7ADED: LitVarStr var_94, " font-size: 10px;"
  loc_C7ADF2: PopAdLdVar
  loc_C7ADF3: FLdPr Me
  loc_C7ADF6: MemLdRfVar from_stack_1.global_60
  loc_C7ADF9: LdPrVar
  loc_C7ADFB: LateMemCall
  loc_C7AE01: LitVarStr var_94, " font-weight: bold;"
  loc_C7AE06: PopAdLdVar
  loc_C7AE07: FLdPr Me
  loc_C7AE0A: MemLdRfVar from_stack_1.global_60
  loc_C7AE0D: LdPrVar
  loc_C7AE0F: LateMemCall
  loc_C7AE15: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_C7AE1A: PopAdLdVar
  loc_C7AE1B: FLdPr Me
  loc_C7AE1E: MemLdRfVar from_stack_1.global_60
  loc_C7AE21: LdPrVar
  loc_C7AE23: LateMemCall
  loc_C7AE29: LitVarStr var_94, "}"
  loc_C7AE2E: PopAdLdVar
  loc_C7AE2F: FLdPr Me
  loc_C7AE32: MemLdRfVar from_stack_1.global_60
  loc_C7AE35: LdPrVar
  loc_C7AE37: LateMemCall
  loc_C7AE3D: LitVarStr var_94, ".Encabezado1 {font-family: ""Times New Roman"", Times, serif;"
  loc_C7AE42: PopAdLdVar
  loc_C7AE43: FLdPr Me
  loc_C7AE46: MemLdRfVar from_stack_1.global_60
  loc_C7AE49: LdPrVar
  loc_C7AE4B: LateMemCall
  loc_C7AE51: LitVarStr var_94, " font-size: 13px;"
  loc_C7AE56: PopAdLdVar
  loc_C7AE57: FLdPr Me
  loc_C7AE5A: MemLdRfVar from_stack_1.global_60
  loc_C7AE5D: LdPrVar
  loc_C7AE5F: LateMemCall
  loc_C7AE65: LitVarStr var_94, " font-weight: bold;"
  loc_C7AE6A: PopAdLdVar
  loc_C7AE6B: FLdPr Me
  loc_C7AE6E: MemLdRfVar from_stack_1.global_60
  loc_C7AE71: LdPrVar
  loc_C7AE73: LateMemCall
  loc_C7AE79: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_C7AE7E: PopAdLdVar
  loc_C7AE7F: FLdPr Me
  loc_C7AE82: MemLdRfVar from_stack_1.global_60
  loc_C7AE85: LdPrVar
  loc_C7AE87: LateMemCall
  loc_C7AE8D: LitVarStr var_94, "}"
  loc_C7AE92: PopAdLdVar
  loc_C7AE93: FLdPr Me
  loc_C7AE96: MemLdRfVar from_stack_1.global_60
  loc_C7AE99: LdPrVar
  loc_C7AE9B: LateMemCall
  loc_C7AEA1: LitVarStr var_94, ".Normal1 { font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C7AEA6: PopAdLdVar
  loc_C7AEA7: FLdPr Me
  loc_C7AEAA: MemLdRfVar from_stack_1.global_60
  loc_C7AEAD: LdPrVar
  loc_C7AEAF: LateMemCall
  loc_C7AEB5: LitVarStr var_94, " font-size: 11px;"
  loc_C7AEBA: PopAdLdVar
  loc_C7AEBB: FLdPr Me
  loc_C7AEBE: MemLdRfVar from_stack_1.global_60
  loc_C7AEC1: LdPrVar
  loc_C7AEC3: LateMemCall
  loc_C7AEC9: LitVarStr var_94, " font-style: normal;"
  loc_C7AECE: PopAdLdVar
  loc_C7AECF: FLdPr Me
  loc_C7AED2: MemLdRfVar from_stack_1.global_60
  loc_C7AED5: LdPrVar
  loc_C7AED7: LateMemCall
  loc_C7AEDD: LitVarStr var_94, " font-weight: normal;"
  loc_C7AEE2: PopAdLdVar
  loc_C7AEE3: FLdPr Me
  loc_C7AEE6: MemLdRfVar from_stack_1.global_60
  loc_C7AEE9: LdPrVar
  loc_C7AEEB: LateMemCall
  loc_C7AEF1: LitVarStr var_94, " font-variant: normal;"
  loc_C7AEF6: PopAdLdVar
  loc_C7AEF7: FLdPr Me
  loc_C7AEFA: MemLdRfVar from_stack_1.global_60
  loc_C7AEFD: LdPrVar
  loc_C7AEFF: LateMemCall
  loc_C7AF05: LitVarStr var_94, "}"
  loc_C7AF0A: PopAdLdVar
  loc_C7AF0B: FLdPr Me
  loc_C7AF0E: MemLdRfVar from_stack_1.global_60
  loc_C7AF11: LdPrVar
  loc_C7AF13: LateMemCall
  loc_C7AF19: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_C7AF1E: PopAdLdVar
  loc_C7AF1F: FLdPr Me
  loc_C7AF22: MemLdRfVar from_stack_1.global_60
  loc_C7AF25: LdPrVar
  loc_C7AF27: LateMemCall
  loc_C7AF2D: LitVarStr var_94, "</style>"
  loc_C7AF32: PopAdLdVar
  loc_C7AF33: FLdPr Me
  loc_C7AF36: MemLdRfVar from_stack_1.global_60
  loc_C7AF39: LdPrVar
  loc_C7AF3B: LateMemCall
  loc_C7AF41: LitI4 0
  loc_C7AF46: FStStrCopy var_AC
  loc_C7AF49: FLdRfVar var_AC
  loc_C7AF4C: LitI4 0
  loc_C7AF51: FStStrCopy var_A8
  loc_C7AF54: FLdRfVar var_A8
  loc_C7AF57: LitI2_Byte 0
  loc_C7AF59: PopTmpLdAd2 var_BE
  loc_C7AF5C: FLdPr Me
  loc_C7AF5F: MemLdRfVar from_stack_1.global_60
  loc_C7AF62: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_C7AF67: FFreeStr var_A8 = ""
  loc_C7AF6E: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_C7AF73: PopAdLdVar
  loc_C7AF74: FLdPr Me
  loc_C7AF77: MemLdRfVar from_stack_1.global_60
  loc_C7AF7A: LdPrVar
  loc_C7AF7C: LateMemCall
  loc_C7AF82: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_C7AF87: PopAdLdVar
  loc_C7AF88: FLdPr Me
  loc_C7AF8B: MemLdRfVar from_stack_1.global_60
  loc_C7AF8E: LdPrVar
  loc_C7AF90: LateMemCall
  loc_C7AF96: LitStr "    <th width=""100" & Chr(37) & """ align=""center"" valign=""middle""><p><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_C7AF99: LitI2_Byte &H5F
  loc_C7AF9B: CStrUI1
  loc_C7AF9D: FStStrNoPop var_A8
  loc_C7AFA0: ConcatStr
  loc_C7AFA1: FStStrNoPop var_AC
  loc_C7AFA4: LitStr """ height="""
  loc_C7AFA7: ConcatStr
  loc_C7AFA8: FStStrNoPop var_C4
  loc_C7AFAB: LitI2_Byte &H3C
  loc_C7AFAD: CStrUI1
  loc_C7AFAF: FStStrNoPop var_C8
  loc_C7AFB2: ConcatStr
  loc_C7AFB3: FStStrNoPop var_CC
  loc_C7AFB6: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_C7AFB9: ConcatStr
  loc_C7AFBA: FStStrNoPop var_D0
  loc_C7AFBD: LitStr "Municipalidad de Guaymallén"
  loc_C7AFC0: ConcatStr
  loc_C7AFC1: FStStrNoPop var_D4
  loc_C7AFC4: LitStr "</p>"
  loc_C7AFC7: ConcatStr
  loc_C7AFC8: CVarStr var_BC
  loc_C7AFCB: PopAdLdVar
  loc_C7AFCC: FLdPr Me
  loc_C7AFCF: MemLdRfVar from_stack_1.global_60
  loc_C7AFD2: LdPrVar
  loc_C7AFD4: LateMemCall
  loc_C7AFDA: FFreeStr var_A8 = "": var_AC = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_C7AFEB: FFree1Var var_BC = ""
  loc_C7AFEE: LitStr "    <p>"
  loc_C7AFF1: FLdRfVar var_A8
  loc_C7AFF4: FLdPr Me
  loc_C7AFF7:  = Me.Caption
  loc_C7AFFC: ILdRf var_A8
  loc_C7AFFF: ConcatStr
  loc_C7B000: FStStrNoPop var_AC
  loc_C7B003: LitStr "</p></th>"
  loc_C7B006: ConcatStr
  loc_C7B007: CVarStr var_BC
  loc_C7B00A: PopAdLdVar
  loc_C7B00B: FLdPr Me
  loc_C7B00E: MemLdRfVar from_stack_1.global_60
  loc_C7B011: LdPrVar
  loc_C7B013: LateMemCall
  loc_C7B019: FFreeStr var_A8 = ""
  loc_C7B020: FFree1Var var_BC = ""
  loc_C7B023: LitVarStr var_94, "  </tr>"
  loc_C7B028: PopAdLdVar
  loc_C7B029: FLdPr Me
  loc_C7B02C: MemLdRfVar from_stack_1.global_60
  loc_C7B02F: LdPrVar
  loc_C7B031: LateMemCall
  loc_C7B037: LitVarStr var_94, "  <tr>"
  loc_C7B03C: PopAdLdVar
  loc_C7B03D: FLdPr Me
  loc_C7B040: MemLdRfVar from_stack_1.global_60
  loc_C7B043: LdPrVar
  loc_C7B045: LateMemCall
  loc_C7B04B: LitVarStr var_94, "    <th><hr></th>"
  loc_C7B050: PopAdLdVar
  loc_C7B051: FLdPr Me
  loc_C7B054: MemLdRfVar from_stack_1.global_60
  loc_C7B057: LdPrVar
  loc_C7B059: LateMemCall
  loc_C7B05F: LitVarStr var_94, "  </tr>"
  loc_C7B064: PopAdLdVar
  loc_C7B065: FLdPr Me
  loc_C7B068: MemLdRfVar from_stack_1.global_60
  loc_C7B06B: LdPrVar
  loc_C7B06D: LateMemCall
  loc_C7B073: LitVarStr var_94, "  <tr valign=""top"" class=""Normal"">"
  loc_C7B078: PopAdLdVar
  loc_C7B079: FLdPr Me
  loc_C7B07C: MemLdRfVar from_stack_1.global_60
  loc_C7B07F: LdPrVar
  loc_C7B081: LateMemCall
  loc_C7B087: LitVarStr var_94, "    <td align=""left"" valign=""top""><table border=""0"" align=""left"" cellpadding=""1"" cellspacing=""4"">"
  loc_C7B08C: PopAdLdVar
  loc_C7B08D: FLdPr Me
  loc_C7B090: MemLdRfVar from_stack_1.global_60
  loc_C7B093: LdPrVar
  loc_C7B095: LateMemCall
  loc_C7B09B: LitI4 1
  loc_C7B0A0: FLdPr Me
  loc_C7B0A3: MemLdStr global_92
  loc_C7B0A6: AryLock
  loc_C7B0A9: Ary1LdRf
  loc_C7B0AA: FStR4 var_DC
  loc_C7B0AD: LitVarStr var_94, "      <tr>"
  loc_C7B0B2: PopAdLdVar
  loc_C7B0B3: FLdPr Me
  loc_C7B0B6: MemLdRfVar from_stack_1.global_60
  loc_C7B0B9: LdPrVar
  loc_C7B0BB: LateMemCall
  loc_C7B0C1: LitVarStr var_94, "        <th width=""115"" align=""right"" valign=""top"" class=""Encabezado1"">Nro de Operacion:</th>"
  loc_C7B0C6: PopAdLdVar
  loc_C7B0C7: FLdPr Me
  loc_C7B0CA: MemLdRfVar from_stack_1.global_60
  loc_C7B0CD: LdPrVar
  loc_C7B0CF: LateMemCall
  loc_C7B0D5: LitStr "        <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C7B0D8: FMemLdR4 var_DC(0)
  loc_C7B0DD: ConcatStr
  loc_C7B0DE: FStStrNoPop var_A8
  loc_C7B0E1: LitStr "</th>"
  loc_C7B0E4: ConcatStr
  loc_C7B0E5: CVarStr var_BC
  loc_C7B0E8: PopAdLdVar
  loc_C7B0E9: FLdPr Me
  loc_C7B0EC: MemLdRfVar from_stack_1.global_60
  loc_C7B0EF: LdPrVar
  loc_C7B0F1: LateMemCall
  loc_C7B0F7: FFree1Str var_A8
  loc_C7B0FA: FFree1Var var_BC = ""
  loc_C7B0FD: LitVarStr var_94, "      </tr>"
  loc_C7B102: PopAdLdVar
  loc_C7B103: FLdPr Me
  loc_C7B106: MemLdRfVar from_stack_1.global_60
  loc_C7B109: LdPrVar
  loc_C7B10B: LateMemCall
  loc_C7B111: LitVarStr var_94, "      <tr>"
  loc_C7B116: PopAdLdVar
  loc_C7B117: FLdPr Me
  loc_C7B11A: MemLdRfVar from_stack_1.global_60
  loc_C7B11D: LdPrVar
  loc_C7B11F: LateMemCall
  loc_C7B125: LitVarStr var_94, "        <th width=""right"" align=""right"" valign=""top"" class=""Encabezado1"">Medio de Pago:</th>"
  loc_C7B12A: PopAdLdVar
  loc_C7B12B: FLdPr Me
  loc_C7B12E: MemLdRfVar from_stack_1.global_60
  loc_C7B131: LdPrVar
  loc_C7B133: LateMemCall
  loc_C7B139: LitStr "        <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C7B13C: FMemLdR4 var_DC(8)
  loc_C7B141: ConcatStr
  loc_C7B142: FStStrNoPop var_A8
  loc_C7B145: LitStr "</th>"
  loc_C7B148: ConcatStr
  loc_C7B149: CVarStr var_BC
  loc_C7B14C: PopAdLdVar
  loc_C7B14D: FLdPr Me
  loc_C7B150: MemLdRfVar from_stack_1.global_60
  loc_C7B153: LdPrVar
  loc_C7B155: LateMemCall
  loc_C7B15B: FFree1Str var_A8
  loc_C7B15E: FFree1Var var_BC = ""
  loc_C7B161: LitVarStr var_94, "      </tr>"
  loc_C7B166: PopAdLdVar
  loc_C7B167: FLdPr Me
  loc_C7B16A: MemLdRfVar from_stack_1.global_60
  loc_C7B16D: LdPrVar
  loc_C7B16F: LateMemCall
  loc_C7B175: LitVarStr var_94, "      <tr>"
  loc_C7B17A: PopAdLdVar
  loc_C7B17B: FLdPr Me
  loc_C7B17E: MemLdRfVar from_stack_1.global_60
  loc_C7B181: LdPrVar
  loc_C7B183: LateMemCall
  loc_C7B189: LitVarStr var_94, "        <th width=""right"" align=""right"" valign=""top"" class=""Encabezado1"">Fecha de Actualizacion:</th>"
  loc_C7B18E: PopAdLdVar
  loc_C7B18F: FLdPr Me
  loc_C7B192: MemLdRfVar from_stack_1.global_60
  loc_C7B195: LdPrVar
  loc_C7B197: LateMemCall
  loc_C7B19D: LitStr "        <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C7B1A0: FMemLdR4 var_DC(84)
  loc_C7B1A5: ConcatStr
  loc_C7B1A6: FStStrNoPop var_A8
  loc_C7B1A9: LitStr "</th>"
  loc_C7B1AC: ConcatStr
  loc_C7B1AD: CVarStr var_BC
  loc_C7B1B0: PopAdLdVar
  loc_C7B1B1: FLdPr Me
  loc_C7B1B4: MemLdRfVar from_stack_1.global_60
  loc_C7B1B7: LdPrVar
  loc_C7B1B9: LateMemCall
  loc_C7B1BF: FFree1Str var_A8
  loc_C7B1C2: FFree1Var var_BC = ""
  loc_C7B1C5: LitVarStr var_94, "      </tr>"
  loc_C7B1CA: PopAdLdVar
  loc_C7B1CB: FLdPr Me
  loc_C7B1CE: MemLdRfVar from_stack_1.global_60
  loc_C7B1D1: LdPrVar
  loc_C7B1D3: LateMemCall
  loc_C7B1D9: LitVarStr var_94, "      <tr>"
  loc_C7B1DE: PopAdLdVar
  loc_C7B1DF: FLdPr Me
  loc_C7B1E2: MemLdRfVar from_stack_1.global_60
  loc_C7B1E5: LdPrVar
  loc_C7B1E7: LateMemCall
  loc_C7B1ED: LitVarStr var_94, "        <th width=""right"" align=""right"" valign=""top"" class=""Encabezado1"">Apellido y Nombre:</th>"
  loc_C7B1F2: PopAdLdVar
  loc_C7B1F3: FLdPr Me
  loc_C7B1F6: MemLdRfVar from_stack_1.global_60
  loc_C7B1F9: LdPrVar
  loc_C7B1FB: LateMemCall
  loc_C7B201: LitStr "        <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C7B204: FMemLdR4 var_DC(24)
  loc_C7B209: ConcatStr
  loc_C7B20A: FStStrNoPop var_A8
  loc_C7B20D: LitStr "</th>"
  loc_C7B210: ConcatStr
  loc_C7B211: CVarStr var_BC
  loc_C7B214: PopAdLdVar
  loc_C7B215: FLdPr Me
  loc_C7B218: MemLdRfVar from_stack_1.global_60
  loc_C7B21B: LdPrVar
  loc_C7B21D: LateMemCall
  loc_C7B223: FFree1Str var_A8
  loc_C7B226: FFree1Var var_BC = ""
  loc_C7B229: LitVarStr var_94, "      </tr>"
  loc_C7B22E: PopAdLdVar
  loc_C7B22F: FLdPr Me
  loc_C7B232: MemLdRfVar from_stack_1.global_60
  loc_C7B235: LdPrVar
  loc_C7B237: LateMemCall
  loc_C7B23D: LitVarStr var_94, "      <tr>"
  loc_C7B242: PopAdLdVar
  loc_C7B243: FLdPr Me
  loc_C7B246: MemLdRfVar from_stack_1.global_60
  loc_C7B249: LdPrVar
  loc_C7B24B: LateMemCall
  loc_C7B251: LitVarStr var_94, "        <th align=""right"" valign=""top"" class=""Encabezado1"">Domicilio:</th>"
  loc_C7B256: PopAdLdVar
  loc_C7B257: FLdPr Me
  loc_C7B25A: MemLdRfVar from_stack_1.global_60
  loc_C7B25D: LdPrVar
  loc_C7B25F: LateMemCall
  loc_C7B265: LitStr "        <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C7B268: FMemLdR4 var_DC(32)
  loc_C7B26D: ConcatStr
  loc_C7B26E: FStStrNoPop var_A8
  loc_C7B271: LitStr "</th>"
  loc_C7B274: ConcatStr
  loc_C7B275: CVarStr var_BC
  loc_C7B278: PopAdLdVar
  loc_C7B279: FLdPr Me
  loc_C7B27C: MemLdRfVar from_stack_1.global_60
  loc_C7B27F: LdPrVar
  loc_C7B281: LateMemCall
  loc_C7B287: FFree1Str var_A8
  loc_C7B28A: FFree1Var var_BC = ""
  loc_C7B28D: LitVarStr var_94, "      </tr>"
  loc_C7B292: PopAdLdVar
  loc_C7B293: FLdPr Me
  loc_C7B296: MemLdRfVar from_stack_1.global_60
  loc_C7B299: LdPrVar
  loc_C7B29B: LateMemCall
  loc_C7B2A1: LitVarStr var_94, "      <tr>"
  loc_C7B2A6: PopAdLdVar
  loc_C7B2A7: FLdPr Me
  loc_C7B2AA: MemLdRfVar from_stack_1.global_60
  loc_C7B2AD: LdPrVar
  loc_C7B2AF: LateMemCall
  loc_C7B2B5: LitVarStr var_94, "        <th align=""right"" valign=""top"" class=""Encabezado1"">Periodo:</th>"
  loc_C7B2BA: PopAdLdVar
  loc_C7B2BB: FLdPr Me
  loc_C7B2BE: MemLdRfVar from_stack_1.global_60
  loc_C7B2C1: LdPrVar
  loc_C7B2C3: LateMemCall
  loc_C7B2C9: LitVarStr var_A4, "        <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C7B2CE: FLdRfVar var_BC
  loc_C7B2D1: FLdRfVar var_E8
  loc_C7B2D4: LitVarStr var_94, "PeriBole"
  loc_C7B2D9: PopAdLdVar
  loc_C7B2DA: FLdRfVar var_E4
  loc_C7B2DD: FLdRfVar var_E0
  loc_C7B2E0: FLdPr Me
  loc_C7B2E3: MemLdRfVar from_stack_1.global_76
  loc_C7B2E6: NewIfNullPr clsboleto
  loc_C7B2E9: from_stack_1v = clsboleto.RsFrmGet()
  loc_C7B2EE: FLdPr var_E0
  loc_C7B2F1:  = Me.Fields
  loc_C7B2F6: FLdPr var_E4
  loc_C7B2F9: from_stack_2 = Me.Item(from_stack_1)
  loc_C7B2FE: FLdPr var_E8
  loc_C7B301:  = Me.Value
  loc_C7B306: FLdRfVar var_BC
  loc_C7B309: ConcatVar var_F8
  loc_C7B30D: LitVarStr var_108, "</th>"
  loc_C7B312: ConcatVar var_118
  loc_C7B316: PopAdLdVar
  loc_C7B317: FLdPr Me
  loc_C7B31A: MemLdRfVar from_stack_1.global_60
  loc_C7B31D: LdPrVar
  loc_C7B31F: LateMemCall
  loc_C7B325: FFreeAd var_E0 = "": var_E4 = ""
  loc_C7B32E: FFreeVar var_BC = "": var_F8 = ""
  loc_C7B337: LitVarStr var_94, "      </tr>"
  loc_C7B33C: PopAdLdVar
  loc_C7B33D: FLdPr Me
  loc_C7B340: MemLdRfVar from_stack_1.global_60
  loc_C7B343: LdPrVar
  loc_C7B345: LateMemCall
  loc_C7B34B: LitVarStr var_94, "      <tr>"
  loc_C7B350: PopAdLdVar
  loc_C7B351: FLdPr Me
  loc_C7B354: MemLdRfVar from_stack_1.global_60
  loc_C7B357: LdPrVar
  loc_C7B359: LateMemCall
  loc_C7B35F: LitVarStr var_94, "        <th align=""right"" valign=""top"" class=""Encabezado1"">Boleto:</th>"
  loc_C7B364: PopAdLdVar
  loc_C7B365: FLdPr Me
  loc_C7B368: MemLdRfVar from_stack_1.global_60
  loc_C7B36B: LdPrVar
  loc_C7B36D: LateMemCall
  loc_C7B373: LitVarStr var_A4, "        <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C7B378: FLdRfVar var_BC
  loc_C7B37B: FLdRfVar var_E8
  loc_C7B37E: LitVarStr var_94, "NumeBole"
  loc_C7B383: PopAdLdVar
  loc_C7B384: FLdRfVar var_E4
  loc_C7B387: FLdRfVar var_E0
  loc_C7B38A: FLdPr Me
  loc_C7B38D: MemLdRfVar from_stack_1.global_76
  loc_C7B390: NewIfNullPr clsboleto
  loc_C7B393: from_stack_1v = clsboleto.RsFrmGet()
  loc_C7B398: FLdPr var_E0
  loc_C7B39B:  = Me.Fields
  loc_C7B3A0: FLdPr var_E4
  loc_C7B3A3: from_stack_2 = Me.Item(from_stack_1)
  loc_C7B3A8: FLdPr var_E8
  loc_C7B3AB:  = Me.Value
  loc_C7B3B0: FLdRfVar var_BC
  loc_C7B3B3: ConcatVar var_F8
  loc_C7B3B7: LitVarStr var_108, "</th>"
  loc_C7B3BC: ConcatVar var_118
  loc_C7B3C0: PopAdLdVar
  loc_C7B3C1: FLdPr Me
  loc_C7B3C4: MemLdRfVar from_stack_1.global_60
  loc_C7B3C7: LdPrVar
  loc_C7B3C9: LateMemCall
  loc_C7B3CF: FFreeAd var_E0 = "": var_E4 = ""
  loc_C7B3D8: FFreeVar var_BC = "": var_F8 = ""
  loc_C7B3E1: LitVarStr var_94, "      </tr>"
  loc_C7B3E6: PopAdLdVar
  loc_C7B3E7: FLdPr Me
  loc_C7B3EA: MemLdRfVar from_stack_1.global_60
  loc_C7B3ED: LdPrVar
  loc_C7B3EF: LateMemCall
  loc_C7B3F5: LitVarStr var_94, "      <tr>"
  loc_C7B3FA: PopAdLdVar
  loc_C7B3FB: FLdPr Me
  loc_C7B3FE: MemLdRfVar from_stack_1.global_60
  loc_C7B401: LdPrVar
  loc_C7B403: LateMemCall
  loc_C7B409: LitVarStr var_94, "        <th align=""right"" valign=""top"" class=""Encabezado1"">Estado:</th>"
  loc_C7B40E: PopAdLdVar
  loc_C7B40F: FLdPr Me
  loc_C7B412: MemLdRfVar from_stack_1.global_60
  loc_C7B415: LdPrVar
  loc_C7B417: LateMemCall
  loc_C7B41D: LitStr "        <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C7B420: FMemLdR4 var_DC(36)
  loc_C7B425: ConcatStr
  loc_C7B426: FStStrNoPop var_A8
  loc_C7B429: LitStr "</th>"
  loc_C7B42C: ConcatStr
  loc_C7B42D: CVarStr var_BC
  loc_C7B430: PopAdLdVar
  loc_C7B431: FLdPr Me
  loc_C7B434: MemLdRfVar from_stack_1.global_60
  loc_C7B437: LdPrVar
  loc_C7B439: LateMemCall
  loc_C7B43F: FFree1Str var_A8
  loc_C7B442: FFree1Var var_BC = ""
  loc_C7B445: LitVarStr var_94, "      </tr>"
  loc_C7B44A: PopAdLdVar
  loc_C7B44B: FLdPr Me
  loc_C7B44E: MemLdRfVar from_stack_1.global_60
  loc_C7B451: LdPrVar
  loc_C7B453: LateMemCall
  loc_C7B459: LitVarStr var_94, "      <tr>"
  loc_C7B45E: PopAdLdVar
  loc_C7B45F: FLdPr Me
  loc_C7B462: MemLdRfVar from_stack_1.global_60
  loc_C7B465: LdPrVar
  loc_C7B467: LateMemCall
  loc_C7B46D: LitVarStr var_94, "        <th align=""right"" valign=""top"" class=""Encabezado1"">Tipo:</th>"
  loc_C7B472: PopAdLdVar
  loc_C7B473: FLdPr Me
  loc_C7B476: MemLdRfVar from_stack_1.global_60
  loc_C7B479: LdPrVar
  loc_C7B47B: LateMemCall
  loc_C7B481: LitStr "        <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C7B484: FMemLdR4 var_DC(40)
  loc_C7B489: ConcatStr
  loc_C7B48A: FStStrNoPop var_A8
  loc_C7B48D: LitStr "</th>"
  loc_C7B490: ConcatStr
  loc_C7B491: CVarStr var_BC
  loc_C7B494: PopAdLdVar
  loc_C7B495: FLdPr Me
  loc_C7B498: MemLdRfVar from_stack_1.global_60
  loc_C7B49B: LdPrVar
  loc_C7B49D: LateMemCall
  loc_C7B4A3: FFree1Str var_A8
  loc_C7B4A6: FFree1Var var_BC = ""
  loc_C7B4A9: LitVarStr var_94, "      </tr>"
  loc_C7B4AE: PopAdLdVar
  loc_C7B4AF: FLdPr Me
  loc_C7B4B2: MemLdRfVar from_stack_1.global_60
  loc_C7B4B5: LdPrVar
  loc_C7B4B7: LateMemCall
  loc_C7B4BD: LitVarStr var_94, "      <tr>"
  loc_C7B4C2: PopAdLdVar
  loc_C7B4C3: FLdPr Me
  loc_C7B4C6: MemLdRfVar from_stack_1.global_60
  loc_C7B4C9: LdPrVar
  loc_C7B4CB: LateMemCall
  loc_C7B4D1: LitVarStr var_94, "        <th align=""right"" valign=""top"" class=""Encabezado1"">Emitido para:</th>"
  loc_C7B4D6: PopAdLdVar
  loc_C7B4D7: FLdPr Me
  loc_C7B4DA: MemLdRfVar from_stack_1.global_60
  loc_C7B4DD: LdPrVar
  loc_C7B4DF: LateMemCall
  loc_C7B4E5: LitVarStr var_108, "        <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C7B4EA: LitVarStr var_A4, "&nbsp;"
  loc_C7B4EF: FStVarCopyObj var_F8
  loc_C7B4F2: FLdRfVar var_F8
  loc_C7B4F5: FMemLdR4 var_DC(44)
  loc_C7B4FA: LitStr " - "
  loc_C7B4FD: ConcatStr
  loc_C7B4FE: FStStrNoPop var_A8
  loc_C7B501: FMemLdR4 var_DC(48)
  loc_C7B506: ConcatStr
  loc_C7B507: CVarStr var_BC
  loc_C7B50A: FMemLdR4 var_DC(48)
  loc_C7B50F: LitStr vbNullString
  loc_C7B512: NeStr
  loc_C7B514: CVarBoolI2 var_94
  loc_C7B518: FLdRfVar var_118
  loc_C7B51B: ImpAdCallFPR4  = IIf(, , )
  loc_C7B520: FLdRfVar var_118
  loc_C7B523: ConcatVar var_138
  loc_C7B527: LitVarStr var_128, "</th>"
  loc_C7B52C: ConcatVar var_148
  loc_C7B530: PopAdLdVar
  loc_C7B531: FLdPr Me
  loc_C7B534: MemLdRfVar from_stack_1.global_60
  loc_C7B537: LdPrVar
  loc_C7B539: LateMemCall
  loc_C7B53F: FFree1Str var_A8
  loc_C7B542: FFreeVar var_94 = "": var_BC = "": var_F8 = "": var_118 = "": var_138 = ""
  loc_C7B551: LitVarStr var_94, "      </tr>"
  loc_C7B556: PopAdLdVar
  loc_C7B557: FLdPr Me
  loc_C7B55A: MemLdRfVar from_stack_1.global_60
  loc_C7B55D: LdPrVar
  loc_C7B55F: LateMemCall
  loc_C7B565: LitVarStr var_94, "      <tr>"
  loc_C7B56A: PopAdLdVar
  loc_C7B56B: FLdPr Me
  loc_C7B56E: MemLdRfVar from_stack_1.global_60
  loc_C7B571: LdPrVar
  loc_C7B573: LateMemCall
  loc_C7B579: LitVarStr var_94, "        <th align=""right"" valign=""top"" class=""Encabezado1"">Oficina:</th>"
  loc_C7B57E: PopAdLdVar
  loc_C7B57F: FLdPr Me
  loc_C7B582: MemLdRfVar from_stack_1.global_60
  loc_C7B585: LdPrVar
  loc_C7B587: LateMemCall
  loc_C7B58D: LitStr "        <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C7B590: FMemLdR4 var_DC(56)
  loc_C7B595: ConcatStr
  loc_C7B596: FStStrNoPop var_A8
  loc_C7B599: LitStr "</th>"
  loc_C7B59C: ConcatStr
  loc_C7B59D: CVarStr var_BC
  loc_C7B5A0: PopAdLdVar
  loc_C7B5A1: FLdPr Me
  loc_C7B5A4: MemLdRfVar from_stack_1.global_60
  loc_C7B5A7: LdPrVar
  loc_C7B5A9: LateMemCall
  loc_C7B5AF: FFree1Str var_A8
  loc_C7B5B2: FFree1Var var_BC = ""
  loc_C7B5B5: LitVarStr var_94, "      </tr>"
  loc_C7B5BA: PopAdLdVar
  loc_C7B5BB: FLdPr Me
  loc_C7B5BE: MemLdRfVar from_stack_1.global_60
  loc_C7B5C1: LdPrVar
  loc_C7B5C3: LateMemCall
  loc_C7B5C9: LitVarStr var_94, "      <tr>"
  loc_C7B5CE: PopAdLdVar
  loc_C7B5CF: FLdPr Me
  loc_C7B5D2: MemLdRfVar from_stack_1.global_60
  loc_C7B5D5: LdPrVar
  loc_C7B5D7: LateMemCall
  loc_C7B5DD: LitVarStr var_94, "        <th align=""right"" valign=""top"" class=""Encabezado1"">Cuenta:</th>"
  loc_C7B5E2: PopAdLdVar
  loc_C7B5E3: FLdPr Me
  loc_C7B5E6: MemLdRfVar from_stack_1.global_60
  loc_C7B5E9: LdPrVar
  loc_C7B5EB: LateMemCall
  loc_C7B5F1: LitStr "        <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C7B5F4: FMemLdR4 var_DC(60)
  loc_C7B5F9: ConcatStr
  loc_C7B5FA: FStStrNoPop var_A8
  loc_C7B5FD: LitStr "</th>"
  loc_C7B600: ConcatStr
  loc_C7B601: CVarStr var_BC
  loc_C7B604: PopAdLdVar
  loc_C7B605: FLdPr Me
  loc_C7B608: MemLdRfVar from_stack_1.global_60
  loc_C7B60B: LdPrVar
  loc_C7B60D: LateMemCall
  loc_C7B613: FFree1Str var_A8
  loc_C7B616: FFree1Var var_BC = ""
  loc_C7B619: LitVarStr var_94, "      </tr>"
  loc_C7B61E: PopAdLdVar
  loc_C7B61F: FLdPr Me
  loc_C7B622: MemLdRfVar from_stack_1.global_60
  loc_C7B625: LdPrVar
  loc_C7B627: LateMemCall
  loc_C7B62D: LitVarStr var_94, "      <tr>"
  loc_C7B632: PopAdLdVar
  loc_C7B633: FLdPr Me
  loc_C7B636: MemLdRfVar from_stack_1.global_60
  loc_C7B639: LdPrVar
  loc_C7B63B: LateMemCall
  loc_C7B641: LitVarStr var_94, "        <th align=""right"" valign=""top"" class=""Encabezado1"">Usuario del Boleto:</th>"
  loc_C7B646: PopAdLdVar
  loc_C7B647: FLdPr Me
  loc_C7B64A: MemLdRfVar from_stack_1.global_60
  loc_C7B64D: LdPrVar
  loc_C7B64F: LateMemCall
  loc_C7B655: LitStr "        <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C7B658: FMemLdR4 var_DC(108)
  loc_C7B65D: ConcatStr
  loc_C7B65E: FStStrNoPop var_A8
  loc_C7B661: LitStr "</th>"
  loc_C7B664: ConcatStr
  loc_C7B665: CVarStr var_BC
  loc_C7B668: PopAdLdVar
  loc_C7B669: FLdPr Me
  loc_C7B66C: MemLdRfVar from_stack_1.global_60
  loc_C7B66F: LdPrVar
  loc_C7B671: LateMemCall
  loc_C7B677: FFree1Str var_A8
  loc_C7B67A: FFree1Var var_BC = ""
  loc_C7B67D: LitVarStr var_94, "      </tr>"
  loc_C7B682: PopAdLdVar
  loc_C7B683: FLdPr Me
  loc_C7B686: MemLdRfVar from_stack_1.global_60
  loc_C7B689: LdPrVar
  loc_C7B68B: LateMemCall
  loc_C7B691: LitVarStr var_94, "    </table>"
  loc_C7B696: PopAdLdVar
  loc_C7B697: FLdPr Me
  loc_C7B69A: MemLdRfVar from_stack_1.global_60
  loc_C7B69D: LdPrVar
  loc_C7B69F: LateMemCall
  loc_C7B6A5: LitVarStr var_94, "      <table border=""0"" align=""center"" cellpadding=""1"" cellspacing=""4"">"
  loc_C7B6AA: PopAdLdVar
  loc_C7B6AB: FLdPr Me
  loc_C7B6AE: MemLdRfVar from_stack_1.global_60
  loc_C7B6B1: LdPrVar
  loc_C7B6B3: LateMemCall
  loc_C7B6B9: LitVarStr var_94, "        <tr>"
  loc_C7B6BE: PopAdLdVar
  loc_C7B6BF: FLdPr Me
  loc_C7B6C2: MemLdRfVar from_stack_1.global_60
  loc_C7B6C5: LdPrVar
  loc_C7B6C7: LateMemCall
  loc_C7B6CD: LitVarStr var_94, "          <th align=""right"" valign=""top"" class=""Encabezado1"">Fecha de Pago:</th>"
  loc_C7B6D2: PopAdLdVar
  loc_C7B6D3: FLdPr Me
  loc_C7B6D6: MemLdRfVar from_stack_1.global_60
  loc_C7B6D9: LdPrVar
  loc_C7B6DB: LateMemCall
  loc_C7B6E1: LitStr "          <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C7B6E4: FMemLdR4 var_DC(4)
  loc_C7B6E9: ConcatStr
  loc_C7B6EA: FStStrNoPop var_A8
  loc_C7B6ED: LitStr "</th>"
  loc_C7B6F0: ConcatStr
  loc_C7B6F1: CVarStr var_BC
  loc_C7B6F4: PopAdLdVar
  loc_C7B6F5: FLdPr Me
  loc_C7B6F8: MemLdRfVar from_stack_1.global_60
  loc_C7B6FB: LdPrVar
  loc_C7B6FD: LateMemCall
  loc_C7B703: FFree1Str var_A8
  loc_C7B706: FFree1Var var_BC = ""
  loc_C7B709: LitVarStr var_94, "        </tr>"
  loc_C7B70E: PopAdLdVar
  loc_C7B70F: FLdPr Me
  loc_C7B712: MemLdRfVar from_stack_1.global_60
  loc_C7B715: LdPrVar
  loc_C7B717: LateMemCall
  loc_C7B71D: LitVarStr var_94, "        <tr>"
  loc_C7B722: PopAdLdVar
  loc_C7B723: FLdPr Me
  loc_C7B726: MemLdRfVar from_stack_1.global_60
  loc_C7B729: LdPrVar
  loc_C7B72B: LateMemCall
  loc_C7B731: LitVarStr var_94, "          <th align=""right"" valign=""top"" class=""Encabezado1"">Importe:</th>"
  loc_C7B736: PopAdLdVar
  loc_C7B737: FLdPr Me
  loc_C7B73A: MemLdRfVar from_stack_1.global_60
  loc_C7B73D: LdPrVar
  loc_C7B73F: LateMemCall
  loc_C7B745: LitStr "          <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C7B748: FMemLdR4 var_DC(12)
  loc_C7B74D: ConcatStr
  loc_C7B74E: FStStrNoPop var_A8
  loc_C7B751: LitStr "</th>"
  loc_C7B754: ConcatStr
  loc_C7B755: CVarStr var_BC
  loc_C7B758: PopAdLdVar
  loc_C7B759: FLdPr Me
  loc_C7B75C: MemLdRfVar from_stack_1.global_60
  loc_C7B75F: LdPrVar
  loc_C7B761: LateMemCall
  loc_C7B767: FFree1Str var_A8
  loc_C7B76A: FFree1Var var_BC = ""
  loc_C7B76D: LitVarStr var_94, "        </tr>"
  loc_C7B772: PopAdLdVar
  loc_C7B773: FLdPr Me
  loc_C7B776: MemLdRfVar from_stack_1.global_60
  loc_C7B779: LdPrVar
  loc_C7B77B: LateMemCall
  loc_C7B781: LitVarStr var_94, "        <tr>"
  loc_C7B786: PopAdLdVar
  loc_C7B787: FLdPr Me
  loc_C7B78A: MemLdRfVar from_stack_1.global_60
  loc_C7B78D: LdPrVar
  loc_C7B78F: LateMemCall
  loc_C7B795: LitVarStr var_94, "          <th align=""right"" valign=""top"" class=""Encabezado1"">Usuario de Act.:</th>"
  loc_C7B79A: PopAdLdVar
  loc_C7B79B: FLdPr Me
  loc_C7B79E: MemLdRfVar from_stack_1.global_60
  loc_C7B7A1: LdPrVar
  loc_C7B7A3: LateMemCall
  loc_C7B7A9: LitStr "          <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C7B7AC: FMemLdR4 var_DC(20)
  loc_C7B7B1: ConcatStr
  loc_C7B7B2: FStStrNoPop var_A8
  loc_C7B7B5: LitStr "</th>"
  loc_C7B7B8: ConcatStr
  loc_C7B7B9: CVarStr var_BC
  loc_C7B7BC: PopAdLdVar
  loc_C7B7BD: FLdPr Me
  loc_C7B7C0: MemLdRfVar from_stack_1.global_60
  loc_C7B7C3: LdPrVar
  loc_C7B7C5: LateMemCall
  loc_C7B7CB: FFree1Str var_A8
  loc_C7B7CE: FFree1Var var_BC = ""
  loc_C7B7D1: LitVarStr var_94, "        </tr>"
  loc_C7B7D6: PopAdLdVar
  loc_C7B7D7: FLdPr Me
  loc_C7B7DA: MemLdRfVar from_stack_1.global_60
  loc_C7B7DD: LdPrVar
  loc_C7B7DF: LateMemCall
  loc_C7B7E5: LitVarStr var_94, "        <tr>"
  loc_C7B7EA: PopAdLdVar
  loc_C7B7EB: FLdPr Me
  loc_C7B7EE: MemLdRfVar from_stack_1.global_60
  loc_C7B7F1: LdPrVar
  loc_C7B7F3: LateMemCall
  loc_C7B7F9: LitVarStr var_94, "          <th align=""right"" valign=""top"" class=""Encabezado1"">C.U.I.T.:</th>"
  loc_C7B7FE: PopAdLdVar
  loc_C7B7FF: FLdPr Me
  loc_C7B802: MemLdRfVar from_stack_1.global_60
  loc_C7B805: LdPrVar
  loc_C7B807: LateMemCall
  loc_C7B80D: LitStr "          <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C7B810: FMemLdR4 var_DC(28)
  loc_C7B815: ConcatStr
  loc_C7B816: FStStrNoPop var_A8
  loc_C7B819: LitStr "</th>"
  loc_C7B81C: ConcatStr
  loc_C7B81D: CVarStr var_BC
  loc_C7B820: PopAdLdVar
  loc_C7B821: FLdPr Me
  loc_C7B824: MemLdRfVar from_stack_1.global_60
  loc_C7B827: LdPrVar
  loc_C7B829: LateMemCall
  loc_C7B82F: FFree1Str var_A8
  loc_C7B832: FFree1Var var_BC = ""
  loc_C7B835: LitVarStr var_94, "        </tr>"
  loc_C7B83A: PopAdLdVar
  loc_C7B83B: FLdPr Me
  loc_C7B83E: MemLdRfVar from_stack_1.global_60
  loc_C7B841: LdPrVar
  loc_C7B843: LateMemCall
  loc_C7B849: LitVarStr var_94, "        <tr>"
  loc_C7B84E: PopAdLdVar
  loc_C7B84F: FLdPr Me
  loc_C7B852: MemLdRfVar from_stack_1.global_60
  loc_C7B855: LdPrVar
  loc_C7B857: LateMemCall
  loc_C7B85D: LitVarStr var_94, "          <th align=""right"" valign=""top"" class=""Encabezado1"">Expediente:</th>"
  loc_C7B862: PopAdLdVar
  loc_C7B863: FLdPr Me
  loc_C7B866: MemLdRfVar from_stack_1.global_60
  loc_C7B869: LdPrVar
  loc_C7B86B: LateMemCall
  loc_C7B871: LitStr "          <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C7B874: FMemLdR4 var_DC(116)
  loc_C7B879: ConcatStr
  loc_C7B87A: FStStrNoPop var_A8
  loc_C7B87D: LitStr "</th>"
  loc_C7B880: ConcatStr
  loc_C7B881: CVarStr var_BC
  loc_C7B884: PopAdLdVar
  loc_C7B885: FLdPr Me
  loc_C7B888: MemLdRfVar from_stack_1.global_60
  loc_C7B88B: LdPrVar
  loc_C7B88D: LateMemCall
  loc_C7B893: FFree1Str var_A8
  loc_C7B896: FFree1Var var_BC = ""
  loc_C7B899: LitVarStr var_94, "        </tr>"
  loc_C7B89E: PopAdLdVar
  loc_C7B89F: FLdPr Me
  loc_C7B8A2: MemLdRfVar from_stack_1.global_60
  loc_C7B8A5: LdPrVar
  loc_C7B8A7: LateMemCall
  loc_C7B8AD: LitVarStr var_94, "        <tr>"
  loc_C7B8B2: PopAdLdVar
  loc_C7B8B3: FLdPr Me
  loc_C7B8B6: MemLdRfVar from_stack_1.global_60
  loc_C7B8B9: LdPrVar
  loc_C7B8BB: LateMemCall
  loc_C7B8C1: LitVarStr var_94, "          <th align=""right"" valign=""top"" class=""Encabezado1"">Grupo:</th>"
  loc_C7B8C6: PopAdLdVar
  loc_C7B8C7: FLdPr Me
  loc_C7B8CA: MemLdRfVar from_stack_1.global_60
  loc_C7B8CD: LdPrVar
  loc_C7B8CF: LateMemCall
  loc_C7B8D5: LitStr "          <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C7B8D8: FMemLdR4 var_DC(92)
  loc_C7B8DD: ConcatStr
  loc_C7B8DE: FStStrNoPop var_A8
  loc_C7B8E1: LitStr "</th>"
  loc_C7B8E4: ConcatStr
  loc_C7B8E5: CVarStr var_BC
  loc_C7B8E8: PopAdLdVar
  loc_C7B8E9: FLdPr Me
  loc_C7B8EC: MemLdRfVar from_stack_1.global_60
  loc_C7B8EF: LdPrVar
  loc_C7B8F1: LateMemCall
  loc_C7B8F7: FFree1Str var_A8
  loc_C7B8FA: FFree1Var var_BC = ""
  loc_C7B8FD: LitVarStr var_94, "        </tr>"
  loc_C7B902: PopAdLdVar
  loc_C7B903: FLdPr Me
  loc_C7B906: MemLdRfVar from_stack_1.global_60
  loc_C7B909: LdPrVar
  loc_C7B90B: LateMemCall
  loc_C7B911: LitVarStr var_94, "        <tr>"
  loc_C7B916: PopAdLdVar
  loc_C7B917: FLdPr Me
  loc_C7B91A: MemLdRfVar from_stack_1.global_60
  loc_C7B91D: LdPrVar
  loc_C7B91F: LateMemCall
  loc_C7B925: LitVarStr var_94, "          <th align=""right"" valign=""top"" class=""Encabezado1"">Ente:</th>"
  loc_C7B92A: PopAdLdVar
  loc_C7B92B: FLdPr Me
  loc_C7B92E: MemLdRfVar from_stack_1.global_60
  loc_C7B931: LdPrVar
  loc_C7B933: LateMemCall
  loc_C7B939: LitVarStr var_108, "          <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C7B93E: LitVarStr var_A4, "&nbsp;"
  loc_C7B943: FStVarCopyObj var_F8
  loc_C7B946: FLdRfVar var_F8
  loc_C7B949: FMemLdR4 var_DC(96)
  loc_C7B94E: LitStr " - "
  loc_C7B951: ConcatStr
  loc_C7B952: FStStrNoPop var_A8
  loc_C7B955: FMemLdR4 var_DC(100)
  loc_C7B95A: ConcatStr
  loc_C7B95B: CVarStr var_BC
  loc_C7B95E: FMemLdR4 var_DC(100)
  loc_C7B963: LitStr vbNullString
  loc_C7B966: NeStr
  loc_C7B968: CVarBoolI2 var_94
  loc_C7B96C: FLdRfVar var_118
  loc_C7B96F: ImpAdCallFPR4  = IIf(, , )
  loc_C7B974: FLdRfVar var_118
  loc_C7B977: ConcatVar var_138
  loc_C7B97B: LitVarStr var_128, "</th>"
  loc_C7B980: ConcatVar var_148
  loc_C7B984: PopAdLdVar
  loc_C7B985: FLdPr Me
  loc_C7B988: MemLdRfVar from_stack_1.global_60
  loc_C7B98B: LdPrVar
  loc_C7B98D: LateMemCall
  loc_C7B993: FFree1Str var_A8
  loc_C7B996: FFreeVar var_94 = "": var_BC = "": var_F8 = "": var_118 = "": var_138 = ""
  loc_C7B9A5: LitVarStr var_94, "        </tr>"
  loc_C7B9AA: PopAdLdVar
  loc_C7B9AB: FLdPr Me
  loc_C7B9AE: MemLdRfVar from_stack_1.global_60
  loc_C7B9B1: LdPrVar
  loc_C7B9B3: LateMemCall
  loc_C7B9B9: LitVarStr var_94, "        <tr>"
  loc_C7B9BE: PopAdLdVar
  loc_C7B9BF: FLdPr Me
  loc_C7B9C2: MemLdRfVar from_stack_1.global_60
  loc_C7B9C5: LdPrVar
  loc_C7B9C7: LateMemCall
  loc_C7B9CD: LitVarStr var_94, "          <th align=""right"" valign=""top"" class=""Encabezado1"">Fecha de Emisi&oacute;n:</th>"
  loc_C7B9D2: PopAdLdVar
  loc_C7B9D3: FLdPr Me
  loc_C7B9D6: MemLdRfVar from_stack_1.global_60
  loc_C7B9D9: LdPrVar
  loc_C7B9DB: LateMemCall
  loc_C7B9E1: LitStr "          <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C7B9E4: FMemLdR4 var_DC(76)
  loc_C7B9E9: ConcatStr
  loc_C7B9EA: FStStrNoPop var_A8
  loc_C7B9ED: LitStr "</th>"
  loc_C7B9F0: ConcatStr
  loc_C7B9F1: CVarStr var_BC
  loc_C7B9F4: PopAdLdVar
  loc_C7B9F5: FLdPr Me
  loc_C7B9F8: MemLdRfVar from_stack_1.global_60
  loc_C7B9FB: LdPrVar
  loc_C7B9FD: LateMemCall
  loc_C7BA03: FFree1Str var_A8
  loc_C7BA06: FFree1Var var_BC = ""
  loc_C7BA09: LitVarStr var_94, "        </tr>"
  loc_C7BA0E: PopAdLdVar
  loc_C7BA0F: FLdPr Me
  loc_C7BA12: MemLdRfVar from_stack_1.global_60
  loc_C7BA15: LdPrVar
  loc_C7BA17: LateMemCall
  loc_C7BA1D: LitVarStr var_94, "        <tr>"
  loc_C7BA22: PopAdLdVar
  loc_C7BA23: FLdPr Me
  loc_C7BA26: MemLdRfVar from_stack_1.global_60
  loc_C7BA29: LdPrVar
  loc_C7BA2B: LateMemCall
  loc_C7BA31: LitVarStr var_94, "          <th align=""right"" valign=""top"" class=""Encabezado1"">Fecha de Envio:</th>"
  loc_C7BA36: PopAdLdVar
  loc_C7BA37: FLdPr Me
  loc_C7BA3A: MemLdRfVar from_stack_1.global_60
  loc_C7BA3D: LdPrVar
  loc_C7BA3F: LateMemCall
  loc_C7BA45: LitStr "          <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C7BA48: FMemLdR4 var_DC(80)
  loc_C7BA4D: ConcatStr
  loc_C7BA4E: FStStrNoPop var_A8
  loc_C7BA51: LitStr "</th>"
  loc_C7BA54: ConcatStr
  loc_C7BA55: CVarStr var_BC
  loc_C7BA58: PopAdLdVar
  loc_C7BA59: FLdPr Me
  loc_C7BA5C: MemLdRfVar from_stack_1.global_60
  loc_C7BA5F: LdPrVar
  loc_C7BA61: LateMemCall
  loc_C7BA67: FFree1Str var_A8
  loc_C7BA6A: FFree1Var var_BC = ""
  loc_C7BA6D: LitVarStr var_94, "        </tr>"
  loc_C7BA72: PopAdLdVar
  loc_C7BA73: FLdPr Me
  loc_C7BA76: MemLdRfVar from_stack_1.global_60
  loc_C7BA79: LdPrVar
  loc_C7BA7B: LateMemCall
  loc_C7BA81: LitVarStr var_94, "        <tr>"
  loc_C7BA86: PopAdLdVar
  loc_C7BA87: FLdPr Me
  loc_C7BA8A: MemLdRfVar from_stack_1.global_60
  loc_C7BA8D: LdPrVar
  loc_C7BA8F: LateMemCall
  loc_C7BA95: LitVarStr var_94, "          <th align=""right"" valign=""top"" class=""Encabezado1"">Fecha de Pago:</th>"
  loc_C7BA9A: PopAdLdVar
  loc_C7BA9B: FLdPr Me
  loc_C7BA9E: MemLdRfVar from_stack_1.global_60
  loc_C7BAA1: LdPrVar
  loc_C7BAA3: LateMemCall
  loc_C7BAA9: LitStr "          <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C7BAAC: FMemLdR4 var_DC(88)
  loc_C7BAB1: ConcatStr
  loc_C7BAB2: FStStrNoPop var_A8
  loc_C7BAB5: LitStr "</th>"
  loc_C7BAB8: ConcatStr
  loc_C7BAB9: CVarStr var_BC
  loc_C7BABC: PopAdLdVar
  loc_C7BABD: FLdPr Me
  loc_C7BAC0: MemLdRfVar from_stack_1.global_60
  loc_C7BAC3: LdPrVar
  loc_C7BAC5: LateMemCall
  loc_C7BACB: FFree1Str var_A8
  loc_C7BACE: FFree1Var var_BC = ""
  loc_C7BAD1: LitVarStr var_94, "        </tr>"
  loc_C7BAD6: PopAdLdVar
  loc_C7BAD7: FLdPr Me
  loc_C7BADA: MemLdRfVar from_stack_1.global_60
  loc_C7BADD: LdPrVar
  loc_C7BADF: LateMemCall
  loc_C7BAE5: LitVarStr var_94, "        <tr>"
  loc_C7BAEA: PopAdLdVar
  loc_C7BAEB: FLdPr Me
  loc_C7BAEE: MemLdRfVar from_stack_1.global_60
  loc_C7BAF1: LdPrVar
  loc_C7BAF3: LateMemCall
  loc_C7BAF9: LitVarStr var_94, "          <th align=""right"" valign=""top"" class=""Encabezado1"">Fecha de Actualizaci&oacute;n:</th>"
  loc_C7BAFE: PopAdLdVar
  loc_C7BAFF: FLdPr Me
  loc_C7BB02: MemLdRfVar from_stack_1.global_60
  loc_C7BB05: LdPrVar
  loc_C7BB07: LateMemCall
  loc_C7BB0D: LitStr "          <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C7BB10: FMemLdR4 var_DC(84)
  loc_C7BB15: ConcatStr
  loc_C7BB16: FStStrNoPop var_A8
  loc_C7BB19: LitStr "</th>"
  loc_C7BB1C: ConcatStr
  loc_C7BB1D: CVarStr var_BC
  loc_C7BB20: PopAdLdVar
  loc_C7BB21: FLdPr Me
  loc_C7BB24: MemLdRfVar from_stack_1.global_60
  loc_C7BB27: LdPrVar
  loc_C7BB29: LateMemCall
  loc_C7BB2F: FFree1Str var_A8
  loc_C7BB32: FFree1Var var_BC = ""
  loc_C7BB35: LitVarStr var_94, "        </tr>"
  loc_C7BB3A: PopAdLdVar
  loc_C7BB3B: FLdPr Me
  loc_C7BB3E: MemLdRfVar from_stack_1.global_60
  loc_C7BB41: LdPrVar
  loc_C7BB43: LateMemCall
  loc_C7BB49: LitVarStr var_94, "        <tr>"
  loc_C7BB4E: PopAdLdVar
  loc_C7BB4F: FLdPr Me
  loc_C7BB52: MemLdRfVar from_stack_1.global_60
  loc_C7BB55: LdPrVar
  loc_C7BB57: LateMemCall
  loc_C7BB5D: LitVarStr var_94, "          <th align=""right"" valign=""top"" class=""Encabezado1"">Fecha de Vencimiento:</th>"
  loc_C7BB62: PopAdLdVar
  loc_C7BB63: FLdPr Me
  loc_C7BB66: MemLdRfVar from_stack_1.global_60
  loc_C7BB69: LdPrVar
  loc_C7BB6B: LateMemCall
  loc_C7BB71: LitStr "          <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C7BB74: FMemLdR4 var_DC(104)
  loc_C7BB79: ConcatStr
  loc_C7BB7A: FStStrNoPop var_A8
  loc_C7BB7D: LitStr "</th>"
  loc_C7BB80: ConcatStr
  loc_C7BB81: CVarStr var_BC
  loc_C7BB84: PopAdLdVar
  loc_C7BB85: FLdPr Me
  loc_C7BB88: MemLdRfVar from_stack_1.global_60
  loc_C7BB8B: LdPrVar
  loc_C7BB8D: LateMemCall
  loc_C7BB93: FFree1Str var_A8
  loc_C7BB96: FFree1Var var_BC = ""
  loc_C7BB99: LitVarStr var_94, "        </tr>"
  loc_C7BB9E: PopAdLdVar
  loc_C7BB9F: FLdPr Me
  loc_C7BBA2: MemLdRfVar from_stack_1.global_60
  loc_C7BBA5: LdPrVar
  loc_C7BBA7: LateMemCall
  loc_C7BBAD: LitVarStr var_94, "        <tr>"
  loc_C7BBB2: PopAdLdVar
  loc_C7BBB3: FLdPr Me
  loc_C7BBB6: MemLdRfVar from_stack_1.global_60
  loc_C7BBB9: LdPrVar
  loc_C7BBBB: LateMemCall
  loc_C7BBC1: LitVarStr var_94, "          <th align=""right"" valign=""top"" class=""Encabezado1"">Usuario que Pagó:</th>"
  loc_C7BBC6: PopAdLdVar
  loc_C7BBC7: FLdPr Me
  loc_C7BBCA: MemLdRfVar from_stack_1.global_60
  loc_C7BBCD: LdPrVar
  loc_C7BBCF: LateMemCall
  loc_C7BBD5: LitStr "          <th align=""left"" valign=""top"" class=""Normal1"">"
  loc_C7BBD8: FMemLdR4 var_DC(112)
  loc_C7BBDD: ConcatStr
  loc_C7BBDE: FStStrNoPop var_A8
  loc_C7BBE1: LitStr "</th>"
  loc_C7BBE4: ConcatStr
  loc_C7BBE5: CVarStr var_BC
  loc_C7BBE8: PopAdLdVar
  loc_C7BBE9: FLdPr Me
  loc_C7BBEC: MemLdRfVar from_stack_1.global_60
  loc_C7BBEF: LdPrVar
  loc_C7BBF1: LateMemCall
  loc_C7BBF7: FFree1Str var_A8
  loc_C7BBFA: FFree1Var var_BC = ""
  loc_C7BBFD: LitVarStr var_94, "        </tr>"
  loc_C7BC02: PopAdLdVar
  loc_C7BC03: FLdPr Me
  loc_C7BC06: MemLdRfVar from_stack_1.global_60
  loc_C7BC09: LdPrVar
  loc_C7BC0B: LateMemCall
  loc_C7BC11: LitVarStr var_94, "      </table></td>"
  loc_C7BC16: PopAdLdVar
  loc_C7BC17: FLdPr Me
  loc_C7BC1A: MemLdRfVar from_stack_1.global_60
  loc_C7BC1D: LdPrVar
  loc_C7BC1F: LateMemCall
  loc_C7BC25: LitVarStr var_94, "  </tr>"
  loc_C7BC2A: PopAdLdVar
  loc_C7BC2B: FLdPr Me
  loc_C7BC2E: MemLdRfVar from_stack_1.global_60
  loc_C7BC31: LdPrVar
  loc_C7BC33: LateMemCall
  loc_C7BC39: FMemLdRf unk_46CB31
  loc_C7BC3E: CVarRef
  loc_C7BC43: FLdRfVar var_BC
  loc_C7BC46: ImpAdCallFPR4  = Trim()
  loc_C7BC4B: FLdRfVar var_BC
  loc_C7BC4E: LitVarStr var_A4, vbNullString
  loc_C7BC53: HardType
  loc_C7BC54: NeVarBool
  loc_C7BC56: FFree1Var var_BC = ""
  loc_C7BC59: BranchF loc_C7BD10
  loc_C7BC5C: LitVarStr var_94, "  <tr valign=""top"" class=""Normal"">"
  loc_C7BC61: PopAdLdVar
  loc_C7BC62: FLdPr Me
  loc_C7BC65: MemLdRfVar from_stack_1.global_60
  loc_C7BC68: LdPrVar
  loc_C7BC6A: LateMemCall
  loc_C7BC70: LitVarStr var_94, "   <td align=""left""><table border=""0"" align=""left"" cellpadding=""1"" cellspacing=""4"">"
  loc_C7BC75: PopAdLdVar
  loc_C7BC76: FLdPr Me
  loc_C7BC79: MemLdRfVar from_stack_1.global_60
  loc_C7BC7C: LdPrVar
  loc_C7BC7E: LateMemCall
  loc_C7BC84: LitVarStr var_94, "   <tr valign=""top"">"
  loc_C7BC89: PopAdLdVar
  loc_C7BC8A: FLdPr Me
  loc_C7BC8D: MemLdRfVar from_stack_1.global_60
  loc_C7BC90: LdPrVar
  loc_C7BC92: LateMemCall
  loc_C7BC98: LitVarStr var_94, "          <th width=""115"" align=""right"" class=""Encabezado1"">Observaciones:</th>"
  loc_C7BC9D: PopAdLdVar
  loc_C7BC9E: FLdPr Me
  loc_C7BCA1: MemLdRfVar from_stack_1.global_60
  loc_C7BCA4: LdPrVar
  loc_C7BCA6: LateMemCall
  loc_C7BCAC: LitStr "          <th align=""justify"" class=""Normal1"">"
  loc_C7BCAF: FMemLdR4 var_DC(120)
  loc_C7BCB4: ConcatStr
  loc_C7BCB5: FStStrNoPop var_A8
  loc_C7BCB8: LitStr "</th>"
  loc_C7BCBB: ConcatStr
  loc_C7BCBC: CVarStr var_BC
  loc_C7BCBF: PopAdLdVar
  loc_C7BCC0: FLdPr Me
  loc_C7BCC3: MemLdRfVar from_stack_1.global_60
  loc_C7BCC6: LdPrVar
  loc_C7BCC8: LateMemCall
  loc_C7BCCE: FFree1Str var_A8
  loc_C7BCD1: FFree1Var var_BC = ""
  loc_C7BCD4: LitVarStr var_94, "        </tr>"
  loc_C7BCD9: PopAdLdVar
  loc_C7BCDA: FLdPr Me
  loc_C7BCDD: MemLdRfVar from_stack_1.global_60
  loc_C7BCE0: LdPrVar
  loc_C7BCE2: LateMemCall
  loc_C7BCE8: LitVarStr var_94, " </table></td>"
  loc_C7BCED: PopAdLdVar
  loc_C7BCEE: FLdPr Me
  loc_C7BCF1: MemLdRfVar from_stack_1.global_60
  loc_C7BCF4: LdPrVar
  loc_C7BCF6: LateMemCall
  loc_C7BCFC: LitVarStr var_94, "  </tr>"
  loc_C7BD01: PopAdLdVar
  loc_C7BD02: FLdPr Me
  loc_C7BD05: MemLdRfVar from_stack_1.global_60
  loc_C7BD08: LdPrVar
  loc_C7BD0A: LateMemCall
  loc_C7BD10: LitI4 0
  loc_C7BD15: FStR4 var_DC
  loc_C7BD18: AryUnlock
  loc_C7BD1B: LitVarStr var_94, "  <tr valign=""top"" class=""Normal"">"
  loc_C7BD20: PopAdLdVar
  loc_C7BD21: FLdPr Me
  loc_C7BD24: MemLdRfVar from_stack_1.global_60
  loc_C7BD27: LdPrVar
  loc_C7BD29: LateMemCall
  loc_C7BD2F: LitVarStr var_94, "    <td align=""left"" valign=""top""><hr></td>"
  loc_C7BD34: PopAdLdVar
  loc_C7BD35: FLdPr Me
  loc_C7BD38: MemLdRfVar from_stack_1.global_60
  loc_C7BD3B: LdPrVar
  loc_C7BD3D: LateMemCall
  loc_C7BD43: LitVarStr var_94, "  </tr>"
  loc_C7BD48: PopAdLdVar
  loc_C7BD49: FLdPr Me
  loc_C7BD4C: MemLdRfVar from_stack_1.global_60
  loc_C7BD4F: LdPrVar
  loc_C7BD51: LateMemCall
  loc_C7BD57: LitVarStr var_94, "</table>"
  loc_C7BD5C: PopAdLdVar
  loc_C7BD5D: FLdPr Me
  loc_C7BD60: MemLdRfVar from_stack_1.global_60
  loc_C7BD63: LdPrVar
  loc_C7BD65: LateMemCall
  loc_C7BD6B: ExitProcHresult
End Function

Private Function Proc_295_19_BB7E9C() 'BB7E9C
  'Data Table: 46CC0C
  loc_BB780C: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" cellspacing=""0"" class=""Normal"">"
  loc_BB7811: PopAdLdVar
  loc_BB7812: FLdPr Me
  loc_BB7815: MemLdRfVar from_stack_1.global_60
  loc_BB7818: LdPrVar
  loc_BB781A: LateMemCall
  loc_BB7820: LitVarStr var_94, "  <THEAD>"
  loc_BB7825: PopAdLdVar
  loc_BB7826: FLdPr Me
  loc_BB7829: MemLdRfVar from_stack_1.global_60
  loc_BB782C: LdPrVar
  loc_BB782E: LateMemCall
  loc_BB7834: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_BB7839: PopAdLdVar
  loc_BB783A: FLdPr Me
  loc_BB783D: MemLdRfVar from_stack_1.global_60
  loc_BB7840: LdPrVar
  loc_BB7842: LateMemCall
  loc_BB7848: LitVarStr var_94, "    <td colspan=""3"">DESCRIPCI&Oacute;N</td>"
  loc_BB784D: PopAdLdVar
  loc_BB784E: FLdPr Me
  loc_BB7851: MemLdRfVar from_stack_1.global_60
  loc_BB7854: LdPrVar
  loc_BB7856: LateMemCall
  loc_BB785C: LitVarStr var_94, "    <td width=""10" & Chr(37) & """>FACILIDAD</td>"
  loc_BB7861: PopAdLdVar
  loc_BB7862: FLdPr Me
  loc_BB7865: MemLdRfVar from_stack_1.global_60
  loc_BB7868: LdPrVar
  loc_BB786A: LateMemCall
  loc_BB7870: LitVarStr var_94, "    <td width=""10" & Chr(37) & """>CUOTA</td>"
  loc_BB7875: PopAdLdVar
  loc_BB7876: FLdPr Me
  loc_BB7879: MemLdRfVar from_stack_1.global_60
  loc_BB787C: LdPrVar
  loc_BB787E: LateMemCall
  loc_BB7884: LitVarStr var_94, "    <td width=""10" & Chr(37) & """>DERECHO</td>"
  loc_BB7889: PopAdLdVar
  loc_BB788A: FLdPr Me
  loc_BB788D: MemLdRfVar from_stack_1.global_60
  loc_BB7890: LdPrVar
  loc_BB7892: LateMemCall
  loc_BB7898: LitVarStr var_94, "    <td width=""10" & Chr(37) & """>RECARGO</td>"
  loc_BB789D: PopAdLdVar
  loc_BB789E: FLdPr Me
  loc_BB78A1: MemLdRfVar from_stack_1.global_60
  loc_BB78A4: LdPrVar
  loc_BB78A6: LateMemCall
  loc_BB78AC: LitVarStr var_94, "    <td width=""10" & Chr(37) & """>INTER&Eacute;S</td>"
  loc_BB78B1: PopAdLdVar
  loc_BB78B2: FLdPr Me
  loc_BB78B5: MemLdRfVar from_stack_1.global_60
  loc_BB78B8: LdPrVar
  loc_BB78BA: LateMemCall
  loc_BB78C0: LitVarStr var_94, "    <td width=""10" & Chr(37) & """>DESCUENTO</td>"
  loc_BB78C5: PopAdLdVar
  loc_BB78C6: FLdPr Me
  loc_BB78C9: MemLdRfVar from_stack_1.global_60
  loc_BB78CC: LdPrVar
  loc_BB78CE: LateMemCall
  loc_BB78D4: LitVarStr var_94, "    <td width=""14" & Chr(37) & """>TOTAL</td>"
  loc_BB78D9: PopAdLdVar
  loc_BB78DA: FLdPr Me
  loc_BB78DD: MemLdRfVar from_stack_1.global_60
  loc_BB78E0: LdPrVar
  loc_BB78E2: LateMemCall
  loc_BB78E8: LitVarStr var_94, "  </tr>"
  loc_BB78ED: PopAdLdVar
  loc_BB78EE: FLdPr Me
  loc_BB78F1: MemLdRfVar from_stack_1.global_60
  loc_BB78F4: LdPrVar
  loc_BB78F6: LateMemCall
  loc_BB78FC: LitVarStr var_94, "  </THEAD>"
  loc_BB7901: PopAdLdVar
  loc_BB7902: FLdPr Me
  loc_BB7905: MemLdRfVar from_stack_1.global_60
  loc_BB7908: LdPrVar
  loc_BB790A: LateMemCall
  loc_BB7910: LitI2_Byte 1
  loc_BB7912: FLdPr Me
  loc_BB7915: MemLdRfVar from_stack_1.global_96
  loc_BB7918: LitI4 1
  loc_BB791D: FLdPr Me
  loc_BB7920: MemLdStr global_92
  loc_BB7923: Ary1LdPr
  loc_BB7924: MemLdStr global_124
  loc_BB7927: LitI2_Byte 1
  loc_BB7929: FnUBound
  loc_BB792B: CI2I4
  loc_BB792C: ForI2 var_A8
  loc_BB7932: LitVarStr var_94, "  <tr>"
  loc_BB7937: PopAdLdVar
  loc_BB7938: FLdPr Me
  loc_BB793B: MemLdRfVar from_stack_1.global_60
  loc_BB793E: LdPrVar
  loc_BB7940: LateMemCall
  loc_BB7946: LitStr "    <td colspan=""10"" align=""left"">"
  loc_BB7949: FLdPr Me
  loc_BB794C: MemLdI2 global_96
  loc_BB794F: CI4UI1
  loc_BB7950: LitI4 1
  loc_BB7955: FLdPr Me
  loc_BB7958: MemLdStr global_92
  loc_BB795B: Ary1LdPr
  loc_BB795C: MemLdStr global_124
  loc_BB795F: Ary1LdPr
  loc_BB7960: MemLdStr global_0
  loc_BB7963: ConcatStr
  loc_BB7964: FStStrNoPop var_AC
  loc_BB7967: LitStr " - "
  loc_BB796A: ConcatStr
  loc_BB796B: FStStrNoPop var_B0
  loc_BB796E: FLdPr Me
  loc_BB7971: MemLdI2 global_96
  loc_BB7974: CI4UI1
  loc_BB7975: LitI4 1
  loc_BB797A: FLdPr Me
  loc_BB797D: MemLdStr global_92
  loc_BB7980: Ary1LdPr
  loc_BB7981: MemLdStr global_124
  loc_BB7984: Ary1LdPr
  loc_BB7985: MemLdStr global_4
  loc_BB7988: ConcatStr
  loc_BB7989: FStStrNoPop var_B4
  loc_BB798C: LitStr "</td>"
  loc_BB798F: ConcatStr
  loc_BB7990: CVarStr var_C4
  loc_BB7993: PopAdLdVar
  loc_BB7994: FLdPr Me
  loc_BB7997: MemLdRfVar from_stack_1.global_60
  loc_BB799A: LdPrVar
  loc_BB799C: LateMemCall
  loc_BB79A2: FFreeStr var_AC = "": var_B0 = ""
  loc_BB79AB: FFree1Var var_C4 = ""
  loc_BB79AE: LitVarStr var_94, "  </tr>"
  loc_BB79B3: PopAdLdVar
  loc_BB79B4: FLdPr Me
  loc_BB79B7: MemLdRfVar from_stack_1.global_60
  loc_BB79BA: LdPrVar
  loc_BB79BC: LateMemCall
  loc_BB79C2: LitI2_Byte 1
  loc_BB79C4: FLdPr Me
  loc_BB79C7: MemLdRfVar from_stack_1.global_98
  loc_BB79CA: FLdPr Me
  loc_BB79CD: MemLdI2 global_96
  loc_BB79D0: CI4UI1
  loc_BB79D1: LitI4 1
  loc_BB79D6: FLdPr Me
  loc_BB79D9: MemLdStr global_92
  loc_BB79DC: Ary1LdPr
  loc_BB79DD: MemLdStr global_124
  loc_BB79E0: Ary1LdPr
  loc_BB79E1: MemLdStr global_8
  loc_BB79E4: LitI2_Byte 1
  loc_BB79E6: FnUBound
  loc_BB79E8: CI2I4
  loc_BB79E9: ForI2 var_C8
  loc_BB79EF: LitVarStr var_94, "  <tr>"
  loc_BB79F4: PopAdLdVar
  loc_BB79F5: FLdPr Me
  loc_BB79F8: MemLdRfVar from_stack_1.global_60
  loc_BB79FB: LdPrVar
  loc_BB79FD: LateMemCall
  loc_BB7A03: LitStr "    <td width=""40" & Chr(37) & """ rowspan="""
  loc_BB7A06: FLdPr Me
  loc_BB7A09: MemLdI2 global_98
  loc_BB7A0C: CI4UI1
  loc_BB7A0D: FLdPr Me
  loc_BB7A10: MemLdI2 global_96
  loc_BB7A13: CI4UI1
  loc_BB7A14: LitI4 1
  loc_BB7A19: FLdPr Me
  loc_BB7A1C: MemLdStr global_92
  loc_BB7A1F: Ary1LdPr
  loc_BB7A20: MemLdStr global_124
  loc_BB7A23: Ary1LdPr
  loc_BB7A24: MemLdStr global_8
  loc_BB7A27: Ary1LdPr
  loc_BB7A28: MemLdStr global_4
  loc_BB7A2B: LitI2_Byte 1
  loc_BB7A2D: FnUBound
  loc_BB7A2F: CStrI4
  loc_BB7A31: FStStrNoPop var_AC
  loc_BB7A34: ConcatStr
  loc_BB7A35: FStStrNoPop var_B0
  loc_BB7A38: LitStr """ valign=""top"">Periodo: "
  loc_BB7A3B: ConcatStr
  loc_BB7A3C: FStStrNoPop var_B4
  loc_BB7A3F: FLdPr Me
  loc_BB7A42: MemLdI2 global_98
  loc_BB7A45: CI4UI1
  loc_BB7A46: FLdPr Me
  loc_BB7A49: MemLdI2 global_96
  loc_BB7A4C: CI4UI1
  loc_BB7A4D: LitI4 1
  loc_BB7A52: FLdPr Me
  loc_BB7A55: MemLdStr global_92
  loc_BB7A58: Ary1LdPr
  loc_BB7A59: MemLdStr global_124
  loc_BB7A5C: Ary1LdPr
  loc_BB7A5D: MemLdStr global_8
  loc_BB7A60: Ary1LdPr
  loc_BB7A61: MemLdStr global_0
  loc_BB7A64: ConcatStr
  loc_BB7A65: FStStrNoPop var_CC
  loc_BB7A68: LitStr "</td>"
  loc_BB7A6B: ConcatStr
  loc_BB7A6C: CVarStr var_C4
  loc_BB7A6F: PopAdLdVar
  loc_BB7A70: FLdPr Me
  loc_BB7A73: MemLdRfVar from_stack_1.global_60
  loc_BB7A76: LdPrVar
  loc_BB7A78: LateMemCall
  loc_BB7A7E: FFreeStr var_AC = "": var_B0 = "": var_B4 = ""
  loc_BB7A89: FFree1Var var_C4 = ""
  loc_BB7A8C: LitStr "    <td width=""6" & Chr(37) & """ rowspan="""
  loc_BB7A8F: FLdPr Me
  loc_BB7A92: MemLdI2 global_98
  loc_BB7A95: CI4UI1
  loc_BB7A96: FLdPr Me
  loc_BB7A99: MemLdI2 global_96
  loc_BB7A9C: CI4UI1
  loc_BB7A9D: LitI4 1
  loc_BB7AA2: FLdPr Me
  loc_BB7AA5: MemLdStr global_92
  loc_BB7AA8: Ary1LdPr
  loc_BB7AA9: MemLdStr global_124
  loc_BB7AAC: Ary1LdPr
  loc_BB7AAD: MemLdStr global_8
  loc_BB7AB0: Ary1LdPr
  loc_BB7AB1: MemLdStr global_4
  loc_BB7AB4: LitI2_Byte 1
  loc_BB7AB6: FnUBound
  loc_BB7AB8: CStrI4
  loc_BB7ABA: FStStrNoPop var_AC
  loc_BB7ABD: ConcatStr
  loc_BB7ABE: FStStrNoPop var_B0
  loc_BB7AC1: LitStr """ valign=""top"">Bimestre:</td>"
  loc_BB7AC4: ConcatStr
  loc_BB7AC5: CVarStr var_C4
  loc_BB7AC8: PopAdLdVar
  loc_BB7AC9: FLdPr Me
  loc_BB7ACC: MemLdRfVar from_stack_1.global_60
  loc_BB7ACF: LdPrVar
  loc_BB7AD1: LateMemCall
  loc_BB7AD7: FFreeStr var_AC = ""
  loc_BB7ADE: FFree1Var var_C4 = ""
  loc_BB7AE1: LitI2_Byte 1
  loc_BB7AE3: FLdPr Me
  loc_BB7AE6: MemLdRfVar from_stack_1.global_100
  loc_BB7AE9: FLdPr Me
  loc_BB7AEC: MemLdI2 global_98
  loc_BB7AEF: CI4UI1
  loc_BB7AF0: FLdPr Me
  loc_BB7AF3: MemLdI2 global_96
  loc_BB7AF6: CI4UI1
  loc_BB7AF7: LitI4 1
  loc_BB7AFC: FLdPr Me
  loc_BB7AFF: MemLdStr global_92
  loc_BB7B02: Ary1LdPr
  loc_BB7B03: MemLdStr global_124
  loc_BB7B06: Ary1LdPr
  loc_BB7B07: MemLdStr global_8
  loc_BB7B0A: Ary1LdPr
  loc_BB7B0B: MemLdStr global_4
  loc_BB7B0E: LitI2_Byte 1
  loc_BB7B10: FnUBound
  loc_BB7B12: CI2I4
  loc_BB7B13: ForI2 var_D0
  loc_BB7B19: FLdPr Me
  loc_BB7B1C: MemLdI2 global_100
  loc_BB7B1F: LitI2_Byte 1
  loc_BB7B21: GtI2
  loc_BB7B22: BranchF loc_BB7B39
  loc_BB7B25: LitVarStr var_94, "  <tr>"
  loc_BB7B2A: PopAdLdVar
  loc_BB7B2B: FLdPr Me
  loc_BB7B2E: MemLdRfVar from_stack_1.global_60
  loc_BB7B31: LdPrVar
  loc_BB7B33: LateMemCall
  loc_BB7B39: FLdPr Me
  loc_BB7B3C: MemLdI2 global_100
  loc_BB7B3F: CI4UI1
  loc_BB7B40: FLdPr Me
  loc_BB7B43: MemLdI2 global_98
  loc_BB7B46: CI4UI1
  loc_BB7B47: FLdPr Me
  loc_BB7B4A: MemLdI2 global_96
  loc_BB7B4D: CI4UI1
  loc_BB7B4E: LitI4 1
  loc_BB7B53: FLdPr Me
  loc_BB7B56: MemLdStr global_92
  loc_BB7B59: AryLock
  loc_BB7B5C: Ary1LdPr
  loc_BB7B5D: MemLdStr global_124
  loc_BB7B60: AryLock
  loc_BB7B63: Ary1LdPr
  loc_BB7B64: MemLdStr global_8
  loc_BB7B67: AryLock
  loc_BB7B6A: Ary1LdPr
  loc_BB7B6B: MemLdStr global_4
  loc_BB7B6E: AryLock
  loc_BB7B71: Ary1LdRf
  loc_BB7B72: FStR4 var_E4
  loc_BB7B75: LitStr "    <td width=""10" & Chr(37) & """ align=""center"">"
  loc_BB7B78: FMemLdR4 var_E4(0)
  loc_BB7B7D: ConcatStr
  loc_BB7B7E: FStStrNoPop var_AC
  loc_BB7B81: LitStr "</td>"
  loc_BB7B84: ConcatStr
  loc_BB7B85: CVarStr var_C4
  loc_BB7B88: PopAdLdVar
  loc_BB7B89: FLdPr Me
  loc_BB7B8C: MemLdRfVar from_stack_1.global_60
  loc_BB7B8F: LdPrVar
  loc_BB7B91: LateMemCall
  loc_BB7B97: FFree1Str var_AC
  loc_BB7B9A: FFree1Var var_C4 = ""
  loc_BB7B9D: FMemLdRf 0
  loc_BB7BA2: CVarRef
  loc_BB7BA7: LitVarStr var_A4, "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_BB7BAC: FStVarCopyObj var_C4
  loc_BB7BAF: FLdRfVar var_C4
  loc_BB7BB2: FMemLdR4 var_E4(12)
  loc_BB7BB7: LitStr "0,00"
  loc_BB7BBA: EqStr
  loc_BB7BBC: CVarBoolI2 var_94
  loc_BB7BC0: FLdRfVar var_104
  loc_BB7BC3: ImpAdCallFPR4  = IIf(, , )
  loc_BB7BC8: LitStr vbNullString
  loc_BB7BCB: LitI2_Byte 0
  loc_BB7BCD: LitI2_Byte 0
  loc_BB7BCF: LitI2_Byte 0
  loc_BB7BD1: LitStr "right"
  loc_BB7BD4: FLdRfVar var_104
  loc_BB7BD7: CStrVarVal var_AC
  loc_BB7BDB: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BB7BE0: CVarStr var_114
  loc_BB7BE3: PopAdLdVar
  loc_BB7BE4: FLdPr Me
  loc_BB7BE7: MemLdRfVar from_stack_1.global_60
  loc_BB7BEA: LdPrVar
  loc_BB7BEC: LateMemCall
  loc_BB7BF2: FFree1Str var_AC
  loc_BB7BF5: FFreeVar var_94 = "": var_C4 = "": var_104 = ""
  loc_BB7C00: FMemLdRf 0
  loc_BB7C05: CVarRef
  loc_BB7C0A: LitVarStr var_A4, "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_BB7C0F: FStVarCopyObj var_C4
  loc_BB7C12: FLdRfVar var_C4
  loc_BB7C15: FMemLdR4 var_E4(12)
  loc_BB7C1A: LitStr "0,00"
  loc_BB7C1D: EqStr
  loc_BB7C1F: CVarBoolI2 var_94
  loc_BB7C23: FLdRfVar var_104
  loc_BB7C26: ImpAdCallFPR4  = IIf(, , )
  loc_BB7C2B: LitStr vbNullString
  loc_BB7C2E: LitI2_Byte 0
  loc_BB7C30: LitI2_Byte 0
  loc_BB7C32: LitI2_Byte 0
  loc_BB7C34: LitStr "right"
  loc_BB7C37: FLdRfVar var_104
  loc_BB7C3A: CStrVarVal var_AC
  loc_BB7C3E: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BB7C43: CVarStr var_114
  loc_BB7C46: PopAdLdVar
  loc_BB7C47: FLdPr Me
  loc_BB7C4A: MemLdRfVar from_stack_1.global_60
  loc_BB7C4D: LdPrVar
  loc_BB7C4F: LateMemCall
  loc_BB7C55: FFree1Str var_AC
  loc_BB7C58: FFreeVar var_94 = "": var_C4 = "": var_104 = ""
  loc_BB7C63: FMemLdRf 0
  loc_BB7C68: CVarRef
  loc_BB7C6D: LitVarStr var_A4, "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_BB7C72: FStVarCopyObj var_C4
  loc_BB7C75: FLdRfVar var_C4
  loc_BB7C78: FMemLdR4 var_E4(12)
  loc_BB7C7D: LitStr "0,00"
  loc_BB7C80: EqStr
  loc_BB7C82: CVarBoolI2 var_94
  loc_BB7C86: FLdRfVar var_104
  loc_BB7C89: ImpAdCallFPR4  = IIf(, , )
  loc_BB7C8E: LitStr vbNullString
  loc_BB7C91: LitI2_Byte 0
  loc_BB7C93: LitI2_Byte 0
  loc_BB7C95: LitI2_Byte 0
  loc_BB7C97: LitStr "right"
  loc_BB7C9A: FLdRfVar var_104
  loc_BB7C9D: CStrVarVal var_AC
  loc_BB7CA1: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BB7CA6: CVarStr var_114
  loc_BB7CA9: PopAdLdVar
  loc_BB7CAA: FLdPr Me
  loc_BB7CAD: MemLdRfVar from_stack_1.global_60
  loc_BB7CB0: LdPrVar
  loc_BB7CB2: LateMemCall
  loc_BB7CB8: FFree1Str var_AC
  loc_BB7CBB: FFreeVar var_94 = "": var_C4 = "": var_104 = ""
  loc_BB7CC6: FMemLdRf 0
  loc_BB7CCB: CVarRef
  loc_BB7CD0: LitVarStr var_A4, "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_BB7CD5: FStVarCopyObj var_C4
  loc_BB7CD8: FLdRfVar var_C4
  loc_BB7CDB: FMemLdR4 var_E4(16)
  loc_BB7CE0: LitStr "0,00"
  loc_BB7CE3: EqStr
  loc_BB7CE5: CVarBoolI2 var_94
  loc_BB7CE9: FLdRfVar var_104
  loc_BB7CEC: ImpAdCallFPR4  = IIf(, , )
  loc_BB7CF1: LitStr vbNullString
  loc_BB7CF4: LitI2_Byte 0
  loc_BB7CF6: LitI2_Byte 0
  loc_BB7CF8: LitI2_Byte 0
  loc_BB7CFA: LitStr "right"
  loc_BB7CFD: FLdRfVar var_104
  loc_BB7D00: CStrVarVal var_AC
  loc_BB7D04: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BB7D09: CVarStr var_114
  loc_BB7D0C: PopAdLdVar
  loc_BB7D0D: FLdPr Me
  loc_BB7D10: MemLdRfVar from_stack_1.global_60
  loc_BB7D13: LdPrVar
  loc_BB7D15: LateMemCall
  loc_BB7D1B: FFree1Str var_AC
  loc_BB7D1E: FFreeVar var_94 = "": var_C4 = "": var_104 = ""
  loc_BB7D29: FMemLdRf 0
  loc_BB7D2E: CVarRef
  loc_BB7D33: LitVarStr var_A4, "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_BB7D38: FStVarCopyObj var_C4
  loc_BB7D3B: FLdRfVar var_C4
  loc_BB7D3E: FMemLdR4 var_E4(20)
  loc_BB7D43: LitStr "0,00"
  loc_BB7D46: EqStr
  loc_BB7D48: CVarBoolI2 var_94
  loc_BB7D4C: FLdRfVar var_104
  loc_BB7D4F: ImpAdCallFPR4  = IIf(, , )
  loc_BB7D54: LitStr vbNullString
  loc_BB7D57: LitI2_Byte 0
  loc_BB7D59: LitI2_Byte 0
  loc_BB7D5B: LitI2_Byte 0
  loc_BB7D5D: LitStr "right"
  loc_BB7D60: FLdRfVar var_104
  loc_BB7D63: CStrVarVal var_AC
  loc_BB7D67: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BB7D6C: CVarStr var_114
  loc_BB7D6F: PopAdLdVar
  loc_BB7D70: FLdPr Me
  loc_BB7D73: MemLdRfVar from_stack_1.global_60
  loc_BB7D76: LdPrVar
  loc_BB7D78: LateMemCall
  loc_BB7D7E: FFree1Str var_AC
  loc_BB7D81: FFreeVar var_94 = "": var_C4 = "": var_104 = ""
  loc_BB7D8C: FMemLdRf 0
  loc_BB7D91: CVarRef
  loc_BB7D96: LitVarStr var_A4, "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_BB7D9B: FStVarCopyObj var_C4
  loc_BB7D9E: FLdRfVar var_C4
  loc_BB7DA1: FMemLdR4 var_E4(24)
  loc_BB7DA6: LitStr "0,00"
  loc_BB7DA9: EqStr
  loc_BB7DAB: CVarBoolI2 var_94
  loc_BB7DAF: FLdRfVar var_104
  loc_BB7DB2: ImpAdCallFPR4  = IIf(, , )
  loc_BB7DB7: LitStr vbNullString
  loc_BB7DBA: LitI2_Byte 0
  loc_BB7DBC: LitI2_Byte 0
  loc_BB7DBE: LitI2_Byte 0
  loc_BB7DC0: LitStr "right"
  loc_BB7DC3: FLdRfVar var_104
  loc_BB7DC6: CStrVarVal var_AC
  loc_BB7DCA: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BB7DCF: CVarStr var_114
  loc_BB7DD2: PopAdLdVar
  loc_BB7DD3: FLdPr Me
  loc_BB7DD6: MemLdRfVar from_stack_1.global_60
  loc_BB7DD9: LdPrVar
  loc_BB7DDB: LateMemCall
  loc_BB7DE1: FFree1Str var_AC
  loc_BB7DE4: FFreeVar var_94 = "": var_C4 = "": var_104 = ""
  loc_BB7DEF: FMemLdRf 0
  loc_BB7DF4: CVarRef
  loc_BB7DF9: LitVarStr var_A4, "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_BB7DFE: FStVarCopyObj var_C4
  loc_BB7E01: FLdRfVar var_C4
  loc_BB7E04: FMemLdR4 var_E4(28)
  loc_BB7E09: LitStr "0,00"
  loc_BB7E0C: EqStr
  loc_BB7E0E: CVarBoolI2 var_94
  loc_BB7E12: FLdRfVar var_104
  loc_BB7E15: ImpAdCallFPR4  = IIf(, , )
  loc_BB7E1A: LitStr vbNullString
  loc_BB7E1D: LitI2_Byte 0
  loc_BB7E1F: LitI2_Byte 0
  loc_BB7E21: LitI2_Byte 0
  loc_BB7E23: LitStr "right"
  loc_BB7E26: FLdRfVar var_104
  loc_BB7E29: CStrVarVal var_AC
  loc_BB7E2D: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BB7E32: CVarStr var_114
  loc_BB7E35: PopAdLdVar
  loc_BB7E36: FLdPr Me
  loc_BB7E39: MemLdRfVar from_stack_1.global_60
  loc_BB7E3C: LdPrVar
  loc_BB7E3E: LateMemCall
  loc_BB7E44: FFree1Str var_AC
  loc_BB7E47: FFreeVar var_94 = "": var_C4 = "": var_104 = ""
  loc_BB7E52: LitI4 0
  loc_BB7E57: FStR4 var_E4
  loc_BB7E5A: AryUnlock
  loc_BB7E5D: AryUnlock
  loc_BB7E60: AryUnlock
  loc_BB7E63: AryUnlock
  loc_BB7E66: LitVarStr var_94, "  </tr>"
  loc_BB7E6B: PopAdLdVar
  loc_BB7E6C: FLdPr Me
  loc_BB7E6F: MemLdRfVar from_stack_1.global_60
  loc_BB7E72: LdPrVar
  loc_BB7E74: LateMemCall
  loc_BB7E7A: FLdPr Me
  loc_BB7E7D: MemLdRfVar from_stack_1.global_100
  loc_BB7E80: NextI2 var_D0, loc_BB7B19
  loc_BB7E85: FLdPr Me
  loc_BB7E88: MemLdRfVar from_stack_1.global_98
  loc_BB7E8B: NextI2 var_C8, loc_BB79EF
  loc_BB7E90: FLdPr Me
  loc_BB7E93: MemLdRfVar from_stack_1.global_96
  loc_BB7E96: NextI2 var_A8, loc_BB7932
  loc_BB7E9B: ExitProcHresult
End Function

Private Function Proc_295_20_B32FBC() 'B32FBC
  'Data Table: 46CC0C
  loc_B32CC4: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" cellspacing=""0"" class=""Normal"">"
  loc_B32CC9: PopAdLdVar
  loc_B32CCA: FLdPr Me
  loc_B32CCD: MemLdRfVar from_stack_1.global_60
  loc_B32CD0: LdPrVar
  loc_B32CD2: LateMemCall
  loc_B32CD8: LitVarStr var_94, "  <THEAD>"
  loc_B32CDD: PopAdLdVar
  loc_B32CDE: FLdPr Me
  loc_B32CE1: MemLdRfVar from_stack_1.global_60
  loc_B32CE4: LdPrVar
  loc_B32CE6: LateMemCall
  loc_B32CEC: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_B32CF1: PopAdLdVar
  loc_B32CF2: FLdPr Me
  loc_B32CF5: MemLdRfVar from_stack_1.global_60
  loc_B32CF8: LdPrVar
  loc_B32CFA: LateMemCall
  loc_B32D00: LitVarStr var_94, "    <td>Periodo</td>"
  loc_B32D05: PopAdLdVar
  loc_B32D06: FLdPr Me
  loc_B32D09: MemLdRfVar from_stack_1.global_60
  loc_B32D0C: LdPrVar
  loc_B32D0E: LateMemCall
  loc_B32D14: LitVarStr var_94, "    <td>Bimestre</td>"
  loc_B32D19: PopAdLdVar
  loc_B32D1A: FLdPr Me
  loc_B32D1D: MemLdRfVar from_stack_1.global_60
  loc_B32D20: LdPrVar
  loc_B32D22: LateMemCall
  loc_B32D28: LitVarStr var_94, "    <td>Detalle o Servicio</td>"
  loc_B32D2D: PopAdLdVar
  loc_B32D2E: FLdPr Me
  loc_B32D31: MemLdRfVar from_stack_1.global_60
  loc_B32D34: LdPrVar
  loc_B32D36: LateMemCall
  loc_B32D3C: LitVarStr var_94, "    <td>Cantidad</td>"
  loc_B32D41: PopAdLdVar
  loc_B32D42: FLdPr Me
  loc_B32D45: MemLdRfVar from_stack_1.global_60
  loc_B32D48: LdPrVar
  loc_B32D4A: LateMemCall
  loc_B32D50: LitVarStr var_94, "    <td>Precio<br>Unitario</td>"
  loc_B32D55: PopAdLdVar
  loc_B32D56: FLdPr Me
  loc_B32D59: MemLdRfVar from_stack_1.global_60
  loc_B32D5C: LdPrVar
  loc_B32D5E: LateMemCall
  loc_B32D64: LitVarStr var_94, "    <td>Subtotal</td>"
  loc_B32D69: PopAdLdVar
  loc_B32D6A: FLdPr Me
  loc_B32D6D: MemLdRfVar from_stack_1.global_60
  loc_B32D70: LdPrVar
  loc_B32D72: LateMemCall
  loc_B32D78: LitVarStr var_94, "    <td>Descuento</td>"
  loc_B32D7D: PopAdLdVar
  loc_B32D7E: FLdPr Me
  loc_B32D81: MemLdRfVar from_stack_1.global_60
  loc_B32D84: LdPrVar
  loc_B32D86: LateMemCall
  loc_B32D8C: LitVarStr var_94, "    <td>Total</td>"
  loc_B32D91: PopAdLdVar
  loc_B32D92: FLdPr Me
  loc_B32D95: MemLdRfVar from_stack_1.global_60
  loc_B32D98: LdPrVar
  loc_B32D9A: LateMemCall
  loc_B32DA0: LitVarStr var_94, "  </tr>"
  loc_B32DA5: PopAdLdVar
  loc_B32DA6: FLdPr Me
  loc_B32DA9: MemLdRfVar from_stack_1.global_60
  loc_B32DAC: LdPrVar
  loc_B32DAE: LateMemCall
  loc_B32DB4: LitVarStr var_94, "  </THEAD>"
  loc_B32DB9: PopAdLdVar
  loc_B32DBA: FLdPr Me
  loc_B32DBD: MemLdRfVar from_stack_1.global_60
  loc_B32DC0: LdPrVar
  loc_B32DC2: LateMemCall
  loc_B32DC8: LitI2_Byte 1
  loc_B32DCA: FLdPr Me
  loc_B32DCD: MemLdRfVar from_stack_1.global_100
  loc_B32DD0: LitI4 1
  loc_B32DD5: FLdPr Me
  loc_B32DD8: MemLdStr global_92
  loc_B32DDB: Ary1LdPr
  loc_B32DDC: MemLdStr global_128
  loc_B32DDF: LitI2_Byte 1
  loc_B32DE1: FnUBound
  loc_B32DE3: CI2I4
  loc_B32DE4: ForI2 var_A8
  loc_B32DEA: LitVarStr var_94, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B32DEF: PopAdLdVar
  loc_B32DF0: FLdPr Me
  loc_B32DF3: MemLdRfVar from_stack_1.global_60
  loc_B32DF6: LdPrVar
  loc_B32DF8: LateMemCall
  loc_B32DFE: FLdPr Me
  loc_B32E01: MemLdI2 global_100
  loc_B32E04: CI4UI1
  loc_B32E05: LitI4 1
  loc_B32E0A: FLdPr Me
  loc_B32E0D: MemLdStr global_92
  loc_B32E10: AryLock
  loc_B32E13: Ary1LdPr
  loc_B32E14: MemLdStr global_128
  loc_B32E17: AryLock
  loc_B32E1A: Ary1LdRf
  loc_B32E1B: FStR4 var_B4
  loc_B32E1E: LitStr vbNullString
  loc_B32E21: LitI2_Byte 0
  loc_B32E23: LitI2_Byte 0
  loc_B32E25: LitI2_Byte 0
  loc_B32E27: LitStr "right"
  loc_B32E2A: FMemLdR4 var_B4(0)
  loc_B32E2F: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B32E34: CVarStr var_C4
  loc_B32E37: PopAdLdVar
  loc_B32E38: FLdPr Me
  loc_B32E3B: MemLdRfVar from_stack_1.global_60
  loc_B32E3E: LdPrVar
  loc_B32E40: LateMemCall
  loc_B32E46: FFree1Var var_C4 = ""
  loc_B32E49: LitStr vbNullString
  loc_B32E4C: LitI2_Byte 0
  loc_B32E4E: LitI2_Byte 0
  loc_B32E50: LitI2_Byte 0
  loc_B32E52: LitStr "right"
  loc_B32E55: FMemLdR4 var_B4(4)
  loc_B32E5A: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B32E5F: CVarStr var_C4
  loc_B32E62: PopAdLdVar
  loc_B32E63: FLdPr Me
  loc_B32E66: MemLdRfVar from_stack_1.global_60
  loc_B32E69: LdPrVar
  loc_B32E6B: LateMemCall
  loc_B32E71: FFree1Var var_C4 = ""
  loc_B32E74: LitStr vbNullString
  loc_B32E77: LitI2_Byte 0
  loc_B32E79: LitI2_Byte 0
  loc_B32E7B: LitI2_Byte 0
  loc_B32E7D: LitStr "left"
  loc_B32E80: FMemLdR4 var_B4(16)
  loc_B32E85: LitStr " - "
  loc_B32E88: ConcatStr
  loc_B32E89: FStStrNoPop var_C8
  loc_B32E8C: FMemLdR4 var_B4(20)
  loc_B32E91: ConcatStr
  loc_B32E92: FStStrNoPop var_CC
  loc_B32E95: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B32E9A: CVarStr var_C4
  loc_B32E9D: PopAdLdVar
  loc_B32E9E: FLdPr Me
  loc_B32EA1: MemLdRfVar from_stack_1.global_60
  loc_B32EA4: LdPrVar
  loc_B32EA6: LateMemCall
  loc_B32EAC: FFreeStr var_C8 = ""
  loc_B32EB3: FFree1Var var_C4 = ""
  loc_B32EB6: LitStr vbNullString
  loc_B32EB9: LitI2_Byte 0
  loc_B32EBB: LitI2_Byte 0
  loc_B32EBD: LitI2_Byte 0
  loc_B32EBF: LitStr "right"
  loc_B32EC2: FMemLdR4 var_B4(24)
  loc_B32EC7: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B32ECC: CVarStr var_C4
  loc_B32ECF: PopAdLdVar
  loc_B32ED0: FLdPr Me
  loc_B32ED3: MemLdRfVar from_stack_1.global_60
  loc_B32ED6: LdPrVar
  loc_B32ED8: LateMemCall
  loc_B32EDE: FFree1Var var_C4 = ""
  loc_B32EE1: LitStr vbNullString
  loc_B32EE4: LitI2_Byte 0
  loc_B32EE6: LitI2_Byte 0
  loc_B32EE8: LitI2_Byte 0
  loc_B32EEA: LitStr "right"
  loc_B32EED: FMemLdR4 var_B4(28)
  loc_B32EF2: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B32EF7: CVarStr var_C4
  loc_B32EFA: PopAdLdVar
  loc_B32EFB: FLdPr Me
  loc_B32EFE: MemLdRfVar from_stack_1.global_60
  loc_B32F01: LdPrVar
  loc_B32F03: LateMemCall
  loc_B32F09: FFree1Var var_C4 = ""
  loc_B32F0C: LitStr vbNullString
  loc_B32F0F: LitI2_Byte 0
  loc_B32F11: LitI2_Byte 0
  loc_B32F13: LitI2_Byte 0
  loc_B32F15: LitStr "right"
  loc_B32F18: FMemLdR4 var_B4(32)
  loc_B32F1D: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B32F22: CVarStr var_C4
  loc_B32F25: PopAdLdVar
  loc_B32F26: FLdPr Me
  loc_B32F29: MemLdRfVar from_stack_1.global_60
  loc_B32F2C: LdPrVar
  loc_B32F2E: LateMemCall
  loc_B32F34: FFree1Var var_C4 = ""
  loc_B32F37: LitStr vbNullString
  loc_B32F3A: LitI2_Byte 0
  loc_B32F3C: LitI2_Byte 0
  loc_B32F3E: LitI2_Byte 0
  loc_B32F40: LitStr "right"
  loc_B32F43: FMemLdR4 var_B4(36)
  loc_B32F48: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B32F4D: CVarStr var_C4
  loc_B32F50: PopAdLdVar
  loc_B32F51: FLdPr Me
  loc_B32F54: MemLdRfVar from_stack_1.global_60
  loc_B32F57: LdPrVar
  loc_B32F59: LateMemCall
  loc_B32F5F: FFree1Var var_C4 = ""
  loc_B32F62: LitStr vbNullString
  loc_B32F65: LitI2_Byte 0
  loc_B32F67: LitI2_Byte 0
  loc_B32F69: LitI2_Byte 0
  loc_B32F6B: LitStr "right"
  loc_B32F6E: FMemLdR4 var_B4(40)
  loc_B32F73: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B32F78: CVarStr var_C4
  loc_B32F7B: PopAdLdVar
  loc_B32F7C: FLdPr Me
  loc_B32F7F: MemLdRfVar from_stack_1.global_60
  loc_B32F82: LdPrVar
  loc_B32F84: LateMemCall
  loc_B32F8A: FFree1Var var_C4 = ""
  loc_B32F8D: LitI4 0
  loc_B32F92: FStR4 var_B4
  loc_B32F95: AryUnlock
  loc_B32F98: AryUnlock
  loc_B32F9B: LitVarStr var_94, "     </tr>"
  loc_B32FA0: PopAdLdVar
  loc_B32FA1: FLdPr Me
  loc_B32FA4: MemLdRfVar from_stack_1.global_60
  loc_B32FA7: LdPrVar
  loc_B32FA9: LateMemCall
  loc_B32FAF: FLdPr Me
  loc_B32FB2: MemLdRfVar from_stack_1.global_100
  loc_B32FB5: NextI2 var_A8, loc_B32DEA
  loc_B32FBA: ExitProcHresult
End Function

Private Function Proc_295_21_B47A98() 'B47A98
  'Data Table: 46CC0C
  loc_B47718: LitI4 1
  loc_B4771D: FLdPr Me
  loc_B47720: MemLdStr global_108
  loc_B47723: AryLock
  loc_B47726: Ary1LdRf
  loc_B47727: FStR4 var_8C
  loc_B4772A: LitI4 1
  loc_B4772F: FLdPr Me
  loc_B47732: MemLdStr global_92
  loc_B47735: Ary1LdPr
  loc_B47736: MemLdStr global_64
  loc_B47739: CR8Str
  loc_B4773B: LitI2_Byte 0
  loc_B4773D: CR8I2
  loc_B4773E: EqR4
  loc_B4773F: BranchF loc_B4785D
  loc_B47742: LitVarStr var_9C, "  <tr>"
  loc_B47747: PopAdLdVar
  loc_B47748: FLdPr Me
  loc_B4774B: MemLdRfVar from_stack_1.global_60
  loc_B4774E: LdPrVar
  loc_B47750: LateMemCall
  loc_B47756: LitVarStr var_9C, "    <td>&nbsp;</td>"
  loc_B4775B: PopAdLdVar
  loc_B4775C: FLdPr Me
  loc_B4775F: MemLdRfVar from_stack_1.global_60
  loc_B47762: LdPrVar
  loc_B47764: LateMemCall
  loc_B4776A: LitVarStr var_9C, "    <td colspan=""4"" align=""right"" valign=""top"" class=""Encabezado"">TOTALES:</td>"
  loc_B4776F: PopAdLdVar
  loc_B47770: FLdPr Me
  loc_B47773: MemLdRfVar from_stack_1.global_60
  loc_B47776: LdPrVar
  loc_B47778: LateMemCall
  loc_B4777E: LitStr "    <td align=""right"" class=""Totales"">"
  loc_B47781: FMemLdR4 var_8C(12)
  loc_B47786: ConcatStr
  loc_B47787: FStStrNoPop var_B0
  loc_B4778A: LitStr "</td>"
  loc_B4778D: ConcatStr
  loc_B4778E: CVarStr var_C0
  loc_B47791: PopAdLdVar
  loc_B47792: FLdPr Me
  loc_B47795: MemLdRfVar from_stack_1.global_60
  loc_B47798: LdPrVar
  loc_B4779A: LateMemCall
  loc_B477A0: FFree1Str var_B0
  loc_B477A3: FFree1Var var_C0 = ""
  loc_B477A6: LitStr "    <td align=""right"" class=""Totales"">"
  loc_B477A9: FMemLdR4 var_8C(16)
  loc_B477AE: ConcatStr
  loc_B477AF: FStStrNoPop var_B0
  loc_B477B2: LitStr "</td>"
  loc_B477B5: ConcatStr
  loc_B477B6: CVarStr var_C0
  loc_B477B9: PopAdLdVar
  loc_B477BA: FLdPr Me
  loc_B477BD: MemLdRfVar from_stack_1.global_60
  loc_B477C0: LdPrVar
  loc_B477C2: LateMemCall
  loc_B477C8: FFree1Str var_B0
  loc_B477CB: FFree1Var var_C0 = ""
  loc_B477CE: LitStr "    <td align=""right"" class=""Totales"">"
  loc_B477D1: FMemLdR4 var_8C(20)
  loc_B477D6: ConcatStr
  loc_B477D7: FStStrNoPop var_B0
  loc_B477DA: LitStr "</td>"
  loc_B477DD: ConcatStr
  loc_B477DE: CVarStr var_C0
  loc_B477E1: PopAdLdVar
  loc_B477E2: FLdPr Me
  loc_B477E5: MemLdRfVar from_stack_1.global_60
  loc_B477E8: LdPrVar
  loc_B477EA: LateMemCall
  loc_B477F0: FFree1Str var_B0
  loc_B477F3: FFree1Var var_C0 = ""
  loc_B477F6: LitStr "    <td align=""right"" class=""Totales"">"
  loc_B477F9: FMemLdR4 var_8C(24)
  loc_B477FE: ConcatStr
  loc_B477FF: FStStrNoPop var_B0
  loc_B47802: LitStr "</td>"
  loc_B47805: ConcatStr
  loc_B47806: CVarStr var_C0
  loc_B47809: PopAdLdVar
  loc_B4780A: FLdPr Me
  loc_B4780D: MemLdRfVar from_stack_1.global_60
  loc_B47810: LdPrVar
  loc_B47812: LateMemCall
  loc_B47818: FFree1Str var_B0
  loc_B4781B: FFree1Var var_C0 = ""
  loc_B4781E: LitStr "    <td align=""right"" class=""TotalGeneral"">"
  loc_B47821: FMemLdR4 var_8C(28)
  loc_B47826: ConcatStr
  loc_B47827: FStStrNoPop var_B0
  loc_B4782A: LitStr "</td>"
  loc_B4782D: ConcatStr
  loc_B4782E: CVarStr var_C0
  loc_B47831: PopAdLdVar
  loc_B47832: FLdPr Me
  loc_B47835: MemLdRfVar from_stack_1.global_60
  loc_B47838: LdPrVar
  loc_B4783A: LateMemCall
  loc_B47840: FFree1Str var_B0
  loc_B47843: FFree1Var var_C0 = ""
  loc_B47846: LitVarStr var_9C, "  </tr>"
  loc_B4784B: PopAdLdVar
  loc_B4784C: FLdPr Me
  loc_B4784F: MemLdRfVar from_stack_1.global_60
  loc_B47852: LdPrVar
  loc_B47854: LateMemCall
  loc_B4785A: Branch loc_B47A75
  loc_B4785D: LitI2_Byte 0
  loc_B4785F: LitVar_Missing var_C0
  loc_B47862: LitI2_Byte &HFF
  loc_B47864: LitI4 1
  loc_B47869: FLdPr Me
  loc_B4786C: MemLdStr global_92
  loc_B4786F: Ary1LdPr
  loc_B47870: MemLdStr global_64
  loc_B47873: CR8Str
  loc_B47875: FMemLdR4 var_8C(28)
  loc_B4787A: CR8Str
  loc_B4787C: AddR8
  loc_B4787D: CVarR8
  loc_B47881: PopAdLdVar
  loc_B47882: FLdRfVar var_C4
  loc_B47885: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B4788A: FFree1Var var_C0 = ""
  loc_B4788D: LitVarStr var_9C, "  <tr>"
  loc_B47892: PopAdLdVar
  loc_B47893: FLdPr Me
  loc_B47896: MemLdRfVar from_stack_1.global_60
  loc_B47899: LdPrVar
  loc_B4789B: LateMemCall
  loc_B478A1: LitVarStr var_9C, "    <td rowspan=""3"">&nbsp;</td>"
  loc_B478A6: PopAdLdVar
  loc_B478A7: FLdPr Me
  loc_B478AA: MemLdRfVar from_stack_1.global_60
  loc_B478AD: LdPrVar
  loc_B478AF: LateMemCall
  loc_B478B5: LitVarStr var_9C, "    <td colspan=""4"" align=""right"" valign=""top"" class=""Encabezado"">SUBTOTALES:</td>"
  loc_B478BA: PopAdLdVar
  loc_B478BB: FLdPr Me
  loc_B478BE: MemLdRfVar from_stack_1.global_60
  loc_B478C1: LdPrVar
  loc_B478C3: LateMemCall
  loc_B478C9: LitStr "    <td align=""right"" class=""Totales"">"
  loc_B478CC: FMemLdR4 var_8C(12)
  loc_B478D1: ConcatStr
  loc_B478D2: FStStrNoPop var_B0
  loc_B478D5: LitStr "</td>"
  loc_B478D8: ConcatStr
  loc_B478D9: CVarStr var_C0
  loc_B478DC: PopAdLdVar
  loc_B478DD: FLdPr Me
  loc_B478E0: MemLdRfVar from_stack_1.global_60
  loc_B478E3: LdPrVar
  loc_B478E5: LateMemCall
  loc_B478EB: FFree1Str var_B0
  loc_B478EE: FFree1Var var_C0 = ""
  loc_B478F1: LitStr "    <td align=""right"" class=""Totales"">"
  loc_B478F4: FMemLdR4 var_8C(16)
  loc_B478F9: ConcatStr
  loc_B478FA: FStStrNoPop var_B0
  loc_B478FD: LitStr "</td>"
  loc_B47900: ConcatStr
  loc_B47901: CVarStr var_C0
  loc_B47904: PopAdLdVar
  loc_B47905: FLdPr Me
  loc_B47908: MemLdRfVar from_stack_1.global_60
  loc_B4790B: LdPrVar
  loc_B4790D: LateMemCall
  loc_B47913: FFree1Str var_B0
  loc_B47916: FFree1Var var_C0 = ""
  loc_B47919: LitStr "    <td align=""right"" class=""Totales"">"
  loc_B4791C: FMemLdR4 var_8C(20)
  loc_B47921: ConcatStr
  loc_B47922: FStStrNoPop var_B0
  loc_B47925: LitStr "</td>"
  loc_B47928: ConcatStr
  loc_B47929: CVarStr var_C0
  loc_B4792C: PopAdLdVar
  loc_B4792D: FLdPr Me
  loc_B47930: MemLdRfVar from_stack_1.global_60
  loc_B47933: LdPrVar
  loc_B47935: LateMemCall
  loc_B4793B: FFree1Str var_B0
  loc_B4793E: FFree1Var var_C0 = ""
  loc_B47941: LitStr "    <td align=""right"" class=""Totales"">"
  loc_B47944: FMemLdR4 var_8C(24)
  loc_B47949: ConcatStr
  loc_B4794A: FStStrNoPop var_B0
  loc_B4794D: LitStr "</td>"
  loc_B47950: ConcatStr
  loc_B47951: CVarStr var_C0
  loc_B47954: PopAdLdVar
  loc_B47955: FLdPr Me
  loc_B47958: MemLdRfVar from_stack_1.global_60
  loc_B4795B: LdPrVar
  loc_B4795D: LateMemCall
  loc_B47963: FFree1Str var_B0
  loc_B47966: FFree1Var var_C0 = ""
  loc_B47969: LitStr "    <td align=""right"" class=""Total"">"
  loc_B4796C: FMemLdR4 var_8C(28)
  loc_B47971: ConcatStr
  loc_B47972: FStStrNoPop var_B0
  loc_B47975: LitStr "</td>"
  loc_B47978: ConcatStr
  loc_B47979: CVarStr var_C0
  loc_B4797C: PopAdLdVar
  loc_B4797D: FLdPr Me
  loc_B47980: MemLdRfVar from_stack_1.global_60
  loc_B47983: LdPrVar
  loc_B47985: LateMemCall
  loc_B4798B: FFree1Str var_B0
  loc_B4798E: FFree1Var var_C0 = ""
  loc_B47991: LitVarStr var_9C, "  </tr>"
  loc_B47996: PopAdLdVar
  loc_B47997: FLdPr Me
  loc_B4799A: MemLdRfVar from_stack_1.global_60
  loc_B4799D: LdPrVar
  loc_B4799F: LateMemCall
  loc_B479A5: LitVarStr var_9C, "  <tr>"
  loc_B479AA: PopAdLdVar
  loc_B479AB: FLdPr Me
  loc_B479AE: MemLdRfVar from_stack_1.global_60
  loc_B479B1: LdPrVar
  loc_B479B3: LateMemCall
  loc_B479B9: LitVarStr var_9C, "    <td colspan=""8"" align=""right"" valign=""top"" class=""Encabezado"">APREMIO:</td>"
  loc_B479BE: PopAdLdVar
  loc_B479BF: FLdPr Me
  loc_B479C2: MemLdRfVar from_stack_1.global_60
  loc_B479C5: LdPrVar
  loc_B479C7: LateMemCall
  loc_B479CD: LitStr "    <td align=""right"" class=""Total"">"
  loc_B479D0: LitI4 1
  loc_B479D5: FLdPr Me
  loc_B479D8: MemLdStr global_92
  loc_B479DB: Ary1LdPr
  loc_B479DC: MemLdStr global_64
  loc_B479DF: ConcatStr
  loc_B479E0: FStStrNoPop var_B0
  loc_B479E3: LitStr "</td>"
  loc_B479E6: ConcatStr
  loc_B479E7: CVarStr var_C0
  loc_B479EA: PopAdLdVar
  loc_B479EB: FLdPr Me
  loc_B479EE: MemLdRfVar from_stack_1.global_60
  loc_B479F1: LdPrVar
  loc_B479F3: LateMemCall
  loc_B479F9: FFree1Str var_B0
  loc_B479FC: FFree1Var var_C0 = ""
  loc_B479FF: LitVarStr var_9C, "  </tr>"
  loc_B47A04: PopAdLdVar
  loc_B47A05: FLdPr Me
  loc_B47A08: MemLdRfVar from_stack_1.global_60
  loc_B47A0B: LdPrVar
  loc_B47A0D: LateMemCall
  loc_B47A13: LitVarStr var_9C, "  <tr>"
  loc_B47A18: PopAdLdVar
  loc_B47A19: FLdPr Me
  loc_B47A1C: MemLdRfVar from_stack_1.global_60
  loc_B47A1F: LdPrVar
  loc_B47A21: LateMemCall
  loc_B47A27: LitVarStr var_9C, "    <td colspan=""8"" align=""right"" valign=""top"" class=""Encabezado"">TOTAL:</td>"
  loc_B47A2C: PopAdLdVar
  loc_B47A2D: FLdPr Me
  loc_B47A30: MemLdRfVar from_stack_1.global_60
  loc_B47A33: LdPrVar
  loc_B47A35: LateMemCall
  loc_B47A3B: LitStr "    <td align=""right"" class=""TotalGeneral"">"
  loc_B47A3E: ILdRf var_C4
  loc_B47A41: ConcatStr
  loc_B47A42: FStStrNoPop var_B0
  loc_B47A45: LitStr "</td>"
  loc_B47A48: ConcatStr
  loc_B47A49: CVarStr var_C0
  loc_B47A4C: PopAdLdVar
  loc_B47A4D: FLdPr Me
  loc_B47A50: MemLdRfVar from_stack_1.global_60
  loc_B47A53: LdPrVar
  loc_B47A55: LateMemCall
  loc_B47A5B: FFree1Str var_B0
  loc_B47A5E: FFree1Var var_C0 = ""
  loc_B47A61: LitVarStr var_9C, "  </tr>"
  loc_B47A66: PopAdLdVar
  loc_B47A67: FLdPr Me
  loc_B47A6A: MemLdRfVar from_stack_1.global_60
  loc_B47A6D: LdPrVar
  loc_B47A6F: LateMemCall
  loc_B47A75: LitVarStr var_9C, "</table>"
  loc_B47A7A: PopAdLdVar
  loc_B47A7B: FLdPr Me
  loc_B47A7E: MemLdRfVar from_stack_1.global_60
  loc_B47A81: LdPrVar
  loc_B47A83: LateMemCall
  loc_B47A89: LitI4 0
  loc_B47A8E: FStR4 var_8C
  loc_B47A91: AryUnlock
  loc_B47A94: ExitProcHresult
End Function

Private Function Proc_295_22_ABE398() 'ABE398
  'Data Table: 46CC0C
  loc_ABE29C: LitI4 1
  loc_ABE2A1: FLdPr Me
  loc_ABE2A4: MemLdStr global_112
  loc_ABE2A7: AryLock
  loc_ABE2AA: Ary1LdRf
  loc_ABE2AB: FStR4 var_8C
  loc_ABE2AE: LitVarStr var_9C, "  <tr align=""right"">"
  loc_ABE2B3: PopAdLdVar
  loc_ABE2B4: FLdPr Me
  loc_ABE2B7: MemLdRfVar from_stack_1.global_60
  loc_ABE2BA: LdPrVar
  loc_ABE2BC: LateMemCall
  loc_ABE2C2: LitVarStr var_9C, "    <td colspan=""4"">&nbsp;</td>"
  loc_ABE2C7: PopAdLdVar
  loc_ABE2C8: FLdPr Me
  loc_ABE2CB: MemLdRfVar from_stack_1.global_60
  loc_ABE2CE: LdPrVar
  loc_ABE2D0: LateMemCall
  loc_ABE2D6: LitVarStr var_9C, "    <td align=""center"" class=""Encabezado"">TOTALES:</td>"
  loc_ABE2DB: PopAdLdVar
  loc_ABE2DC: FLdPr Me
  loc_ABE2DF: MemLdRfVar from_stack_1.global_60
  loc_ABE2E2: LdPrVar
  loc_ABE2E4: LateMemCall
  loc_ABE2EA: LitStr "    <td class=""Totales"">"
  loc_ABE2ED: FMemLdR4 var_8C(32)
  loc_ABE2F2: ConcatStr
  loc_ABE2F3: FStStrNoPop var_B0
  loc_ABE2F6: LitStr "</td>"
  loc_ABE2F9: ConcatStr
  loc_ABE2FA: CVarStr var_C0
  loc_ABE2FD: PopAdLdVar
  loc_ABE2FE: FLdPr Me
  loc_ABE301: MemLdRfVar from_stack_1.global_60
  loc_ABE304: LdPrVar
  loc_ABE306: LateMemCall
  loc_ABE30C: FFree1Str var_B0
  loc_ABE30F: FFree1Var var_C0 = ""
  loc_ABE312: LitStr "    <td class=""Totales"">"
  loc_ABE315: FMemLdR4 var_8C(36)
  loc_ABE31A: ConcatStr
  loc_ABE31B: FStStrNoPop var_B0
  loc_ABE31E: LitStr "</td>"
  loc_ABE321: ConcatStr
  loc_ABE322: CVarStr var_C0
  loc_ABE325: PopAdLdVar
  loc_ABE326: FLdPr Me
  loc_ABE329: MemLdRfVar from_stack_1.global_60
  loc_ABE32C: LdPrVar
  loc_ABE32E: LateMemCall
  loc_ABE334: FFree1Str var_B0
  loc_ABE337: FFree1Var var_C0 = ""
  loc_ABE33A: LitStr "    <td class=""Totales"">"
  loc_ABE33D: FMemLdR4 var_8C(40)
  loc_ABE342: ConcatStr
  loc_ABE343: FStStrNoPop var_B0
  loc_ABE346: LitStr "</td>"
  loc_ABE349: ConcatStr
  loc_ABE34A: CVarStr var_C0
  loc_ABE34D: PopAdLdVar
  loc_ABE34E: FLdPr Me
  loc_ABE351: MemLdRfVar from_stack_1.global_60
  loc_ABE354: LdPrVar
  loc_ABE356: LateMemCall
  loc_ABE35C: FFree1Str var_B0
  loc_ABE35F: FFree1Var var_C0 = ""
  loc_ABE362: LitVarStr var_9C, "  </tr>"
  loc_ABE367: PopAdLdVar
  loc_ABE368: FLdPr Me
  loc_ABE36B: MemLdRfVar from_stack_1.global_60
  loc_ABE36E: LdPrVar
  loc_ABE370: LateMemCall
  loc_ABE376: LitI4 0
  loc_ABE37B: FStR4 var_8C
  loc_ABE37E: AryUnlock
  loc_ABE381: LitVarStr var_9C, "</table>"
  loc_ABE386: PopAdLdVar
  loc_ABE387: FLdPr Me
  loc_ABE38A: MemLdRfVar from_stack_1.global_60
  loc_ABE38D: LdPrVar
  loc_ABE38F: LateMemCall
  loc_ABE395: ExitProcHresult
End Function

Private Function Proc_295_23_9F670C() '9F670C
  'Data Table: 46CC0C
  loc_9F66E0: LitVarStr var_94, "</body>"
  loc_9F66E5: PopAdLdVar
  loc_9F66E6: FLdPr Me
  loc_9F66E9: MemLdRfVar from_stack_1.global_60
  loc_9F66EC: LdPrVar
  loc_9F66EE: LateMemCall
  loc_9F66F4: LitVarStr var_94, "</html>"
  loc_9F66F9: PopAdLdVar
  loc_9F66FA: FLdPr Me
  loc_9F66FD: MemLdRfVar from_stack_1.global_60
  loc_9F6700: LdPrVar
  loc_9F6702: LateMemCall
  loc_9F6708: ExitProcHresult
End Function

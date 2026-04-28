VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptListadoporTipodeSepultura
  Caption = "Listado por Tipo de Sepultura"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptListadoporTipodeSepultura.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 7200
  ClientHeight = 3012
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 2760
    Width = 7200
    Height = 255
    TabIndex = 10
    OleObjectBlob = "rptListadoporTipodeSepultura.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 6240
    Top = 1680
    Width = 855
    Height = 735
    TabIndex = 5
    Cancel = -1  'True
    Picture = "rptListadoporTipodeSepultura.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptListadoporTipodeSepultura.frx":0B9C
    Left = 6840
    Top = 1440
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 1440
    Width = 1815
    Height = 1215
    TabIndex = 8
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
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 1440
    Width = 4095
    Height = 1215
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
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 6975
    Height = 1335
    TabIndex = 6
    Begin VB.ComboBox CodiTiseCbo
      Style = 2
      Left = 240
      Top = 360
      Width = 4695
      Height = 420
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
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 5160
      Top = 360
      Width = 1575
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
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 6240
    Top = 2040
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 9
    OleObjectBlob = "rptListadoporTipodeSepultura.frx":0C00
  End
End

Attribute VB_Name = "rptListadoporTipodeSepultura"

Public bGenerado As Boolean

Private Type UDT_1_00562DF8
  bStruc(4) As Byte ' String fields: 1
End Type

Private Type UDT_2_005667E0
  bStruc(28) As Byte ' String fields: 7
End Type


Private Sub cmdSalir_Click() 'A0194C
  'Data Table: 44C9D4
  loc_A0191C: LitVarStr var_94, "Cerrando..."
  loc_A01921: PopAdLdVar
  loc_A01922: FLdPr Me
  loc_A01925: VCallAd Control_ID_statusBar
  loc_A01928: FStAdFunc var_A8
  loc_A0192B: FLdPr var_A8
  loc_A0192E: LateIdSt
  loc_A01933: FFree1Ad var_A8
  loc_A01936: ILdRf Me
  loc_A01939: FStAdNoPop
  loc_A0193D: ImpAdLdRf MemVar_D9C5D8
  loc_A01940: NewIfNullPr Global
  loc_A01943: Global.Unload from_stack_1
  loc_A01948: FFree1Ad var_A8
  loc_A0194B: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9CC8B0
  'Data Table: 44C9D4
  loc_9CC898: ILdRf Me
  loc_9CC89B: CastAd
  loc_9CC89E: FStAdFunc var_88
  loc_9CC8A1: FLdRfVar var_88
  loc_9CC8A4: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9CC8A9: FFree1Ad var_88
  loc_9CC8AC: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9E140C
  'Data Table: 44C9D4
  loc_9E13F0: LitI2_Byte 0
  loc_9E13F2: PopTmpLdAd2 var_8A
  loc_9E13F5: ILdRf Me
  loc_9E13F8: CastAd
  loc_9E13FB: FStAdFunc var_88
  loc_9E13FE: FLdRfVar var_88
  loc_9E1401: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9E1406: FFree1Ad var_88
  loc_9E1409: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '9CC8FC
  'Data Table: 44C9D4
  loc_9CC8E4: LitI2_Byte 0
  loc_9CC8E6: ILdRf Me
  loc_9CC8E9: CastAd
  loc_9CC8EC: FStAdFunc var_88
  loc_9CC8EF: FLdRfVar var_88
  loc_9CC8F2: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9CC8F7: FFree1Ad var_88
  loc_9CC8FA: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'A3D3D8
  'Data Table: 44C9D4
  loc_A3D388: LitI2_Byte 0
  loc_A3D38A: FLdPr Me
  loc_A3D38D: MemStI2 bGenerado
  loc_A3D390: LitI2_Byte 0
  loc_A3D392: ILdRf Me
  loc_A3D395: CastAd
  loc_A3D398: FStAdFunc var_88
  loc_A3D39B: FLdRfVar var_88
  loc_A3D39E: ImpAdCallFPR4 Proc_272_46_B065FC(, )
  loc_A3D3A3: FFree1Ad var_88
  loc_A3D3A6: LitI2_Byte 0
  loc_A3D3A8: FLdPr Me
  loc_A3D3AB: VCallAd Control_ID_CodiTiseCbo
  loc_A3D3AE: FStAdFunc var_88
  loc_A3D3B1: FLdPr var_88
  loc_A3D3B4: Me.ListIndex = from_stack_1
  loc_A3D3B9: FFree1Ad var_88
  loc_A3D3BC: Call HabilitarCriterio()
  loc_A3D3C1: ILdRf Me
  loc_A3D3C4: CastAd
  loc_A3D3C7: FStAdFunc var_88
  loc_A3D3CA: FLdRfVar var_88
  loc_A3D3CD: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_A3D3D2: FFree1Ad var_88
  loc_A3D3D5: ExitProcHresult
  loc_A3D3D6: CR8R8
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A1FC60
  'Data Table: 44C9D4
  loc_A1FC28: FLdPr Me
  loc_A1FC2B: VCallAd Control_ID_statusBar
  loc_A1FC2E: FStAdFunc var_88
  loc_A1FC31: FLdPr var_88
  loc_A1FC34: LateIdLdVar var_98 DispID_1 0
  loc_A1FC3B: CStrVarTmp
  loc_A1FC3C: CVarStr var_A8
  loc_A1FC3F: PopAdLdVar
  loc_A1FC40: FLdPr Me
  loc_A1FC43: VCallAd Control_ID_statusBar
  loc_A1FC46: FStAdFunc var_BC
  loc_A1FC49: FLdPr var_BC
  loc_A1FC4C: LateIdSt
  loc_A1FC51: FFreeAd var_88 = ""
  loc_A1FC58: FFreeVar var_98 = ""
  loc_A1FC5F: ExitProcHresult
End Sub

Private Sub Form_Load() 'ABBA3C
  'Data Table: 44C9D4
  loc_ABB94C: FLdRfVar var_88
  loc_ABB94F: NewIfNullAd
  loc_ABB952: FStAd var_8C 
  loc_ABB956: LitStr "SELECT CodiTise, DetaTise FROM tiposepu ORDER BY CodiTise"
  loc_ABB959: FLdPr var_8C
  loc_ABB95C: Call clstiposepu.RedefineRS(from_stack_1v)
  loc_ABB961: FLdRfVar var_90
  loc_ABB964: FLdPr var_8C
  loc_ABB967: from_stack_1 = clstiposepu.RecordCount
  loc_ABB96C: ILdRf var_90
  loc_ABB96F: LitI4 0
  loc_ABB974: GtI4
  loc_ABB975: BranchF loc_ABBA1B
  loc_ABB978: FLdPr var_8C
  loc_ABB97B: Call clstiposepu.MoveFirst()
  loc_ABB980: FLdPr Me
  loc_ABB983: VCallAd Control_ID_CodiTiseCbo
  loc_ABB986: FStAdFunc var_94
  loc_ABB989: FLdPr var_94
  loc_ABB98C: Me.Clear
  loc_ABB991: FFree1Ad var_94
  loc_ABB994: LitVar_Missing var_A8
  loc_ABB997: PopAdLdVar
  loc_ABB998: FLdRfVar var_98
  loc_ABB99B: FLdPr var_8C
  loc_ABB99E: from_stack_1 = clstiposepu.DetaTise
  loc_ABB9A3: ILdRf var_98
  loc_ABB9A6: FLdPr Me
  loc_ABB9A9: VCallAd Control_ID_CodiTiseCbo
  loc_ABB9AC: FStAdFunc var_94
  loc_ABB9AF: FLdPr var_94
  loc_ABB9B2: Me.AddItem from_stack_1, from_stack_2
  loc_ABB9B7: FFree1Str var_98
  loc_ABB9BA: FFree1Ad var_94
  loc_ABB9BD: FLdRfVar var_AA
  loc_ABB9C0: FLdPr var_8C
  loc_ABB9C3: from_stack_1 = clstiposepu.CodiTise
  loc_ABB9C8: FLdUI1
  loc_ABB9CC: CI4UI1
  loc_ABB9CD: FLdRfVar var_AC
  loc_ABB9D0: FLdPr Me
  loc_ABB9D3: VCallAd Control_ID_CodiTiseCbo
  loc_ABB9D6: FStAdFunc var_94
  loc_ABB9D9: FLdPr var_94
  loc_ABB9DC:  = Me.NewIndex
  loc_ABB9E1: FLdI2 var_AC
  loc_ABB9E4: FLdPr Me
  loc_ABB9E7: VCallAd Control_ID_CodiTiseCbo
  loc_ABB9EA: FStAdFunc var_B0
  loc_ABB9ED: FLdPr var_B0
  loc_ABB9F0: Me.ItemData = from_stack_1
  loc_ABB9F5: FFreeAd var_94 = ""
  loc_ABB9FC: LitI2_Byte 1
  loc_ABB9FE: PopTmpLdAd2 var_AA
  loc_ABBA01: FLdPr var_8C
  loc_ABBA04: Call clstiposepu.Move(from_stack_1v)
  loc_ABBA09: FLdRfVar var_AA
  loc_ABBA0C: FLdPr var_8C
  loc_ABBA0F: from_stack_1 = clstiposepu.EOF
  loc_ABBA14: FLdI2 var_AA
  loc_ABBA17: NotI4
  loc_ABBA18: BranchT loc_ABB994
  loc_ABBA1B: LitNothing
  loc_ABBA1D: FStAd var_8C 
  loc_ABBA21: ILdRf Me
  loc_ABBA24: CastAd
  loc_ABBA27: FStAdFunc var_94
  loc_ABBA2A: FLdRfVar var_94
  loc_ABBA2D: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_ABBA32: FFree1Ad var_94
  loc_ABBA35: Call cmdNueva_Click()
  loc_ABBA3A: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9CC994
  'Data Table: 44C9D4
  loc_9CC97C: FLdPr Me
  loc_9CC97F: VCallAd Control_ID_wbbReporte
  loc_9CC982: FStAdFunc var_88
  loc_9CC985: FLdRfVar var_88
  loc_9CC988: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9CC98D: FFree1Ad var_88
  loc_9CC990: ExitProcHresult
  loc_9CC991: ILdRf arg_1BFF
End Sub

Public Function bGeneradoGet() '44D308
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '44D317
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'A110E8
  'Data Table: 44C9D4
  loc_A110B4: LitI4 0
  loc_A110B9: LitI4 0
  loc_A110BE: FLdRfVar var_88
  loc_A110C1: Redim
  loc_A110CB: FLdPr Me
  loc_A110CE: VCallAd Control_ID_CodiTiseCbo
  loc_A110D1: CVarAd
  loc_A110D5: ParmAry1St
  loc_A110DB: FLdRfVar var_88
  loc_A110DE: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A110E3: FLdRfVar var_88
  loc_A110E6: Erase
  loc_A110E7: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'AFD76C
  'Data Table: 44C9D4
  loc_AFD5A8: FLdPr Me
  loc_AFD5AB: MemLdI2 bGenerado
  loc_AFD5AE: BranchF loc_AFD5B2
  loc_AFD5B1: ExitProcHresult
  loc_AFD5B2: LitVarStr var_94, "Generando reporte..."
  loc_AFD5B7: PopAdLdVar
  loc_AFD5B8: FLdPr Me
  loc_AFD5BB: VCallAd Control_ID_statusBar
  loc_AFD5BE: FStAdFunc var_A8
  loc_AFD5C1: FLdPr var_A8
  loc_AFD5C4: LateIdSt
  loc_AFD5C9: FFree1Ad var_A8
  loc_AFD5CC: LitI4 &HB
  loc_AFD5D1: CI2I4
  loc_AFD5D2: FLdPr Me
  loc_AFD5D5: Me.MousePointer = from_stack_1
  loc_AFD5DA: FLdPr Me
  loc_AFD5DD: MemLdRfVar from_stack_1.global_76
  loc_AFD5E0: NewIfNullAd
  loc_AFD5E3: FStAd var_AC 
  loc_AFD5E7: LitStr "SELECT difunto.CodiDifu, ifnull(DetaPers,'') as DetaPers, NumeDifu, FilaDifu, SeccDifu, FeveDifu, ifnull(DetaDedi,'') as DetaDedi"
  loc_AFD5EA: LitStr " FROM difunto"
  loc_AFD5ED: ConcatStr
  loc_AFD5EE: FStStrNoPop var_B0
  loc_AFD5F1: LitStr " LEFT JOIN detadifu ON detadifu.CodiDifu = difunto.CodiDifu"
  loc_AFD5F4: ConcatStr
  loc_AFD5F5: FStStrNoPop var_B4
  loc_AFD5F8: LitStr " LEFT JOIN infogov.persona ON infogov.persona.CucuPers = difunto.CucuPers"
  loc_AFD5FB: ConcatStr
  loc_AFD5FC: FStStrNoPop var_B8
  loc_AFD5FF: LitStr " WHERE difunto.CodiTise = "
  loc_AFD602: ConcatStr
  loc_AFD603: FStStrNoPop var_C8
  loc_AFD606: FLdRfVar var_C4
  loc_AFD609: FLdRfVar var_BA
  loc_AFD60C: FLdPr Me
  loc_AFD60F: VCallAd Control_ID_CodiTiseCbo
  loc_AFD612: FStAdFunc var_A8
  loc_AFD615: FLdPr var_A8
  loc_AFD618:  = Me.ListIndex
  loc_AFD61D: FLdI2 var_BA
  loc_AFD620: FLdPr Me
  loc_AFD623: VCallAd Control_ID_CodiTiseCbo
  loc_AFD626: FStAdFunc var_C0
  loc_AFD629: FLdPr var_C0
  loc_AFD62C:  = Me.ItemData
  loc_AFD631: ILdRf var_C4
  loc_AFD634: CStrI4
  loc_AFD636: FStStrNoPop var_CC
  loc_AFD639: ConcatStr
  loc_AFD63A: FStStrNoPop var_D0
  loc_AFD63D: LitStr " ORDER BY difunto.CodiDifu, NumeDedi"
  loc_AFD640: ConcatStr
  loc_AFD641: FStStrNoPop var_D4
  loc_AFD644: FLdPr var_AC
  loc_AFD647: Call clsdifunto.RedefineRS(from_stack_1v)
  loc_AFD64C: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_AFD65D: FFreeAd var_A8 = ""
  loc_AFD664: FLdRfVar var_C4
  loc_AFD667: FLdPr var_AC
  loc_AFD66A: from_stack_1 = clsdifunto.RecordCount
  loc_AFD66F: ILdRf var_C4
  loc_AFD672: LitI4 0
  loc_AFD677: EqI4
  loc_AFD678: BranchF loc_AFD686
  loc_AFD67B: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_AFD67E: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AFD683: Branch loc_AFD743
  loc_AFD686: LitI4 0
  loc_AFD68B: FLdPr Me
  loc_AFD68E: MemStI4 global_84
  loc_AFD691: LitI4 0
  loc_AFD696: FLdPr Me
  loc_AFD699: MemLdStr global_84
  loc_AFD69C: FLdPr Me
  loc_AFD69F: MemLdRfVar from_stack_1.global_80
  loc_AFD6A2: Redim
  loc_AFD6AC: FLdPr var_AC
  loc_AFD6AF: Call clsdifunto.MoveFirst()
  loc_AFD6B4: Call Proc_190_13_B494D0()
  loc_AFD6B9: FLdRfVar var_BA
  loc_AFD6BC: FLdPr var_AC
  loc_AFD6BF: from_stack_1 = clsdifunto.EOF
  loc_AFD6C4: FLdI2 var_BA
  loc_AFD6C7: NotI4
  loc_AFD6C8: BranchF loc_AFD735
  loc_AFD6CB: FLdRfVar var_E8
  loc_AFD6CE: FLdRfVar var_D8
  loc_AFD6D1: LitVarStr var_94, "CodiDifu"
  loc_AFD6D6: PopAdLdVar
  loc_AFD6D7: FLdRfVar var_C0
  loc_AFD6DA: FLdRfVar var_A8
  loc_AFD6DD: FLdPr var_AC
  loc_AFD6E0: from_stack_1v = clsdifunto.RsFrmGet()
  loc_AFD6E5: FLdPr var_A8
  loc_AFD6E8:  = Me.Fields
  loc_AFD6ED: FLdPr var_C0
  loc_AFD6F0: from_stack_2 = Me.Item(from_stack_1)
  loc_AFD6F5: FLdPr var_D8
  loc_AFD6F8:  = Me.Value
  loc_AFD6FD: FLdRfVar var_E8
  loc_AFD700: FLdPr Me
  loc_AFD703: MemLdStr global_84
  loc_AFD706: FLdPr Me
  loc_AFD709: MemLdStr global_80
  loc_AFD70C: Ary1LdPr
  loc_AFD70D: MemLdStr global_0
  loc_AFD710: CVarStr var_A4
  loc_AFD713: HardType
  loc_AFD714: NeVarBool
  loc_AFD716: FFreeAd var_A8 = "": var_C0 = ""
  loc_AFD71F: FFree1Var var_E8 = ""
  loc_AFD722: BranchF loc_AFD72D
  loc_AFD725: Call Proc_190_13_B494D0()
  loc_AFD72A: Branch loc_AFD732
  loc_AFD72D: Call Proc_190_14_ADEDB0()
  loc_AFD732: Branch loc_AFD6B9
  loc_AFD735: LitNothing
  loc_AFD737: FStAd var_AC 
  loc_AFD73B: LitI2_Byte &HFF
  loc_AFD73D: FLdPr Me
  loc_AFD740: MemStI2 bGenerado
  loc_AFD743: LitI4 0
  loc_AFD748: CI2I4
  loc_AFD749: FLdPr Me
  loc_AFD74C: Me.MousePointer = from_stack_1
  loc_AFD751: LitVarStr var_94, vbNullString
  loc_AFD756: PopAdLdVar
  loc_AFD757: FLdPr Me
  loc_AFD75A: VCallAd Control_ID_statusBar
  loc_AFD75D: FStAdFunc var_A8
  loc_AFD760: FLdPr var_A8
  loc_AFD763: LateIdSt
  loc_AFD768: FFree1Ad var_A8
  loc_AFD76B: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'B3A9BC
  'Data Table: 44C9D4
  loc_B3A6B8: FLdRfVar var_88
  loc_B3A6BB: LitI2_Byte 0
  loc_B3A6BD: LitI2_Byte &HFF
  loc_B3A6BF: ImpAdLdI4 MemVar_D93C84
  loc_B3A6C2: FLdPr Me
  loc_B3A6C5: MemLdRfVar from_stack_1.global_56
  loc_B3A6C8: NewIfNullPr IFileSystem3
  loc_B3A6CB: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B3A6D0: ILdRf var_88
  loc_B3A6D3: FLdPr Me
  loc_B3A6D6: MemStVarAd
  loc_B3A6DA: FFree1Ad var_88
  loc_B3A6DD: LitI2_Byte &HFF
  loc_B3A6DF: ImpAdStI2 MemVar_D93C8A
  loc_B3A6E2: Call Proc_190_15_BC7C50()
  loc_B3A6E7: LitI4 1
  loc_B3A6EC: FLdPr Me
  loc_B3A6EF: MemLdRfVar from_stack_1.global_84
  loc_B3A6F2: FLdPr Me
  loc_B3A6F5: MemLdStr global_80
  loc_B3A6F8: LitI2_Byte 1
  loc_B3A6FA: FnUBound
  loc_B3A6FC: ForI4 var_94
  loc_B3A702: FLdPr Me
  loc_B3A705: MemLdStr global_84
  loc_B3A708: FLdPr Me
  loc_B3A70B: MemLdStr global_80
  loc_B3A70E: AryLock
  loc_B3A711: Ary1LdRf
  loc_B3A712: FStR4 var_9C
  loc_B3A715: FMemLdR4 var_9C(24)
  loc_B3A71A: LitI2_Byte 1
  loc_B3A71C: FnUBound
  loc_B3A71E: CI2I4
  loc_B3A71F: FStI2 var_8A
  loc_B3A722: LitVarStr var_AC, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B3A727: PopAdLdVar
  loc_B3A728: FLdPr Me
  loc_B3A72B: MemLdRfVar from_stack_1.global_60
  loc_B3A72E: LdPrVar
  loc_B3A730: LateMemCall
  loc_B3A736: LitStr "   <td rowspan="
  loc_B3A739: FLdI2 var_8A
  loc_B3A73C: CStrUI1
  loc_B3A73E: FStStrNoPop var_C0
  loc_B3A741: ConcatStr
  loc_B3A742: FStStrNoPop var_C4
  loc_B3A745: LitStr " align=""right"">"
  loc_B3A748: ConcatStr
  loc_B3A749: FStStrNoPop var_C8
  loc_B3A74C: FMemLdR4 var_9C(0)
  loc_B3A751: ConcatStr
  loc_B3A752: FStStrNoPop var_CC
  loc_B3A755: LitStr "</td>"
  loc_B3A758: ConcatStr
  loc_B3A759: CVarStr var_DC
  loc_B3A75C: PopAdLdVar
  loc_B3A75D: FLdPr Me
  loc_B3A760: MemLdRfVar from_stack_1.global_60
  loc_B3A763: LdPrVar
  loc_B3A765: LateMemCall
  loc_B3A76B: FFreeStr var_C0 = "": var_C4 = "": var_C8 = ""
  loc_B3A776: FFree1Var var_DC = ""
  loc_B3A779: LitStr "   <td rowspan="
  loc_B3A77C: FLdI2 var_8A
  loc_B3A77F: CStrUI1
  loc_B3A781: FStStrNoPop var_C0
  loc_B3A784: ConcatStr
  loc_B3A785: FStStrNoPop var_C4
  loc_B3A788: LitStr " align=""left"">"
  loc_B3A78B: ConcatStr
  loc_B3A78C: FStStrNoPop var_C8
  loc_B3A78F: FMemLdR4 var_9C(4)
  loc_B3A794: ConcatStr
  loc_B3A795: FStStrNoPop var_CC
  loc_B3A798: LitStr "</td>"
  loc_B3A79B: ConcatStr
  loc_B3A79C: CVarStr var_DC
  loc_B3A79F: PopAdLdVar
  loc_B3A7A0: FLdPr Me
  loc_B3A7A3: MemLdRfVar from_stack_1.global_60
  loc_B3A7A6: LdPrVar
  loc_B3A7A8: LateMemCall
  loc_B3A7AE: FFreeStr var_C0 = "": var_C4 = "": var_C8 = ""
  loc_B3A7B9: FFree1Var var_DC = ""
  loc_B3A7BC: LitStr "   <td rowspan="
  loc_B3A7BF: FLdI2 var_8A
  loc_B3A7C2: CStrUI1
  loc_B3A7C4: FStStrNoPop var_C0
  loc_B3A7C7: ConcatStr
  loc_B3A7C8: FStStrNoPop var_C4
  loc_B3A7CB: LitStr " align=""right"">"
  loc_B3A7CE: ConcatStr
  loc_B3A7CF: FStStrNoPop var_C8
  loc_B3A7D2: FMemLdR4 var_9C(8)
  loc_B3A7D7: ConcatStr
  loc_B3A7D8: FStStrNoPop var_CC
  loc_B3A7DB: LitStr "</td>"
  loc_B3A7DE: ConcatStr
  loc_B3A7DF: CVarStr var_DC
  loc_B3A7E2: PopAdLdVar
  loc_B3A7E3: FLdPr Me
  loc_B3A7E6: MemLdRfVar from_stack_1.global_60
  loc_B3A7E9: LdPrVar
  loc_B3A7EB: LateMemCall
  loc_B3A7F1: FFreeStr var_C0 = "": var_C4 = "": var_C8 = ""
  loc_B3A7FC: FFree1Var var_DC = ""
  loc_B3A7FF: LitStr "   <td rowspan="
  loc_B3A802: FLdI2 var_8A
  loc_B3A805: CStrUI1
  loc_B3A807: FStStrNoPop var_C0
  loc_B3A80A: ConcatStr
  loc_B3A80B: FStStrNoPop var_C4
  loc_B3A80E: LitStr " align=""right"">"
  loc_B3A811: ConcatStr
  loc_B3A812: FStStrNoPop var_C8
  loc_B3A815: FMemLdR4 var_9C(12)
  loc_B3A81A: ConcatStr
  loc_B3A81B: FStStrNoPop var_CC
  loc_B3A81E: LitStr "</td>"
  loc_B3A821: ConcatStr
  loc_B3A822: CVarStr var_DC
  loc_B3A825: PopAdLdVar
  loc_B3A826: FLdPr Me
  loc_B3A829: MemLdRfVar from_stack_1.global_60
  loc_B3A82C: LdPrVar
  loc_B3A82E: LateMemCall
  loc_B3A834: FFreeStr var_C0 = "": var_C4 = "": var_C8 = ""
  loc_B3A83F: FFree1Var var_DC = ""
  loc_B3A842: LitStr "   <td rowspan="
  loc_B3A845: FLdI2 var_8A
  loc_B3A848: CStrUI1
  loc_B3A84A: FStStrNoPop var_C0
  loc_B3A84D: ConcatStr
  loc_B3A84E: FStStrNoPop var_C4
  loc_B3A851: LitStr " align=""right"">"
  loc_B3A854: ConcatStr
  loc_B3A855: FStStrNoPop var_C8
  loc_B3A858: FMemLdR4 var_9C(16)
  loc_B3A85D: ConcatStr
  loc_B3A85E: FStStrNoPop var_CC
  loc_B3A861: LitStr "</td>"
  loc_B3A864: ConcatStr
  loc_B3A865: CVarStr var_DC
  loc_B3A868: PopAdLdVar
  loc_B3A869: FLdPr Me
  loc_B3A86C: MemLdRfVar from_stack_1.global_60
  loc_B3A86F: LdPrVar
  loc_B3A871: LateMemCall
  loc_B3A877: FFreeStr var_C0 = "": var_C4 = "": var_C8 = ""
  loc_B3A882: FFree1Var var_DC = ""
  loc_B3A885: LitStr "   <td rowspan="
  loc_B3A888: FLdI2 var_8A
  loc_B3A88B: CStrUI1
  loc_B3A88D: FStStrNoPop var_C0
  loc_B3A890: ConcatStr
  loc_B3A891: FStStrNoPop var_C4
  loc_B3A894: LitStr " align=""center"">"
  loc_B3A897: ConcatStr
  loc_B3A898: CVarStr var_10C
  loc_B3A89B: FMemLdRf unk_44C939
  loc_B3A8A0: CVarRef
  loc_B3A8A5: LitVarStr var_BC, "&nbsp;"
  loc_B3A8AA: FStVarCopyObj var_DC
  loc_B3A8AD: FLdRfVar var_DC
  loc_B3A8B0: FMemLdR4 var_9C(20)
  loc_B3A8B5: LitStr vbNullString
  loc_B3A8B8: EqStr
  loc_B3A8BA: CVarBoolI2 var_AC
  loc_B3A8BE: FLdRfVar var_FC
  loc_B3A8C1: ImpAdCallFPR4  = IIf(, , )
  loc_B3A8C6: FLdRfVar var_FC
  loc_B3A8C9: ConcatVar var_11C
  loc_B3A8CD: LitVarStr var_12C, "</td>"
  loc_B3A8D2: ConcatVar var_13C
  loc_B3A8D6: PopAdLdVar
  loc_B3A8D7: FLdPr Me
  loc_B3A8DA: MemLdRfVar from_stack_1.global_60
  loc_B3A8DD: LdPrVar
  loc_B3A8DF: LateMemCall
  loc_B3A8E5: FFreeStr var_C0 = ""
  loc_B3A8EC: FFreeVar var_AC = "": var_DC = "": var_10C = "": var_FC = "": var_11C = ""
  loc_B3A8FB: LitI2_Byte 1
  loc_B3A8FD: FLdPr Me
  loc_B3A900: MemLdRfVar from_stack_1.global_88
  loc_B3A903: FMemLdR4 var_9C(24)
  loc_B3A908: LitI2_Byte 1
  loc_B3A90A: FnUBound
  loc_B3A90C: CI2I4
  loc_B3A90D: ForI2 var_150
  loc_B3A913: FLdPr Me
  loc_B3A916: MemLdI2 global_88
  loc_B3A919: LitI2_Byte 1
  loc_B3A91B: GtI2
  loc_B3A91C: BranchF loc_B3A933
  loc_B3A91F: LitVarStr var_AC, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B3A924: PopAdLdVar
  loc_B3A925: FLdPr Me
  loc_B3A928: MemLdRfVar from_stack_1.global_60
  loc_B3A92B: LdPrVar
  loc_B3A92D: LateMemCall
  loc_B3A933: LitStr vbNullString
  loc_B3A936: LitI2_Byte 0
  loc_B3A938: LitI2_Byte 0
  loc_B3A93A: LitI2_Byte 0
  loc_B3A93C: LitStr "left"
  loc_B3A93F: FLdPr Me
  loc_B3A942: MemLdI2 global_88
  loc_B3A945: CI4UI1
  loc_B3A946: FMemLdR4 var_9C(24)
  loc_B3A94B: Ary1LdPr
  loc_B3A94C: MemLdStr global_0
  loc_B3A94F: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B3A954: CVarStr var_DC
  loc_B3A957: PopAdLdVar
  loc_B3A958: FLdPr Me
  loc_B3A95B: MemLdRfVar from_stack_1.global_60
  loc_B3A95E: LdPrVar
  loc_B3A960: LateMemCall
  loc_B3A966: FFree1Var var_DC = ""
  loc_B3A969: LitVarStr var_AC, "     </tr>"
  loc_B3A96E: PopAdLdVar
  loc_B3A96F: FLdPr Me
  loc_B3A972: MemLdRfVar from_stack_1.global_60
  loc_B3A975: LdPrVar
  loc_B3A977: LateMemCall
  loc_B3A97D: FLdPr Me
  loc_B3A980: MemLdRfVar from_stack_1.global_88
  loc_B3A983: NextI2 var_150, loc_B3A913
  loc_B3A988: LitI4 0
  loc_B3A98D: FStR4 var_9C
  loc_B3A990: AryUnlock
  loc_B3A993: FLdPr Me
  loc_B3A996: MemLdRfVar from_stack_1.global_84
  loc_B3A999: NextI4 var_94, loc_B3A702
  loc_B3A99E: Call Proc_190_16_A0E438()
  loc_B3A9A3: FLdPr Me
  loc_B3A9A6: MemLdRfVar from_stack_1.global_60
  loc_B3A9A9: LdPrVar
  loc_B3A9AB: LateMemCall
  loc_B3A9B1: LitStr vbNullString
  loc_B3A9B4: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B3A9B9: ExitProcHresult
  loc_B3A9BA: FStFPR8 arg_5C00
End Sub

Private Function Proc_190_13_B494D0() 'B494D0
  'Data Table: 44C9D4
  loc_B49174: FLdPr Me
  loc_B49177: MemLdStr global_84
  loc_B4917A: LitI4 1
  loc_B4917F: AddI4
  loc_B49180: FLdPr Me
  loc_B49183: MemStI4 global_84
  loc_B49186: LitI2_Byte 0
  loc_B49188: FLdPr Me
  loc_B4918B: MemStI2 global_88
  loc_B4918E: LitI4 0
  loc_B49193: FLdPr Me
  loc_B49196: MemLdStr global_84
  loc_B49199: FLdPr Me
  loc_B4919C: MemLdRfVar from_stack_1.global_80
  loc_B4919F: RedimPreserve
  loc_B491A9: FLdPr Me
  loc_B491AC: MemLdRfVar from_stack_1.global_76
  loc_B491AF: NewIfNullAd
  loc_B491B2: FStAd var_88 
  loc_B491B6: FLdRfVar var_A4
  loc_B491B9: LitVarStr var_A0, "CodiDifu"
  loc_B491BE: PopAdLdVar
  loc_B491BF: FLdRfVar var_90
  loc_B491C2: FLdRfVar var_8C
  loc_B491C5: FLdPr var_88
  loc_B491C8: from_stack_1v = clsdifunto.RsFrmGet()
  loc_B491CD: FLdPr var_8C
  loc_B491D0:  = Me.Fields
  loc_B491D5: FLdPr var_90
  loc_B491D8: from_stack_2 = Me.Item(from_stack_1)
  loc_B491DD: LitI2_Byte 0
  loc_B491DF: LitVar_Missing var_D8
  loc_B491E2: LitI2_Byte 0
  loc_B491E4: FLdZeroAd var_A4
  loc_B491E7: CVarAd
  loc_B491EB: PopAdLdVar
  loc_B491EC: FLdPr Me
  loc_B491EF: MemLdStr global_84
  loc_B491F2: FLdPr Me
  loc_B491F5: MemLdStr global_80
  loc_B491F8: AryLock
  loc_B491FB: Ary1LdPr
  loc_B491FC: MemLdRfVar from_stack_1.global_0
  loc_B491FF: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B49204: AryUnlock
  loc_B49207: FFreeAd var_8C = ""
  loc_B4920E: FFreeVar var_B8 = ""
  loc_B49215: FLdRfVar var_B8
  loc_B49218: FLdRfVar var_A4
  loc_B4921B: LitVarStr var_A0, "DetaPers"
  loc_B49220: PopAdLdVar
  loc_B49221: FLdRfVar var_90
  loc_B49224: FLdRfVar var_8C
  loc_B49227: FLdPr var_88
  loc_B4922A: from_stack_1v = clsdifunto.RsFrmGet()
  loc_B4922F: FLdPr var_8C
  loc_B49232:  = Me.Fields
  loc_B49237: FLdPr var_90
  loc_B4923A: from_stack_2 = Me.Item(from_stack_1)
  loc_B4923F: FLdPr var_A4
  loc_B49242:  = Me.Value
  loc_B49247: FLdRfVar var_F4
  loc_B4924A: LitVarStr var_F0, "DetaPers"
  loc_B4924F: PopAdLdVar
  loc_B49250: FLdRfVar var_E0
  loc_B49253: FLdRfVar var_DC
  loc_B49256: FLdPr var_88
  loc_B49259: from_stack_1v = clsdifunto.RsFrmGet()
  loc_B4925E: FLdPr var_DC
  loc_B49261:  = Me.Fields
  loc_B49266: FLdPr var_E0
  loc_B49269: from_stack_2 = Me.Item(from_stack_1)
  loc_B4926E: FLdZeroAd var_F4
  loc_B49271: CVarAd
  loc_B49275: LitVarStr var_114, "&nbsp;"
  loc_B4927A: FStVarCopyObj var_124
  loc_B4927D: FLdRfVar var_124
  loc_B49280: FLdRfVar var_B8
  loc_B49283: LitVarStr var_C8, vbNullString
  loc_B49288: HardType
  loc_B49289: EqVar var_D8
  loc_B4928D: FStVar var_104
  loc_B49291: FLdRfVar var_104
  loc_B49294: FLdRfVar var_144
  loc_B49297: ImpAdCallFPR4  = IIf(, , )
  loc_B4929C: LitI2_Byte 0
  loc_B4929E: LitVar_Missing var_164
  loc_B492A1: LitI2_Byte 0
  loc_B492A3: FLdVar var_144
  loc_B492A7: FLdPr Me
  loc_B492AA: MemLdStr global_84
  loc_B492AD: FLdPr Me
  loc_B492B0: MemLdStr global_80
  loc_B492B3: AryLock
  loc_B492B6: Ary1LdPr
  loc_B492B7: MemLdRfVar from_stack_1.global_4
  loc_B492BA: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B492BF: AryUnlock
  loc_B492C2: FFreeAd var_8C = "": var_90 = "": var_A4 = "": var_DC = ""
  loc_B492CF: FFreeVar var_B8 = "": var_104 = "": var_124 = "": var_134 = "": var_144 = ""
  loc_B492DE: FLdRfVar var_A4
  loc_B492E1: LitVarStr var_A0, "NumeDifu"
  loc_B492E6: PopAdLdVar
  loc_B492E7: FLdRfVar var_90
  loc_B492EA: FLdRfVar var_8C
  loc_B492ED: FLdPr var_88
  loc_B492F0: from_stack_1v = clsdifunto.RsFrmGet()
  loc_B492F5: FLdPr var_8C
  loc_B492F8:  = Me.Fields
  loc_B492FD: FLdPr var_90
  loc_B49300: from_stack_2 = Me.Item(from_stack_1)
  loc_B49305: LitI2_Byte 0
  loc_B49307: LitVar_Missing var_D8
  loc_B4930A: LitI2_Byte 0
  loc_B4930C: FLdZeroAd var_A4
  loc_B4930F: CVarAd
  loc_B49313: PopAdLdVar
  loc_B49314: FLdPr Me
  loc_B49317: MemLdStr global_84
  loc_B4931A: FLdPr Me
  loc_B4931D: MemLdStr global_80
  loc_B49320: AryLock
  loc_B49323: Ary1LdPr
  loc_B49324: MemLdRfVar from_stack_1.global_8
  loc_B49327: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B4932C: AryUnlock
  loc_B4932F: FFreeAd var_8C = ""
  loc_B49336: FFreeVar var_B8 = ""
  loc_B4933D: FLdRfVar var_A4
  loc_B49340: LitVarStr var_A0, "FilaDifu"
  loc_B49345: PopAdLdVar
  loc_B49346: FLdRfVar var_90
  loc_B49349: FLdRfVar var_8C
  loc_B4934C: FLdPr var_88
  loc_B4934F: from_stack_1v = clsdifunto.RsFrmGet()
  loc_B49354: FLdPr var_8C
  loc_B49357:  = Me.Fields
  loc_B4935C: FLdPr var_90
  loc_B4935F: from_stack_2 = Me.Item(from_stack_1)
  loc_B49364: LitI2_Byte 0
  loc_B49366: LitVar_Missing var_D8
  loc_B49369: LitI2_Byte 0
  loc_B4936B: FLdZeroAd var_A4
  loc_B4936E: CVarAd
  loc_B49372: PopAdLdVar
  loc_B49373: FLdPr Me
  loc_B49376: MemLdStr global_84
  loc_B49379: FLdPr Me
  loc_B4937C: MemLdStr global_80
  loc_B4937F: AryLock
  loc_B49382: Ary1LdPr
  loc_B49383: MemLdRfVar from_stack_1.global_12
  loc_B49386: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B4938B: AryUnlock
  loc_B4938E: FFreeAd var_8C = ""
  loc_B49395: FFreeVar var_B8 = ""
  loc_B4939C: FLdRfVar var_B8
  loc_B4939F: FLdRfVar var_A4
  loc_B493A2: LitVarStr var_A0, "SeccDifu"
  loc_B493A7: PopAdLdVar
  loc_B493A8: FLdRfVar var_90
  loc_B493AB: FLdRfVar var_8C
  loc_B493AE: FLdPr var_88
  loc_B493B1: from_stack_1v = clsdifunto.RsFrmGet()
  loc_B493B6: FLdPr var_8C
  loc_B493B9:  = Me.Fields
  loc_B493BE: FLdPr var_90
  loc_B493C1: from_stack_2 = Me.Item(from_stack_1)
  loc_B493C6: FLdPr var_A4
  loc_B493C9:  = Me.Value
  loc_B493CE: FLdRfVar var_F4
  loc_B493D1: LitVarStr var_F0, "SeccDifu"
  loc_B493D6: PopAdLdVar
  loc_B493D7: FLdRfVar var_E0
  loc_B493DA: FLdRfVar var_DC
  loc_B493DD: FLdPr var_88
  loc_B493E0: from_stack_1v = clsdifunto.RsFrmGet()
  loc_B493E5: FLdPr var_DC
  loc_B493E8:  = Me.Fields
  loc_B493ED: FLdPr var_E0
  loc_B493F0: from_stack_2 = Me.Item(from_stack_1)
  loc_B493F5: FLdZeroAd var_F4
  loc_B493F8: CVarAd
  loc_B493FC: LitVarStr var_114, "&nbsp;"
  loc_B49401: FStVarCopyObj var_124
  loc_B49404: FLdRfVar var_124
  loc_B49407: FLdRfVar var_B8
  loc_B4940A: LitVarStr var_C8, vbNullString
  loc_B4940F: HardType
  loc_B49410: EqVar var_D8
  loc_B49414: FStVar var_104
  loc_B49418: FLdRfVar var_104
  loc_B4941B: FLdRfVar var_144
  loc_B4941E: ImpAdCallFPR4  = IIf(, , )
  loc_B49423: LitI2_Byte 0
  loc_B49425: LitVar_Missing var_164
  loc_B49428: LitI2_Byte 0
  loc_B4942A: FLdVar var_144
  loc_B4942E: FLdPr Me
  loc_B49431: MemLdStr global_84
  loc_B49434: FLdPr Me
  loc_B49437: MemLdStr global_80
  loc_B4943A: AryLock
  loc_B4943D: Ary1LdPr
  loc_B4943E: MemLdRfVar from_stack_1.global_16
  loc_B49441: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B49446: AryUnlock
  loc_B49449: FFreeAd var_8C = "": var_90 = "": var_A4 = "": var_DC = ""
  loc_B49456: FFreeVar var_B8 = "": var_104 = "": var_124 = "": var_134 = "": var_144 = ""
  loc_B49465: FLdRfVar var_A4
  loc_B49468: LitVarStr var_A0, "FeveDifu"
  loc_B4946D: PopAdLdVar
  loc_B4946E: FLdRfVar var_90
  loc_B49471: FLdRfVar var_8C
  loc_B49474: FLdPr var_88
  loc_B49477: from_stack_1v = clsdifunto.RsFrmGet()
  loc_B4947C: FLdPr var_8C
  loc_B4947F:  = Me.Fields
  loc_B49484: FLdPr var_90
  loc_B49487: from_stack_2 = Me.Item(from_stack_1)
  loc_B4948C: LitI2_Byte 0
  loc_B4948E: LitVar_Missing var_D8
  loc_B49491: LitI2_Byte 0
  loc_B49493: FLdZeroAd var_A4
  loc_B49496: CVarAd
  loc_B4949A: PopAdLdVar
  loc_B4949B: FLdPr Me
  loc_B4949E: MemLdStr global_84
  loc_B494A1: FLdPr Me
  loc_B494A4: MemLdStr global_80
  loc_B494A7: AryLock
  loc_B494AA: Ary1LdPr
  loc_B494AB: MemLdRfVar from_stack_1.global_20
  loc_B494AE: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B494B3: AryUnlock
  loc_B494B6: FFreeAd var_8C = ""
  loc_B494BD: FFreeVar var_B8 = ""
  loc_B494C4: LitNothing
  loc_B494C6: FStAd var_88 
  loc_B494CA: Call Proc_190_14_ADEDB0()
  loc_B494CF: ExitProcHresult
End Function

Private Function Proc_190_14_ADEDB0() 'ADEDB0
  'Data Table: 44C9D4
  loc_ADEC80: FLdPr Me
  loc_ADEC83: MemLdI2 global_88
  loc_ADEC86: LitI2_Byte 1
  loc_ADEC88: AddI2
  loc_ADEC89: FLdPr Me
  loc_ADEC8C: MemStI2 global_88
  loc_ADEC8F: LitI4 0
  loc_ADEC94: FLdPr Me
  loc_ADEC97: MemLdI2 global_88
  loc_ADEC9A: CI4UI1
  loc_ADEC9B: FLdPr Me
  loc_ADEC9E: MemLdStr global_84
  loc_ADECA1: FLdPr Me
  loc_ADECA4: MemLdStr global_80
  loc_ADECA7: Ary1LdPr
  loc_ADECA8: MemLdRfVar from_stack_1.global_24
  loc_ADECAB: RedimPreserve
  loc_ADECB5: FLdRfVar var_B0
  loc_ADECB8: FLdRfVar var_A0
  loc_ADECBB: LitVarStr var_9C, "DetaDedi"
  loc_ADECC0: PopAdLdVar
  loc_ADECC1: FLdRfVar var_8C
  loc_ADECC4: FLdRfVar var_88
  loc_ADECC7: FLdPr Me
  loc_ADECCA: MemLdRfVar from_stack_1.global_76
  loc_ADECCD: NewIfNullPr clsdifunto
  loc_ADECD0: from_stack_1v = clsdifunto.RsFrmGet()
  loc_ADECD5: FLdPr var_88
  loc_ADECD8:  = Me.Fields
  loc_ADECDD: FLdPr var_8C
  loc_ADECE0: from_stack_2 = Me.Item(from_stack_1)
  loc_ADECE5: FLdPr var_A0
  loc_ADECE8:  = Me.Value
  loc_ADECED: FLdRfVar var_EC
  loc_ADECF0: LitVarStr var_E8, "DetaDedi"
  loc_ADECF5: PopAdLdVar
  loc_ADECF6: FLdRfVar var_D8
  loc_ADECF9: FLdRfVar var_D4
  loc_ADECFC: FLdPr Me
  loc_ADECFF: MemLdRfVar from_stack_1.global_76
  loc_ADED02: NewIfNullPr clsdifunto
  loc_ADED05: from_stack_1v = clsdifunto.RsFrmGet()
  loc_ADED0A: FLdPr var_D4
  loc_ADED0D:  = Me.Fields
  loc_ADED12: FLdPr var_D8
  loc_ADED15: from_stack_2 = Me.Item(from_stack_1)
  loc_ADED1A: FLdZeroAd var_EC
  loc_ADED1D: CVarAd
  loc_ADED21: LitVarStr var_10C, "&nbsp;"
  loc_ADED26: FStVarCopyObj var_11C
  loc_ADED29: FLdRfVar var_11C
  loc_ADED2C: FLdRfVar var_B0
  loc_ADED2F: LitVarStr var_C0, vbNullString
  loc_ADED34: HardType
  loc_ADED35: EqVar var_D0
  loc_ADED39: FStVar var_FC
  loc_ADED3D: FLdRfVar var_FC
  loc_ADED40: FLdRfVar var_13C
  loc_ADED43: ImpAdCallFPR4  = IIf(, , )
  loc_ADED48: LitI2_Byte 0
  loc_ADED4A: LitVar_Missing var_164
  loc_ADED4D: LitI2_Byte 0
  loc_ADED4F: FLdVar var_13C
  loc_ADED53: FLdPr Me
  loc_ADED56: MemLdI2 global_88
  loc_ADED59: CI4UI1
  loc_ADED5A: FLdPr Me
  loc_ADED5D: MemLdStr global_84
  loc_ADED60: FLdPr Me
  loc_ADED63: MemLdStr global_80
  loc_ADED66: AryLock
  loc_ADED69: Ary1LdPr
  loc_ADED6A: MemLdStr global_24
  loc_ADED6D: AryLock
  loc_ADED70: Ary1LdPr
  loc_ADED71: MemLdRfVar from_stack_1.global_0
  loc_ADED74: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_ADED79: AryUnlock
  loc_ADED7C: AryUnlock
  loc_ADED7F: FFreeAd var_88 = "": var_8C = "": var_A0 = "": var_D4 = ""
  loc_ADED8C: FFreeVar var_B0 = "": var_FC = "": var_11C = "": var_12C = "": var_13C = ""
  loc_ADED9B: LitI2_Byte 1
  loc_ADED9D: PopTmpLdAd2 var_166
  loc_ADEDA0: FLdPr Me
  loc_ADEDA3: MemLdRfVar from_stack_1.global_76
  loc_ADEDA6: NewIfNullPr clsdifunto
  loc_ADEDA9: Call clsdifunto.Move(from_stack_1v)
  loc_ADEDAE: ExitProcHresult
End Function

Private Function Proc_190_15_BC7C50() 'BC7C50
  'Data Table: 44C9D4
  loc_BC7568: LitVarStr var_98, "<html>"
  loc_BC756D: PopAdLdVar
  loc_BC756E: FLdPr Me
  loc_BC7571: MemLdRfVar from_stack_1.global_60
  loc_BC7574: LdPrVar
  loc_BC7576: LateMemCall
  loc_BC757C: LitVarStr var_98, "<head>"
  loc_BC7581: PopAdLdVar
  loc_BC7582: FLdPr Me
  loc_BC7585: MemLdRfVar from_stack_1.global_60
  loc_BC7588: LdPrVar
  loc_BC758A: LateMemCall
  loc_BC7590: LitVarStr var_98, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BC7595: PopAdLdVar
  loc_BC7596: FLdPr Me
  loc_BC7599: MemLdRfVar from_stack_1.global_60
  loc_BC759C: LdPrVar
  loc_BC759E: LateMemCall
  loc_BC75A4: LitStr "<title>"
  loc_BC75A7: FLdRfVar var_AC
  loc_BC75AA: FLdPr Me
  loc_BC75AD:  = Me.Caption
  loc_BC75B2: ILdRf var_AC
  loc_BC75B5: ConcatStr
  loc_BC75B6: FStStrNoPop var_B0
  loc_BC75B9: LitStr "</title>"
  loc_BC75BC: ConcatStr
  loc_BC75BD: CVarStr var_C0
  loc_BC75C0: PopAdLdVar
  loc_BC75C1: FLdPr Me
  loc_BC75C4: MemLdRfVar from_stack_1.global_60
  loc_BC75C7: LdPrVar
  loc_BC75C9: LateMemCall
  loc_BC75CF: FFreeStr var_AC = ""
  loc_BC75D6: FFree1Var var_C0 = ""
  loc_BC75D9: LitVarStr var_98, "<style type=""text/css"">"
  loc_BC75DE: PopAdLdVar
  loc_BC75DF: FLdPr Me
  loc_BC75E2: MemLdRfVar from_stack_1.global_60
  loc_BC75E5: LdPrVar
  loc_BC75E7: LateMemCall
  loc_BC75ED: LitVarStr var_98, ".Titulo1 {"
  loc_BC75F2: PopAdLdVar
  loc_BC75F3: FLdPr Me
  loc_BC75F6: MemLdRfVar from_stack_1.global_60
  loc_BC75F9: LdPrVar
  loc_BC75FB: LateMemCall
  loc_BC7601: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BC7606: PopAdLdVar
  loc_BC7607: FLdPr Me
  loc_BC760A: MemLdRfVar from_stack_1.global_60
  loc_BC760D: LdPrVar
  loc_BC760F: LateMemCall
  loc_BC7615: LitVarStr var_98, " font-size: 18px;"
  loc_BC761A: PopAdLdVar
  loc_BC761B: FLdPr Me
  loc_BC761E: MemLdRfVar from_stack_1.global_60
  loc_BC7621: LdPrVar
  loc_BC7623: LateMemCall
  loc_BC7629: LitVarStr var_98, " font-weight: bold;"
  loc_BC762E: PopAdLdVar
  loc_BC762F: FLdPr Me
  loc_BC7632: MemLdRfVar from_stack_1.global_60
  loc_BC7635: LdPrVar
  loc_BC7637: LateMemCall
  loc_BC763D: LitVarStr var_98, "}"
  loc_BC7642: PopAdLdVar
  loc_BC7643: FLdPr Me
  loc_BC7646: MemLdRfVar from_stack_1.global_60
  loc_BC7649: LdPrVar
  loc_BC764B: LateMemCall
  loc_BC7651: LitVarStr var_98, ".Titulo2 {"
  loc_BC7656: PopAdLdVar
  loc_BC7657: FLdPr Me
  loc_BC765A: MemLdRfVar from_stack_1.global_60
  loc_BC765D: LdPrVar
  loc_BC765F: LateMemCall
  loc_BC7665: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BC766A: PopAdLdVar
  loc_BC766B: FLdPr Me
  loc_BC766E: MemLdRfVar from_stack_1.global_60
  loc_BC7671: LdPrVar
  loc_BC7673: LateMemCall
  loc_BC7679: LitVarStr var_98, " font-size: 14px;"
  loc_BC767E: PopAdLdVar
  loc_BC767F: FLdPr Me
  loc_BC7682: MemLdRfVar from_stack_1.global_60
  loc_BC7685: LdPrVar
  loc_BC7687: LateMemCall
  loc_BC768D: LitVarStr var_98, " font-weight: bold;"
  loc_BC7692: PopAdLdVar
  loc_BC7693: FLdPr Me
  loc_BC7696: MemLdRfVar from_stack_1.global_60
  loc_BC7699: LdPrVar
  loc_BC769B: LateMemCall
  loc_BC76A1: LitVarStr var_98, "}"
  loc_BC76A6: PopAdLdVar
  loc_BC76A7: FLdPr Me
  loc_BC76AA: MemLdRfVar from_stack_1.global_60
  loc_BC76AD: LdPrVar
  loc_BC76AF: LateMemCall
  loc_BC76B5: LitVarStr var_98, ".Normal {"
  loc_BC76BA: PopAdLdVar
  loc_BC76BB: FLdPr Me
  loc_BC76BE: MemLdRfVar from_stack_1.global_60
  loc_BC76C1: LdPrVar
  loc_BC76C3: LateMemCall
  loc_BC76C9: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BC76CE: PopAdLdVar
  loc_BC76CF: FLdPr Me
  loc_BC76D2: MemLdRfVar from_stack_1.global_60
  loc_BC76D5: LdPrVar
  loc_BC76D7: LateMemCall
  loc_BC76DD: LitVarStr var_98, " font-size: 12px;"
  loc_BC76E2: PopAdLdVar
  loc_BC76E3: FLdPr Me
  loc_BC76E6: MemLdRfVar from_stack_1.global_60
  loc_BC76E9: LdPrVar
  loc_BC76EB: LateMemCall
  loc_BC76F1: LitVarStr var_98, " font-style: normal;"
  loc_BC76F6: PopAdLdVar
  loc_BC76F7: FLdPr Me
  loc_BC76FA: MemLdRfVar from_stack_1.global_60
  loc_BC76FD: LdPrVar
  loc_BC76FF: LateMemCall
  loc_BC7705: LitVarStr var_98, " font-weight: normal;"
  loc_BC770A: PopAdLdVar
  loc_BC770B: FLdPr Me
  loc_BC770E: MemLdRfVar from_stack_1.global_60
  loc_BC7711: LdPrVar
  loc_BC7713: LateMemCall
  loc_BC7719: LitVarStr var_98, " font-variant: normal;"
  loc_BC771E: PopAdLdVar
  loc_BC771F: FLdPr Me
  loc_BC7722: MemLdRfVar from_stack_1.global_60
  loc_BC7725: LdPrVar
  loc_BC7727: LateMemCall
  loc_BC772D: LitVarStr var_98, "}"
  loc_BC7732: PopAdLdVar
  loc_BC7733: FLdPr Me
  loc_BC7736: MemLdRfVar from_stack_1.global_60
  loc_BC7739: LdPrVar
  loc_BC773B: LateMemCall
  loc_BC7741: LitVarStr var_98, ".Encabezado {"
  loc_BC7746: PopAdLdVar
  loc_BC7747: FLdPr Me
  loc_BC774A: MemLdRfVar from_stack_1.global_60
  loc_BC774D: LdPrVar
  loc_BC774F: LateMemCall
  loc_BC7755: LitVarStr var_98, " font-family: ""Times New Roman"", Times, serif;"
  loc_BC775A: PopAdLdVar
  loc_BC775B: FLdPr Me
  loc_BC775E: MemLdRfVar from_stack_1.global_60
  loc_BC7761: LdPrVar
  loc_BC7763: LateMemCall
  loc_BC7769: LitVarStr var_98, " font-size: 11px;"
  loc_BC776E: PopAdLdVar
  loc_BC776F: FLdPr Me
  loc_BC7772: MemLdRfVar from_stack_1.global_60
  loc_BC7775: LdPrVar
  loc_BC7777: LateMemCall
  loc_BC777D: LitVarStr var_98, " font-weight: bold;"
  loc_BC7782: PopAdLdVar
  loc_BC7783: FLdPr Me
  loc_BC7786: MemLdRfVar from_stack_1.global_60
  loc_BC7789: LdPrVar
  loc_BC778B: LateMemCall
  loc_BC7791: LitVarStr var_98, " background-color: #D3D3D3;"
  loc_BC7796: PopAdLdVar
  loc_BC7797: FLdPr Me
  loc_BC779A: MemLdRfVar from_stack_1.global_60
  loc_BC779D: LdPrVar
  loc_BC779F: LateMemCall
  loc_BC77A5: LitVarStr var_98, "}"
  loc_BC77AA: PopAdLdVar
  loc_BC77AB: FLdPr Me
  loc_BC77AE: MemLdRfVar from_stack_1.global_60
  loc_BC77B1: LdPrVar
  loc_BC77B3: LateMemCall
  loc_BC77B9: LitVarStr var_98, ".LineaDato {"
  loc_BC77BE: PopAdLdVar
  loc_BC77BF: FLdPr Me
  loc_BC77C2: MemLdRfVar from_stack_1.global_60
  loc_BC77C5: LdPrVar
  loc_BC77C7: LateMemCall
  loc_BC77CD: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BC77D2: PopAdLdVar
  loc_BC77D3: FLdPr Me
  loc_BC77D6: MemLdRfVar from_stack_1.global_60
  loc_BC77D9: LdPrVar
  loc_BC77DB: LateMemCall
  loc_BC77E1: LitVarStr var_98, " font-size: 10px;"
  loc_BC77E6: PopAdLdVar
  loc_BC77E7: FLdPr Me
  loc_BC77EA: MemLdRfVar from_stack_1.global_60
  loc_BC77ED: LdPrVar
  loc_BC77EF: LateMemCall
  loc_BC77F5: LitVarStr var_98, "}"
  loc_BC77FA: PopAdLdVar
  loc_BC77FB: FLdPr Me
  loc_BC77FE: MemLdRfVar from_stack_1.global_60
  loc_BC7801: LdPrVar
  loc_BC7803: LateMemCall
  loc_BC7809: LitVarStr var_98, ".Totales {"
  loc_BC780E: PopAdLdVar
  loc_BC780F: FLdPr Me
  loc_BC7812: MemLdRfVar from_stack_1.global_60
  loc_BC7815: LdPrVar
  loc_BC7817: LateMemCall
  loc_BC781D: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BC7822: PopAdLdVar
  loc_BC7823: FLdPr Me
  loc_BC7826: MemLdRfVar from_stack_1.global_60
  loc_BC7829: LdPrVar
  loc_BC782B: LateMemCall
  loc_BC7831: LitVarStr var_98, " font-size: 12px;"
  loc_BC7836: PopAdLdVar
  loc_BC7837: FLdPr Me
  loc_BC783A: MemLdRfVar from_stack_1.global_60
  loc_BC783D: LdPrVar
  loc_BC783F: LateMemCall
  loc_BC7845: LitVarStr var_98, " font-weight: bold;"
  loc_BC784A: PopAdLdVar
  loc_BC784B: FLdPr Me
  loc_BC784E: MemLdRfVar from_stack_1.global_60
  loc_BC7851: LdPrVar
  loc_BC7853: LateMemCall
  loc_BC7859: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_BC785E: PopAdLdVar
  loc_BC785F: FLdPr Me
  loc_BC7862: MemLdRfVar from_stack_1.global_60
  loc_BC7865: LdPrVar
  loc_BC7867: LateMemCall
  loc_BC786D: LitVarStr var_98, "}"
  loc_BC7872: PopAdLdVar
  loc_BC7873: FLdPr Me
  loc_BC7876: MemLdRfVar from_stack_1.global_60
  loc_BC7879: LdPrVar
  loc_BC787B: LateMemCall
  loc_BC7881: LitVarStr var_98, ".SubTotales {"
  loc_BC7886: PopAdLdVar
  loc_BC7887: FLdPr Me
  loc_BC788A: MemLdRfVar from_stack_1.global_60
  loc_BC788D: LdPrVar
  loc_BC788F: LateMemCall
  loc_BC7895: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BC789A: PopAdLdVar
  loc_BC789B: FLdPr Me
  loc_BC789E: MemLdRfVar from_stack_1.global_60
  loc_BC78A1: LdPrVar
  loc_BC78A3: LateMemCall
  loc_BC78A9: LitVarStr var_98, " font-size: 10px;"
  loc_BC78AE: PopAdLdVar
  loc_BC78AF: FLdPr Me
  loc_BC78B2: MemLdRfVar from_stack_1.global_60
  loc_BC78B5: LdPrVar
  loc_BC78B7: LateMemCall
  loc_BC78BD: LitVarStr var_98, " font-weight: bold;"
  loc_BC78C2: PopAdLdVar
  loc_BC78C3: FLdPr Me
  loc_BC78C6: MemLdRfVar from_stack_1.global_60
  loc_BC78C9: LdPrVar
  loc_BC78CB: LateMemCall
  loc_BC78D1: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_BC78D6: PopAdLdVar
  loc_BC78D7: FLdPr Me
  loc_BC78DA: MemLdRfVar from_stack_1.global_60
  loc_BC78DD: LdPrVar
  loc_BC78DF: LateMemCall
  loc_BC78E5: LitVarStr var_98, "}"
  loc_BC78EA: PopAdLdVar
  loc_BC78EB: FLdPr Me
  loc_BC78EE: MemLdRfVar from_stack_1.global_60
  loc_BC78F1: LdPrVar
  loc_BC78F3: LateMemCall
  loc_BC78F9: LitVarStr var_98, ".Tilde {"
  loc_BC78FE: PopAdLdVar
  loc_BC78FF: FLdPr Me
  loc_BC7902: MemLdRfVar from_stack_1.global_60
  loc_BC7905: LdPrVar
  loc_BC7907: LateMemCall
  loc_BC790D: LitVarStr var_98, " font-family: Wingdings;"
  loc_BC7912: PopAdLdVar
  loc_BC7913: FLdPr Me
  loc_BC7916: MemLdRfVar from_stack_1.global_60
  loc_BC7919: LdPrVar
  loc_BC791B: LateMemCall
  loc_BC7921: LitVarStr var_98, " font-size: 12px;"
  loc_BC7926: PopAdLdVar
  loc_BC7927: FLdPr Me
  loc_BC792A: MemLdRfVar from_stack_1.global_60
  loc_BC792D: LdPrVar
  loc_BC792F: LateMemCall
  loc_BC7935: LitVarStr var_98, "}"
  loc_BC793A: PopAdLdVar
  loc_BC793B: FLdPr Me
  loc_BC793E: MemLdRfVar from_stack_1.global_60
  loc_BC7941: LdPrVar
  loc_BC7943: LateMemCall
  loc_BC7949: LitVarStr var_98, "THEAD { display: table-header-group; }"
  loc_BC794E: PopAdLdVar
  loc_BC794F: FLdPr Me
  loc_BC7952: MemLdRfVar from_stack_1.global_60
  loc_BC7955: LdPrVar
  loc_BC7957: LateMemCall
  loc_BC795D: LitVarStr var_98, "</style>"
  loc_BC7962: PopAdLdVar
  loc_BC7963: FLdPr Me
  loc_BC7966: MemLdRfVar from_stack_1.global_60
  loc_BC7969: LdPrVar
  loc_BC796B: LateMemCall
  loc_BC7971: LitI4 0
  loc_BC7976: FStStrCopy var_B0
  loc_BC7979: FLdRfVar var_B0
  loc_BC797C: LitI4 0
  loc_BC7981: FStStrCopy var_AC
  loc_BC7984: FLdRfVar var_AC
  loc_BC7987: LitI2_Byte 0
  loc_BC7989: PopTmpLdAd2 var_C2
  loc_BC798C: FLdPr Me
  loc_BC798F: MemLdRfVar from_stack_1.global_60
  loc_BC7992: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BC7997: FFreeStr var_AC = ""
  loc_BC799E: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_BC79A3: PopAdLdVar
  loc_BC79A4: FLdPr Me
  loc_BC79A7: MemLdRfVar from_stack_1.global_60
  loc_BC79AA: LdPrVar
  loc_BC79AC: LateMemCall
  loc_BC79B2: LitVarStr var_98, "  <tr valign=""middle"">"
  loc_BC79B7: PopAdLdVar
  loc_BC79B8: FLdPr Me
  loc_BC79BB: MemLdRfVar from_stack_1.global_60
  loc_BC79BE: LdPrVar
  loc_BC79C0: LateMemCall
  loc_BC79C6: LitStr "    <th width=""100" & Chr(37) & """ align=""center"" valign=""middle""><p><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BC79C9: LitI2_Byte &H5F
  loc_BC79CB: CStrUI1
  loc_BC79CD: FStStrNoPop var_AC
  loc_BC79D0: ConcatStr
  loc_BC79D1: FStStrNoPop var_B0
  loc_BC79D4: LitStr """ height="""
  loc_BC79D7: ConcatStr
  loc_BC79D8: FStStrNoPop var_C8
  loc_BC79DB: LitI2_Byte &H3C
  loc_BC79DD: CStrUI1
  loc_BC79DF: FStStrNoPop var_CC
  loc_BC79E2: ConcatStr
  loc_BC79E3: FStStrNoPop var_D0
  loc_BC79E6: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_BC79E9: ConcatStr
  loc_BC79EA: FStStrNoPop var_D4
  loc_BC79ED: LitStr "Municipalidad de Guaymallén"
  loc_BC79F0: ConcatStr
  loc_BC79F1: FStStrNoPop var_D8
  loc_BC79F4: LitStr "</p>"
  loc_BC79F7: ConcatStr
  loc_BC79F8: CVarStr var_C0
  loc_BC79FB: PopAdLdVar
  loc_BC79FC: FLdPr Me
  loc_BC79FF: MemLdRfVar from_stack_1.global_60
  loc_BC7A02: LdPrVar
  loc_BC7A04: LateMemCall
  loc_BC7A0A: FFreeStr var_AC = "": var_B0 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_BC7A1B: FFree1Var var_C0 = ""
  loc_BC7A1E: LitStr "    <p>"
  loc_BC7A21: FLdRfVar var_AC
  loc_BC7A24: FLdPr Me
  loc_BC7A27:  = Me.Caption
  loc_BC7A2C: ILdRf var_AC
  loc_BC7A2F: ConcatStr
  loc_BC7A30: FStStrNoPop var_B0
  loc_BC7A33: LitStr "</p></th>"
  loc_BC7A36: ConcatStr
  loc_BC7A37: CVarStr var_C0
  loc_BC7A3A: PopAdLdVar
  loc_BC7A3B: FLdPr Me
  loc_BC7A3E: MemLdRfVar from_stack_1.global_60
  loc_BC7A41: LdPrVar
  loc_BC7A43: LateMemCall
  loc_BC7A49: FFreeStr var_AC = ""
  loc_BC7A50: FFree1Var var_C0 = ""
  loc_BC7A53: LitVarStr var_98, "  </tr>"
  loc_BC7A58: PopAdLdVar
  loc_BC7A59: FLdPr Me
  loc_BC7A5C: MemLdRfVar from_stack_1.global_60
  loc_BC7A5F: LdPrVar
  loc_BC7A61: LateMemCall
  loc_BC7A67: LitVarStr var_98, "  <tr>"
  loc_BC7A6C: PopAdLdVar
  loc_BC7A6D: FLdPr Me
  loc_BC7A70: MemLdRfVar from_stack_1.global_60
  loc_BC7A73: LdPrVar
  loc_BC7A75: LateMemCall
  loc_BC7A7B: LitVarStr var_98, "    <th><hr></th>"
  loc_BC7A80: PopAdLdVar
  loc_BC7A81: FLdPr Me
  loc_BC7A84: MemLdRfVar from_stack_1.global_60
  loc_BC7A87: LdPrVar
  loc_BC7A89: LateMemCall
  loc_BC7A8F: LitVarStr var_98, "  </tr>"
  loc_BC7A94: PopAdLdVar
  loc_BC7A95: FLdPr Me
  loc_BC7A98: MemLdRfVar from_stack_1.global_60
  loc_BC7A9B: LdPrVar
  loc_BC7A9D: LateMemCall
  loc_BC7AA3: LitVarStr var_98, "  <tr valign=""top"" class=""Normal"">"
  loc_BC7AA8: PopAdLdVar
  loc_BC7AA9: FLdPr Me
  loc_BC7AAC: MemLdRfVar from_stack_1.global_60
  loc_BC7AAF: LdPrVar
  loc_BC7AB1: LateMemCall
  loc_BC7AB7: LitStr "    <td align=""left""><strong>"
  loc_BC7ABA: FLdRfVar var_AC
  loc_BC7ABD: FLdPr Me
  loc_BC7AC0: VCallAd Control_ID_CodiTiseCbo
  loc_BC7AC3: FStAdFunc var_DC
  loc_BC7AC6: FLdPr var_DC
  loc_BC7AC9:  = Me.Text
  loc_BC7ACE: ILdRf var_AC
  loc_BC7AD1: ConcatStr
  loc_BC7AD2: FStStrNoPop var_B0
  loc_BC7AD5: LitStr "</strong></td>"
  loc_BC7AD8: ConcatStr
  loc_BC7AD9: CVarStr var_C0
  loc_BC7ADC: PopAdLdVar
  loc_BC7ADD: FLdPr Me
  loc_BC7AE0: MemLdRfVar from_stack_1.global_60
  loc_BC7AE3: LdPrVar
  loc_BC7AE5: LateMemCall
  loc_BC7AEB: FFreeStr var_AC = ""
  loc_BC7AF2: FFree1Ad var_DC
  loc_BC7AF5: FFree1Var var_C0 = ""
  loc_BC7AF8: LitVarStr var_98, "  </tr>"
  loc_BC7AFD: PopAdLdVar
  loc_BC7AFE: FLdPr Me
  loc_BC7B01: MemLdRfVar from_stack_1.global_60
  loc_BC7B04: LdPrVar
  loc_BC7B06: LateMemCall
  loc_BC7B0C: LitVarStr var_98, "</table>"
  loc_BC7B11: PopAdLdVar
  loc_BC7B12: FLdPr Me
  loc_BC7B15: MemLdRfVar from_stack_1.global_60
  loc_BC7B18: LdPrVar
  loc_BC7B1A: LateMemCall
  loc_BC7B20: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_BC7B25: PopAdLdVar
  loc_BC7B26: FLdPr Me
  loc_BC7B29: MemLdRfVar from_stack_1.global_60
  loc_BC7B2C: LdPrVar
  loc_BC7B2E: LateMemCall
  loc_BC7B34: LitVarStr var_98, "  <thead>"
  loc_BC7B39: PopAdLdVar
  loc_BC7B3A: FLdPr Me
  loc_BC7B3D: MemLdRfVar from_stack_1.global_60
  loc_BC7B40: LdPrVar
  loc_BC7B42: LateMemCall
  loc_BC7B48: LitVarStr var_98, "  <tr align=""center"" class=""Encabezado"">"
  loc_BC7B4D: PopAdLdVar
  loc_BC7B4E: FLdPr Me
  loc_BC7B51: MemLdRfVar from_stack_1.global_60
  loc_BC7B54: LdPrVar
  loc_BC7B56: LateMemCall
  loc_BC7B5C: LitVarStr var_98, "    <th rowspan=""2"">Cuenta</th>"
  loc_BC7B61: PopAdLdVar
  loc_BC7B62: FLdPr Me
  loc_BC7B65: MemLdRfVar from_stack_1.global_60
  loc_BC7B68: LdPrVar
  loc_BC7B6A: LateMemCall
  loc_BC7B70: LitVarStr var_98, "    <th rowspan=""2"">Apellido y Nombre del Titular</th>"
  loc_BC7B75: PopAdLdVar
  loc_BC7B76: FLdPr Me
  loc_BC7B79: MemLdRfVar from_stack_1.global_60
  loc_BC7B7C: LdPrVar
  loc_BC7B7E: LateMemCall
  loc_BC7B84: LitVarStr var_98, "    <th colspan=""3"">Ubicación</th>"
  loc_BC7B89: PopAdLdVar
  loc_BC7B8A: FLdPr Me
  loc_BC7B8D: MemLdRfVar from_stack_1.global_60
  loc_BC7B90: LdPrVar
  loc_BC7B92: LateMemCall
  loc_BC7B98: LitVarStr var_98, "    <th rowspan=""2"">Vencimiento</th>"
  loc_BC7B9D: PopAdLdVar
  loc_BC7B9E: FLdPr Me
  loc_BC7BA1: MemLdRfVar from_stack_1.global_60
  loc_BC7BA4: LdPrVar
  loc_BC7BA6: LateMemCall
  loc_BC7BAC: LitVarStr var_98, "    <th rowspan=""2"">Apellido y Nombre del Difunto</th>"
  loc_BC7BB1: PopAdLdVar
  loc_BC7BB2: FLdPr Me
  loc_BC7BB5: MemLdRfVar from_stack_1.global_60
  loc_BC7BB8: LdPrVar
  loc_BC7BBA: LateMemCall
  loc_BC7BC0: LitVarStr var_98, "  </tr>"
  loc_BC7BC5: PopAdLdVar
  loc_BC7BC6: FLdPr Me
  loc_BC7BC9: MemLdRfVar from_stack_1.global_60
  loc_BC7BCC: LdPrVar
  loc_BC7BCE: LateMemCall
  loc_BC7BD4: LitVarStr var_98, "  <tr align=""center"" class=""Encabezado"">"
  loc_BC7BD9: PopAdLdVar
  loc_BC7BDA: FLdPr Me
  loc_BC7BDD: MemLdRfVar from_stack_1.global_60
  loc_BC7BE0: LdPrVar
  loc_BC7BE2: LateMemCall
  loc_BC7BE8: LitVarStr var_98, "    <th>Número</th>"
  loc_BC7BED: PopAdLdVar
  loc_BC7BEE: FLdPr Me
  loc_BC7BF1: MemLdRfVar from_stack_1.global_60
  loc_BC7BF4: LdPrVar
  loc_BC7BF6: LateMemCall
  loc_BC7BFC: LitVarStr var_98, "    <th>Fila</th>"
  loc_BC7C01: PopAdLdVar
  loc_BC7C02: FLdPr Me
  loc_BC7C05: MemLdRfVar from_stack_1.global_60
  loc_BC7C08: LdPrVar
  loc_BC7C0A: LateMemCall
  loc_BC7C10: LitVarStr var_98, "    <th>Sección</th>"
  loc_BC7C15: PopAdLdVar
  loc_BC7C16: FLdPr Me
  loc_BC7C19: MemLdRfVar from_stack_1.global_60
  loc_BC7C1C: LdPrVar
  loc_BC7C1E: LateMemCall
  loc_BC7C24: LitVarStr var_98, "  </tr>"
  loc_BC7C29: PopAdLdVar
  loc_BC7C2A: FLdPr Me
  loc_BC7C2D: MemLdRfVar from_stack_1.global_60
  loc_BC7C30: LdPrVar
  loc_BC7C32: LateMemCall
  loc_BC7C38: LitVarStr var_98, "  </thead>"
  loc_BC7C3D: PopAdLdVar
  loc_BC7C3E: FLdPr Me
  loc_BC7C41: MemLdRfVar from_stack_1.global_60
  loc_BC7C44: LdPrVar
  loc_BC7C46: LateMemCall
  loc_BC7C4C: ExitProcHresult
End Function

Private Function Proc_190_16_A0E438() 'A0E438
  'Data Table: 44C9D4
  loc_A0E3F8: LitVarStr var_94, "</table>"
  loc_A0E3FD: PopAdLdVar
  loc_A0E3FE: FLdPr Me
  loc_A0E401: MemLdRfVar from_stack_1.global_60
  loc_A0E404: LdPrVar
  loc_A0E406: LateMemCall
  loc_A0E40C: LitVarStr var_94, "</body>"
  loc_A0E411: PopAdLdVar
  loc_A0E412: FLdPr Me
  loc_A0E415: MemLdRfVar from_stack_1.global_60
  loc_A0E418: LdPrVar
  loc_A0E41A: LateMemCall
  loc_A0E420: LitVarStr var_94, "</html>"
  loc_A0E425: PopAdLdVar
  loc_A0E426: FLdPr Me
  loc_A0E429: MemLdRfVar from_stack_1.global_60
  loc_A0E42C: LdPrVar
  loc_A0E42E: LateMemCall
  loc_A0E434: ExitProcHresult
End Function

VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form dlgConsultaFaciCtaCte
  Caption = "Consulta de movimientos por cada cuota"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 3 'Fixed Dialog
  Icon = "dlgConsultaFaciCtaCte.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 12096
  ClientHeight = 4116
  ShowInTaskbar = 0   'False
  StartUpPosition = 2 'CenterScreen
  Begin VB.TextBox txtTotal
    Left = 9960
    Top = 3480
    Width = 1815
    Height = 345
    TabIndex = 2
    Alignment = 1 'Right Justify
    Locked = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.CommandButton cmdCancelar
    Caption = "ACEPTAR"
    Left = 4800
    Top = 3480
    Width = 1215
    Height = 375
    TabIndex = 0
  End
  Begin MSDataGridLib.DataGrid dgdDetaFapa
    Left = 120
    Top = 360
    Width = 11775
    Height = 2895
    TabIndex = 1
    OleObjectBlob = "dlgConsultaFaciCtaCte.frx":08CA
  End
  Begin VB.Label Label8
    Caption = "Total de Capital:"
    Left = 7920
    Top = 3480
    Width = 1980
    Height = 300
    TabIndex = 3
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "dlgConsultaFaciCtaCte"

Public lCodiFapa As Long
Public iCuotDefa As Integer
Public byCodiOfic As Byte
Public sCuenCtct As String


Private Sub Form_Load() 'AFE684
  'Data Table: 407068
  loc_AFE4D4: LitI2_Byte 0
  loc_AFE4D6: CR8I2
  loc_AFE4D7: FStFPR8 var_8C
  loc_AFE4DA: LitStr "SELECT CodiFapa, CuotDefa, CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct, CodiConc, CapiFacc, SaldFacc FROM facictacte "
  loc_AFE4DD: LitStr " WHERE CodiFapa = "
  loc_AFE4E0: ConcatStr
  loc_AFE4E1: FStStrNoPop var_90
  loc_AFE4E4: FLdPr Me
  loc_AFE4E7: MemLdStr lCodiFapa
  loc_AFE4EA: CStrI4
  loc_AFE4EC: FStStrNoPop var_94
  loc_AFE4EF: ConcatStr
  loc_AFE4F0: FStStrNoPop var_98
  loc_AFE4F3: LitStr " AND CuotDefa = "
  loc_AFE4F6: ConcatStr
  loc_AFE4F7: FStStrNoPop var_9C
  loc_AFE4FA: FLdPr Me
  loc_AFE4FD: MemLdI2 iCuotDefa
  loc_AFE500: CStrUI1
  loc_AFE502: FStStrNoPop var_A0
  loc_AFE505: ConcatStr
  loc_AFE506: FStStrNoPop var_A4
  loc_AFE509: LitStr " AND CodiOfic = "
  loc_AFE50C: ConcatStr
  loc_AFE50D: FStStrNoPop var_A8
  loc_AFE510: FLdPr Me
  loc_AFE513: MemLdUI1 byCodiOfic
  loc_AFE517: CStrI2
  loc_AFE519: FStStrNoPop var_AC
  loc_AFE51C: ConcatStr
  loc_AFE51D: FStStrNoPop var_B0
  loc_AFE520: LitStr " AND CuenCtct = '"
  loc_AFE523: ConcatStr
  loc_AFE524: FStStrNoPop var_B4
  loc_AFE527: FLdPr Me
  loc_AFE52A: MemLdStr sCuenCtct
  loc_AFE52D: ConcatStr
  loc_AFE52E: FStStrNoPop var_B8
  loc_AFE531: LitStr "'"
  loc_AFE534: ConcatStr
  loc_AFE535: FStStrNoPop var_BC
  loc_AFE538: LitStr " ORDER BY CodiFapa, CuotDefa, CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct"
  loc_AFE53B: ConcatStr
  loc_AFE53C: FStStrNoPop var_C0
  loc_AFE53F: FLdPr Me
  loc_AFE542: MemLdRfVar from_stack_1.global_64
  loc_AFE545: NewIfNullPr clsfacictacte
  loc_AFE548: Call clsfacictacte.RedefineRS(from_stack_1v)
  loc_AFE54D: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_AFE56A: FLdRfVar var_C4
  loc_AFE56D: FLdPr Me
  loc_AFE570: MemLdRfVar from_stack_1.global_64
  loc_AFE573: NewIfNullPr clsfacictacte
  loc_AFE576: from_stack_1 = clsfacictacte.RecordCount
  loc_AFE57B: ILdRf var_C4
  loc_AFE57E: LitI4 0
  loc_AFE583: GtI4
  loc_AFE584: BranchF loc_AFE639
  loc_AFE587: LitI4 0
  loc_AFE58C: LitI4 1
  loc_AFE591: FLdRfVar var_C8
  loc_AFE594: Redim
  loc_AFE59E: FLdPr Me
  loc_AFE5A1: MemLdRfVar from_stack_1.global_64
  loc_AFE5A4: NewIfNullAd
  loc_AFE5A7: FStAd var_CC 
  loc_AFE5AB: FLdRfVar var_CC
  loc_AFE5AE: CVarRef
  loc_AFE5B3: ParmAry1St
  loc_AFE5B9: FLdPr Me
  loc_AFE5BC: VCallAd Control_ID_dgdDetaFapa
  loc_AFE5BF: CVarAd
  loc_AFE5C3: ParmAry1St
  loc_AFE5C9: FLdRfVar var_C8
  loc_AFE5CC: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_AFE5D1: ILdRf var_CC
  loc_AFE5D4: CastAd
  loc_AFE5D7: FLdPr Me
  loc_AFE5DA: MemStAdFunc
  loc_AFE5DE: FLdRfVar var_C8
  loc_AFE5E1: Erase
  loc_AFE5E2: FFree1Ad var_CC
  loc_AFE5E5: FLdPr Me
  loc_AFE5E8: MemLdRfVar from_stack_1.global_64
  loc_AFE5EB: NewIfNullPr clsfacictacte
  loc_AFE5EE: Call clsfacictacte.MoveFirst()
  loc_AFE5F3: FLdRfVar var_EE
  loc_AFE5F6: FLdPr Me
  loc_AFE5F9: MemLdRfVar from_stack_1.global_64
  loc_AFE5FC: NewIfNullPr clsfacictacte
  loc_AFE5FF: from_stack_1 = clsfacictacte.EOF
  loc_AFE604: FLdI2 var_EE
  loc_AFE607: NotI4
  loc_AFE608: BranchF loc_AFE639
  loc_AFE60B: FLdRfVar var_F8
  loc_AFE60E: FLdPr Me
  loc_AFE611: MemLdRfVar from_stack_1.global_64
  loc_AFE614: NewIfNullPr clsfacictacte
  loc_AFE617: from_stack_1 = clsfacictacte.CapiFacc
  loc_AFE61C: FLdFPR8 var_8C
  loc_AFE61F: FLdFPR8 var_F8
  loc_AFE622: FnCDblR8
  loc_AFE624: AddR8
  loc_AFE625: FStFPR8 var_8C
  loc_AFE628: FLdPr Me
  loc_AFE62B: MemLdRfVar from_stack_1.global_64
  loc_AFE62E: NewIfNullPr clsfacictacte
  loc_AFE631: Call clsfacictacte.MoveSiguiente()
  loc_AFE636: Branch loc_AFE5F3
  loc_AFE639: LitI4 1
  loc_AFE63E: LitI4 1
  loc_AFE643: LitVarStr var_108, "0.00"
  loc_AFE648: FStVarCopyObj var_EC
  loc_AFE64B: FLdRfVar var_EC
  loc_AFE64E: FLdRfVar var_8C
  loc_AFE651: CVarRef
  loc_AFE656: FLdRfVar var_118
  loc_AFE659: ImpAdCallFPR4  = Format(, )
  loc_AFE65E: FLdRfVar var_118
  loc_AFE661: CStrVarVal var_90
  loc_AFE665: FLdPr Me
  loc_AFE668: VCallAd Control_ID_txtTotal
  loc_AFE66B: FStAdFunc var_CC
  loc_AFE66E: FLdPr var_CC
  loc_AFE671: Me.Text = from_stack_1
  loc_AFE676: FFree1Str var_90
  loc_AFE679: FFree1Ad var_CC
  loc_AFE67C: FFreeVar var_EC = ""
  loc_AFE683: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9BA084
  'Data Table: 407068
  loc_9BA070: ILdI2 KeyCode
  loc_9BA073: CI4UI1
  loc_9BA074: LitI4 &H78
  loc_9BA079: EqI4
  loc_9BA07A: BranchF loc_9BA082
  loc_9BA07D: Call cmdCancelar_Click()
  loc_9BA082: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() '9DA3C8
  'Data Table: 407068
  loc_9DA3B0: ILdRf Me
  loc_9DA3B3: FStAdNoPop
  loc_9DA3B7: ImpAdLdRf MemVar_D9C5D8
  loc_9DA3BA: NewIfNullPr Global
  loc_9DA3BD: Global.Unload from_stack_1
  loc_9DA3C2: FFree1Ad var_88
  loc_9DA3C5: ExitProcHresult
  loc_9DA3C6: ImpAdLdPr unk_406069
End Sub

Public Function lCodiFapaGet() '407430
  lCodiFapaGet = lCodiFapa
End Function

Public Sub lCodiFapaPut(Value) '40743F
  lCodiFapa = Value
End Sub

Public Function iCuotDefaGet() '40744E
  iCuotDefaGet = iCuotDefa
End Function

Public Sub iCuotDefaPut(Value) '40745D
  iCuotDefa = Value
End Sub

Public Function byCodiOficGet() '40746C
  byCodiOficGet = byCodiOfic
End Function

Public Sub byCodiOficPut(Value) '40747B
  byCodiOfic = Value
End Sub

Public Function sCuenCtctGet() '40748A
  sCuenCtctGet = sCuenCtct
End Function

Public Sub sCuenCtctPut(Value) '407499
  sCuenCtct = Value
End Sub

VERSION 5.00
Begin VB.Form dlgDetalleNotaPedido
  Caption = "CARACTERISTICAS del Item de la Nota de Pedido"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "dlgDetalleNotaPedido.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 8910
  ClientHeight = 5520
  StartUpPosition = 2 'CenterScreen
  Begin VB.TextBox CaraItnoTxt
    Left = 120
    Top = 120
    Width = 8655
    Height = 4215
    TabIndex = 0
    MultiLine = -1  'True
    ScrollBars = 2
    MaxLength = 10000
  End
  Begin VB.CommandButton CancelButton
    Caption = "Cancelar"
    Left = 4440
    Top = 4560
    Width = 1335
    Height = 495
    TabIndex = 2
    Tag = "6"
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
  Begin VB.CommandButton OKButton
    Caption = "Aceptar"
    Left = 2160
    Top = 4560
    Width = 1335
    Height = 495
    TabIndex = 1
    Tag = "5"
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

Attribute VB_Name = "dlgDetalleNotaPedido"

Public sPasaDetalle As String


Private Sub Form_KeyPress(KeyAscii As Integer) '98F0B4
  'Data Table: 407198
  loc_98F068: ILdI2 KeyAscii
  loc_98F06B: LitI2_Byte &H27
  loc_98F06D: EqI2
  loc_98F06E: ILdI2 KeyAscii
  loc_98F071: LitI2_Byte &H22
  loc_98F073: EqI2
  loc_98F074: OrI4
  loc_98F075: BranchF loc_98F08D
  loc_98F078: LitI4 0
  loc_98F07D: LitStr "No puede ingresar comillas Simples ni Dobles. Verifique..."
  loc_98F080: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_98F085: LitI2_Byte 0
  loc_98F087: IStI2 KeyAscii
  loc_98F08A: Branch loc_98F0B0
  loc_98F08D: ILdI2 KeyAscii
  loc_98F090: LitI2_Byte &H1B
  loc_98F092: EqI2
  loc_98F093: BranchF loc_98F0B0
  loc_98F096: ILdRf Me
  loc_98F099: FStAdNoPop
  loc_98F09D: ImpAdLdRf MemVar_C44F9C
  loc_98F0A0: NewIfNullPr Me
  loc_98F0A3: Me.Global.Unload from_stack_1
  loc_98F0A8: FFree1Ad var_8C
  loc_98F0AB: LitI2_Byte 0
  loc_98F0AD: IStI2 KeyAscii
  loc_98F0B0: ExitProcHresult
End Sub

Private Sub OKButton_Click() '984844
  'Data Table: 407198
  loc_984808: FLdRfVar var_8C
  loc_98480B: FLdPr Me
  loc_98480E: VCallAd Control_ID_CaraItnoTxt
  loc_984811: FStAdFunc var_88
  loc_984814: FLdPr var_88
  loc_984817:  = Me.Text
  loc_98481C: ILdRf var_8C
  loc_98481F: FLdPr Me
  loc_984822: MemStStrCopy
  loc_984826: FFree1Str var_8C
  loc_984829: FFree1Ad var_88
  loc_98482C: ILdRf Me
  loc_98482F: FStAdNoPop
  loc_984833: ImpAdLdRf MemVar_C44F9C
  loc_984836: NewIfNullPr Me
  loc_984839: Me.Global.Unload from_stack_1
  loc_98483E: FFree1Ad var_88
  loc_984841: ExitProcHresult
End Sub

Private Sub CancelButton_Click() '953990
  'Data Table: 407198
  loc_953978: ILdRf Me
  loc_95397B: FStAdNoPop
  loc_95397F: ImpAdLdRf MemVar_C44F9C
  loc_953982: NewIfNullPr Me
  loc_953985: Me.Global.Unload from_stack_1
  loc_95398A: FFree1Ad var_88
  loc_95398D: ExitProcHresult
  loc_95398E: CBoolCy
End Sub

Public Function sPasaDetalleGet() '40743C
  sPasaDetalleGet = sPasaDetalle
End Function

Public Sub sPasaDetallePut(Value) '40744B
  sPasaDetalle = Value
End Sub

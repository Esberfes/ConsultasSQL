   M S B A M L   `   `   `  ���� G  CConsultasSQL, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:ConsultasSQLConsultasSQL      ConsultasSQL.MainWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     ,localclr-namespace:ConsultasSQL       � Title$  
MainWindow��$	��800��$
��1230��.��� .+��� $��76��$��30��$��Usuario:��$
��Left=�$	��Top=�$��	10,10,0,0q��� $��76��$��30��$��Contraseña:��$
��Left=�$	��Top=�$��	10,40,0,0q��� $��76��$��30��$��BBDD:��$
��Left=�$	��Top=�$��	10,70,0,0q��� -    ��Name$ txtUser��$	��130��$��30��$
��Left=� �� TextWrapping$
 Wrap=�$�� ��$	��Top=�$��	86,10,0,0q�G� -    G�Name$ txtPass��$	��130��$��30��$
��Left=�$��	86,40,0,0q�$	��Top=��� -   $ txtBBDD��$	��130��$��30��$
��Left=�$��	86,70,0,0q�$
 Wrap=�$�� ��$	��Top=��� $��51��$��30��$��Estado:��$
��Left=�$	��Top=�$��
300,65,0,0q��� -    ��Name$ 
labelState��$	��130��$��30��$�� ��$
��Left=�$	��Top=�$��
356,65,0,0q��� -    ��Name$ testConnButton��$��TestCon.��$
��Left=�$��356,100,0,0q�$	��Top=�$	��130��$��30���� $��76��$��30��$
��URL:��$
��Left=�$	��Top=�$��
10,100,0,0q��� -   $ txtURL��$	��265��$��30��$
��Left=�$��
86,100,0,0q�$
 Wrap=�$�� ��$	��Top=��� $��76��$��30��$��	CONSULTA:��$
��Left=�$	��Top=�$��
10,179,0,0q��� -   $ txtConsulta�� �� AcceptsReturn . $
��Auto=�$
��Auto=�$	��691��$	��183��$
��Left=�$��
91,179,0,0q�$
 Wrap=�$�� ��$	��Top=��� -   $ 	txtResult��$
��Auto=�$
��Auto=� �� 
IsReadOnly . $	��419��$	��355��$
��Left=�$��	787,7,0,0q�$
 Wrap=�$�� ��$	��Top=��� -	   $ enviarButton��$��Enviar��$
��Left=�$��
91,367,0,0q�$	��Top=�$	��130��$��30��&   System.Windows.Controls.DataGrid  -
   $��	dataGrid1��$
��Auto=�$
��Auto=�   AutoGenerateColumns . $
��Left=�$	��355��$��
91,404,0,0q�$	��Top=�$
��1115��	   
IsReadOnly	 . �� -   $ saveConfigButton��$��GuardarConf��$
��Left=�$��
244,10,0,0q�$	��Top=�$	��130��$��30��
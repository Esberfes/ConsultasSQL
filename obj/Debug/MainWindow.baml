   M S B A M L   `   `   `  ����G  CConsultasSQL, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:ConsultasSQLConsultasSQL  5   	       ConsultasSQL.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:ConsultasSQL     5   	     � Title$  
MainWindow��5   	   $	��800��6   $
��1230��6)   .��5	      � .+�5   
   �� $��76��6   $��30��6   $��Usuario:��6'   $
��Left=�6:   $	��Top=�6U   $��	10,10,0,0q�6m   �� 5   
   $��76��6   $��30��6   $��Contraseña:��6'   $
��Left=�6=   $	��Top=�6X   $��	10,40,0,0q�6p   �� 5   
   $��76��6   $��30��6   $��BBDD:��6'   $
��Left=�67   $	��Top=�6R   $��	10,70,0,0q�6j   �� 5   
   -   5         ��Name$ txtUser��5      $	��130��6$   $��30��60   $
��Left=�6<    �� TextWrapping$
 Wrap=�6W   $�� ��6k   $	��Top=�6s   $��	86,10,0,0q�6�   G� 5   
   -   5         G�Name$ txtPass��5      $	��130��6'   $��30��63   $
��Left=�6?   $��	86,40,0,0q�6Z   $	��Top=�6n   �� 5   
   -   5        $ txtBBDD��5      $	��130��6#   $��30��6/   $
��Left=�6;   $��	86,70,0,0q�6V   $
 Wrap=�6i   $�� ��6}   $	��Top=�6�   �� 5   
   $��51��6   $��30��6   $��Estado:��6'   $
��Left=�69   $	��Top=�6T   $��
300,65,0,0q�6l   �� 5   
   -   5         ��Name$ 
labelState��5      $	��130��6$   $��30��60   $�� ��6<   $
��Left=�6G   $	��Top=�6b   $��
356,65,0,0q�6z   �� 5   
   -   5         ��Name$ testConnButton��5      $��TestCon.��6)   $
��Left=�6<   $��356,100,0,0q�6W   $	��Top=�6l   $	��130��6�   $��30��6�   6�   �� 5   
   $��76��6   $��30��6   $
��URL:��6'   $
��Left=�66   $	��Top=�6Q   $��
10,100,0,0q�6i   �� 5   
   -   5        $ txtURL��5      $	��265��6"   $��30��6.   $
��Left=�6:   $��
86,100,0,0q�6U   $
 Wrap=�6i   $�� ��6}   $	��Top=�6�   �� 5   
   $��76��6   $��30��6   $��	CONSULTA:��6'   $
��Left=�6;   $	��Top=�6V   $��
10,179,0,0q�6n   �� 5   
   -   5        $ txtConsulta��5      $
��Auto=�6'   $
��Auto=�6Y   $	��691��6�   $	��183��6�   $
��Left=�6�   $��
91,179,0,0q�6�   $
 Wrap=�6�   $�� ��6�   $	��Top=�6�   �� 5   
   -   5        $ 	txtResult��5      $
��Auto=�6%   $
��Auto=�6W    �� 
IsReadOnly . $	��419��6�   $	��355��6�   $
��Left=�6�   $��	787,7,0,0q�6�   $
 Wrap=�6�   $�� ��6�   $	��Top=�6�   �� 5   
   -	   5        $ enviarButton��5      $��Enviar��6'   $
��Left=�68   $��
91,367,0,0q�6S   $	��Top=�6g   $	��130��6   $��30��6�   6�   &   System.Windows.Controls.DataGrid  5   
   -
   5        $��	dataGrid1��5   �   $
��Auto=�6   $
��Auto=�6E      AutoGenerateColumns . $
��Left=�6�   $	��355��6�   $��
91,404,0,0q�6�   $	��Top=�6�   $
��1115��6�   �� 5   
   -   5        $ saveConfigButton��5      $��GuardarConf��6+   $
��Left=�6A   $��
244,10,0,0q�6\   $	��Top=�6p   $	��130��6�   $��30��6�   6�   5      5#      
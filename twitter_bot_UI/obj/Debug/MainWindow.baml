   M S B A M L   `   `   `  ����I  Etwitter_bot_UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:twitter_bot_UItwitter_bot_UI  5   	       twitter_bot_UI.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:twitter_bot_UI     5   	     � Title$  Twitter Bot UI��5   	   $	��450��6    $	��800��6-   .��5	      � ��5
   
   �� 5       �� EndPoint$ 0.5,1&�6"    �� 
StartPoint$ 0.5,0&�63   .��5      �  � Color$ 	#4C55ACEE��6   � 5      $ 	#FF55ACEE��6    � Offset$ 1Q�61   � 5      $ 	#B055ACEE��6   $ 0.894Q�61   5      .+�5   
   G� -   5        $��txtbxApiKeySecret��5   =   $
��Left=�6   $��23��61   $��
138,64,0,0q�6V    G� PasswordChar$ *��6j   $	��Top=�6{   $	��388��6�   G� 5   
   -   5        $��txtbxAccesToken��5   =   $
��Left=�6   $��23��61   $��
138,92,0,0q�6T   $ *��6h   $	��Top=�6y   $	��388��6�   G� 5   
   -   5        $��txtbxAccesTokenSecret��5   =   $
��Left=�6   $��23��61   $��138,120,0,0q�6Z   $ *��6o   $	��Top=�6�   $	��388��6�   �� 5   
   $��Api Key:��6   $
��Left=�6#   $��	80,36,0,0q�6>   $	��Top=�6Q   �� 5   
   $��Secret Api Key:��6   $
��Left=�6*   $��	46,66,0,0q�6E   $	��Top=�6X   �� 5   
   $��Acces Token:��6   $
��Left=�6'   $��	56,92,0,0q�6B   $	��Top=�6U   �� 5   
   $��Secret Acces Token:��6   $
��Left=�6.   $��
20,117,0,0q�6I   $	��Top=�6]   �� 5   
   -   5        $��txtbxInterval��5   9   $
��Left=�6   $��23��6-   $��136,164,0,0q�6N    �� TextWrapping$
 Wrap=�6c   $	��Top=�6w   $	��120��6�   �� 5   
   $��Interval: (m)��6   $
��Left=�6(   $��
64,164,0,0q�6C   $	��Top=�6W   G� 5   
   -   5        $��txtbxApiKey��5   =   $
��Left=�6   $��23��61   $��
138,36,0,0q�6P   $ *��6d   $	��Top=�6u   $	��388��6�   �� 5   
   -   5        $��	txtbxPath��5   9   $
��Left=�6   $��23��6-   $��138,192,0,0q�6J   $
 Wrap=�6_   $�� ��6s   $	��Top=�6{   $	��388��6�   �� 5   
   $��Interval: (m)��6   $
��Left=�6(   $��
64,164,0,0q�6C   $	��Top=�6W   �� 5   
   $��Source File Path:��6   $
��Left=�6,   $��
40,192,0,0q�6G   $	��Top=�6[   �� 5   
   $��Status:��6   $
��Left=�6"   $��
89,286,0,0q�6=   $	��Top=�6Q   �� 5   
   -   5        $��txtbxStatus��5   9   $
��Left=�6   $��86��6-   $��138,286,0,0q�6L   $
 Wrap=�6a   $�� ��6u   $	��Top=�6}   $	��388��6�   �� 5    
   -   5        $��btnStart��5    P   $��Start��6   $
��Left=�6!   $��
531,38,0,0q�6<   $	��Top=�6`   $	��253��6x   $��26��6�   6�   �� 5!   
   -	   5        $��	lblStatus��5!   <   $��STATUS��6   $
��Left=�6!   $��
531,69,0,0q�6M   $	��Top=�6a   $	��253��6y   $��55��6�   �� 5"   
   $l��fEnter the path of a .txt file wich contians url('s) for actual media.
The Bot will loop through them!��6   $
��Left=�6�   $��138,220,0,0q�6�   $	��Top=�6�   $	��388��6�   5$      5%      
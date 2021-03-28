package Ragnarlothbrok;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.Font;
import java.awt.TextField;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.net.MalformedURLException;
import java.net.URL;

import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JPasswordField;
import javax.swing.JTextField;

public class Loginpage  implements ActionListener {
    
	//FRAME GLOBAL
	JFrame vorodpage;
	
	//ALL IMAGES HERE
	ImageIcon vikiicon;
	ImageIcon backgr;
	ImageIcon loginone;
	//ALL Panels
	JPanel logpanel;
	//ALL LABELS
	JLabel loglabel;
	JLabel texthosh;
	//ALL TEXTFIELDS
	JTextField userfield;
	JPasswordField jpasser;
	//allButtons
	JButton logbutt;
	
	public Loginpage() {
	
		
	
		//main login frame
		vorodpage=new JFrame();
		vorodpage.setLayout(null);
		vorodpage.setVisible(true);
		vorodpage.setSize(550, 344);
		vorodpage.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		vorodpage.setTitle("Login to Vikings World");
		vorodpage.setResizable(false);
		vorodpage.setLayout(new BorderLayout());
		vorodpage.setLocationRelativeTo(null);
		
         logbutt=new JButton();
         logbutt.setBounds(230, 140, 71, 33);
         logbutt.setIcon(loginone);
         
		
//images here
		backgr=new ImageIcon("ragoo.png");
		
		
		vikiicon=new ImageIcon("vikingslogo.png");
		vorodpage.setIconImage(vikiicon.getImage());
		loginone=new ImageIcon("login.png");
		logbutt.setIcon(loginone);
		logbutt.addActionListener(this);
		
		logpanel=new JPanel();
		logpanel.setBounds(0, 0, 500, 400);

		//textfields is here 
				userfield=new JTextField();
				userfield.setBounds(122, 122, 100, 28);
				userfield.setBorder(null);
				userfield.setBackground(Color.white);
			    userfield.setFont(new Font("Chica mono",Font.PLAIN,13));
			    jpasser=new JPasswordField();
			    jpasser.setBounds(122, 160, 100, 28);
			    jpasser.setFont(new Font("Chica mono",Font.PLAIN,13));
			
				
					                
				
			texthosh=new JLabel();		
			String joma="*to solve this puzzle, you must be familiar with the Viking series ";
			texthosh.setText(joma);

			texthosh.setFont(new Font("Chica mono",Font.PLAIN,13));
	
			texthosh.setForeground(Color.green);
			texthosh.setBounds(20, 44, 450, 400);
				
		
		loglabel=new JLabel();
		vorodpage.add(texthosh);
		vorodpage.add(loglabel);
		
		loglabel.setIcon(backgr);
		loglabel.setBackground(Color.black);
		loglabel.setBounds(0, 0, 450, 400);
		loglabel.setHorizontalAlignment(JLabel.CENTER);
		loglabel.setVerticalAlignment(JLabel.CENTER);
		loglabel.setOpaque(true);
		
		
	
		loglabel.add(userfield);
		loglabel.add(jpasser);
		loglabel.add(logbutt);
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		String user=userfield.getText();
		String pass=jpasser.getText();
		
		if(e.getSource()==logbutt && user.equals("ragnar") && pass.equals("lothbrok")) {
			new Ragnarmain();
			vorodpage.dispose();
		
			}else {
				JOptionPane.showMessageDialog(null, "Username or Password Is Wrong!!","Erorr",JOptionPane.ERROR_MESSAGE);
				
			}
				
		}
		}
	
		
		
		
	
	


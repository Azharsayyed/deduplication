package com;
import java.net.Socket;
import java.net.ServerSocket;
import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Container;
import java.awt.Font;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JButton;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.SwingUtilities;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import java.net.InetAddress;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;
import javax.swing.border.LineBorder;
import javax.swing.border.TitledBorder;
import java.util.ArrayList;
import javax.swing.JOptionPane;
import java.util.HashMap;
import org.jfree.ui.RefineryUtilities;
import java.io.File;
import java.util.Map;
public class POD extends JFrame{	
	Processor thread;
	JPanel p1,p2,p3;
	JLabel l1;
	JButton b1,b2,b3;
	JScrollPane jsp;
	Font f1,f2;
	ServerSocket server;
	Socket socket;
	JTable table;
	DefaultTableModel dtm;
	LineBorder line;
	TitledBorder title;
	HashMap<String,FileInfo> map = new HashMap<String,FileInfo>();
public void start(){
	try{
		DBCon.loadFileInfo(map);
		server = new ServerSocket(1200);
		while(true){
			socket = server.accept();
			thread=new Processor(socket,dtm,map);
			thread.start();
		}
	}catch(Exception e){
		e.printStackTrace();
	}
}

public POD(){
	setTitle("POD");
	f1 = new Font("Courier New",Font.BOLD+Font.ITALIC,18);
	p1 = new JPanel();
    l1 = new JLabel("<html><body><center>Leveraging Data Deduplication to Improve the Performance of Primary Storage<BR/>Systems in the Cloud</center></body></html>".toUpperCase());
	l1.setFont(this.f1);
    l1.setForeground(new Color(125,254,120));
    p1.add(l1);
    p1.setBackground(new Color(100,30,40));

    f2 = new Font("Courier New",Font.BOLD,14);
	line = new LineBorder(new Color(225,154,30), 3, true);
	title = new TitledBorder(line, "Primary Storage Server");
	title.setTitleFont(f2);
	title.setTitleColor(new Color(85,54,20,254));
    p2 = new JPanel();
	p2.setBorder(title);
    p2.setLayout(new BorderLayout());
    dtm = new DefaultTableModel(){
		public boolean isCellEditable(int r,int c){
			return false;
		}
	};
	table = new JTable(dtm);
	table.setRowHeight(30);
	jsp = new JScrollPane(table);
	p2.add(jsp,BorderLayout.CENTER);
	table.setFont(f2);
	table.getTableHeader().setFont(f2);
	dtm.addColumn("Request Status");
	
	p3 = new JPanel();
	
	b1 = new JButton("View File Info");
	b1.setFont(f2);
	p3.add(b1);
	b1.addActionListener(new ActionListener(){
		public void actionPerformed(ActionEvent ae){
			ViewFileInfo vfi = new ViewFileInfo();
			vfi.readFileInfo(map);
			vfi.setVisible(true);
			vfi.setExtendedState(JFrame.MAXIMIZED_BOTH);
		}
	});
	
	b2 = new JButton("Space Chart");
	b2.setFont(f2);
	p3.add(b2);
	b2.addActionListener(new ActionListener(){
		public void actionPerformed(ActionEvent ae){
			long normal = 0;
			long dedup = 0;
			for(Map.Entry<String,FileInfo> entry : map.entrySet()){
				FileInfo fi = entry.getValue();
				normal = normal + fi.file_size;
				dedup = dedup + fi.file_size;
				if(!fi.refrence_id.equals("none"))
					normal = normal + fi.file_size;
			}
			Chart chart1 = new Chart("Space Chart",normal,dedup);
			chart1.pack();
			RefineryUtilities.centerFrameOnScreen(chart1);
			chart1.setVisible(true);
		}
	});

    getContentPane().add(p1, "North");
    getContentPane().add(p2, "Center");
	getContentPane().add(p3, "South");
    addWindowListener(new WindowAdapter(){
            @Override
        public void windowClosing(WindowEvent we){
            try{
				if(socket != null){
					socket.close();
				}
             server.close();
            }catch(Exception e){
                //e.printStackTrace();
            }
        }
    });
}
public static void main(String a[])throws Exception	{
	POD ll = new POD();
	ll.setVisible(true);
	ll.setSize(880,500);
	new LayerThread(ll);
}
}
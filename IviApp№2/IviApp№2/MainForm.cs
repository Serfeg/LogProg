using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Diagnostics;

namespace IviApp_2
{
    public partial class MainForm : Form
    {
        public MainForm()
        {
            InitializeComponent();
            pictureBox1.SizeMode = pictureBox2.SizeMode = pictureBox3.SizeMode = pictureBox4.SizeMode 
                = pictureBox5.SizeMode = pictureBox6.SizeMode = pictureBox7.SizeMode 
                = pictureBox8.SizeMode = pictureBox9.SizeMode = pictureBox10.SizeMode = PictureBoxSizeMode.StretchImage;
        }

        public void GoToSite(string url)
        {
            Process myProcess = new Process();
            myProcess.StartInfo.UseShellExecute = true;
            myProcess.StartInfo.FileName = url;
            myProcess.Start();
        }

        private void pictureBox1_MouseClick(object sender, MouseEventArgs e)
        {
            GoToSite("https://www.google.ru/search?q=смотреть+хоббит+нежданное+путешествие&newwindow=1&safe=off&sxsrf=ALeKk021byqgPB4ypl3cVTEw4DokC3U1hA%3A1617242992005&ei=bytlYLXrPKP_7_UPi8y_kAY&oq=смотреть&gs_lcp=Cgdnd3Mtd2l6EAMYADIECCMQJzIHCAAQsQMQQzICCAAyAggAMggIABCxAxCDATICCAAyAggAMgIIADICCAAyCAgAELEDEIMBOgcILhCxAxBDOgQILhBDOgUIABCxAzoLCAAQsQMQxwEQrwE6BAgAEEM6BwgjEOoCECc6CwgAELEDEMcBEKMCOgUILhCxA1Dj-wFYv5YCYLOeAmgBcAJ4BIAB-QGIAdcTkgEGMC4xMS4zmAEAoAEBqgEHZ3dzLXdperABCsABAQ&sclient=gws-wiz");
        }

        private void pictureBox2_MouseClick(object sender, MouseEventArgs e)
        {
            GoToSite("https://www.google.ru/search?q=смотреть+онлайн+властелин+колец+братство+кольца&source=lmns&bih=726&biw=1536&safe=off&hl=ru&sa=X&ved=2ahUKEwiM1qOoi9zvAhWFtCoKHWijBzcQ_AUoAHoECAEQAA");
        }

        private void pictureBox3_MouseClick(object sender, MouseEventArgs e)
        {
            GoToSite("https://www.google.ru/search?q=%D1%81%D0%BC%D0%BE%D1%82%D1%80%D0%B5%D1%82%D1%8C+%D0%BE%D0%BD%D0%BB%D0%B0%D0%B9%D0%BD+%D0%BB%D0%B8%D0%B3%D0%B0+%D1%81%D0%BF%D1%80%D0%B0%D0%B2%D0%B5%D0%B4%D0%BB%D0%B8%D0%B2%D0%BE%D1%81%D1%82%D0%B8+%D0%B7%D0%B0%D0%BA%D0%B0+%D1%81%D0%BD%D0%B0%D0%B9%D0%B4%D0%B5%D1%80%D0%B0&source=lmns&bih=726&biw=1536&safe=off&hl=ru&sa=X&ved=2ahUKEwj028H4i9zvAhXWBxAIHcx4DDYQ_AUoAHoECAEQAA");
        }

        private void pictureBox4_MouseClick(object sender, MouseEventArgs e)
        {
            GoToSite("https://www.google.ru/search?q=смотреть+онлайн+восхождение+юпитер&newwindow=1&safe=off&bih=726&biw=1536&hl=ru&sxsrf=ALeKk03hRuECNW40OEt23g7JHsWCM_wfdw%3A1617247538481&ei=Mj1lYKnrHMuL9u8Pp5iyqAM&oq=смотреть+онлайн+восхождение+юпитер&gs_lcp=Cgdnd3Mtd2l6EAMyBggAEAcQHjIGCAAQBxAeMgYIABAIEB4yBggAEAgQHjIGCAAQCBAeMgYIABAIEB4yBggAEAgQHjIGCAAQCBAeOgQIABBHOgYIABANEB46BAgAEA06CAgAEAgQBxAeOggIABAIEA0QHlDjB1iHIGD5JmgAcAN4AIAB7QGIAf8WkgEGMC4xNi4xmAEAoAEBqgEHZ3dzLXdpesgBCMABAQ&sclient=gws-wiz&ved=0ahUKEwipzK3IjNzvAhXLhf0HHSeMDDUQ4dUDCA0&uact=5");
        }

        private void pictureBox5_Click(object sender, EventArgs e)
        {
            GoToSite("https://www.google.ru/search?q=Смотреть+онлайн+Чёрный+лебедь&source=lmns&bih=726&biw=1536&safe=off&hl=ru&sa=X&ved=2ahUKEwjp2eiZjdzvAhUJzyoKHYfbDnYQ_AUoAHoECAEQAA");
        }

        private void pictureBox6_Click(object sender, EventArgs e)
        {
            GoToSite("https://www.google.ru/search?q=%D1%81%D0%BC%D0%BE%D1%82%D1%80%D0%B5%D1%82%D1%8C+%D0%BE%D0%BD%D0%BB%D0%B0%D0%B9%D0%BD+%D0%91%D0%B8%D0%B2%D0%B5%D0%BD%D1%8C&source=lmns&bih=726&biw=1536&safe=off&hl=ru&sa=X&ved=2ahUKEwjt4-bCjdzvAhWDtioKHeVeC2wQ_AUoAHoECAEQAA");
        }

        private void pictureBox7_Click(object sender, EventArgs e)
        {
            GoToSite("https://www.google.ru/search?q=%D0%A1%D0%BC%D0%BE%D1%82%D1%80%D0%B5%D1%82%D1%8C+%D0%BE%D0%BD%D0%BB%D0%B0%D0%B9%D0%BD+%D0%97%D0%B5%D0%BB%D1%91%D0%BD%D0%B0%D1%8F+%D0%BC%D0%B8%D0%BB%D1%8F&source=lmns&bih=726&biw=1536&safe=off&hl=ru&sa=X&ved=2ahUKEwjegMTtjdzvAhUHCXcKHXiYA28Q_AUoAHoECAEQAA");
        }

        private void pictureBox8_Click(object sender, EventArgs e)
        {
            GoToSite("https://www.google.ru/search?q=%D0%A1%D0%BC%D0%BE%D1%82%D1%80%D0%B5%D1%82%D1%8C+%D0%BE%D0%BD%D0%BB%D0%B0%D0%B9%D0%BD+%D0%9B%D1%8E%D0%B4%D0%B8+%D0%B2+%D1%87%D1%91%D1%80%D0%BD%D0%BE%D0%BC&newwindow=1&safe=off&bih=726&biw=1536&hl=ru&sxsrf=ALeKk03wZbks-6O1fwKSMLDi6gjONcgwjQ%3A1617247980171&ei=7D5lYPHtCcb-7_UPkOWzqA8&oq=%D0%A1%D0%BC%D0%BE%D1%82%D1%80%D0%B5%D1%82%D1%8C+%D0%BE%D0%BD%D0%BB%D0%B0%D0%B9%D0%BD+%D0%9B%D1%8E%D0%B4%D0%B8+%D0%B2+%D1%87%D1%91%D1%80%D0%BD%D0%BE%D0%BC&gs_lcp=Cgdnd3Mtd2l6EANQtQtYtQtg_Q9oAHACeACAAa4BiAHCApIBAzAuMpgBAKABAaoBB2d3cy13aXrAAQE&sclient=gws-wiz&ved=0ahUKEwjxk_yajtzvAhVG_7sIHZDyDPUQ4dUDCA0&uact=5");
        }

        private void pictureBox9_Click(object sender, EventArgs e)
        {
            GoToSite("https://www.google.ru/search?q=Смотреть+онлайн+Визит&newwindow=1&safe=off&bih=726&biw=1536&hl=ru&sxsrf=ALeKk035mzY6rGiRsTxdjUVCmN5ZRzRvsQ%3A1617248042455&ei=Kj9lYOenG_GAi-gPnJiimAY&oq=Смотреть+онлайн+Визит&gs_lcp=Cgdnd3Mtd2l6EAMyBggAEAcQHjICCAAyAggAMgIIADIECAAQHjIECAAQHjIECAAQHjoECAAQDVDdEVj9IWD4JGgAcAJ4AIAB1QGIAa4WkgEGMC4xNi4xmAEAoAEBqgEHZ3dzLXdpesABAQ&sclient=gws-wiz&ved=0ahUKEwjn5NW4jtzvAhVxwAIHHRyMCGMQ4dUDCA0&uact=5");
        }

        private void pictureBox10_Click(object sender, EventArgs e)
        {
            GoToSite("https://www.google.ru/search?q=%D1%81%D0%BC%D0%BE%D1%82%D1%80%D0%B5%D1%82%D1%8C+%D0%BE%D0%BD%D0%BB%D0%B0%D0%B9%D0%BD+%D0%9F%D0%B0%D1%80%D1%84%D1%8E%D0%BC%D0%B5%D1%80&source=lmns&bih=726&biw=1536&safe=off&hl=ru&sa=X&ved=2ahUKEwjjttjhjtzvAhWRyCoKHUoeCTYQ_AUoAHoECAEQAA");
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.IO;
using TweetSharp;
using System.Net;
using Vives;
using System.Threading;

namespace twitter_bot_UI
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        MediaTweet mediaTweet = new MediaTweet();
        Tweet tweet = new Tweet();
        List<string> mediaList = new List<string>();

        private async void btnStart_Click(object sender, RoutedEventArgs e)
        {
            
            tweet.api_key = txtbxApiKey.Password;
            tweet.acces_token = txtbxAccesToken.Password;
            tweet.acces_token_secret = txtbxAccesTokenSecret.Password;
            tweet.api_key_secret = txtbxApiKeySecret.Password;
            tweet._status = txtbxStatus.Text;

            mediaTweet.media_url_path = txtbxPath.Text;
            mediaTweet.ID = 0;
            
            TwitterService service = new TwitterService(tweet.api_key  ,tweet.api_key_secret, 
                tweet.acces_token,tweet.acces_token_secret);

            if(txtbxInterval.Text != "")
            {
                try
                {
                    mediaList = File.ReadLines(@mediaTweet.media_url_path).ToList();
                    foreach (string media in mediaList)
                    {
                        int ms = Convert.ToInt32(txtbxInterval.Text);
                        int minutes = ms * 60000;

                        if (txtbxPath.Text != "")
                        {
                            try
                            {
                                SendMediaTweet(txtbxStatus.Text, mediaTweet.ID, service);
                            }
                            catch
                            {
                                MessageBox.Show("Please Fill in correct path.");
                                Console.WriteLine(service);
                            }
                            await Task.Delay(minutes);
                            mediaTweet.ID++;
                        }
                    }
                }
                catch
                {
                    MessageBox.Show("Please fill in path if you would like to send a media tweet \n Otherwise no interval is needed");
                }   
            }
                

            try
            {
                if (mediaTweet.media_url_path == "")
                {
                    throw new NoPathException("No path");
                }
                SendMediaTweet(tweet._status, mediaTweet.ID, service);
            }
            catch (NoPathException)
            {
                SendTweet(tweet._status, service);
            }

        }

        private void SendMediaTweet(string _status, int currentImageID, TwitterService _service)
        {
            try
            {
                using (var stream = new FileStream(mediaList[currentImageID], FileMode.Open))
                {

                    _service.SendTweetWithMedia(new SendTweetWithMediaOptions
                    {
                        Status = _status,
                        Images = new Dictionary<string, Stream> { { mediaList[currentImageID], stream } },
                    });
                    lblStatus.Content = "uploading media";

                    if (currentImageID == mediaList.Count)
                    {
                        
                        currentImageID = 0;
                        MessageBox.Show("Done!");
                    }
                    else
                        currentImageID++;
                }
            }
            catch
            {
                lblStatus.Content = "out of media";
            }
            
        }

        private void SendTweet(string _status, TwitterService _service)
        {
            _service.SendTweet(new SendTweetOptions { Status = _status }, (tweet, response) =>
             {
                 
                if (response.StatusCode == HttpStatusCode.OK)
                {
                    try
                    {
                        this.Dispatcher.Invoke(() =>
                        {
                            lblStatus.Content = "Succes!";
                        });
                    }
                    catch
                    {
                        this.Dispatcher.Invoke(() =>
                        {
                            lblStatus.Content = "Error! \n" + response.Error.Message;
                        });
                    }
                }
             
                else
                {
                    this.Dispatcher.Invoke(() =>
                    {
                        lblStatus.Content = "Error! \n" + response.Error.Message;
                    });
                }
                
             });
        }
    }
}

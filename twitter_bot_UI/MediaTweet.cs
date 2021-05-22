using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Vives
{
    class MediaTweet: Tweet
    {
        public string media_url_path { get; set; }
        public int ID { get; set; }
    }
}

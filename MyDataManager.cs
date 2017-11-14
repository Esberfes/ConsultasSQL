using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Serialization;

namespace ConsultasSQL
{
    class MyDataManager
    {
        public static void Serialize<T>(string filename, User pers)
        {
            XmlSerializer ser = new XmlSerializer(typeof(T));
            TextWriter writer = new StreamWriter(filename + ".xml");
            ser.Serialize(writer, pers);
            writer.Close();
        }
        public void Deserialize(string filename)
        {
            XmlSerializer ser = new XmlSerializer(typeof(User));
            TextReader reader = new StreamReader(filename + ".xml");
            var a = ser.Deserialize(reader);
        }
        public static T DeserializeXMLFileToObject<T>(string XmlFilename)
        {
            T returnObject = default(T);
            if (string.IsNullOrEmpty(XmlFilename)) return default(T);

            try
            {
                StreamReader xmlStream = new StreamReader(XmlFilename);
                XmlSerializer serializer = new XmlSerializer(typeof(T));
                returnObject = (T)serializer.Deserialize(xmlStream);
            }
            catch (Exception ex)
            {
                //ExceptionLogger.WriteExceptionToConsole(ex, DateTime.Now);
            }
            return returnObject;
        }
    }
}

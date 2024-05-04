using IPGTest.Context;
using IPGTest.Models;
using Microsoft.AspNetCore.Mvc;

namespace IPGTest
{
    public class BoxItemController : Controller
    {
        private BoxItemContext BoxItemContext { get; }

        public BoxItemController(BoxItemContext boxItemContext)
        {
            this.BoxItemContext = boxItemContext;
        }

        public IActionResult Index()
        {
            ViewBag.output = this.GetBoxItemsInfo(1);

            return View();
        }

        private string GetBoxItemsInfo(short BoxId)
        {
            var boxItems = this.BoxItemContext.BoxItem.Where(x => x.BoxId == BoxId);

            var lotNumberGroups = boxItems.GroupBy(x => x.LotNumber).Select(g => new { LotNumber = g.Key, count = g.Count() }).ToList();

            string outputString = string.Empty;

            foreach (var lotGroupName in lotNumberGroups)
            {
                var lotNumber = boxItems.Where(x => x.LotNumber == lotGroupName.LotNumber).OrderBy(x => x.SequenceNumber).ToList();

                if (outputString != string.Empty)
                {
                    outputString += ", ";
                }

                outputString += lotGroupName.LotNumber + " (";

                int nextSquenceNumber = 0, counter = 0;

                this.SetValueOnOutputString(ref outputString, lotGroupName.count, ref nextSquenceNumber, ref counter, lotNumber);

                outputString += ")";
            }

            return outputString;
        }

        private void SetValueOnOutputString(ref string outputString, int lotGroupNameCount, ref int nextSquenceNumber, ref int counter, List<Item> lotNumber)
        {
            // Note: lotNumber[counter - 2].SequenceNumber is Privious Value

            foreach (var item in lotNumber)
            {
                counter++;

                switch (nextSquenceNumber)
                {
                    case 0:
                        outputString += outputString.Substring(outputString.Length - 1) == "," ? lotNumber[counter - 2].SequenceNumber : item.SequenceNumber;

                        nextSquenceNumber = item.SequenceNumber;
                        break;
                    default:
                        nextSquenceNumber++;

                        if (nextSquenceNumber == item.SequenceNumber)
                        {
                            if (lotGroupNameCount == counter)
                            {
                                outputString += "-" + item.SequenceNumber;
                            }
                        }
                        else
                        {
                            outputString += lotGroupNameCount != counter ? "-" + lotNumber[counter - 2].SequenceNumber + "," : "-" + item.SequenceNumber;

                            nextSquenceNumber = 0;
                        }
                        break;
                }
            }
        }
    }
}

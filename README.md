//Note:- Use can use another method also 
 
 public string GetBoxItemsInfo(int boxId)
 {
     var items = this.context.BoxItem.Where(x => x.BoxId == boxId);

     var boxItems = items.Select(x => x.LotNumber).Distinct().ToList();

     string valStr = "";

     boxItems.ForEach(LotN =>
     {
         var val = items.Where(i => i.LotNumber == LotN).Select(i => i.SequenceNumber).ToArray();

         var lstX = new Dictionary<int, int>();

         int index = 0;

         int initKey = val[index];

         lstX.Add(initKey, val[val.Length - 1]);

         for (int i = index; i < val.Length - 1; i++)
         {
             var newval = val[i];

             if (newval == initKey + 1)
             {
                 initKey++;
                 continue;
             }

             initKey = newval;

             if (!lstX.ContainsKey(initKey))
             {
                 lstX.Add(initKey, val[i + 2]);

                 if (lstX.Count == 2)
                 {
                     lstX[lstX.First().Key] = val[i - 1];
                 }
             }
         }

         if (lstX.Count > 1)
         {
             lstX[lstX.Last().Key] = val[val.Length - 1];
         }

         valStr += $" {LotN} ({string.Join(",", lstX.Select(m => $"{m.Key}-{m.Value}"))})";
     });

     return valStr;
 }

{foreach $smarty.session.checked_tld_data as $key=>$value}
  <tr id="row">
    <td>.{$key}</td>
    {foreach $value as $key2=>$old_and_new_price}
      <td name=Myprices>{$old_and_new_price}</td>
      <td><input type=text name=PRICE_{$key}_{$key2} value={($old_and_new_price*$multiplier)|string_format:"%.2f"}></input></td>
    {/foreach}
    <td>USD</td>
    <td><select name=currency[]>
    {foreach $currency_data as $id=>$code}
      <option value={$id}>{$code}</option>
    {/foreach}
  </select></td>
  </tr>
{/foreach}
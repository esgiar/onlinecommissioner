---
# vim: set ft=pug:
lang: pug
meta:
  title: Email Whitelist Instructions
---

extends ../../templates/layouts/doc.pug

block content
  h1 Whitelist Instructions

  p With unsolicited and unwanted email becoming a larger problem, email services have made their spam filters more stringent. Unfortunately, these tougher guidelines for filtering can cause legitimate emails to be mistaken as spam. To make sure you continue receiving our mailings, we suggest that you follow the instructions below and add us to your whitelist. A whitelist is a list of email addresses that you want to receive email from. Adding an address to your whitelist ensures that email from that address will not be filtered as spam.

  p Here are whitelisting instructions for some of the major email service providers. The minimum we suggest you do is to add the 'from' email address (#{email}) into your email system's address book.

  p
    strong Please insert the From address you are whitelisting for #{email} using the instructions below:

  p
    a(href='#instructions-aol') AOL
    | &nbsp;|&nbsp;
    a(href='#instructions-gmail') Gmail
    | &nbsp;|&nbsp;
    a(href='#instructions-hotmail') Hotmail
    | &nbsp;|&nbsp;
    a(href='#instructions-mozilla') Mozilla Thunderbird
    | &nbsp;|&nbsp;
    a(href='#instructions-netscape') Netscape
    | &nbsp;|&nbsp;
    a(href='#instructions-outlook') Outlook 2003/2007
    | &nbsp;|&nbsp;
    a(href='#instructions-yahoo') Yahoo
    | &nbsp;|&nbsp;
    a(href='#instructions-others') Others

  h2#instructions-aol AOL

  p Add the "From address" you want to receive mailings from to your AOL address book:

  ol
    li Click the "Mail Options" menu and select "Address Book".
    li Inside the "Address Book" window, click the "Add" button.
    li Inside the "Address Card for New Contact" window cut and paste #{email} into the "Other E-Mail" field.
    li Make our From address the "Primary E-Mail" address by checking the associated check box to the right of it.
    li Click the "Save" button. 

  p If the mailing is in your SPAM Folder, you can open the email and click the "This Is Not Spam" button.

  h2#instructions-gmail Gmail

  p Add the From address you want to receive mailings from to your Gmail Contacts List:

  ol
    li Click "Contacts" along the left side of any Gmail page.
    li Click "Create Contact".
    li Copy and paste #{email} into the primary email address dialog box.
    li Click "Save". 

  p If the mailing is in your SPAM folder, check the box next to the mailing and click the "Not Spam" button along the top.

  h2#instructions-hotmail Hotmail

  p Add the From address you want to receive mailings from to your Hotmail Safe List:

  ol
    li Open your mailbox and click “Options” (upper right hand corner).
    li Click the “Junk E-Mail Protection” link.
    li Select the “Safe List” link.
    li Copy and paste username@domain.com into the dialog box titled “Type an address or domain”.
    li Click the “Add” button next to the dialog box. 

  p If the mailing is in your "Junk E-Mail Folder", open the email and click the "Not Junk" button. 

  p You should also check that the mailing's email address is not in your Blocked Senders list.  You can find your Blocked Senders list by following the directions above and going to "Blocked Senders List" instead of "Safe List".  If you see the mailing's from address on this list, select it and click the Remove button. 

  h2#instructions-mozilla Mozilla Thunderbird

  p Add the From address you want to receive mailings from to your Thunderbird Address Book and configure your Junk Mail Controls to white list your address book.

  p Add an address into your Personal Address Book:

  ol
    li Click the "Address Book" button.
    li Make sure the Personal Address Book is highlighted.
    li Click the "New Card" button.
    li Under the "Contact" tab, copy and paste username@domain.com into the Email dialog box.
    li Click "OK". 

  p White list your Personal Address Book:

  ol
    li From the main drop down menu, select "Tools -&gt; Junk Mail Controls..."
    li This will launch the Junk Mail Controls window that has two tabs: Settings and Adaptive Filter
    li Under the Settings tab, update the "White Lists" module by selecting Personal Address Book from the pull down menu and then check mark the box next to "Do not mark messages as junk mail".
    li Click "OK". 

  p If the mailing is in your junk folder, right-click the mailing and choose "Mark -&gt; As Not Junk".

  h2#instructions-netscape Netscape Mail

  p Set up a filter to redirect the mailing you want to receive into your inbox:

  ol
    li From the Edit drop down menu, select "Message Filters".
    li Click "New", and give the new filter a name (e.g. "Whitelist").
    li Change the drop down on the left to "sender" and the one in the middle to "is".
    li Copy and paste username@domain.com into the box on the right.
    li Make the bottom two drop downs "Move to folder" and "Inbox".
    li Click "OK".
    li Make sure that your new filter is located at the top of the Message Filter list so it is run before any spam filter. 

  h2#instructions-outlook Outlook 2003/2007

  p Add the address you want to receive mailings from to your Safe Senders list:

  ol
    li On the Tools menu, click "Options".
    li On the Preferences tab, click "Junk E-mail".
    li On the Safe Senders tab, click "Add".
    li In the Add address box, copy and paste in username@domain.com and click OK.

  p If you are using a different version of Outlook you can add the mailers From address to your Address Book. This can be done by opening the email, right clicking the From address, and selecting "Add To Contacts". You can also access your Address Book via the tools drop down menu.

  h2#instructions-yahoo Yahoo

  p Set up a filter to redirect the mailing you want to receive in your inbox:

  ol
    li Open your mailbox and click on "Mail Options" (upper right hand corner).
    li Select "Filters" under the Management column.
    li Click the "Add" button on the Filters page.
    li In the "From header:" row, make the drop down "contains" and put the mailer's from address username@domain.com   in the box.
    li At the bottom of the page Click the "Choose Folder" pull down menu and select "Inbox".
    li Click the "Add Filter" button. 

  p If the mailing is in your Yahoo Bulk Folder open the email and click the "Not Spam" button. You should also check that the mailing's email address is not in your "Blocked Addresses" list.  You can find your "Blocked Addresses" list by clicking "Mail Options" and then clicking the "Blocked Addresses" link under the Spam column.  If you see the mailing's from address on this list, select it and click the "Remove Block" button. 

  h2#instructions-others Others

  p The most common way to whitelist an address is to add it to your address book, white list, or safe list.  There is no universal way to whitelist an address, so if this is not an option, you will have to consult the help section associated with your email application.  They should have instructions on how to whitelist an address there.

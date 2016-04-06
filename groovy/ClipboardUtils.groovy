import java.awt.datatransfer.StringSelection
import java.awt.Toolkit
import java.awt.datatransfer.*

class ClipboardUtils{
    static final Clipboard clipboard = Toolkit.getDefaultToolkit().getSystemClipboard()

    static void setClipboardContents(final String contents){
        clipboard.setContents(new StringSelection(contents), null)
    }

    static String getClipboardContents(){
        return clipboard.getContents(null).getTransferData(DataFlavor.stringFlavor)
    }
}
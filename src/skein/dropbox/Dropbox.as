/**
 * Created by max.rozdobudko@gmail.com on 3/28/18.
 */
package skein.dropbox {
import skein.dropbox.service.impl.DefaultFilesService;

public class Dropbox {

    // Shared instance

    public static const shared: Dropbox = new Dropbox();

    // Constructor

    public function Dropbox() {
        super();
    }
    
    // Initialization

    private var _isInitialized: Boolean;
    public function get isInitialized(): Boolean {
        return _isInitialized;
    }

    private var _accessToken: String;
    public function get accessToken(): String {
        return _accessToken;
    }

    public function initWithAccessToken(accessToken: String): void {
        _accessToken = accessToken;
        _isInitialized = true;
    }

    // Files

    private var _files: DropboxFiles;
    public function get files(): DropboxFiles {
        if (!isInitialized) {
            throw new Error("Dropbox API is not initialized.");
        }
        if (_files == null) {
            _files = new DropboxFiles(new DefaultFilesService());
        }
        return _files;
    }

}
}

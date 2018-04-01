/**
 * Created by max.rozdobudko@gmail.com on 3/28/18.
 */
package skein.dropbox {
import com.codecatalyst.promise.Promise;

import skein.dropbox.api.DropboxFile;
import skein.dropbox.request.FileDownloadRequest;
import skein.dropbox.request.FolderListingRequest;

import skein.dropbox.service.FilesService;

public class DropboxFiles {

    // Constructor

    public function DropboxFiles(service: FilesService) {
        super();
        this.service = service;
    }

    // Variables

    private var service: FilesService;

    // Folders API

    public function listingFolderWithPath(path: String): Promise {
        return service.listFolder(new FolderListingRequest(path));
    }

    // Files API

    public function download(file: DropboxFile, to: Object): Promise {
        return service.download(new FileDownloadRequest(file.pathLower), to);
    }
}
}

/**
 * Created by max.rozdobudko@gmail.com on 3/28/18.
 */
package skein.dropbox.assembler {
import skein.dropbox.api.DropboxEntry;
import skein.dropbox.api.DropboxFile;
import skein.dropbox.api.DropboxFolder;
import skein.dropbox.api.Tag;
import skein.rest.utils.DateUtil;

public class EntryDisassembler {

    public static function decode(json: String, callback: Function): void {
        var data: Object = CommonDisassembler.parseData(json);

        if (data is Array) {
            callback(toEntries(data as Array));
        } else {
            callback(toAilment(data));
        }
    }

    public static function toEntries(dtos: Array): Array {
        if (dtos != null) {
            var ailments: Array = dtos.map(toAilment);
            return ailments;
        } else {
            return [];
        }
    }

    public static function toAilment(dto: Object, ...rest): DropboxEntry {
        switch (Tag.fromRawValue(dto[".tag"])) {
            case Tag.file: return toFile(dto);
            case Tag.folder: return toFolder(dto);
            default: return null;
        }
    }

    public static function toFile(dto: Object): DropboxFile {
        var file: DropboxFile = new DropboxFile();
        file.id = dto.id;
        file.name = dto.name;
        file.pathLower = dto.path_lower;
        file.pathDisplay = dto.path_display;
        file.size = dto.size;
        file.serverModified = DateUtil.parseW3CDTF(dto.server_modified);
        file.clientModified = DateUtil.parseW3CDTF(dto.client_modified);
        file.revision = dto.rev;
        file.contentHash = dto.content_hash;

        return file;
    }

    public static function toFolder(dto: Object): DropboxFolder {
        var folder: DropboxFolder = new DropboxFolder();
        folder.id = dto.id;
        folder.name = dto.name;
        folder.pathLower = dto.path_lower;
        folder.pathDisplay = dto.path_display;

        return folder;
    }
}
}

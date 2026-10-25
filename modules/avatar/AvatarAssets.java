package com.phigros.local;

import android.content.Context;
import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

/** Read the bundled PNG before the native installer starts. No Unity object access. */
final class AvatarAssets {
    private AvatarAssets() {}

    static byte[] read(Context context) {
        try (InputStream input = context.getAssets().open("speed/zundamon.png")) {
            ByteArrayOutputStream output = new ByteArrayOutputStream();
            byte[] buffer = new byte[8192];
            for (int count; (count = input.read(buffer)) != -1; ) {
                output.write(buffer, 0, count);
            }
            return output.toByteArray();
        } catch (IOException error) {
            Log.e("PhigrosSpeed", "Unable to read avatar PNG", error);
            return null; // Speed controls can still run without the custom avatar.
        }
    }
}

package android.provider;

import android.media.ExifInterface;
import android.os.Bundle;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* loaded from: /home/user/work/dex/classes2.dex */
public final class MetadataReader {
    private static final String JPEG_MIME_TYPE = "image/jpeg";
    private static final String JPG_MIME_TYPE = "image/jpg";
    private static final int TYPE_DOUBLE = 1;
    private static final int TYPE_INT = 0;
    private static final int TYPE_STRING = 2;
    private static final String[] DEFAULT_EXIF_TAGS = {"FNumber", "Copyright", "DateTime", "ExposureTime", "FocalLength", "FNumber", "GPSLatitude", "GPSLatitudeRef", "GPSLongitude", "GPSLongitudeRef", "ImageLength", "ImageWidth", "ISOSpeedRatings", "Make", "Model", "Orientation", "ShutterSpeedValue"};
    private static final Map<String, Integer> TYPE_MAPPING = new HashMap();

    private MetadataReader() {
    }

    static {
        TYPE_MAPPING.put("Artist", 2);
        TYPE_MAPPING.put("BitsPerSample", 0);
        TYPE_MAPPING.put("Compression", 0);
        TYPE_MAPPING.put("Copyright", 2);
        TYPE_MAPPING.put("DateTime", 2);
        TYPE_MAPPING.put("ImageDescription", 2);
        TYPE_MAPPING.put("ImageLength", 0);
        TYPE_MAPPING.put("ImageWidth", 0);
        TYPE_MAPPING.put("JPEGInterchangeFormat", 0);
        TYPE_MAPPING.put("JPEGInterchangeFormatLength", 0);
        TYPE_MAPPING.put("Make", 2);
        TYPE_MAPPING.put("Model", 2);
        TYPE_MAPPING.put("Orientation", 0);
        TYPE_MAPPING.put("PhotometricInterpretation", 0);
        TYPE_MAPPING.put("PlanarConfiguration", 0);
        TYPE_MAPPING.put("PrimaryChromaticities", 1);
        TYPE_MAPPING.put("ReferenceBlackWhite", 1);
        TYPE_MAPPING.put("ResolutionUnit", 0);
        TYPE_MAPPING.put("RowsPerStrip", 0);
        TYPE_MAPPING.put("SamplesPerPixel", 0);
        TYPE_MAPPING.put("Software", 2);
        TYPE_MAPPING.put("StripByteCounts", 0);
        TYPE_MAPPING.put("StripOffsets", 0);
        TYPE_MAPPING.put("TransferFunction", 0);
        TYPE_MAPPING.put("WhitePoint", 1);
        TYPE_MAPPING.put("XResolution", 1);
        TYPE_MAPPING.put("YCbCrCoefficients", 1);
        TYPE_MAPPING.put("YCbCrPositioning", 0);
        TYPE_MAPPING.put("YCbCrSubSampling", 0);
        TYPE_MAPPING.put("YResolution", 1);
        TYPE_MAPPING.put("ApertureValue", 1);
        TYPE_MAPPING.put("BrightnessValue", 1);
        TYPE_MAPPING.put("CFAPattern", 2);
        TYPE_MAPPING.put("ColorSpace", 0);
        TYPE_MAPPING.put("ComponentsConfiguration", 2);
        TYPE_MAPPING.put("CompressedBitsPerPixel", 1);
        TYPE_MAPPING.put("Contrast", 0);
        TYPE_MAPPING.put("CustomRendered", 0);
        TYPE_MAPPING.put("DateTimeDigitized", 2);
        TYPE_MAPPING.put("DateTimeOriginal", 2);
        TYPE_MAPPING.put("DeviceSettingDescription", 2);
        TYPE_MAPPING.put("DigitalZoomRatio", 1);
        TYPE_MAPPING.put("ExifVersion", 2);
        TYPE_MAPPING.put("ExposureBiasValue", 1);
        TYPE_MAPPING.put("ExposureIndex", 1);
        TYPE_MAPPING.put("ExposureMode", 0);
        TYPE_MAPPING.put("ExposureProgram", 0);
        TYPE_MAPPING.put("ExposureTime", 1);
        TYPE_MAPPING.put("FNumber", 1);
        TYPE_MAPPING.put("FileSource", 2);
        TYPE_MAPPING.put("Flash", 0);
        TYPE_MAPPING.put("FlashEnergy", 1);
        TYPE_MAPPING.put("FlashpixVersion", 2);
        TYPE_MAPPING.put("FocalLength", 1);
        TYPE_MAPPING.put("FocalLengthIn35mmFilm", 0);
        TYPE_MAPPING.put("FocalPlaneResolutionUnit", 0);
        TYPE_MAPPING.put("FocalPlaneXResolution", 1);
        TYPE_MAPPING.put("FocalPlaneYResolution", 1);
        TYPE_MAPPING.put("GainControl", 0);
        TYPE_MAPPING.put("ISOSpeedRatings", 0);
        TYPE_MAPPING.put("ImageUniqueID", 2);
        TYPE_MAPPING.put("LightSource", 0);
        TYPE_MAPPING.put("MakerNote", 2);
        TYPE_MAPPING.put("MaxApertureValue", 1);
        TYPE_MAPPING.put("MeteringMode", 0);
        TYPE_MAPPING.put("NewSubfileType", 0);
        TYPE_MAPPING.put("OECF", 2);
        TYPE_MAPPING.put("PixelXDimension", 0);
        TYPE_MAPPING.put("PixelYDimension", 0);
        TYPE_MAPPING.put("RelatedSoundFile", 2);
        TYPE_MAPPING.put("Saturation", 0);
        TYPE_MAPPING.put("SceneCaptureType", 0);
        TYPE_MAPPING.put("SceneType", 2);
        TYPE_MAPPING.put("SensingMethod", 0);
        TYPE_MAPPING.put("Sharpness", 0);
        TYPE_MAPPING.put("ShutterSpeedValue", 1);
        TYPE_MAPPING.put("SpatialFrequencyResponse", 2);
        TYPE_MAPPING.put("SpectralSensitivity", 2);
        TYPE_MAPPING.put("SubfileType", 0);
        TYPE_MAPPING.put("SubSecTime", 2);
        TYPE_MAPPING.put("SubSecTimeDigitized", 2);
        TYPE_MAPPING.put("SubSecTimeOriginal", 2);
        TYPE_MAPPING.put("SubjectArea", 0);
        TYPE_MAPPING.put("SubjectDistance", 1);
        TYPE_MAPPING.put("SubjectDistanceRange", 0);
        TYPE_MAPPING.put("SubjectLocation", 0);
        TYPE_MAPPING.put("UserComment", 2);
        TYPE_MAPPING.put("WhiteBalance", 0);
        TYPE_MAPPING.put("GPSAltitude", 1);
        TYPE_MAPPING.put("GPSAltitudeRef", 0);
        TYPE_MAPPING.put("GPSAreaInformation", 2);
        TYPE_MAPPING.put("GPSDOP", 1);
        TYPE_MAPPING.put("GPSDateStamp", 2);
        TYPE_MAPPING.put("GPSDestBearing", 1);
        TYPE_MAPPING.put("GPSDestBearingRef", 2);
        TYPE_MAPPING.put("GPSDestDistance", 1);
        TYPE_MAPPING.put("GPSDestDistanceRef", 2);
        TYPE_MAPPING.put("GPSDestLatitude", 1);
        TYPE_MAPPING.put("GPSDestLatitudeRef", 2);
        TYPE_MAPPING.put("GPSDestLongitude", 1);
        TYPE_MAPPING.put("GPSDestLongitudeRef", 2);
        TYPE_MAPPING.put("GPSDifferential", 0);
        TYPE_MAPPING.put("GPSImgDirection", 1);
        TYPE_MAPPING.put("GPSImgDirectionRef", 2);
        TYPE_MAPPING.put("GPSLatitude", 2);
        TYPE_MAPPING.put("GPSLatitudeRef", 2);
        TYPE_MAPPING.put("GPSLongitude", 2);
        TYPE_MAPPING.put("GPSLongitudeRef", 2);
        TYPE_MAPPING.put("GPSMapDatum", 2);
        TYPE_MAPPING.put("GPSMeasureMode", 2);
        TYPE_MAPPING.put("GPSProcessingMethod", 2);
        TYPE_MAPPING.put("GPSSatellites", 2);
        TYPE_MAPPING.put("GPSSpeed", 1);
        TYPE_MAPPING.put("GPSSpeedRef", 2);
        TYPE_MAPPING.put("GPSStatus", 2);
        TYPE_MAPPING.put("GPSTimeStamp", 2);
        TYPE_MAPPING.put("GPSTrack", 1);
        TYPE_MAPPING.put("GPSTrackRef", 2);
        TYPE_MAPPING.put("GPSVersionID", 2);
        TYPE_MAPPING.put("InteroperabilityIndex", 2);
        TYPE_MAPPING.put("ThumbnailImageLength", 0);
        TYPE_MAPPING.put("ThumbnailImageWidth", 0);
        TYPE_MAPPING.put("DNGVersion", 0);
        TYPE_MAPPING.put("DefaultCropSize", 0);
        TYPE_MAPPING.put("PreviewImageStart", 0);
        TYPE_MAPPING.put("PreviewImageLength", 0);
        TYPE_MAPPING.put("AspectFrame", 0);
        TYPE_MAPPING.put("SensorBottomBorder", 0);
        TYPE_MAPPING.put("SensorLeftBorder", 0);
        TYPE_MAPPING.put("SensorRightBorder", 0);
        TYPE_MAPPING.put("SensorTopBorder", 0);
        TYPE_MAPPING.put("ISO", 0);
    }

    public static boolean isSupportedMimeType(String str) {
        return JPG_MIME_TYPE.equals(str) || JPEG_MIME_TYPE.equals(str);
    }

    public static void getMetadata(Bundle bundle, InputStream inputStream, String str, String[] strArr) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (isSupportedMimeType(str)) {
            Bundle exifData = getExifData(inputStream, strArr);
            if (exifData.size() > 0) {
                bundle.putBundle(DocumentsContract.METADATA_EXIF, exifData);
                arrayList.add(DocumentsContract.METADATA_EXIF);
            }
        }
        bundle.putStringArray(DocumentsContract.METADATA_TYPES, (String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    private static Bundle getExifData(InputStream inputStream, String[] strArr) throws IOException {
        String attribute;
        if (strArr == null) {
            strArr = DEFAULT_EXIF_TAGS;
        }
        ExifInterface exifInterface = new ExifInterface(inputStream);
        Bundle bundle = new Bundle();
        for (String str : strArr) {
            if (TYPE_MAPPING.get(str).equals(0)) {
                int attributeInt = exifInterface.getAttributeInt(str, Integer.MIN_VALUE);
                if (attributeInt != Integer.MIN_VALUE) {
                    bundle.putInt(str, attributeInt);
                }
            } else if (TYPE_MAPPING.get(str).equals(1)) {
                double attributeDouble = exifInterface.getAttributeDouble(str, Double.MIN_VALUE);
                if (attributeDouble != Double.MIN_VALUE) {
                    bundle.putDouble(str, attributeDouble);
                }
            } else if (TYPE_MAPPING.get(str).equals(2) && (attribute = exifInterface.getAttribute(str)) != null) {
                bundle.putString(str, attribute);
            }
        }
        return bundle;
    }
}

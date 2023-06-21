package android.provider;

import android.net.Uri;
/* loaded from: classes.dex */
public final class Telephony {

    /* loaded from: classes.dex */
    public interface BaseMmsColumns extends BaseColumns {
        public static final String DATE = "date";
        public static final String FROM = "from";
        public static final String LOCKED = "locked";
        public static final int MESSAGE_BOX_INBOX = 1;
        public static final int MESSAGE_BOX_OUTBOX = 4;
        public static final int MESSAGE_BOX_SENT = 2;
        public static final String READ = "read";
        public static final String SEEN = "seen";
        public static final String STATUS = "st";

        /* renamed from: TO */
        public static final String f73TO = "to";
    }

    /* loaded from: classes.dex */
    public static final class Carriers implements BaseColumns {
        public static final String APN = "apn";
        public static final Uri CONTENT_URI = Uri.parse("content://telephony/carriers");
        public static final String MMSC = "mmsc";
        public static final String MMSPORT = "mmsport";
        public static final String MMSPROXY = "mmsproxy";
        public static final String TYPE = "type";
    }

    /* loaded from: classes.dex */
    public static final class Mms implements BaseMmsColumns {
        public static final Uri CONTENT_URI = Uri.parse("content://mms");

        /* loaded from: classes.dex */
        public static final class Inbox implements BaseMmsColumns {
            public static final Uri CONTENT_URI = Uri.parse("content://mms/inbox");
        }

        /* loaded from: classes.dex */
        public static final class Outbox implements BaseMmsColumns {
            public static final Uri CONTENT_URI = Uri.parse("content://mms/outbox");
        }

        /* loaded from: classes.dex */
        public static final class Sent implements BaseMmsColumns {
            public static final Uri CONTENT_URI = Uri.parse("content://mms/sent");
        }
    }

    /* loaded from: classes.dex */
    public static final class MmsSms implements BaseColumns {
        public static final Uri CONTENT_CONVERSATIONS_URI = Uri.parse("content://mms-sms/conversations");
    }

    /* loaded from: classes.dex */
    public static final class Sms implements BaseColumns, TextBasedSmsColumns {
        public static final Uri CONTENT_URI = Uri.parse("content://sms");

        /* loaded from: classes.dex */
        public static final class Inbox implements BaseColumns, TextBasedSmsColumns {
            public static final Uri CONTENT_URI = Uri.parse("content://sms/inbox");
        }

        /* loaded from: classes.dex */
        public static final class Outbox implements BaseColumns, TextBasedSmsColumns {
            public static final Uri CONTENT_URI = Uri.parse("content://sms/outbox");
        }

        /* loaded from: classes.dex */
        public static final class Sent implements BaseColumns, TextBasedSmsColumns {
            public static final Uri CONTENT_URI = Uri.parse("content://sms/sent");
        }
    }

    /* loaded from: classes.dex */
    public interface TextBasedSmsColumns {
        public static final int MESSAGE_TYPE_ALL = 0;
        public static final int MESSAGE_TYPE_INBOX = 1;
        public static final int MESSAGE_TYPE_OUTBOX = 4;
        public static final int MESSAGE_TYPE_SENT = 2;
        public static final String TYPE = "type";
    }
}

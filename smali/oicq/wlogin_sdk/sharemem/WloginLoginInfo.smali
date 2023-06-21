.class public Loicq/wlogin_sdk/sharemem/WloginLoginInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Loicq/wlogin_sdk/sharemem/WloginLoginInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static TYPE_LOACL:I = 0x0

.field public static TYPE_REMOTE:I = 0x0

.field private static final serialVersionUID:J = 0x4d0c7ba51cf79f2cL


# instance fields
.field public mAccount:Ljava/lang/String;

.field public mAppid:J

.field public mCreateTime:J

.field public mFaceUrl:Ljava/lang/String;

.field public mLoginBitmap:I

.field public mType:I

.field public mUin:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Loicq/wlogin_sdk/sharemem/WloginLoginInfo;->TYPE_LOACL:I

    const/4 v0, 0x2

    sput v0, Loicq/wlogin_sdk/sharemem/WloginLoginInfo;->TYPE_REMOTE:I

    new-instance v0, Loicq/wlogin_sdk/sharemem/a;

    invoke-direct {v0}, Loicq/wlogin_sdk/sharemem/a;-><init>()V

    sput-object v0, Loicq/wlogin_sdk/sharemem/WloginLoginInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginLoginInfo;->mFaceUrl:Ljava/lang/String;

    invoke-virtual {p0, p1}, Loicq/wlogin_sdk/sharemem/WloginLoginInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Loicq/wlogin_sdk/sharemem/a;)V
    .locals 0

    invoke-direct {p0, p1}, Loicq/wlogin_sdk/sharemem/WloginLoginInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJLjava/lang/String;JII)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginLoginInfo;->mFaceUrl:Ljava/lang/String;

    iput-object p1, p0, Loicq/wlogin_sdk/sharemem/WloginLoginInfo;->mAccount:Ljava/lang/String;

    iput-wide p2, p0, Loicq/wlogin_sdk/sharemem/WloginLoginInfo;->mUin:J

    iput-wide p4, p0, Loicq/wlogin_sdk/sharemem/WloginLoginInfo;->mAppid:J

    iput-object p6, p0, Loicq/wlogin_sdk/sharemem/WloginLoginInfo;->mFaceUrl:Ljava/lang/String;

    iput-wide p7, p0, Loicq/wlogin_sdk/sharemem/WloginLoginInfo;->mCreateTime:J

    iput p9, p0, Loicq/wlogin_sdk/sharemem/WloginLoginInfo;->mType:I

    iput p10, p0, Loicq/wlogin_sdk/sharemem/WloginLoginInfo;->mLoginBitmap:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginLoginInfo;->mAccount:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginLoginInfo;->mUin:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginLoginInfo;->mAppid:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginLoginInfo;->mCreateTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Loicq/wlogin_sdk/sharemem/WloginLoginInfo;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Loicq/wlogin_sdk/sharemem/WloginLoginInfo;->mLoginBitmap:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginLoginInfo;->mAccount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginLoginInfo;->mUin:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginLoginInfo;->mAppid:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginLoginInfo;->mCreateTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Loicq/wlogin_sdk/sharemem/WloginLoginInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Loicq/wlogin_sdk/sharemem/WloginLoginInfo;->mLoginBitmap:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

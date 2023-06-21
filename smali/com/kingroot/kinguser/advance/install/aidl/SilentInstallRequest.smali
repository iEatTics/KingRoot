.class public Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static KEY:Ljava/lang/String;


# instance fields
.field private anc:Ljava/lang/String;

.field public and:I

.field public ane:I

.field public anf:Ljava/lang/String;

.field public ang:J

.field private anh:Lcom/kingroot/kinguser/advance/install/aidl/ICheckCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "silent_intall_request"

    sput-object v0, Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;->KEY:Ljava/lang/String;

    .line 63
    new-instance v0, Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v0, p0, Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;->and:I

    .line 18
    iput v0, p0, Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;->ane:I

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;->anf:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;->anc:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;->and:I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;->ane:I

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;->anf:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;->ang:J

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/advance/install/aidl/ICheckCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/advance/install/aidl/ICheckCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;->anh:Lcom/kingroot/kinguser/advance/install/aidl/ICheckCallback;

    .line 45
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;->anh:Lcom/kingroot/kinguser/advance/install/aidl/ICheckCallback;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;->anh:Lcom/kingroot/kinguser/advance/install/aidl/ICheckCallback;

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/advance/install/aidl/ICheckCallback;->callback(Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;)V

    .line 79
    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;->anc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget v0, p0, Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;->and:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget v0, p0, Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;->ane:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;->anf:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-wide v0, p0, Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;->ang:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 55
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;->anh:Lcom/kingroot/kinguser/advance/install/aidl/ICheckCallback;

    invoke-interface {v0}, Lcom/kingroot/kinguser/advance/install/aidl/ICheckCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 56
    return-void
.end method

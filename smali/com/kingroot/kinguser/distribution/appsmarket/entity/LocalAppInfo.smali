.class public Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/kingroot/kinguser/rr;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public apkPath:Ljava/lang/String;

.field public appName:Ljava/lang/String;

.field public certMD5:Ljava/lang/String;

.field public oldVersion:Ljava/lang/String;

.field public oldVersionCode:I

.field public pkgName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageInfo;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;->pkgName:Ljava/lang/String;

    .line 90
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zh;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;->appName:Ljava/lang/String;

    .line 91
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;->oldVersion:Ljava/lang/String;

    .line 92
    iget v0, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;->oldVersionCode:I

    .line 93
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/aaz;->dZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;->certMD5:Ljava/lang/String;

    .line 94
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;->apkPath:Ljava/lang/String;

    .line 95
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;->pkgName:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;->appName:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;->oldVersion:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;->oldVersionCode:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;->certMD5:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;->apkPath:Ljava/lang/String;

    .line 59
    return-void
.end method

.method private getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;->oldVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;->oldVersionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;->certMD5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public Ix()Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;
    .locals 2

    .prologue
    .line 77
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;-><init>()V

    .line 78
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;->pkgName:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->pkgName:Ljava/lang/String;

    .line 79
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;->appName:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->appName:Ljava/lang/String;

    .line 80
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;->oldVersion:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->oldVersion:Ljava/lang/String;

    .line 81
    iget v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;->oldVersionCode:I

    iput v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->oldVersionCode:I

    .line 82
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;->certMD5:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->certMD5:Ljava/lang/String;

    .line 83
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;->apkPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->apkPath:Ljava/lang/String;

    .line 84
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 117
    instance-of v1, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;

    if-nez v1, :cond_1

    .line 125
    :cond_0
    :goto_0
    return v0

    .line 121
    :cond_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;->getId()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;

    invoke-direct {p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;->oldVersionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;->certMD5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 68
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;->appName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;->oldVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;->oldVersionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;->certMD5:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;->apkPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    return-void
.end method
